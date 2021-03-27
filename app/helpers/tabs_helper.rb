module TabsHelper
    def add_active_class(path)
        path = path.split('?').first # remove path after ?　タブのエラー（false)を直しました。
        'active' if current_page?(path)
    end
end