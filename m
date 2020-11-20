Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web12.5164.1605961214091061612
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:20:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=KFFjssYj;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 11:09:02 +0000
X-Sender: bounce+53643+51495+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 23664
X-Received: by 127.0.0.2 with SMTP id PbDXYY3619394xfErZtzLMB2; Fri, 20 Nov 2020 03:07:23 -0800
Subject: [yocto] ESDK script failue
To: yocto@lists.yoctoproject.org
From: jadhavvaibhav377@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (14.98.179.254)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 20:50:45 -0800
X-OldMsgId: <8vtM.1605847845307592283.rQqc@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: MyETJdQE2aBnnOZEDy9xQUEwx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605870443; bh=AzeOxeuc/tvfO0aqgZutpPGhKn6vztVfq9bqDr0y/Ko=; h=Content-Type:Date:From:Subject:To;
 b=KFFjssYjjMAzNxLy3mazrAAkCN1SL6axsMW3NrepAUzp7H9PuC5wZn5cD5jLCR/wCnE dHqP4OGUyjrCFjHQgCXAouZiNaVvUgt5I+1Ak/pAs0W2SyjIRDtYjdeGCNJHx6oug70ls OZg29Di1tdYoi+EIWocEh1+eAbXX7RJUAZ4=
Return-Path: bounce+53643+51495+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <522261e7f3354247bebc63f0345385f0@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="ZKgEP4fFiwAjhkbtxbvN"

--ZKgEP4fFiwAjhkbtxbvN
Content-Type: multipart/alternative; boundary="jRr8yQXbhhtZmVl8YGgS"

--jRr8yQXbhhtZmVl8YGgS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {DC386D1D-907B-44AF-84EE-E55AEBDD4D98}

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
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {CC996738-9FA7-4BD0-9D0F-3E28C325E833}

HI all,<br>I am trying to build ESDK for a custom layer. while building I am=
 getting following ESDK preparing_build_system.log<br>NOTE: Running noexec t=
