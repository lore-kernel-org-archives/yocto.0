Subject: ESDK script failue
To: yocto@lists.yoctoproject.org
From: jadhavvaibhav377@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (14.98.179.254)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 20:50:45 -0800
Message-ID: <8vtM.1605847845307592283.rQqc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jRr8yQXbhhtZmVl8YGgS"

--jRr8yQXbhhtZmVl8YGgS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI all,
I am trying to build ESDK for a custom layer. while building I am getting =
following ESDK preparing_build_system.log
NOTE: Running noexec task 1 of 6485 (/home/user/openembedded/openembedded-=
core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-d=
evtools/gnu-config/gnu-config_git.bb:do_rm_work_all)
NOTE: Running noexec task 2 of 6485 (virtual:native:/home/user/openembedde=
d/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-devtools/unifdef/unifdef_2.11.bb:do_rm_work_all)
NOTE: Running noexec task 3 of 6485 (virtual:native:/home/user/openembedde=
d/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-extended/unzip/unzip_6.0.bb:do_rm_work_all)
NOTE: Running noexec task 4 of 6485 (virtual:native:/home/user/openembedde=
d/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-extended/cwautomacros/cwautomacros_20110201.bb:do_rm_work_all=
)
NOTE: Running noexec task 5 of 6485 (/home/user/openembedded-core/build/tm=
p-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/systemd/s=
ystemd-systemctl-native.bb:do_rm_work_all)
NOTE: Running noexec task 6 of 6485 (/home/user/openembedded/openembedded-=
core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-e=
xtended/texinfo-dummy-native/texinfo-dummy-native.bb:do_rm_work_all)
NOTE: Running noexec task 7 of 6485 (virtual:native:/home/user/openembedde=
d/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-core/zlib/zlib_1.2.11.bb:do_rm_work_all)
NOTE: Running noexec task 8 of 6485 (/home/user/openembedded/openembedded-=
core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-c=
ore/gettext/gettext-minimal-native_0.19.8.1.bb:do_rm_work_all)
NOTE: Running noexec task 9 of 6485 (virtual:native:/home/user/openembedde=
d/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_rm_work_all)
NOTE: Running noexec task 10 of 6485 (/home/user/openembedded/openembedded=
-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-=
kernel/kern-tools/kern-tools-native_git.bb:do_rm_work_all)
NOTE: Running noexec task 11 of 6485 (virtual:native:/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-cor=
e/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_rm_work_all)
NOTE: Running noexec task 12 of 6485 (virtual:native:/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-cor=
e/meta/recipes-devtools/opkg-utils/opkg-utils_0.4.1.bb:do_rm_work_all)
NOTE: Running noexec task 13 of 6485 (/home/user/openembedded/openembedded=
-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-=
core/glibc/ldconfig-native_2.12.1.bb:do_rm_work_all)
NOTE: Running noexec task 14 of 6485 (virtual:native:/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-cor=
e/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_rm_work_all)
NOTE: Running noexec task 15 of 6485 (/home/user/openembedded/openembedded=
-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-=
devtools/quilt/quilt-native_0.66.bb:do_rm_work_all)
NOTE: Running task 16 of 6485 (/home/user/openembedded/openembedded-core/b=
uild/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtool=
s/gcc/gcc-source_8.3.bb:do_rm_work)
ERROR: Task glibc-locale.do_populate_lic attempted to execute unexpectedly=
 and should have been setscened
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-multimedia/libsndfile/libsndfile1=
_1.0.28.bb:do_package_write_deb, unihash e0a368ff2b6e1e9c8b81756d93ee2ccacf=
62a26ef112afdf93a750212abbee43, taskhash e0a368ff2b6e1e9c8b81756d93ee2ccacf=
62a26ef112afdf93a750212abbee43
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-support/libevdev/libevdev_1.8.0.b=
b:do_package, unihash b8e9bb8121df216d8e04c89b613b55b8fb138c0c87372a6101199=
d3812712643, taskhash b8e9bb8121df216d8e04c89b613b55b8fb138c0c87372a6101199=
d3812712643
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-devtools/btrfs-tools/btrfs-tools_=
5.3.1.bb:do_package, unihash 605c26cc78f9f60b6642191fff1baa54443f18466b41a7=
8f8c4cb067fbb8e96c, taskhash 605c26cc78f9f60b6642191fff1baa54443f18466b41a7=
8f8c4cb067fbb8e96c
.
.
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-graphics/mini-x-session/mini-x-se=
ssion_0.1.bb:do_package_write_deb, unihash f30c12605b93d3e4b7d9519b021d7eae=
37259148d21462ff0a28b2731f63c2c8, taskhash f30c12605b93d3e4b7d9519b021d7eae=
37259148d21462ff0a28b2731f63c2c8
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-extended/iptables/iptables_1.8.3.=
bb:do_populate_sysroot, unihash 31db09ce9dbf5d4ca6700d43ea2aef440a9001e88a4=
7e1866b9587bb813083c2, taskhash 31db09ce9dbf5d4ca6700d43ea2aef440a9001e88a4=
7e1866b9587bb813083c2
Task virtual:native:/home/user/openembedded/openembedded-core/build/tmp-gl=
ibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/autoconf-=
archive/autoconf-archive_2019.01.06.bb:do_populate_lic, unihash 5cce2806bd8=
0bc0cdc6ab1552171b48f1815dc7892b9b5b39ee7f91d9a242302, taskhash 5cce2806bd8=
0bc0cdc6ab1552171b48f1815dc7892b9b5b39ee7f91d9a242302
Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-support/gnutls/gnutls_3.6.8.bb:do=
_package_qa, unihash eb4c9c968f488b26dfdb77deda7271059320738acd43bef11d8a8b=
4c43e5d0d3, taskhash eb4c9c968f488b26dfdb77deda7271059320738acd43bef11d8a8b=
4c43e5d0d3
This is usually due to missing setscene tasks. Those missing in this build=
 were: {
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/alsa-state/alsa-state.bb:do_popul=
ate_sysroot',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
ackage',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
ackage_qa',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
ackage_write_deb',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
ackagedata',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
opulate_lic',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_p=
opulate_sysroot',
.
.
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_package',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_package_qa',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_package_write_deb',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_packagedata',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_populate_lic',
'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do=
_populate_sysroot'
.
.
'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-support/re2c/re2c_1.0.=
1.bb:do_populate_lic',
'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-support/re2c/re2c_1.0.=
1.bb:do_populate_sysroot',
.
.
'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-support/sqlite/sqlite3=
_3.30.1.bb:do_populate_lic',
'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-support/sqlite/sqlite3=
_3.30.1.bb:do_populate_sysroot'
}
ERROR: Task (/home/user/openembedded/openembedded-core/build/tmp-glibc/dep=
loy/sdk/new/layers/openembedded-core/meta/recipes-core/glibc/glibc-locale_2=
.30.bb:do_populate_lic) failed with exit code 'setscene whitelist'
NOTE: Tasks Summary: Attempted 19 tasks of which 0 didn't need to be rerun=
 and 1 failed.
