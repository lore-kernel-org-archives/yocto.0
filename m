Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3408FE0059F; Tue, 31 Mar 2015 15:54:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6272DE0049A
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 15:54:30 -0700 (PDT)
Received: by wgoe14 with SMTP id e14so34878735wgo.0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 15:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2iVdkJ/uIhU/xkJAbMOo9VTJJhIn4lgQ/I2mCnmgJhE=;
	b=C1uRzbJpnqkne2igIH22OELViOsQmY4B0Ex/QrPnY1XhN9RIN1xUTVxaXJB32wXpig
	+QlwyXQx8xdgaHaORs/AwY1xyW8lPJRQ25JoEfbDtjQqhv/Gk760I4EsXO0ESrViAcfn
	e3N/JBGTAWLHiE1ECnr5gbzroPpUFieIuVi8iX6N40ry0aycsqmcWimgeYxwYIqJzbiz
	AfmbRGJoFEJa3L6MjClmtvkWrV/oSC+TfI/nzRgUCW44nWH8qy30xnu3bmg+GJw+QrQJ
	cgoJ6vYRoxh2GmcIiaXAJVWgi48rugzpne722SBkbxDbut4FWYSEW69u7sm4FxIoJhLy
	VggQ==
X-Gm-Message-State: ALoCoQnRJ9Z1kMEDXu7ibo15WdhZJFl278bvSlPqnxRAb2rEPAi+85x2wM92JhgyjV7H+ar6YsBN
X-Received: by 10.180.96.37 with SMTP id dp5mr9531009wib.41.1427842469486;
	Tue, 31 Mar 2015 15:54:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.193 with HTTP; Tue, 31 Mar 2015 15:54:09 -0700 (PDT)
X-Originating-IP: [89.136.6.31]
In-Reply-To: <CAH0sG7tjTfYY7Tx_Eb-seWTKWCHLWdCW4Hkx5vgi28KjSGK_1Q@mail.gmail.com>
References: <CAH0sG7tjTfYY7Tx_Eb-seWTKWCHLWdCW4Hkx5vgi28KjSGK_1Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 Apr 2015 00:54:09 +0200
Message-ID: <CAK18fxGnm+iOxO8wr5qNrSJXC=wiUYX944FpdzRJFnpvZoHODg@mail.gmail.com>
To: Tzy User <tzy13888@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RaspberryPi B+, bitbake make killed, unfinished jobs
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
X-List-Received-Date: Tue, 31 Mar 2015 22:54:35 -0000
Content-Type: multipart/alternative; boundary=f46d0444815130775405129d7b4a

--f46d0444815130775405129d7b4a
Content-Type: text/plain; charset=UTF-8

Hello Tzy,

On Sun, Mar 29, 2015 at 6:59 AM, Tzy User <tzy13888@gmail.com> wrote:

