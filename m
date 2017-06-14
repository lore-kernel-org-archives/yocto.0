Return-Path: <laurent.gauthier@soccasys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC814E00B87; Wed, 14 Jun 2017 08:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A5CE00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 08:39:57 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id s3so2810216oia.0
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 08:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=soccasys-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=iOn7o9SMES6vUCpnVvyOQSkZPhJnoeYMQJLSCJWMf4g=;
	b=sTRhwYuGiFuLKhS9nNViSrs3SIj48MGgJB5gS6Tsjl0ouwpsvIRV2ZZREJ9BnQLIr3
	wVvS611s8vnQunEhKop00C12m7sFvjU7KGZ3zRsB7W/lvphv+ofmik8Jm8aZf5Kt6/xV
	E/7J7zxn15unR0cfTi37ganbTASOACdi9BHI+LBT4T+r1LAS/jqqDl0UxPnLihsGQWsl
	eF5Xn3EeHeZ5a03hRv7HpXacx7PK7t+OkYcE596M667DJtgaM1Mrl53Uqpxf8V84w79v
	OlWbU6ZRu861S/dKbKKdFWKknHL/hHdQrRVPl7e3IgZ6jI+CYNg8bZ6YJvmcmaqGlKVb
	WaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=iOn7o9SMES6vUCpnVvyOQSkZPhJnoeYMQJLSCJWMf4g=;
	b=bD5B1TVqshsDoySsJKiPLN7Dfeon48vzTcO1umykgYQO6RYA08t65FVdLx7mqNv9UO
	TexTHAtbZNHbv9ccubQzZogiLaJNkmKmmhRQ2utN94Avoq7lTbDqy+4XSsDllVjQO6Sj
	Bz4G1kdzoB9sJpsTMOSnxi6/AB855EZl56YzDvOdkjIeBfjs58iamAmudWg8FFKdzQ6N
	w81asfspSu316TApBvbMOkNVRkgvGALMd4mvVCg/b2scnTT1hwGQuYxYhdr9FOWun8gH
	1U1Lmg5WRUCE5em3oalHxQGgls7ACPaSg6vvJaWeJ0dNeH0X3T5ZGgeZdSq2WGo3n6yA
	fRfw==
X-Gm-Message-State: AKS2vOza/WJSgysZJ5n/OmEUWOk0x7InU2BJs7RfqD0G0IJAGKrKfy1G
	O2lDdUyxZWo9iotUKB7ylXOrJHztdr3W
X-Received: by 10.202.236.85 with SMTP id k82mr567630oih.192.1497454796553;
	Wed, 14 Jun 2017 08:39:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.144.146 with HTTP; Wed, 14 Jun 2017 08:39:16 -0700 (PDT)
In-Reply-To: <CAAGWnH3Omn5-1AwHZ4rpQjN1FuM9MctT7kLwh=gY7hGG=muKgQ@mail.gmail.com>
References: <CAAGWnH3Omn5-1AwHZ4rpQjN1FuM9MctT7kLwh=gY7hGG=muKgQ@mail.gmail.com>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Wed, 14 Jun 2017 17:39:16 +0200
Message-ID: <CAGbd71Sm4hmBpAofMBGHb+DPwV5akUpzT=fmr=R=1r4ebG1zLA@mail.gmail.com>
To: Charmi Suchak <charmi.suchak@volansystech.com>
Cc: yocto@yoctoproject.org
Subject: Re: Issue building core-image-minimal
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
X-List-Received-Date: Wed, 14 Jun 2017 15:39:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Charmi,

I am not entirely sure of what is going on in your case, but one
possible issue that could occur is that you are behind a network proxy
inside a corporate network.

When using the GIT protocol (as in the case you are showing) you might
need to configure git to use your proxy properly.

As a starting point you could refer to the following wiki page:
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

I hope this helps, Laurent.

On Wed, Jun 14, 2017 at 2:43 PM, Charmi Suchak
<charmi.suchak@volansystech.com> wrote:
> Hi,
>
> I am new to Yocto Project and I am taking training for Yocto.I have a bas=
ic
> understanding about Yocto. I was going through the quick start guide and
> followed all the steps to build custom linux for core-image-minimal. When=
 I
> give the commands:
>
> bitbake core-image-minimal I get the following error for binutils package=
:
>
> ERROR: Function failed: Fetcher failure: Fetch command failed with exit c=
ode
> 128, output:
> fatal: repository
> '/home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/sour=
ceware.org.git.binutils-gdb.git/'
> does not exist
>
> ERROR: Logfile of failure stored in:
> /home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linu=
x/binutils-cross-i586/2.25.1-r0/temp/log.do_unpack.14306
> Log data follows:
> | DEBUG: Executing python function do_unpack
> | DEBUG: Executing python function base_do_unpack
> | DEBUG: Running export SSH_AUTH_SOCK=3D"/run/user/1000/keyring-jlXvjg/ss=
h";
> export
> PATH=3D"/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/texinfo-dummy-native:/home/charmi/charmi/charmi/Train=
ing/yocto/poky/scripts:/home/charmi/charmi/charmi/Training/yocto/poky/build=
/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux:/home/charmi/charmi/char=
mi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/home/charmi/charmi/c=
harmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky=
-linux/crossscripts:/home/charmi/charmi/charmi/Training/yocto/poky/build/tm=
p/sysroots/x86_64-linux/usr/sbin:/home/charmi/charmi/charmi/Training/yocto/=
poky/build/tmp/sysroots/x86_64-linux/usr/bin:/home/charmi/charmi/charmi/Tra=
ining/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/home/charmi/charmi/c=
harmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/bin:/home/charmi/=
charmi/charmi/Training/yocto/poky/scripts:/home/charmi/charmi/charmi/Traini=
ng/yocto/poky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin=
:/sbin:/bin:/usr/games:/usr/local/games";
> export HOME=3D"/home/charmi"; git -c core.fsyncobjectfiles=3D0 clone -s -=
n
> /home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/sourc=
eware.org.git.binutils-gdb.git/
> /home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linu=
x/binutils-cross-i586/2.25.1-r0/git/
> | DEBUG: Python function base_do_unpack finished
> | DEBUG: Python function do_unpack finished
> | ERROR: Function failed: Fetcher failure: Fetch command failed with exit
> code 128, output:
> | fatal: repository
> '/home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/sour=
ceware.org.git.binutils-gdb.git/'
> does not exist
> |
> ERROR: Task 371
> (/home/charmi/charmi/charmi/Training/yocto/poky/meta/recipes-devtools/bin=
utils/binutils-cross_2.25.1.bb,
> do_unpack) failed with exit code '1'
>
> binutils-2.25.1.inc
>
> I checked the source uri for this in the following file:
>
> poky/meta/recipes-devtools/binutils/binutils-2.25.1.inc
>
> SRC_URI=3D/
> git://sourceware.org/git/binutils-gdb.git;branch=3Dbinutils-${BINUPV}-bra=
nch;protocol=3Dgit
>
> I tried to ping at the URL and i am able to ping.
>
> Can you please help me resolve this issue.
>
> Thanks for the help in Advance.
>
> --
>
> Regards
> Charmi Suchak
> Associate Engineer
> =E1=90=A7
> =E1=90=A7
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com

