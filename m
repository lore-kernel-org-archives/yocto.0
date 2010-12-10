Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC1674C80FA4
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 21:11:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2010 19:11:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="685723482"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 19:11:06 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 10 Dec 2010 11:09:57 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 10 Dec 2010 11:09:37 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 10 Dec 2010 11:09:36 +0800
Thread-Topic: Some simple tests about pseudo performance
Thread-Index: AcuYF60UExcOL3q6R/K5IicexQbiHA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6A87@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Seebach, Peter" <peter.seebach@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Some simple tests about pseudo performance
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Dec 2010 03:11:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I did some simple tests for pseudo performance.=20

I wrote a simple program which is repeatedly calling fopen, fflush, and fcl=
ose, which should be sensitive to pseudo/fakeroot since they trap the syste=
m calls.

I run the program on native, fakeroot, and pseudo.=20

int main()
{
        FILE *fp;
        int i;

        for (i =3D 0; i < 1000000; i++) {
                fp =3D fopen("/tmp/12321.txt", "w");
                fflush(fp);
                fclose(fp);
        }
        return 0;
}

Test results are:

Native:   2.729 secs
Fakeroot: 2.752 secs
Pseudo:   51.814 secs

We saw pseudo cost about 20 times of seconds than native and fakeroot.

I did a profile when the program is running. From the following table we sa=
w that a lot of cycles are within sqlite3 operations...

I am wondering whether this point can be optimized? For example, is it work=
able to cache those database operations in memory and finally flush it into=
 disk when pseudo exits?

It's just a first thought and any suggestion and comment is welcome.

Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a unit =
mask of 0x00 (No unit mask) count 100000
samples  %        image name               app name                 symbol =
name
693127   58.2980  no-vmlinux               no-vmlinux               /no-vml=
inux
211108   17.7560  libsqlite3.so.0.8.6      libsqlite3.so.0.8.6      /usr/li=
b/libsqlite3.so.0.8.6
112269    9.4428  libc-2.10.1.so           libc-2.10.1.so           /lib/tl=
s/i686/cmov/libc-2.10.1.so
16792     1.4124  [vdso] (tgid:28674 range:0xfd0000-0xfd1000) a.out        =
            [vdso] (tgid:28674 range:0xfd0000-0xfd1000)
15256     1.2832  libpthread-2.10.1.so     libpthread-2.10.1.so     pthread=
_mutex_lock
13163     1.1071  libpthread-2.10.1.so     libpthread-2.10.1.so     __pthre=
ad_mutex_unlock_usercnt
7386      0.6212  libpseudo.so             libpseudo.so             pseudo_=
client_op
6753      0.5680  libpseudo.so             libpseudo.so             pseudo_=
debug_real
6680      0.5618  pseudo                   pseudo                   pseudo_=
server_start
6663      0.5604  [vdso] (tgid:28676 range:0x8d6000-0x8d7000) pseudo       =
            [vdso] (tgid:28676 range:0x8d6000-0x8d7000)
5049      0.4247  pseudo                   pseudo                   pseudo_=
op
4906      0.4126  [vdso] (tgid:28467 range:0xd32000-0xd33000) a.out        =
            [vdso] (tgid:28467 range:0xd32000-0xd33000)
4427      0.3723  [vdso] (tgid:28607 range:0x5c0000-0x5c1000) a.out        =
            [vdso] (tgid:28607 range:0x5c0000-0x5c1000)
4391      0.3693  [vdso] (tgid:29027 range:0x6d0000-0x6d1000) a.out        =
            [vdso] (tgid:29027 range:0x6d0000-0x6d1000)
4188      0.3522  [vdso] (tgid:29172 range:0x41a000-0x41b000) a.out        =
            [vdso] (tgid:29172 range:0x41a000-0x41b000)
3584      0.3014  [vdso] (tgid:2411 range:0x892000-0x893000) a.out         =
           [vdso] (tgid:2411 range:0x892000-0x893000)
2985      0.2511  pseudo                   pseudo                   pseudo_=
debug_real
2921      0.2457  postgres                 postgres                 /usr/li=
b/postgresql/8.3/bin/postgres
2905      0.2443  vim.basic                vim.basic                /usr/bi=
n/vim.basic
2449      0.2060  bash                     bash                     /bin/ba=
sh
2439      0.2051  libpseudo.so             libpseudo.so             fopen
2163      0.1819  [vdso] (tgid:28609 range:0x3da000-0x3db000) pseudo       =
            [vdso] (tgid:28609 range:0x3da000-0x3db000)
2096      0.1763  [vdso] (tgid:29029 range:0xfef000-0xff0000) pseudo       =
            [vdso] (tgid:29029 range:0xfef000-0xff0000)
2086      0.1755  libpseudo.so             libpseudo.so             pseudo_=
append_element
1917      0.1612  [vdso] (tgid:28469 range:0xe72000-0xe73000) pseudo       =
            [vdso] (tgid:28469 range:0xe72000-0xe73000)
1835      0.1543  libpseudo.so             libpseudo.so             wrap_fo=
pen
1833      0.1542  libpseudo.so             libpseudo.so             pseudo_=
msg_receive
1819      0.1530  libpseudo.so             libpseudo.so             __lxsta=
t64
1762      0.1482  libpseudo.so             libpseudo.so             __i686.=
get_pc_thunk.bx

Thanks,
Dongxiao =

