module SpaceHelper

# 전달된 스페이스로 이동
def space_in(space)
    space[:code] = space.code
end 

# 현재 로그인 한 사용자를 반환(로그인 한 경우에만)
def current_space
    @current_space ||= Space.find_by(code: space[:code])
end

# 로그인 되어있다면 true 를 그렇지 않다면 false 를 반환
def space_in?
    !current_space.nil?
end
def space_out
    space.delete(:code)
end
end
