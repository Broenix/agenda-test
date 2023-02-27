class WorksController < ApplicationController


  def index
    if params[:query].present?
      sql_query = <<~SQL
       works.name @@ :query
       OR works.creator ILIKE :query
       SQL
      @works = Work.where(sql_query, query: "%#{params[:query]}%")
    else
      @works = Work.all
    end
  end

  def search
    @works = Work.search_by_name(params[:search])
    respond_to do |format|
      format.js
    end
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)

    if @work.save
      redirect_to works_path, notice: "L'oeuvre a bien été créée !"
    else
      render :new
    end
  end


  private

  def work_params
    params.require(:work).permit(:name, :year, :creator, :image, :watch_date)
  end
end
