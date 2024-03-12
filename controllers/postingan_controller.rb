class PostinganController < ApplicationController
  def index
    @data = Postingan.all
  end

  def detail
    @data = Postingan.find_by(id: params[:id])
  end

  def input

  end

  def create
    @data = Postingan.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @data.save
    flash[:pesan] = "Data berhasil disimpan!"
    redirect_to("/postingan/index")
  end

  def edit
    @data = Postingan.find_by(id: params[:id])
  end

  def update
    @data = Postingan.find_by(id: params[:id])
    @data.judul = params[:judul]
    @data.deskripsi = params[:deskripsi]
    @data.save
    flash[:pesan] = "Data berhasil diubah!"
    redirect_to("/postingan/index")
  end

  def delete
    @data = Postingan.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "Data berhasil dihapus!"
    redirect_to("/postingan/index")
  end

end
