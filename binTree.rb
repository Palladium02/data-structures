class Tree

	attr_accessor :root

	def initialize()
		@root = nil;
	end
	
	def add(value)
		node = Node.new(value)
		if @root == nil then
			@root = node
		else
			@root.add(node)
		end
	end
	
	def traverse()
		@root.visit()
	end

end

class Node

	attr_accessor :value, :left, :right

	def initialize(value)
		@left = nil
		@right = nil
		@value = value
	end
	
	def add(node)
		if node.value < @value then
			if (@left == nil) then
				@left = node
			else
				@left.add(node)
			end
		elsif node.value > @value then
			if (@right == nil) then
				@right = node
			else
				@right.add(node)
			end
		end
	end
	
	def visit()
		if @left != nil then
			@left.visit()
		end
		if @right != nil then
			@right.visit()
		end
		
		return @value
	end
	
	def isEmpty?()
		if !@left && !@right then
			return true
		else
			return false
		end
	end

end

def test()
	tree = Tree.new()
	tree.add(4)
	tree.add(3)
	tree.add(9)
	tree.add(5)
	puts tree.root.right.value #9
	puts tree.root.left.value #3
	puts tree.root.right.left.value #5
	puts tree.traverse()
	puts tree.root.isEmpty?()

end

test()