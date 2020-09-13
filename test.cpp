#include <cstdio>
#include <vector>
#include <map>

int main(int argc, char const *argv[])
{
    printf("ggggggggggg");
    std::vector<int> bb;
    std::map<int, int> cc;

    cc.emplace(1, 1);
    return 0;
}

class monitor
{
public:
    monitor() = default;
    monitor(const monitor &) = default;
    monitor(monitor &&) = default;
    monitor &operator=(const monitor &) = default;
    monitor &operator=(monitor &&) = default;

private:
};


