// https://stackoverflow.com/questions/1976520/lock-screen-by-api-in-mac-os-x
extern void SACLockScreenImmediate ( );

int main()
{
    SACLockScreenImmediate();
    return 0;
}