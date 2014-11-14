Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24B77E0084F; Fri, 14 Nov 2014 01:04:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.92 listed in list.dnswl.org]
Received: from exprod8og106.obsmtp.com (exprod8og106.obsmtp.com [64.18.3.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C601E00831
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:04:00 -0800 (PST)
Received: from mail-la0-f46.google.com ([209.85.215.46]) (using TLSv1) by
	exprod8ob106.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGXFgO94ligpaU5JQ5nwjCjNTRIaxSbi@postini.com;
	Fri, 14 Nov 2014 01:04:03 PST
Received: by mail-la0-f46.google.com with SMTP id gm9so14447476lab.5
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=mdCAb6cGZr/S92AO7VxY35hhquw3Re2v+8mWfn9wE6U=;
	b=DeRi4lv1JExfi96MiKALCsDLFvC6RRNRj4kzEsxNf9wfiv99msrCh+tao5xyEuMGnU
	FLD4otzM8n2/V7P8vL9WIn6cJWHkl+r0M7/qyiTRYOf/8nw+xOwxOztMhk2k4txTVsTu
	3ZUl/X46HdyTp4+/JL9x9ZxnDngU2ITA2qVsXLTZeNjc+Brmz0Xh9/Q/njJ8znMNJd4Q
	duQ3yDa3IW2UytQu/vnwqmYz74JHhLBJpsW0p+RdjZmCYuiQviQcBuOcCKFHHVgWkTPD
	lLmaC6grbCGpZcJa/jrp3rAKU/Jnhd6Vb2qWqLDlUrvyoNBwxfZKrD+yU26e0p4HoS4h
	EkPw==
X-Gm-Message-State: ALoCoQkOdNCcsspZCkyZ5sCAYtrCBbtjQ/dj0b1ibaDi8o4NguFTpuB8xpXLlwtwdf+TRa2TUD6RL66/JOwkTPzcXAC86eiIowTN66gN+x3GKnu/k4HWanODSRSKe7+Nv725Z6eyJ7IcVQxA3SI6ziTEgMbUiUkvjA==
X-Received: by 10.152.20.130 with SMTP id n2mr7091054lae.39.1415955838682;
	Fri, 14 Nov 2014 01:03:58 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.152.20.130 with SMTP id n2mr7091045lae.39.1415955838566;
	Fri, 14 Nov 2014 01:03:58 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Fri, 14 Nov 2014 01:03:58 -0800 (PST)
In-Reply-To: <A8FC939F80655644A89BB21CCD3741E87C1D73@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <A8FC939F80655644A89BB21CCD3741E87C1D73@G08CNEXMBPEKD02.g08.fujitsu.local>
Date: Fri, 14 Nov 2014 17:03:58 +0800
Message-ID: <CAJrRHk6jJQfEuhOHE4Jz+2NCq2mYb11YdXvRY3mepARCeDU_GQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Luajit Compile Error
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
X-List-Received-Date: Fri, 14 Nov 2014 09:04:07 -0000
Content-Type: multipart/alternative; boundary=089e01494010c69ee00507cde861

--089e01494010c69ee00507cde861
Content-Type: text/plain; charset=UTF-8

Good day Li,

Maybe the answer is in this site: http://luajit.org/install.html.
Please refer to Cross Compiling LuaJIT.

Thanks,
- J

On Wed, Oct 29, 2014 at 5:01 PM, Li, Xin <lixin.fnst@cn.fujitsu.com> wrote:

>  Hi,
>
>
>
> I include luajit package from the meta-embedded and compile it.
>
> My build system is CentOS(64 bit).
>
> when I compile for the target(64 bit),It is OK,with no errors.
>
> But when I compile for the target(32 bit),it has the following errors.
>
>
>
> If you know the solution, please help me!
>
>
>
> Thank you&Best regards
>
> Li Xin
>
>
>
>
> ----------------------------------------------------------------------------------------------
>
> $ cat tmp/work/i586-poky-linux/luajit/2.0.3-r0/temp/log.do_compile
>
> DEBUG: Executing shell function do_compile
>
> NOTE: make -j 10 CROSS=i586-poky-linux- TARGET_CFLAGS=
> --sysroot=/yocto/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86
> -m32 -march=i586 TARGET_LDFLAGS=
> --sysroot=/yocto/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86
> TARGET_SHLDFLAGS=
> --sysroot=/yocto/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86
> HOST_CC=gcc  -m32
>
> ==== Building LuaJIT 2.0.3 ====
>
> make -C src
>
> make[1]: Entering directory
> `/yocto/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.3-r0/LuaJIT-2.0.3/src'
>
> BUILDVM   lj_vm.s
>
> Error: pointer size mismatch in cross-build.
>
> BUILDVM   lj_ffdef.h
>
> Try: make HOST_CC="gcc -m32" CROSS=...
>
>
>
> BUILDVM   lj_bcdef.h
>
> make[1]: *** [lj_vm.s] Error 1
>
> make[1]: *** Waiting for unfinished jobs....Error: pointer size mismatch
> in cross-build.
>
> Try: make HOST_CC="gcc -m32" CROSS=...
>
>
>
>
>
> make[1]: *** [lj_ffdef.h] Error 1
>
> Error: pointer size mismatch in cross-build.
>
> Try: make HOST_CC="gcc -m32" CROSS=...
>
>
>
> make[1]: *** [lj_bcdef.h] Error 1
>
> make[1]: Leaving directory
> `/yocto/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.3-r0/LuaJIT-2.0.3/src'
>
> make: *** [default] Error 2
>
> ERROR: oe_runmake failed
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e01494010c69ee00507cde861
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Li,<div><br></div><div>Maybe the answer is in thi=
s site:=C2=A0<a href=3D"http://luajit.org/install.html">http://luajit.org/i=
nstall.html</a>.</div><div>Please refer to Cross Compiling LuaJIT.</div><di=
v><br></div><div>Thanks,</div><div>- J</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Wed, Oct 29, 2014 at 5:01 PM, Li, Xin <=
span dir=3D"ltr">&lt;<a href=3D"mailto:lixin.fnst@cn.fujitsu.com" target=3D=
"_blank">lixin.fnst@cn.fujitsu.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">





<div lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Hi,<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">I in=
clude luajit package from the meta-embedded and compile it.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">My b=
uild system is CentOS(64 bit).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">when=
 I compile for the target(64 bit),It is OK,with no errors.<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">But =
when I compile for the target(32 bit),it has the following errors.<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">If you know the solution, please help me!</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:#1f497d">=C2=A0</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Than=
k you&amp;Best regards<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Li X=
in<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
---------------------------------------------------------------<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ cat tmp/work/i586-poky-linux/=
luajit/2.0.3-r0/temp/log.do_compile<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Executing shell function=
 do_compile<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: make -j 10 CROSS=3Di586-p=
oky-linux- TARGET_CFLAGS=3D --sysroot=3D/yocto/work001/fnst/lixin/poky/buil=
d.x86/tmp/sysroots/qemux86=C2=A0 -m32 -march=3Di586 TARGET_LDFLAGS=3D --sys=
root=3D/yocto/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86
 TARGET_SHLDFLAGS=3D --sysroot=3D/yocto/work001/fnst/lixin/poky/build.x86/t=
mp/sysroots/qemux86 HOST_CC=3Dgcc=C2=A0 -m32<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=3D=3D=3D=3D Building LuaJIT 2.=
0.3 =3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make -C src<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Entering directory `/y=
octo/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.=
3-r0/LuaJIT-2.0.3/src&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM=C2=A0=C2=A0 lj_vm.s<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: pointer size mismatch in=
 cross-build.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM=C2=A0=C2=A0 lj_ffdef.h<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM=C2=A0=C2=A0 lj_bcdef.h<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_vm.s] Error 1<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** Waiting for unfini=
shed jobs....Error: pointer size mismatch in cross-build.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_ffdef.h] Error=
 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: pointer size mismatch in=
 cross-build.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_bcdef.h] Error=
 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Leaving directory `/yo=
cto/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.3=
-r0/LuaJIT-2.0.3/src&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make: *** [default] Error 2<u><=
/u><u></u></span></p>
<div style=3D"border:none;border-bottom:solid windowtext 1.0pt;padding:0cm =
0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S">ERROR: oe_runmake failed<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><u><=
/u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><u><=
/u>=C2=A0<u></u></span></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e01494010c69ee00507cde861--