Can anyone please tell how can i resolve this issue.

Regards,
Vaibhav Jadhav

--jRr8yQXbhhtZmVl8YGgS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI all,<br />I am trying to build ESDK for a custom layer. while building I=
 am getting following ESDK preparing_build_system.log<br />NOTE: Running no=
exec task 1 of 6485 (/home/user/openembedded/openembedded-core/build/tmp-gl=
ibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/gnu-confi=
g/gnu-config_git.bb:do_rm_work_all)<br />NOTE: Running noexec task 2 of 648=
5 (virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc=
/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/unifdef/unif=
def_2.11.bb:do_rm_work_all)<br />NOTE: Running noexec task 3 of 6485 (virtu=
al:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/=
sdk/new/layers/openembedded-core/meta/recipes-extended/unzip/unzip_6.0.bb:d=
o_rm_work_all)<br />NOTE: Running noexec task 4 of 6485 (virtual:native:/ho=
me/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layer=
s/openembedded-core/meta/recipes-extended/cwautomacros/cwautomacros_2011020=
1.bb:do_rm_work_all)<br />NOTE: Running noexec task 5 of 6485 (/home/user/o=
penembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/me=
ta/recipes-core/systemd/systemd-systemctl-native.bb:do_rm_work_all)<br />NO=
TE: Running noexec task 6 of 6485 (/home/user/openembedded/openembedded-cor=
e/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-exte=
nded/texinfo-dummy-native/texinfo-dummy-native.bb:do_rm_work_all)<br />NOTE=
: Running noexec task 7 of 6485 (virtual:native:/home/user/openembedded/ope=
nembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta=
/recipes-core/zlib/zlib_1.2.11.bb:do_rm_work_all)<br />NOTE: Running noexec=
 task 8 of 6485 (/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-core/gettext/gettext-m=
inimal-native_0.19.8.1.bb:do_rm_work_all)<br />NOTE: Running noexec task 9 =
of 6485 (virtual:native:/home/user/openembedded/openembedded-core/build/tmp=
-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/gnu-co=
nfig/gnu-config_git.bb:do_rm_work_all)<br />NOTE: Running noexec task 10 of=
 6485 (/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk=
/new/layers/openembedded-core/meta/recipes-kernel/kern-tools/kern-tools-nat=
ive_git.bb:do_rm_work_all)<br />NOTE: Running noexec task 11 of 6485 (virtu=
al:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/=
sdk/new/layers/openembedded-core/meta/recipes-core/update-rc.d/update-rc.d_=
0.8.bb:do_rm_work_all)<br />NOTE: Running noexec task 12 of 6485 (virtual:n=
ative:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-devtools/opkg-utils/opkg-utils_0.=
4.1.bb:do_rm_work_all)<br />NOTE: Running noexec task 13 of 6485 (/home/use=
r/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/open=
embedded-core/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_rm_work_=
all)<br />NOTE: Running noexec task 14 of 6485 (virtual:native:/home/user/o=
penembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openemb=
edded-core/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_rm_work_all)=
<br />NOTE: Running noexec task 15 of 6485 (/home/user/openembedded/openemb=
edded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/rec=
ipes-devtools/quilt/quilt-native_0.66.bb:do_rm_work_all)<br />NOTE: Running=
 task 16 of 6485 (/home/user/openembedded/openembedded-core/build/tmp-glibc=
/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/gcc/gcc-sour=
ce_8.3.bb:do_rm_work)<br />ERROR: Task glibc-locale.do_populate_lic attempt=
ed to execute unexpectedly and should have been setscened<br />Task /home/u=
ser/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/op=
enembedded-core/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.28.bb:do=
_package_write_deb, unihash e0a368ff2b6e1e9c8b81756d93ee2ccacf62a26ef112afd=
f93a750212abbee43, taskhash e0a368ff2b6e1e9c8b81756d93ee2ccacf62a26ef112afd=
f93a750212abbee43<br />Task /home/user/openembedded/openembedded-core/build=
/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-support/lib=
evdev/libevdev_1.8.0.bb:do_package, unihash b8e9bb8121df216d8e04c89b613b55b=
8fb138c0c87372a6101199d3812712643, taskhash b8e9bb8121df216d8e04c89b613b55b=
8fb138c0c87372a6101199d3812712643<br />Task /home/user/openembedded/openemb=
edded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/rec=
ipes-devtools/btrfs-tools/btrfs-tools_5.3.1.bb:do_package, unihash 605c26cc=
78f9f60b6642191fff1baa54443f18466b41a78f8c4cb067fbb8e96c, taskhash 605c26cc=
78f9f60b6642191fff1baa54443f18466b41a78f8c4cb067fbb8e96c<br />.<br />.<br /=
>Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-graphics/mini-x-session/mini-x-se=
ssion_0.1.bb:do_package_write_deb, unihash f30c12605b93d3e4b7d9519b021d7eae=
37259148d21462ff0a28b2731f63c2c8, taskhash f30c12605b93d3e4b7d9519b021d7eae=
37259148d21462ff0a28b2731f63c2c8<br />Task /home/user/openembedded/openembe=
dded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/reci=
pes-extended/iptables/iptables_1.8.3.bb:do_populate_sysroot, unihash 31db09=
ce9dbf5d4ca6700d43ea2aef440a9001e88a47e1866b9587bb813083c2, taskhash 31db09=
ce9dbf5d4ca6700d43ea2aef440a9001e88a47e1866b9587bb813083c2<br />Task virtua=
l:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/s=
dk/new/layers/openembedded-core/meta/recipes-devtools/autoconf-archive/auto=
conf-archive_2019.01.06.bb:do_populate_lic, unihash 5cce2806bd80bc0cdc6ab15=
52171b48f1815dc7892b9b5b39ee7f91d9a242302, taskhash 5cce2806bd80bc0cdc6ab15=
52171b48f1815dc7892b9b5b39ee7f91d9a242302<br />Task /home/user/openembedded=
/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/=
meta/recipes-support/gnutls/gnutls_3.6.8.bb:do_package_qa, unihash eb4c9c96=
8f488b26dfdb77deda7271059320738acd43bef11d8a8b4c43e5d0d3, taskhash eb4c9c96=
8f488b26dfdb77deda7271059320738acd43bef11d8a8b4c43e5d0d3<br />This is usual=
ly due to missing setscene tasks. Those missing in this build were: {<br />=
&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk=
/new/layers/openembedded-core/meta/recipes-bsp/alsa-state/alsa-state.bb:do_=
populate_sysroot',<br />&nbsp;'/home/user/openembedded/openembedded-core/bu=
ild/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-bsp/form=
factor/formfactor_0.0.bb:do_package',<br />&nbsp;'/home/user/openembedded/o=
penembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/me=
ta/recipes-bsp/formfactor/formfactor_0.0.bb:do_package_qa',<br />&nbsp;'/ho=
me/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layer=
s/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_packag=
e_write_deb',<br />&nbsp;'/home/user/openembedded/openembedded-core/build/t=
mp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-bsp/formfacto=
r/formfactor_0.0.bb:do_packagedata',<br />&nbsp;'/home/user/openembedded/op=
enembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/met=
a/recipes-bsp/formfactor/formfactor_0.0.bb:do_populate_lic',<br />&nbsp;'/h=
ome/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/laye=
rs/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_popul=
ate_sysroot',<br />.<br />.<br />&nbsp;'/home/user/openembedded/openembedde=
d-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes=
-core/util-linux/util-linux_2.34.bb:do_package',<br />&nbsp;'/home/user/ope=
nembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembed=
ded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do_package_qa',<br=
 />&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/=
sdk/new/layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.=
34.bb:do_package_write_deb',<br />&nbsp;'/home/user/openembedded/openembedd=
ed-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipe=
s-core/util-linux/util-linux_2.34.bb:do_packagedata',<br />&nbsp;'/home/use=
r/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/open=
embedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb:do_populate_l=
ic',<br />&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glibc/=
deploy/sdk/new/layers/openembedded-core/meta/recipes-core/util-linux/util-l=
inux_2.34.bb:do_populate_sysroot'<br />.<br />.<br />&nbsp;'virtual:native:=
/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/la=
yers/openembedded-core/meta/recipes-support/re2c/re2c_1.0.1.bb:do_populate_=
lic',<br />&nbsp;'virtual:native:/home/user/openembedded/openembedded-core/=
build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-suppor=
t/re2c/re2c_1.0.1.bb:do_populate_sysroot',<br />.<br />.<br />&nbsp;'virtua=
l:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/s=
dk/new/layers/openembedded-core/meta/recipes-support/sqlite/sqlite3_3.30.1.=
bb:do_populate_lic',<br />&nbsp;'virtual:native:/home/user/openembedded/ope=
nembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta=
/recipes-support/sqlite/sqlite3_3.30.1.bb:do_populate_sysroot'<br />}<br />=
ERROR: Task (/home/user/openembedded/openembedded-core/build/tmp-glibc/depl=
oy/sdk/new/layers/openembedded-core/meta/recipes-core/glibc/glibc-locale_2.=
30.bb:do_populate_lic) failed with exit code 'setscene whitelist'<br />NOTE=
: Tasks Summary: Attempted 19 tasks of which 0 didn't need to be rerun and =
1 failed.<br />Can anyone please tell how can i resolve this issue.<br /><b=
r />Regards,<br />Vaibhav Jadhav

--jRr8yQXbhhtZmVl8YGgS--
