Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.1475.1576030697565573811
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 18:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBB2IGsF018567
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 10 Dec 2019 18:18:16 -0800
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 10 Dec
 2019 18:18:15 -0800
Subject: Re: [yocto] [meta-selinux] Dependency loop help with selinux userspace/python3/util-linux
To: <peter.morrow@microsoft.com>,
        "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
CC: <yocto@lists.yoctoproject.org>
References: <e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsoft.com>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <52cc753c-0a76-88c1-f65c-eb15ce6a4475@windriver.com>
Date: Wed, 11 Dec 2019 10:18:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsoft.com>
X-Originating-IP: [128.224.162.174]
Content-Type: multipart/alternative;
	boundary="------------658A431C8943E437DB06B4D3"
Content-Language: en-US

--------------658A431C8943E437DB06B4D3
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id xBB2IGsF018567


On 12/5/19 9:46 PM, Peter Morrow via Lists.Yoctoproject.Org wrote:
> Hi Folks,
>
> I'm trying to upgrade the meta-selinux layer to use a newer version of
> the selinux userspace tools (from 2.8 to 2.9), in doing so these newer
> userspace tools now depend on python3 instead of python2.  This
> unfortunately has created a build time dependency loop in yocto:
>
> python3 --> util-linux --> libselinux --> python3 (used to be python2
> with 2.8 selinux userspace).


Hi Peter,

I had sent a series patches to update selinux usersapce tools from 2.8=20
ot 2.9:=20
https://www.yoctoproject.org/pipermail/yocto/2019-November/047329.html

After switch to python3, there is a loop dependency error with=20
libselinux-python package when build libselinux. So I split the original=20
libselinux recipe into=C2=A0 libselinux and libselinux-python. You can re=
fer=20
my patchset.


//Yi


