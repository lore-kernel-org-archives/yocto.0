Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34BB4E00BBC; Thu, 24 Aug 2017 19:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5D6E00B3D
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 19:41:21 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id t3so7374976pgt.0
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 19:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=JXASdpDeQK6iKriZ+n31to4hJ+HRREWqeYxTCGsbzBg=;
	b=Lvu5augXnbDcteXVAaeq5i384CcgdHAzZgJ3DGrZX86uKYRQZi+8lzZLphcU2L0iRj
	EXtFnahlQ4MPnJgx5KIf4LiQK//f50ybxHWK+4n5ppFx16J9aA97BEchm4b6pnTeGE81
	9bkG1cjExGJIwGqSrsSGBlIrash4GrGKPeVVPkZCtukYe86nIZGZAtWhEwDBzw3v6KKq
	X/usFV3cB/2uDAXbbCwpIWzq9mtdJLZh5KSKn0gjiHXHiqMntpOb1+CMFns5fmYMR2zz
	EWBcRTeBGLjhdgsyyu0KXgSs3yHLPDSrlJHJkxzrsLCe6kTnI67Q5CXQM/1RmUA94DkP
	sBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=JXASdpDeQK6iKriZ+n31to4hJ+HRREWqeYxTCGsbzBg=;
	b=k72mN6nYQ3DauZQvWaKRrJ3aODta3la5g9enx6c8tF7knO5J9ab4rTn7/BWeQUoZgH
	OYqGKLOvGk/+l/wbTlbfXoClY0jAwOr+bmmja0gcb9Xdi/XKH21n+iCtzDQjnhZWcg6Z
	wsuP4KHy+jFiNDp0GChs6Kjg0DUSDCMeELKwcCW6cS84GpGTQASVIBnav+uJz2qU3+fq
	roSkam1wOLqI6W5jEpVxJO9DhPNrhJXfcOT+wBMcMQbyfuWssl68NBwvF4TOZT6/O6Sk
	hXhCDpRlZ8wysaLWeczYRmIed4DWMwaCQYzLWnDQpaTalA3dYtU85MO0yNWjcMPoCaJP
	Glww==
X-Gm-Message-State: AHYfb5gKejrZTDJuj9ey+WX/YHFa7TCFgNIAnErsFaJWfho7Pu4LPCJo
	ybZutoqEKJ8E+C8omQfSWFS1+b0UKg==
X-Received: by 10.99.110.67 with SMTP id j64mr8296973pgc.341.1503628881271;
	Thu, 24 Aug 2017 19:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Aug 2017 02:41:09 +0000
Message-ID: <CAMKF1soq1xM+HM+tBX3ear57EU0P8N5MMSJxgOy3+ixyt2GPOA@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module and build_ext args
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
X-List-Received-Date: Fri, 25 Aug 2017 02:41:23 -0000
Content-Type: multipart/alternative; boundary="94eb2c09234a57a13305578ae12c"

--94eb2c09234a57a13305578ae12c
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 24, 2017 at 6:48 PM Craig McQueen <craig.mcqueen@innerrange.com>
wrote:

> I wrote:
> > I'm trying to make a recipe for python3-uvloop, using setuptools3.
> >
> > The Python 3 uvloop module depends on libuv. It bundles a version of
> libuv,
> > and setup.py tries to build it, but it doesn't work well for
> cross-compilation.
> > However, it also provides a build_ext parameter "--use-system-libuv",
> which
> > seems to work when I try running it manually in devshell. (I have made a
> > suitable recipe for libuv and added libuv to DEPENDS.)
> >
> > How can I specify the "--use-system-libuv" parameter for build_ext in the
> > python3-uvloop recipe? I see a reference to DISTUTILS_BUILD_EXT_ARGS,
> > but it doesn't seem to be functional.
>
>
> I see DISTUTILS_BUILD_EXT_ARGS was submitted in this patch:
> https://patchwork.openembedded.org/patch/66071/
>
> However, in the Yocto poky repository, I see commit
> 0221af0f4ee9e8bfb8796841bdf806e38bc600c6 which appears to be a broken
> version of the above patch with the separate build_ext step not actually
> executed with the DISTUTILS_BUILD_EXT_ARGS parameters.


You did not explain broken in which sense ?

>
>
> --
> Craig McQueen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c09234a57a13305578ae12c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu, Aug 24, 2017 =
at 6:48 PM Craig McQueen &lt;<a href=3D"mailto:craig.mcqueen@innerrange.com=
">craig.mcqueen@innerrange.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">I wrote:<br>
&gt; I&#39;m trying to make a recipe for python3-uvloop, using setuptools3.=
<br>
&gt;<br>
&gt; The Python 3 uvloop module depends on libuv. It bundles a version of l=
ibuv,<br>
&gt; and setup.py tries to build it, but it doesn&#39;t work well for cross=
-compilation.<br>
&gt; However, it also provides a build_ext parameter &quot;--use-system-lib=
uv&quot;, which<br>
&gt; seems to work when I try running it manually in devshell. (I have made=
 a<br>
&gt; suitable recipe for libuv and added libuv to DEPENDS.)<br>
&gt;<br>
&gt; How can I specify the &quot;--use-system-libuv&quot; parameter for bui=
ld_ext in the<br>
&gt; python3-uvloop recipe? I see a reference to DISTUTILS_BUILD_EXT_ARGS,<=
br>
&gt; but it doesn&#39;t seem to be functional.<br>
<br>
<br>
I see DISTUTILS_BUILD_EXT_ARGS was submitted in this patch:<br>
<a href=3D"https://patchwork.openembedded.org/patch/66071/" rel=3D"noreferr=
er" target=3D"_blank">https://patchwork.openembedded.org/patch/66071/</a><b=
r>
<br>
However, in the Yocto poky repository, I see commit 0221af0f4ee9e8bfb879684=
1bdf806e38bc600c6 which appears to be a broken version of the above patch w=
ith the separate build_ext step not actually executed with the DISTUTILS_BU=
ILD_EXT_ARGS parameters.</blockquote><div dir=3D"auto"><br></div><div dir=
=3D"auto">You did not explain broken in which sense ?</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><br>
<br>
--<br>
Craig McQueen<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c09234a57a13305578ae12c--
