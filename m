Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15275E00C5F; Tue,  8 Jan 2019 18:41:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1662DE00B81
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 18:41:25 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id t33so6822986qtt.4
	for <yocto@yoctoproject.org>; Tue, 08 Jan 2019 18:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=SNHRO4LyXxouixisuNnAsxwkaUzwny/LkjQwKeBBdTY=;
	b=PeadNE9H2IlYIozFkQLYXjsoKaLkBcPTSxtU7uJtIgRTRDcuNGRs11xIsg/XpFqLRO
	Ypkilck3W4q4/TJ3sz/QVV/4yebe/qJaebPF8GSmgiTMK0XcBZrYcGUfoBaZAkh7ZUBM
	u9Cmp2cvBhNQJ1Sw6a2VaTNlXLIHu/OPdEnDNeZ++QgYxvOBvyGDlk5l3SFSl1EQFCdr
	LXjM1JcPrVSUTE3eOY6mQd7zeZIFySZNZ8I/lUuFMzgRmvtWkLB8WvwLospFT4GupixG
	AWzo+YZyOcjeERMrt+1gQkXpm3HwXSu/rE2pMM/tTgbhrWarna1MuBn9w1ZpuQWkpbIo
	cnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=SNHRO4LyXxouixisuNnAsxwkaUzwny/LkjQwKeBBdTY=;
	b=gUqyLtflfQhSRx35TfKW3vAr+iSU7IhELyn01DGhexYLZCVM50gtNdRcmyh6mxdfJU
	7hui6UHV4S4R9I+Ks8d8ztzsBN1kgWal96a0f/gFx0kT7AzG7q9vshfpSDhQOFaiFPHC
	85CuYI8q7gJFijZz6ibddR84A+3jzTNNCWXdMLzRPxj6UQ8SZ7NDiDaQ71KnXlQpvK4W
	xyFL3OFFITNE1XogzJp6fbU8XZP3ewlb0dWGkw8WofWDSQCbCylSDCjVHKPqvCRrHmeZ
	rZAaLvIEzNfaaILc5Ky1n/xvOL1MEe9BLBdxGDvWA+5GtVhEqABRKszzeDwGfDdfnxgW
	Wraw==
X-Gm-Message-State: AJcUuke36/HXOV/sMgrdEhfXW5cxSmcVlC3yOIYu63L/Jc7tsZDKujvJ
	0D8nKiOF30JD9E+oguJa7JvkJGdLbY7lo/tyCaCMfKCn
X-Google-Smtp-Source: ALg8bN6jX0XY7/5bCe0L00B8Zvg0fPisorOono3TEpIJBjhtzNlQsmIWIlFS61nL7AsFtD5NyFJmFKbqlZhf4MmbMwg=
X-Received: by 2002:a0c:98a1:: with SMTP id f30mr3955890qvd.224.1547001685081; 
	Tue, 08 Jan 2019 18:41:25 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzADpC_185uPi3W+7-fUkKPtOXNp0DLH3_oOf76rPT8fQ@mail.gmail.com>
In-Reply-To: <CAKRytNzADpC_185uPi3W+7-fUkKPtOXNp0DLH3_oOf76rPT8fQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Jan 2019 18:40:58 -0800
Message-ID: <CAMKF1spLith1NqWCBg4eJKRZFUv9-CZo79NpY7NpCGBP9HpABw@mail.gmail.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot update dhcpcd receipe from v6.11.5 to v7.x.x
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2019 02:41:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 8, 2019 at 3:48 PM Stefano Cappa
<stefano.cappa.ks89@gmail.com> wrote:
>
> Hi!
> I'm using Yocto THUD and I'm trying to update dhcpcd (meta-openembedded/m=
eta-networking) from 6.11.5 to 7.0.8 (https://roy.marples.name/downloads/dh=
cpcd/dhcpcd-7.0.8.tar.xz) only to do some experiments, however I think that=
 it's correct to migrate to the new version.