ask 1 of 6485 (/home/user/openembedded/openembedded-core/build/tmp-glibc/dep=
loy/sdk/new/layers/openembedded-core/meta/recipes-devtools/gnu-config/gnu-co=
nfig_git.bb:do_rm_work_all)<br>NOTE: Running noexec task 2 of 6485 (virtual:=
native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-devtools/unifdef/unifdef_2.11.bb:d=
o_rm_work_all)<br>NOTE: Running noexec task 3 of 6485 (virtual:native:/home/=
user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/op=
enembedded-core/meta/recipes-extended/unzip/unzip_6.0.bb:do_rm_work_all)<br>=
NOTE: Running noexec task 4 of 6485 (virtual:native:/home/user/openembedded/=
openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/me=
ta/recipes-extended/cwautomacros/cwautomacros_20110201.bb:do_rm_work_all)<br=
>NOTE: Running noexec task 5 of 6485 (/home/user/openembedded-core/build/tmp=
-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/systemd/sys=
temd-systemctl-native.bb:do_rm_work_all)<br>NOTE: Running noexec task 6 of 6=
485 (/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/ne=
w/layers/openembedded-core/meta/recipes-extended/texinfo-dummy-native/texinf=
o-dummy-native.bb:do_rm_work_all)<br>NOTE: Running noexec task 7 of 6485 (vi=
rtual:native:/home/user/openembedded/openembedded-core/build/tmp-glibc/deplo=
y/sdk/new/layers/openembedded-core/meta/recipes-core/zlib/zlib_1.2.11.bb:do_=
rm_work_all)<br>NOTE: Running noexec task 8 of 6485 (/home/user/openembedded=
/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/m=
eta/recipes-core/gettext/gettext-minimal-native_0.19.8.1.bb:do_rm_work_all)<=
br>NOTE: Running noexec task 9 of 6485 (virtual:native:/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_rm_work_all)<br>NOTE:=
 Running noexec task 10 of 6485 (/home/user/openembedded/openembedded-core/b=
uild/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-kernel/k=
ern-tools/kern-tools-native_git.bb:do_rm_work_all)<br>NOTE: Running noexec t=
ask 11 of 6485 (virtual:native:/home/user/openembedded/openembedded-core/bui=
ld/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/updat=
e-rc.d/update-rc.d_0.8.bb:do_rm_work_all)<br>NOTE: Running noexec task 12 of=
 6485 (virtual:native:/home/user/openembedded/openembedded-core/build/tmp-gl=
ibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/opkg-utils=
/opkg-utils_0.4.1.bb:do_rm_work_all)<br>NOTE: Running noexec task 13 of 6485=
 (/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/l=
ayers/openembedded-core/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do=
_rm_work_all)<br>NOTE: Running noexec task 14 of 6485 (virtual:native:/home/=
user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/op=
enembedded-core/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_rm_work_=
all)<br>NOTE: Running noexec task 15 of 6485 (/home/user/openembedded/openem=
bedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/rec=
ipes-devtools/quilt/quilt-native_0.66.bb:do_rm_work_all)<br>NOTE: Running ta=
sk 16 of 6485 (/home/user/openembedded/openembedded-core/build/tmp-glibc/dep=
loy/sdk/new/layers/openembedded-core/meta/recipes-devtools/gcc/gcc-source_8.=
3.bb:do_rm_work)<br>ERROR: Task glibc-locale.do_populate_lic attempted to ex=
ecute unexpectedly and should have been setscened<br>Task /home/user/openemb=
edded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-c=
ore/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.28.bb:do_package_writ=
e_deb, unihash e0a368ff2b6e1e9c8b81756d93ee2ccacf62a26ef112afdf93a750212abbe=
e43, taskhash e0a368ff2b6e1e9c8b81756d93ee2ccacf62a26ef112afdf93a750212abbee=
43<br>Task /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/=
sdk/new/layers/openembedded-core/meta/recipes-support/libevdev/libevdev_1.8.=
0.bb:do_package, unihash b8e9bb8121df216d8e04c89b613b55b8fb138c0c87372a61011=
99d3812712643, taskhash b8e9bb8121df216d8e04c89b613b55b8fb138c0c87372a610119=
9d3812712643<br>Task /home/user/openembedded/openembedded-core/build/tmp-gli=
bc/deploy/sdk/new/layers/openembedded-core/meta/recipes-devtools/btrfs-tools=
/btrfs-tools_5.3.1.bb:do_package, unihash 605c26cc78f9f60b6642191fff1baa5444=
3f18466b41a78f8c4cb067fbb8e96c, taskhash 605c26cc78f9f60b6642191fff1baa54443=
f18466b41a78f8c4cb067fbb8e96c<br>.<br>.<br>Task /home/user/openembedded/open=
embedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/r=
ecipes-graphics/mini-x-session/mini-x-session_0.1.bb:do_package_write_deb, u=
nihash f30c12605b93d3e4b7d9519b021d7eae37259148d21462ff0a28b2731f63c2c8, tas=
khash f30c12605b93d3e4b7d9519b021d7eae37259148d21462ff0a28b2731f63c2c8<br>Ta=
sk /home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/=
layers/openembedded-core/meta/recipes-extended/iptables/iptables_1.8.3.bb:do=
_populate_sysroot, unihash 31db09ce9dbf5d4ca6700d43ea2aef440a9001e88a47e1866=
b9587bb813083c2, taskhash 31db09ce9dbf5d4ca6700d43ea2aef440a9001e88a47e1866b=
9587bb813083c2<br>Task virtual:native:/home/user/openembedded/openembedded-c=
ore/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-dev=
tools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_populate_lic, uniha=
sh 5cce2806bd80bc0cdc6ab1552171b48f1815dc7892b9b5b39ee7f91d9a242302, taskhas=
h 5cce2806bd80bc0cdc6ab1552171b48f1815dc7892b9b5b39ee7f91d9a242302<br>Task /=
home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/laye=
rs/openembedded-core/meta/recipes-support/gnutls/gnutls_3.6.8.bb:do_package_=
qa, unihash eb4c9c968f488b26dfdb77deda7271059320738acd43bef11d8a8b4c43e5d0d3=
, taskhash eb4c9c968f488b26dfdb77deda7271059320738acd43bef11d8a8b4c43e5d0d3<=
br>This is usually due to missing setscene tasks. Those missing in this buil=
d were: {<br>&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glib=
c/deploy/sdk/new/layers/openembedded-core/meta/recipes-bsp/alsa-state/alsa-s=
tate.bb:do_populate_sysroot',<br>&nbsp;'/home/user/openembedded/openembedded=
-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-b=
sp/formfactor/formfactor_0.0.bb:do_package',<br>&nbsp;'/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_package_qa',<br>&nbsp;'/ho=
me/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers=
/openembedded-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_package_=
write_deb',<br>&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-gl=
ibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-bsp/formfactor/form=
factor_0.0.bb:do_packagedata',<br>&nbsp;'/home/user/openembedded/openembedde=
d-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-=
bsp/formfactor/formfactor_0.0.bb:do_populate_lic',<br>&nbsp;'/home/user/open=
embedded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedde=
d-core/meta/recipes-bsp/formfactor/formfactor_0.0.bb:do_populate_sysroot',<b=
r>.<br>.<br>&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glibc=
/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/util-linux/util-l=
inux_2.34.bb:do_package',<br>&nbsp;'/home/user/openembedded/openembedded-cor=
e/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/=
util-linux/util-linux_2.34.bb:do_package_qa',<br>&nbsp;'/home/user/openembed=
ded/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-cor=
e/meta/recipes-core/util-linux/util-linux_2.34.bb:do_package_write_deb',<br>=
&nbsp;'/home/user/openembedded/openembedded-core/build/tmp-glibc/deploy/sdk/=
new/layers/openembedded-core/meta/recipes-core/util-linux/util-linux_2.34.bb=
:do_packagedata',<br>&nbsp;'/home/user/openembedded/openembedded-core/build/=
tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-core/util-lin=
ux/util-linux_2.34.bb:do_populate_lic',<br>&nbsp;'/home/user/openembedded/op=
enembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/meta=
/recipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot'<br>.<br>.<b=
r>&nbsp;'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-=
glibc/deploy/sdk/new/layers/openembedded-core/meta/recipes-support/re2c/re2c=
_1.0.1.bb:do_populate_lic',<br>&nbsp;'virtual:native:/home/user/openembedded=
/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core/m=
eta/recipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot',<br>.<br>.<br>&n=
bsp;'virtual:native:/home/user/openembedded/openembedded-core/build/tmp-glib=
c/deploy/sdk/new/layers/openembedded-core/meta/recipes-support/sqlite/sqlite=
3_3.30.1.bb:do_populate_lic',<br>&nbsp;'virtual:native:/home/user/openembedd=
ed/openembedded-core/build/tmp-glibc/deploy/sdk/new/layers/openembedded-core=
/meta/recipes-support/sqlite/sqlite3_3.30.1.bb:do_populate_sysroot'<br>}<br>=
ERROR: Task (/home/user/openembedded/openembedded-core/build/tmp-glibc/deplo=
y/sdk/new/layers/openembedded-core/meta/recipes-core/glibc/glibc-locale_2.30=
.bb:do_populate_lic) failed with exit code 'setscene whitelist'<br>NOTE: Tas=
ks Summary: Attempted 19 tasks of which 0 didn't need to be rerun and 1 fail=
ed.<br>Can anyone please tell how can i resolve this issue.<br><br>Regards,<=
br>Vaibhav Jadhav

--jRr8yQXbhhtZmVl8YGgS--

--ZKgEP4fFiwAjhkbtxbvN--