> I am trying to build a new kernel for RaspberryPi model B+ with this
> configuration:
>
> Build Configuration:
> BB_VERSION        = "1.24.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Debian-GNU-Linux-7"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.7.1"
> TUNE_FEATURES     = "arm armv6 vfp"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "dizzy-dev:82c843842854c7e2e87bf7762c3f9e83b3e2bf1b"
> meta-raspberrypi  = "dizzy-dev:efd760d0a2c027fe20ed190c56f416d0a47d7c41"
>
>
> The make gets killed, then waiting for unfinished jobs...
> .
> /bin/bash
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
> tmp-opinit.c insn-opinit.c
> echo timestamp > s-opinit
> build/genautomata
>
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/config/arm/
> arm.md
> \
>  insn-conditions.md > tmp-automata.c
> /bin/bash: line 1: 16677 Killed                  build/genautomata
>
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/config/arm/
> arm.md
> insn-conditions.md > tmp-automata.c
> make[1]: *** [s-automata] Error 137
> make[1]: *** Waiting for unfinished jobs....
> /bin/bash
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
> tmp-attrtab.c    insn-attrtab.c
> /bin/bash
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
> tmp-dfatab.c     insn-dfatab.c
> /bin/bash
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
> tmp-latencytab.c insn-latencytab.c
> echo timestamp > s-attrtab
> rm gcc.pod
> make[1]: Leaving directory
>
> `/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux-gnueabi/gcc-cross-arm/4.9.1-r0/gcc-4.9.1/build.x86_64-linux.arm-poky-linux-gnueabi/gcc'
> make: *** [all-gcc] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at
>
> /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux-gnueabi/gcc-cross-arm/4.9.1-r0/temp/log.do_compile.15332)
>

This is indeed strange. Can you test and see if other kernel providers get
compiled? For example one for a qemuarm machine.

-- 
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--f46d0444815130775405129d7b4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Tzy,<br><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Sun, Mar 29, 2015 at 6:59 AM, Tzy User <span dir=3D"ltr">&=
lt;<a href=3D"mailto:tzy13888@gmail.com" target=3D"_blank">tzy13888@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I am trying to b=
uild a new kernel for RaspberryPi model B+ with this<br>
configuration:<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Debian-GNU-Linux-7&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi&quot;=
<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv6 vfp&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;dizzy-dev:82c843842854c7e2e87bf7762c3=
f9e83b3e2bf1b&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;dizzy-dev:efd760d0a2c027fe20ed190c56f416d0=
a47d7c41&quot;<br>
<br>
<br>
The make gets killed, then waiting for unfinished jobs...<br>
.<br>
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/g=
cc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change<br>
tmp-opinit.c insn-opinit.c<br>
echo timestamp &gt; s-opinit<br>
build/genautomata<br>
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r=
0/gcc-4.9.1/gcc/config/arm/<a href=3D"http://arm.md" target=3D"_blank">arm.=
md</a><br>
\<br>
=C2=A0<a href=3D"http://insn-conditions.md" target=3D"_blank">insn-conditio=
ns.md</a> &gt; tmp-automata.c<br>
/bin/bash: line 1: 16677 Killed=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 build/genautomata<br>
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r=
0/gcc-4.9.1/gcc/config/arm/<a href=3D"http://arm.md" target=3D"_blank">arm.=
md</a><br>
<a href=3D"http://insn-conditions.md" target=3D"_blank">insn-conditions.md<=
/a> &gt; tmp-automata.c<br>
make[1]: *** [s-automata] Error 137<br>
make[1]: *** Waiting for unfinished jobs....<br>
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/g=
cc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change<br>
tmp-attrtab.c=C2=A0 =C2=A0 insn-attrtab.c<br>
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/g=
cc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change<br>
tmp-dfatab.c=C2=A0 =C2=A0 =C2=A0insn-dfatab.c<br>
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/g=
cc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change<br>
tmp-latencytab.c insn-latencytab.c<br>
echo timestamp &gt; s-attrtab<br>
rm gcc.pod<br>
make[1]: Leaving directory<br>
`/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux=
-gnueabi/gcc-cross-arm/4.9.1-r0/gcc-4.9.1/build.x86_64-linux.arm-poky-linux=
-gnueabi/gcc&#39;<br>
make: *** [all-gcc] Error 2<br>
ERROR: oe_runmake failed<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_compile (log file is located at<br>
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux-=
gnueabi/gcc-cross-arm/4.9.1-r0/temp/log.do_compile.15332)<br></blockquote><=
div><br></div><div>This is indeed strange. Can you test and see if other ke=
rnel providers get compiled? For example one for a qemuarm machine.=C2=A0</=
div><div>=C2=A0</div></div>-- <br><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div style=3D"text-align:center"></div><div =
style=3D"text-align:center"><div align=3D"left"><b style=3D"font-family:Ari=
al;font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b=
><br></div><div align=3D"left"><b style=3D"font-family:Arial;font-size:smal=
l;color:rgb(51,51,51);text-align:center">e: </b><span style=3D"font-family:=
Arial;font-size:small;color:rgb(51,51,51);text-align:center"><i><a href=3D"=
mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a></i></span=
></div><div align=3D"left"><span style=3D"font-family:Arial;font-size:small=
;color:rgb(51,51,51);text-align:center"><i><b>w:</b> </i><a href=3D"http://=
www.gherzan.ro" target=3D"_blank">www.gherzan.ro</a></span></div></div></di=
v></div></div></div>
</div></div>

--f46d0444815130775405129d7b4a--
