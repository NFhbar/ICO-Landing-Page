module ApplicationHelper
    def is_active_controller(controller_name)
        params[:controller] == controller_name ? "active" : nil
    end

    def is_active_action(action_name)
        params[:action] == action_name ? "active" : nil
    end

    # Returns the full title on a per-page basis.
    def full_title(page_title = '')
      base_title = "OSHIE"
      if page_title.empty?
        base_title
      else
        page_title + " | " + base_title
      end
    end

    # Active link for _sidebar.html.erb
    def link_to_in_li(body, url, html_options = {})
      active = "active" if current_page?(url)
      content_tag :li, class: active do
        link_to body, url, html_options
      end
    end

end
