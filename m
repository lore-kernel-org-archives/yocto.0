Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B490E00D12; Tue, 13 Sep 2016 00:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D9FE00B30
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 00:12:03 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id d191so150957372oih.2
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 00:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qPVNi2oykyB3IfzlPeUBmRGhRA6npBy/bdaHj/uP2Tg=;
	b=X8XxvN9KmXqy1oyLaTq2dHEFIaQH5rZ4zUZUvN4sFYjbN01+QLKF4v9CcgRD+mkam0
	5CAjrQjOlCb41xdnpHqqZny1cJNVgu2dBZUn4i49G5gfI+wltvMdWQVPfJ6WQbKdPdMy
	uqJM6zyvg/+yRKD7YMqg1VTvamRNqJWxPv5a1xhi//y70fn0zYTn42LTBNUNNm5XUv17
	+cHN3XINQgtu3GlsAHtAluJ5NRNUmhN+MJAqZX8QXETsL6eQ401WcvKgGSVUKNp2WfaI
	k8jpKm/yc3ptBgvDVhqvmlvRF/xWPz9Vwu0/q4NTpr1N8aU1wkKM4Yvvmcq5Pv/lMEBK
	7Zbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qPVNi2oykyB3IfzlPeUBmRGhRA6npBy/bdaHj/uP2Tg=;
	b=Rf2zTSZw1PGBb/lYlOrPbDjMaRiaI8B4bJMuFz4vn2uq3LYtcmjrBKpOuqmBQxj3Cx
	L8X15Q5/l54f71yAPoJpGpHGzB7kk27wK5UUFhAnQTOpxaR9d2nn7YMS6FiWDd7CRGzf
	ipGIp7W9At8BKvRAWuWxQroGBhh6b1v1NSg/RgRNFPTm8/VZKozk6DGN9Zjm7amGM5ue
	AC+p0KZPYSXfwE5pLEjuwZGm7VQAju3oMwwu0sQFUhLzAji8sF1Wqn0OCHjJ+yH3+Xsz
	14Uph4r9ddih37iRK/nCz+I82ev1zsrHpq9Rm25z9KO2hE9qelHcrk5VeG+JDFj09r8M
	4GbA==
X-Gm-Message-State: AE9vXwM6Bee+YXub2bSAnR1WUZT55xo8xTI1xbJ6/VYtapHCdl3xURqmSKsnHdgL9o8/XB6iaP5Q8YFPeD/rpzhv
X-Received: by 10.157.40.86 with SMTP id h22mr28750665otd.66.1473750723150;
	Tue, 13 Sep 2016 00:12:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.241.11 with HTTP; Tue, 13 Sep 2016 00:11:32 -0700 (PDT)
In-Reply-To: <CAJz+W7ASjdtmamR3KGfkt4yaKhB9pA3sSMrR4kHbxVtgOs+vig@mail.gmail.com>
References: <CAJz+W7ASjdtmamR3KGfkt4yaKhB9pA3sSMrR4kHbxVtgOs+vig@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 13 Sep 2016 10:11:32 +0300
Message-ID: <CAHiDW_Gp9jehbXJQ2kgiKH2krbKrt01w-rt+Cieirv-+jUeHhw@mail.gmail.com>
To: BHARATH RAJ <kernelraj@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: : error: '__uint128_t' does not name a type
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
X-List-Received-Date: Tue, 13 Sep 2016 07:12:06 -0000
Content-Type: multipart/alternative; boundary=001a11392fbe575ab5053c5e5481

--001a11392fbe575ab5053c5e5481
Content-Type: text/plain; charset=UTF-8

On 12 September 2016 at 07:39, BHARATH RAJ <kernelraj@gmail.com> wrote:

> Hi All,
>
> I am trying to build one recipes on Yocto2.0 based environment.
>
> However I am seeing following error.I wonder if this is a known problem.
>
> It says error: '__uint128_t' does not name a type
>

Details might help: e.g. what arch are you building for? What are you
building exactly?



> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:240:1: warning: invoking macro __MATH_PRECNAME
> argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:250:31: warning: invoking macro __MATHDECL
> argument 3: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:279:1: warning: invoking macro __MATHDECL_1
> argument 3: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
>  __MATHCALL (rint,, (_Mdouble_ __x));
>  ^
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:240:1: warning: invoking macro __CONCAT argument
> 2: empty macro arguments are undefined in ISO C90 and ISO C++98 [enabled by
> default]
> In file included from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/
> tmp-glibc/sysroots/usr/include/bits/sigcontext.h:27:0,
>                  from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/
> tmp-glibc/sysroots/usr/include/signal.h:306,
>                  from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/
> tmp-glibc/sysroots/usr/include/glib-2.0/glib/gbacktrace.h:33,
>                  from /local/mnt/workspace/narasimha/AGL_NEW/poky/build/
> tmp-glibc/sysroots/usr/include/glib-2.0/glib.h:34,
>                  from <command-line>:0:
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/asm/sigcontext.h:53:2:
> error: '__uint128_t' does not name a type
>   __uint128_t vregs[32];
>   ^
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
> warning: invoking macro __MATHDECL argument 3: empty macro arguments are
> undefined in ISO C90 and ISO C++98 [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-rglibc/sysroots/usr/
> include/bits/mathcalls.h:279:1: warning: invoking macro __MATH_PRECNAME
> argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:217:1: warning: invoking macro __MATHDECL_1
> argument 3: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
>  __MATHCALLX (copysign,, (_Mdouble_ __x, _Mdouble_ __y), (__const__));
>  ^
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:250:31: warning: invoking macro __MATHDECL_1
> argument 3: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:250:31: warning: invoking macro __MATH_PRECNAME
> argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:217:1: warning: invoking macro __MATH_PRECNAME
> argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
> warning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are
> undefined in ISO C90 and ISO C++98 [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/include/bits/mathcalls.h:82:1:
> warning: invoking macro __MATH_PRECNAME argument 2: empty macro arguments
> are undefined in ISO C90 and ISO C++98 [enabled by default]
> /local/mnt/workspace/narasimha/AGL_NEW/poky/build/tmp-glibc/sysroots/usr/
> include/bits/mathcalls.h:241:29: warning: invoking macro __MATHCALL
> argument 2: empty macro arguments are undefined in ISO C90 and ISO C++98
> [enabled by default]
>
>
> Regards
> Bharath
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

--001a11392fbe575ab5053c5e5481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
2 September 2016 at 07:39, BHARATH RAJ <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:kernelraj@gmail.com" target=3D"_blank">kernelraj@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<div><b=
r></div><div>I am trying to build one recipes on Yocto2.0 based environment=
.</div><div><br></div><div>However I am seeing following error.I wonder if =
this is a known problem.</div><div><br></div><div>It says=C2=A0error: &#39;=
__uint128_t&#39; does not name a type</div></div></blockquote><div><br></di=
v><div>Details might help: e.g. what arch are you building for? What are yo=
u building exactly?=C2=A0</div><div><br></div><div><br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div><br></div><div><div style=3D"color:r=
gb(0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr=
>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits=
/mathcalls.h:240:<wbr>1: warning: invoking macro __MATH_PRECNAME argument 2=
: empty macro arguments are undefined in ISO C90 and ISO C++98 [enabled by =
default]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:1=
3.3333px">/local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-g=
libc/sysroots/usr/<wbr>include/bits/mathcalls.h:250:<wbr>31: warning: invok=
ing macro __MATHDECL argument 3: empty macro arguments are undefined in ISO=
 C90 and ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0)=
;font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr>narasimh=
a/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/mathcall=
s.h:279:<wbr>1: warning: invoking macro __MATHDECL_1 argument 3: empty macr=
o arguments are undefined in ISO C90 and ISO C++98 [enabled by default]</di=
v><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=
=C2=A0__MATHCALL (rint,, (_Mdouble_ __x));</div><div style=3D"color:rgb(0,0=
,0);font-family:tahoma;font-size:13.3333px">=C2=A0^</div><div style=3D"colo=
r:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/<=
wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/b=
its/mathcalls.h:240:<wbr>1: warning: invoking macro __CONCAT argument 2: em=
pty macro arguments are undefined in ISO C90 and ISO C++98 [enabled by defa=
ult]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.33=
33px">In file included from /local/mnt/workspace/<wbr>narasimha/AGL_NEW/pok=
y/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/sigcontext.h:27:<wbr>=
0,</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333=
px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /loc=
al/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/=
usr/<wbr>include/signal.h:306,</div><div style=3D"color:rgb(0,0,0);font-fam=
ily:tahoma;font-size:13.3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/b=
uild/<wbr>tmp-glibc/sysroots/usr/<wbr>include/glib-2.0/glib/<wbr>gbacktrace=
.h:33,</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.=
3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from =
/local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysro=
ots/usr/<wbr>include/glib-2.0/glib.h:34,</div><div style=3D"color:rgb(0,0,0=
);font-family:tahoma;font-size:13.3333px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from &lt;command-line&gt;:0:</div><div style=
=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/wor=
kspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>i=
nclude/asm/sigcontext.h:53:2: error: &#39;__uint128_t&#39; does not name a =
type</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.33=
33px">=C2=A0 __uint128_t vregs[32];</div><div style=3D"color:rgb(0,0,0);fon=
t-family:tahoma;font-size:13.3333px">=C2=A0 ^</div><div style=3D"color:rgb(=
0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr>na=
rasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/ma=
thcalls.h:82:1: warning: invoking macro __MATHDECL argument 3: empty macro =
arguments are undefined in ISO C90 and ISO C++98 [enabled by default]</div>=
<div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/loc=
al/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-rglibc/sysroots=
/usr/<wbr>include/bits/mathcalls.h:279:<wbr>1: warning: invoking macro __MA=
TH_PRECNAME argument 2: empty macro arguments are undefined in ISO C90 and =
ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-fam=
ily:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr>narasimha/AGL_NEW=
/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/mathcalls.h:217:<=
wbr>1: warning: invoking macro __MATHDECL_1 argument 3: empty macro argumen=
ts are undefined in ISO C90 and ISO C++98 [enabled by default]</div><div st=
yle=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=C2=A0__MAT=
HCALLX (copysign,, (_Mdouble_ __x, _Mdouble_ __y), (__const__));</div><div =
style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=C2=A0^</=
div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">=
/local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysro=
ots/usr/<wbr>include/bits/mathcalls.h:250:<wbr>31: warning: invoking macro =
__MATHDECL_1 argument 3: empty macro arguments are undefined in ISO C90 and=
 ISO C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-fa=
mily:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr>narasimha/AGL_NE=
W/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/mathcalls.h:250:=
<wbr>31: warning: invoking macro __MATH_PRECNAME argument 2: empty macro ar=
guments are undefined in ISO C90 and ISO C++98 [enabled by default]</div><d=
iv style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/local=
/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/us=
r/<wbr>include/bits/mathcalls.h:217:<wbr>1: warning: invoking macro __MATH_=
PRECNAME argument 2: empty macro arguments are undefined in ISO C90 and ISO=
 C++98 [enabled by default]</div><div style=3D"color:rgb(0,0,0);font-family=
:tahoma;font-size:13.3333px">/local/mnt/workspace/<wbr>narasimha/AGL_NEW/po=
ky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include/bits/mathcalls.h:82:1: wa=
rning: invoking macro __MATHDECL_1 argument 3: empty macro arguments are un=
defined in ISO C90 and ISO C++98 [enabled by default]</div><div style=3D"co=
lor:rgb(0,0,0);font-family:tahoma;font-size:13.3333px">/local/mnt/workspace=
/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-glibc/sysroots/usr/<wbr>include=
/bits/mathcalls.h:82:1: warning: invoking macro __MATH_PRECNAME argument 2:=
 empty macro arguments are undefined in ISO C90 and ISO C++98 [enabled by d=
efault]</div><div style=3D"color:rgb(0,0,0);font-family:tahoma;font-size:13=
.3333px">/local/mnt/workspace/<wbr>narasimha/AGL_NEW/poky/build/<wbr>tmp-gl=
ibc/sysroots/usr/<wbr>include/bits/mathcalls.h:241:<wbr>29: warning: invoki=
ng macro __MATHCALL argument 2: empty macro arguments are undefined in ISO =
C90 and ISO C++98 [enabled by default]</div></div><div><br></div><div><br><=
/div><div>Regards</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>=
Bharath</div><div><br></div><div><br></div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a11392fbe575ab5053c5e5481--