> Running "bitbake libselinux" results in a pile of loops, the one below
> illustrates the point.
>
> ERROR:
> Dependency loop #1 found:
>    Task /workspace/git/yocto-selinux/meta-selinux/recipes-
> security/selinux/libselinux_2.9.bb:do_package (dependent Tasks ['gcc-
> runtime_9.2.bb:do_packagedata', 'libsepol_2.9.bb:do_packagedata',
> 'rpm_4.14.2.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
> 'python3_3.7.5.bb:do_packagedata', 'libpcre_8.43.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot',
> 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'libselinux_2.9.bb:do_install'])
>    Task /workspace/git/yocto-selinux/meta-selinux/recipes-
> security/selinux/libselinux_2.9.bb:do_packagedata (dependent Tasks
> ['libselinux_2.9.bb:do_package'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-
> extended/pam/libpam_1.3.1.bb:do_package (dependent Tasks ['gcc-
> runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_packagedata', 'libselinux_2.9.bb:do_packagedata',
> 'flex_2.6.0.bb:do_packagedata', 'pseudo_git.bb:do_populate_sysroot',
> 'libxcrypt_4.4.8.bb:do_packagedata', 'libpam_1.3.1.bb:do_install',
> 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'cracklib_2.9.5.bb:do_packagedata', 'libtool-
> cross_2.4.6.bb:do_packagedata'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-
> extended/pam/libpam_1.3.1.bb:do_packagedata (dependent Tasks
> ['libpam_1.3.1.bb:do_package'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
> linux/util-linux_2.34.bb:do_package (dependent Tasks ['gcc-
> runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'bash-completion_2.9.bb:do_packagedata',
> 'zlib_1.2.11.bb:do_packagedata', 'glibc_2.30.bb:do_packagedata',
> 'libselinux_2.9.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_packagedata',
> 'libxcrypt_4.4.8.bb:do_packagedata', 'libcap-
> ng_0.7.9.bb:do_packagedata', 'opkg-utils_0.4.1.bb:do_packagedata',
> 'libpam_1.3.1.bb:do_packagedata', 'util-
> linux_2.34.bb:do_install_ptest_base',
> 'dwarfsrcfiles.bb:do_populate_sysroot', 'util-
> linux_2.34.bb:do_install', 'libtool-cross_2.4.6.bb:do_packagedata'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
> linux/util-linux_2.34.bb:do_packagedata (dependent Tasks ['util-
> linux_2.34.bb:do_package'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-
> devtools/python/python3_3.7.5.bb:do_package (dependent Tasks
> ['xz_5.2.4.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
> 'gdbm_1.18.1.bb:do_packagedata', 'libnsl2_git.bb:do_packagedata', 'gcc-
> runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'python3_3.7.5.bb:do_install', 'libffi_3.3~rc0.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot',
> 'sqlite3_3.29.0.bb:do_packagedata', 'openssl_1.1.1d.bb:do_packagedata',
> 'libtirpc_1.1.4.bb:do_packagedata', 'zlib_1.2.11.bb:do_packagedata',
> 'glibc_2.30.bb:do_packagedata', 'libxcrypt_4.4.8.bb:do_packagedata',
> 'python3_3.7.5.bb:do_install_ptest_base', 'util-
> linux_2.34.bb:do_packagedata', 'opkg-utils_0.4.1.bb:do_packagedata',
> 'readline_8.0.bb:do_packagedata',
> 'dwarfsrcfiles.bb:do_populate_sysroot', 'libtool-
> cross_2.4.6.bb:do_packagedata'])
>    Task /workspace/git/yocto-selinux/poky/meta/recipes-
> devtools/python/python3_3.7.5.bb:do_packagedata (dependent Tasks
> ['python3_3.7.5.bb:do_package'])
>
> Python3 (3.7.5) appears to depend on util-linux for libuuid support, so
> I don't think anything can be done with regards to this.  libselinux
> now depends on python3 as of 2.9, so again not much can be done here.
> It's proving a bit harder to track down the util-linux dependency on
> libselinux but I believe this is a hard depdency as well.
>
> I'm using the master branch of both poky and meta-selinux for testing,
> my local.conf file has the following to enable testing:
>
> DISTRO_FEATURES_append=3D" acl xattr pam selinux"
>
> The crux of the libselinux recipe change is really just changing the
> python2 deps over to python3 ones in meta-selinux/recipes-
> security/selinux/libselinux.inc.
>
> At this point I'd be trying to look for places where recipes can be
> split out to remove the loop, but nothing jumps out at me.
>
> Can anyone offer any advice or pointers on how to get around this?  Or
> am I just stuffed?
>
> Many Thanks,
> Peter.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47570): https://lists.yoctoproject.org/g/yocto/mess=
age/47570
> Mute This Topic: https://lists.yoctoproject.org/mt/66953299/3616783
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [yi.zhao@win=
driver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--------------658A431C8943E437DB06B4D3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id xBB2IGsF018567

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 12/5/19 9:46 PM, Peter Morrow via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsof=
t.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Folks,

I'm trying to upgrade the meta-selinux layer to use a newer version of
the selinux userspace tools (from 2.8 to 2.9), in doing so these newer
userspace tools now depend on python3 instead of python2.  This
unfortunately has created a build time dependency loop in yocto:

python3 --&gt; util-linux --&gt; libselinux --&gt; python3 (used to be py=
thon2
with 2.8 selinux userspace).
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Peter,</p>
    <p>I had sent a series patches to update selinux usersapce tools
      from 2.8 ot 2.9:
      <a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject=
.org/pipermail/yocto/2019-November/047329.html">https://www.yoctoproject.=
org/pipermail/yocto/2019-November/047329.html</a></p>
    <p>After switch to python3, there is a loop dependency error with
      libselinux-python package when build libselinux. So I split the
      original libselinux recipe into=C2=A0 libselinux and libselinux-pyt=
hon.
      You can refer my patchset.</p>
    <p><br>
    </p>
    <p>//Yi</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:e95481c9b63c68e8545662310bf6cbd2f4bd6f71.camel@microsof=
t.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
Running "bitbake libselinux" results in a pile of loops, the one below
illustrates the point.

ERROR:
Dependency loop #1 found:
  Task /workspace/git/yocto-selinux/meta-selinux/recipes-
security/selinux/libselinux_2.9.bb:do_package (dependent Tasks ['gcc-
runtime_9.2.bb:do_packagedata', 'libsepol_2.9.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
'python3_3.7.5.bb:do_packagedata', 'libpcre_8.43.bb:do_packagedata',
'pseudo_git.bb:do_populate_sysroot',
'dwarfsrcfiles.bb:do_populate_sysroot',
'libselinux_2.9.bb:do_install'])
  Task /workspace/git/yocto-selinux/meta-selinux/recipes-
security/selinux/libselinux_2.9.bb:do_packagedata (dependent Tasks
['libselinux_2.9.bb:do_package'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-
extended/pam/libpam_1.3.1.bb:do_package (dependent Tasks ['gcc-
runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
'glibc_2.30.bb:do_packagedata', 'libselinux_2.9.bb:do_packagedata',
'flex_2.6.0.bb:do_packagedata', 'pseudo_git.bb:do_populate_sysroot',
'libxcrypt_4.4.8.bb:do_packagedata', 'libpam_1.3.1.bb:do_install',
'dwarfsrcfiles.bb:do_populate_sysroot',
'cracklib_2.9.5.bb:do_packagedata', 'libtool-
cross_2.4.6.bb:do_packagedata'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-
extended/pam/libpam_1.3.1.bb:do_packagedata (dependent Tasks
['libpam_1.3.1.bb:do_package'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
linux/util-linux_2.34.bb:do_package (dependent Tasks ['gcc-
runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
'bash-completion_2.9.bb:do_packagedata',
'zlib_1.2.11.bb:do_packagedata', 'glibc_2.30.bb:do_packagedata',
'libselinux_2.9.bb:do_packagedata',
'pseudo_git.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_packagedata',
'libxcrypt_4.4.8.bb:do_packagedata', 'libcap-
ng_0.7.9.bb:do_packagedata', 'opkg-utils_0.4.1.bb:do_packagedata',
'libpam_1.3.1.bb:do_packagedata', 'util-
linux_2.34.bb:do_install_ptest_base',
'dwarfsrcfiles.bb:do_populate_sysroot', 'util-
linux_2.34.bb:do_install', 'libtool-cross_2.4.6.bb:do_packagedata'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-core/util-
linux/util-linux_2.34.bb:do_packagedata (dependent Tasks ['util-
linux_2.34.bb:do_package'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-
devtools/python/python3_3.7.5.bb:do_package (dependent Tasks
['xz_5.2.4.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
'gdbm_1.18.1.bb:do_packagedata', 'libnsl2_git.bb:do_packagedata', 'gcc-
runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
'python3_3.7.5.bb:do_install', 'libffi_3.3~rc0.bb:do_packagedata',
'pseudo_git.bb:do_populate_sysroot',
'sqlite3_3.29.0.bb:do_packagedata', 'openssl_1.1.1d.bb:do_packagedata',
'libtirpc_1.1.4.bb:do_packagedata', 'zlib_1.2.11.bb:do_packagedata',
'glibc_2.30.bb:do_packagedata', 'libxcrypt_4.4.8.bb:do_packagedata',
'python3_3.7.5.bb:do_install_ptest_base', 'util-
linux_2.34.bb:do_packagedata', 'opkg-utils_0.4.1.bb:do_packagedata',
'readline_8.0.bb:do_packagedata',
'dwarfsrcfiles.bb:do_populate_sysroot', 'libtool-
cross_2.4.6.bb:do_packagedata'])
  Task /workspace/git/yocto-selinux/poky/meta/recipes-
devtools/python/python3_3.7.5.bb:do_packagedata (dependent Tasks
['python3_3.7.5.bb:do_package'])

Python3 (3.7.5) appears to depend on util-linux for libuuid support, so
I don't think anything can be done with regards to this.  libselinux
now depends on python3 as of 2.9, so again not much can be done here.=20
It's proving a bit harder to track down the util-linux dependency on
libselinux but I believe this is a hard depdency as well.

I'm using the master branch of both poky and meta-selinux for testing,
my local.conf file has the following to enable testing:

DISTRO_FEATURES_append=3D" acl xattr pam selinux"

The crux of the libselinux recipe change is really just changing the
python2 deps over to python3 ones in meta-selinux/recipes-
security/selinux/libselinux.inc.

At this point I'd be trying to look for places where recipes can be
split out to remove the loop, but nothing jumps out at me.

Can anyone offer any advice or pointers on how to get around this?  Or
am I just stuffed?

Many Thanks,
Peter.

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47570): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47570">https://lists.yoctopr=
oject.org/g/yocto/message/47570</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/66953299/3616783">https://lists.yoctoproject.org/mt/=
66953299/3616783</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yi.zhao@windr=
iver.com">yi.zhao@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
  </body>
</html>

--------------658A431C8943E437DB06B4D3--
