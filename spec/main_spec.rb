require_relative "../lib/jido.rb"

describe "Jido" do
  before :each do
    Jido.start
  end

  it "starts when wanted" do
    expect(Jido.is_started).to eq(true)
  end

  it "loading the brain" do
    expect(Jido.brain).not_to eq(nil)
  end

  it "creating db connection" do
    expect(Jido.db).not_to eq(nil)
    expect(Jido.db.status).to eq(Jido::DB::STATUS_CONNECTED)
  end
end

describe "Brain" do
  before :each do
  end
  it "exists" do
    expect(Jido::Brain).not_to eq(nil);
  end

  it "can be created" do
    @brain = Jido::Brain.new
    expect(@brain).not_to eq(nil)
  end
end

describe "Sense" do
  before :each do
  end
  it "exists" do
    expect(Jido::Sense).not_to eq(nil);
  end
end

describe "Fragment" do
  before :each do
  end
  it "exists" do
    expect(Jido::Fragment).not_to eq(nil);
  end
end

describe "DB" do
  before :each do
  end
  it "exists" do
    expect(Jido::DB).not_to eq(nil);
  end

  it "basic Adapter exists" do
    expect(Jido::DB::Adapter).not_to eq(nil);
  end

  it "RedisAdapter exists" do
    expect(Jido::DB::RedisAdapter).not_to eq(nil);
  end
end
