class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    # @contact = Contact.new(params)
    @contact = Contact.create(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to new_contact_path, notice: "ブログを作成しました！"
    else
      # 入力フォームを再描画します。
      render :new
    end

  end
end
