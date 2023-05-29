# Most recently used element goes to the end of the array

class LRUCache
  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @cache.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.include?(el)
      @cache.push(@cache.delete_at(@cache.find_index(el)))
    else
      if @cache.length < @size
        @cache.push(el)
      else
        @cache.shift
        @cache.push(el)
      end
    end
    nil
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
    nil
  end

  private
  # helper methods go here!
end