>
> I modified the recipe to download version 7.0.8, but when it's building i=
t throws this error:
>
> ERROR: dhcpcd-7.0.8-r0 do_configure: configure failed
> ERROR: dhcpcd-7.0.8-r0 do_configure: Function failed: do_configure (log f=
ile is located at /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky=
-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.90966)
> ERROR: Logfile of failure stored in: /home/ks89/git/poky/build/tmp/work/c=
ortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/temp/log.do_configure.9=
0966
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_configure
> | NOTE: Running ./configure  --build=3Dx86_64-linux    --host=3Darm-poky-=
linux-gnueabi    --target=3Darm-poky-linux-gnueabi    --prefix=3D/usr    --=
exec_prefix=3D/usr    --bindir=3D/usr/bin    --sbindir=3D/usr/sbin    --lib=
execdir=3D/usr/libexec    --datadir=3D/usr/share    --sysconfdir=3D/etc    =
--sharedstatedir=3D/com    --localstatedir=3D/var    --libdir=3D/usr/lib   =
 --includedir=3D/usr/include    --oldincludedir=3D/usr/include    --infodir=
=3D/usr/share/info    --mandir=3D/usr/share/man    --disable-silent-rules  =
  --disable-dependency-tracking    --with-libtool-sysroot=3D/home/ks89/git/=
poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/re=
cipe-sysroot --enable-ipv4 --disable-static  --enable-ipv6 --with-udev
> | configure args: --build=3Dx86_64-linux --host=3Darm-poky-linux-gnueabi =
--target=3Darm-poky-linux-gnueabi --prefix=3D/usr --exec_prefix=3D/usr --bi=
ndir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=
=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=
=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include --oldincludedir=3D/=
usr/include --infodir=3D/usr/share/info --mandir=3D/usr/share/man --disable=
-silent-rules --disable-dependency-tracking --with-libtool-sysroot=3D/home/=
ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.=
0.8-r0/recipe-sysroot --enable-ipv4 --disable-static --enable-ipv6 --with-u=
dev
> | ./configure: WARNING: unknown option --exec_prefix
> | ./configure: WARNING: unknown option --sharedstatedir
> | ./configure: WARNING: unknown option --oldincludedir
> | ./configure: WARNING: unknown option --with-libtool-sysroot
> | ./configure: WARNING: unknown option --with-udev
> | Deriving operating system from ... arm-poky-linux-gnueabi
> | Configuring dhcpcd for ... linux
> | Enabling INET support
> | Enabling ARP support
> | Enabling ARPing support
> | Enabling IPv4LL support
> | Enabling INET6 support
> | Enabling DHCPv6 support
> | Enabling Authentication
> | Using compiler .. arm-poky-linux-gnueabi-gcc  -march=3Darmv7ve -mthumb =
-mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a7   --sysroot=3D/home/ks89/=
git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r=
0/recipe-sysroot
> | arm-poky-linux-gnueabi-gcc  -march=3Darmv7ve -mthumb -mfpu=3Dneon -mflo=
at-abi=3Dhard -mcpu=3Dcortex-a7   --sysroot=3D/home/ks89/git/poky/build/tmp=
/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-r0/recipe-sysroot d=
oes not create executables
> | NOTE: The following config.log files may provide further information.
> | NOTE: /home/ks89/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-g=
nueabi/dhcpcd/7.0.8-r0/dhcpcd-7.0.8/config.log
> | ERROR: configure failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at /home/ks89=
/git/poky/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/dhcpcd/7.0.8-=
r0/temp/log.do_configure.90966)
>
> Also, the content of "config.log" is :
>        cc1: error: include location "/usr/include" is unsafe for cross-co=
mpilation [-Werror=3Dpoison-system-directories]
>        cc1: all warnings being treated as errors
>
> I compared configure files of versions 6.11.5 and 7.0.8 and they are quit=
e similar with some additions, in particular "-I|--includedir) INCLUDEDIR=
=3D"$INCLUDEDIR${INCLUDEDIR:+ }-I$var";;".
>
> In not an expert of autotools and so on, so I don't know how to fix this.
> Do you have suggestions?

The error suggests that its poking into build host for headers, so you need
to look into that usually this means it has hardcoded paths for
headers pointing to /usr/include, or it does not respect sysroot
option that compiler is passing.

>
> I added also Khem Raj, but I'm not sure if it's the maintainer of dhcpcd =
recipe.
>
> Thank u.

