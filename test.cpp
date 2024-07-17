#include <iostream>
#include <list>
#include <thread>

using namespace std;

void write_list(list<int> &l)
{
    for (int i = 0; i < 10; i++) {
        l.push_back(i);
    }
}

int main()
{
    list<int> l;
    thread t(write_list, ref(l));
    t.join();
    for (auto &i : l) {
        cout << i << endl;
    }
    return 0;
}
