Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95EFCE0073D; Mon, 25 Apr 2016 08:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S15.hotmail.com (dub004-omc3s15.hotmail.com
	[157.55.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98E8CE00566
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 08:00:49 -0700 (PDT)
Received: from DUB130-W14 ([157.55.2.9]) by DUB004-OMC3S15.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 25 Apr 2016 08:00:49 -0700
X-TMN: [/ppX91qFYygZzefQdsxFS8XvjT19VXGk]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W1404A31E54DC5663F194CFDA620@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 25 Apr 2016 16:00:48 +0100
Importance: Normal
In-Reply-To: <54885.10.252.24.10.1461091271.squirrel@linux.intel.com>
References: <54885.10.252.24.10.1461091271.squirrel@linux.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 25 Apr 2016 15:00:49.0094 (UTC)
	FILETIME=[40C6BE60:01D19F03]
Subject: Re: [Fwd: gobject introspection release notes]
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
X-List-Received-Date: Mon, 25 Apr 2016 15:00:54 -0000
Content-Type: multipart/alternative;
	boundary="_67f2cd75-11bb-4f02-aed2-2f0b8ed8de15_"

--_67f2cd75-11bb-4f02-aed2-2f0b8ed8de15_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Any ideas as to why "qemu-ppc64 crashes out immediately"?
I can confirm the build ends in a segfault when I tried building gobject-in=
trospection for the t1042d4rdb-64b machine. =20
I did get one qemu crash recorded by Fedora but the actual crash dumps (app=
ended) are for a PowerPC.  That said=2C given the dump=2C either the proces=
sor got nowhere or they are likely corrupt.  The invalid access reported is=
 roughly to the stack but with the upper 32-bits zeroed.
If I configure bitbake for a 32-bit build (t1042d4rdb) then the build fails=
 with  "Unable to find CPU definition" (cpu e5500) so a 32-bit build is out=
 of the question too.
The command line from the wrapper is:PSEUDO_UNLOAD=3D1 qemu-ppc -r 2.6.32  =
-cpu e5500 -L /home/chris/yocto/build/tmp/sysroots/t1042d4rdb -E LD_LIBRARY=
_PATH=3D$GIR_EXTRA_LIBS_PATH:.libs:/home/chris/yocto/build/tmp/sysroots/t10=
42d4rdb//usr/lib:/home/chris/yocto/build/tmp/sysroots/t1042d4rdb//lib  "$@"
The cpu is supported by the fedora qemu-ppc64=2C but not qemu-ppc - ie it's=
 a 64-bit processor that's not supported in 32-bit mode.
This is not massively urgent for me but it may be important in the future a=
nd I am curious as to whether the problem is in the qemu emulation or in th=
e emulated code.
Regards=2CChris=20

| Invalid data memory access: 0x00000000007fe8f0| NIP 00000040008046c8   LR=
 0000000000000000 CTR 0000000000000000 XER 0000000000000000 CPU#0| MSR 8000=
000000006000 HID0 0000000000000000  HF 0000000000006000 idx 0| TB 00025634 =
110100571322161| GPR00 0000000000000000 00000040007fe970 0000004000848e00 0=
0000040007fe970| GPR04 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR08 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR12 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR16 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR20 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR24 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| GPR28 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| CR 00000000  [ -  -  -  -  -  -  -  -  ]             RES f=
fffffffffffffff| FPR00 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR04 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR08 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR12 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR16 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR20 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR24 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPR28 0000000000000000 0000000000000000 0000000000000000 0=
000000000000000| FPSCR 0000000000000000| Invalid segfault errno (42000000)|=
 NIP 00000040008046c8   LR 0000000000000000 CTR 0000000000000000 XER 000000=
0000000000 CPU#0| MSR 8000000000006000 HID0 0000000000000000  HF 0000000000=
006000 idx 0| TB 00025634 110100578368626| GPR00 0000000000000000 000000400=
07fe970 0000004000848e00 00000040007fe970| GPR04 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR08 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR12 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR16 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR20 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR24 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| GPR28 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| CR 00000000  [ -  -  -  -  -  - =
 -  -  ]             RES ffffffffffffffff| FPR00 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR04 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR08 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR12 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR16 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR20 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR24 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPR28 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000| FPSCR 0000000000000000| qemu: un=
caught target signal 11 (Segmentation fault) - core dumped
 		 	   		  =

--_67f2cd75-11bb-4f02-aed2-2f0b8ed8de15_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Any ideas as to why "qemu-ppc64 =
crashes out immediately"?<div><br></div><div>I can confirm the build ends i=
n a segfault when&nbsp=3B<span style=3D"font-size: 12pt=3B">I tried buildin=
g gobject-introspection for the t1042d4rdb-64b machine. &nbsp=3B</span></di=
v><div><br></div><div>I did get one qemu crash recorded by Fedora but the a=
ctual crash dumps (appended) are for a PowerPC. &nbsp=3BThat said=2C given =
the dump=2C either the processor got nowhere or they are likely corrupt. &n=
bsp=3BThe invalid access reported is roughly to the stack but with the uppe=
r 32-bits zeroed.</div><div><br></div><div>If I configure bitbake for a 32-=
bit build (t1042d4rdb) then the build fails with &nbsp=3B"Unable to find CP=
U definition" (<span style=3D"font-size: 12pt=3B">cpu e5500) so a 32-bit bu=
ild is out of the question too</span><span style=3D"font-size: 12pt=3B">.</=
span></div><div><br></div><div>The command line from the wrapper is:</div><=
div><div>PSEUDO_UNLOAD=3D1 qemu-ppc -r 2.6.32 &nbsp=3B-cpu e5500 -L /home/c=
hris/yocto/build/tmp/sysroots/t1042d4rdb -E LD_LIBRARY_PATH=3D$GIR_EXTRA_LI=
BS_PATH:.libs:/home/chris/yocto/build/tmp/sysroots/t1042d4rdb//usr/lib:/hom=
e/chris/yocto/build/tmp/sysroots/t1042d4rdb//lib &nbsp=3B"$@"</div></div><d=
iv><br></div><div>The cpu is supported by the fedora qemu-ppc64=2C but not =
qemu-ppc - ie it's a 64-bit processor that's not supported in 32-bit mode.<=
/div><div><br></div><div>This is not massively urgent for me but it may be =
important in the future and&nbsp=3B<span style=3D"font-size: 12pt=3B">I am =
curious</span><span style=3D"font-size: 12pt=3B">&nbsp=3Bas to whether the =
problem is in the qemu emulation or in the emulated code</span><span style=
=3D"font-size: 12pt=3B">.</span></div><div><br></div><div>Regards=2C</div><=
div>Chris&nbsp=3B<br><br><div>| Invalid data memory access: 0x00000000007fe=
8f0</div><div>| NIP 00000040008046c8 &nbsp=3B LR 0000000000000000 CTR 00000=
00000000000 XER 0000000000000000 CPU#0</div><div>| MSR 8000000000006000 HID=
0 0000000000000000 &nbsp=3BHF 0000000000006000 idx 0</div><div>| TB 0002563=
4 110100571322161</div><div>| GPR00 0000000000000000 00000040007fe970 00000=
04000848e00 00000040007fe970</div><div>| GPR04 0000000000000000 00000000000=
00000 0000000000000000 0000000000000000</div><div>| GPR08 0000000000000000 =
0000000000000000 0000000000000000 0000000000000000</div><div>| GPR12 000000=
0000000000 0000000000000000 0000000000000000 0000000000000000</div><div>| G=
PR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000</d=
iv><div>| GPR20 0000000000000000 0000000000000000 0000000000000000 00000000=
00000000</div><div>| GPR24 0000000000000000 0000000000000000 00000000000000=
00 0000000000000000</div><div>| GPR28 0000000000000000 0000000000000000 000=
0000000000000 0000000000000000</div><div>| CR 00000000 &nbsp=3B[ - &nbsp=3B=
- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B] &nb=
sp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B RES ffffffffffffffff</di=
v><div>| FPR00 0000000000000000 0000000000000000 0000000000000000 000000000=
0000000</div><div>| FPR04 0000000000000000 0000000000000000 000000000000000=
0 0000000000000000</div><div>| FPR08 0000000000000000 0000000000000000 0000=
000000000000 0000000000000000</div><div>| FPR12 0000000000000000 0000000000=
000000 0000000000000000 0000000000000000</div><div>| FPR16 0000000000000000=
 0000000000000000 0000000000000000 0000000000000000</div><div>| FPR20 00000=
00000000000 0000000000000000 0000000000000000 0000000000000000</div><div>| =
FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000</=
div><div>| FPR28 0000000000000000 0000000000000000 0000000000000000 0000000=
000000000</div><div>| FPSCR 0000000000000000</div><div>| Invalid segfault e=
rrno (42000000)</div><div>| NIP 00000040008046c8 &nbsp=3B LR 00000000000000=
00 CTR 0000000000000000 XER 0000000000000000 CPU#0</div><div>| MSR 80000000=
00006000 HID0 0000000000000000 &nbsp=3BHF 0000000000006000 idx 0</div><div>=
| TB 00025634 110100578368626</div><div>| GPR00 0000000000000000 0000004000=
7fe970 0000004000848e00 00000040007fe970</div><div>| GPR04 0000000000000000=
 0000000000000000 0000000000000000 0000000000000000</div><div>| GPR08 00000=
00000000000 0000000000000000 0000000000000000 0000000000000000</div><div>| =
GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000</=
div><div>| GPR16 0000000000000000 0000000000000000 0000000000000000 0000000=
000000000</div><div>| GPR20 0000000000000000 0000000000000000 0000000000000=
000 0000000000000000</div><div>| GPR24 0000000000000000 0000000000000000 00=
00000000000000 0000000000000000</div><div>| GPR28 0000000000000000 00000000=
00000000 0000000000000000 0000000000000000</div><div>| CR 00000000 &nbsp=3B=
[ - &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &nbsp=3B- &=
nbsp=3B] &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B RES ffffffff=
ffffffff</div><div>| FPR00 0000000000000000 0000000000000000 00000000000000=
00 0000000000000000</div><div>| FPR04 0000000000000000 0000000000000000 000=
0000000000000 0000000000000000</div><div>| FPR08 0000000000000000 000000000=
0000000 0000000000000000 0000000000000000</div><div>| FPR12 000000000000000=
0 0000000000000000 0000000000000000 0000000000000000</div><div>| FPR16 0000=
000000000000 0000000000000000 0000000000000000 0000000000000000</div><div>|=
 FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000<=
/div><div>| FPR24 0000000000000000 0000000000000000 0000000000000000 000000=
0000000000</div><div>| FPR28 0000000000000000 0000000000000000 000000000000=
0000 0000000000000000</div><div>| FPSCR 0000000000000000</div><div>| qemu: =
uncaught target signal 11 (Segmentation fault) - core dumped</div><div><br>=
</div></div> 		 	   		  </div></body>
</html>=

--_67f2cd75-11bb-4f02-aed2-2f0b8ed8de15_--
