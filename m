Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFAF5E00C87; Fri, 12 Feb 2016 12:01:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 241EBE00AF4
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 12:01:13 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id l127so102418364iof.3
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 12:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=ukBa8RC2JVjG6dOO0B3bqdLXUo9HTtri57oXsIAYIhE=;
	b=rDXhCbimrnHGpFNCmcB4CkQYGQtiB91SrbclDNvx693PSplRPmdBHIZ0WaK7G5PYxJ
	dUiqDuqLoNbTyG3NvEKV5Y53sT/sIE9Q2kb/6rQxz3qOKbFPDG4E+BzLbwJRPYG+ML+d
	BQfXeKj+7hqheQ6GnAknHn8IYRrUitSRcYs1wK4d6UjxNcw+rBb0fXihj9tw1+GMCsFA
	AjmoteljWqAeop6J4ORTATTVllzKF1ZK6cH7wD37JoBid9n8ux5H4mu2NrbpOLUHTFyX
	FnBZgX2RcTerBfLA6XC6KOyUTJiNaSzZqs15tDaDAW5oTyLLkK08Qt6KFbPZbKI8nFsK
	cfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-type;
	bh=ukBa8RC2JVjG6dOO0B3bqdLXUo9HTtri57oXsIAYIhE=;
	b=IeuAGHrICVbOYmveFHSo0cdJOpQR4mWBe8mW0P/VQQQ9ofzelyf2U/kAGv2NtwJhej
	9qCMNLwswK+MNNPhTjDB6eKQlllC29/qE7jXtVxwDz7yMKnxU93BtMFfRKIeN7gtdwpQ
	H3Xaqcf3f4em4D8xqB+EyKbgJhK57Zat5Cx+sDHz5OOv22yMo5h2/TjU/pS1neTdggYs
	lakGIxKlgAn20ACa60w6bpW9JV/tyasXdRw9GVmhV1HPlgWZN3rYkjWWdAnJDGD3oDjU
	9HkqpBL9SuXOVEZwtynnvxp9SD6DwKFAjE867AdOXd+P69CJ7u3mGWTkR/0n/4MR7A+K
	hgqQ==
X-Gm-Message-State: AG10YOTFrAUDt9laTfi1MA9UX0p1WAFAMMdbuUaC8II1/m7UFSIdP2alej3ocJv+G5JOGcYiR+leq+JZnCBO/A==
X-Received: by 10.107.29.209 with SMTP id d200mr4698917iod.27.1455307272821;
	Fri, 12 Feb 2016 12:01:12 -0800 (PST)
MIME-Version: 1.0
References: <c0fe5ddbf4bb4b3491dcc6e92bb88602@chdua14.duagon.ads>
	<CABcZANkkZ5gsXSHP3iqxA+5Z6vP-Z2aUKM8DiJhG45z1Q2Nz9Q@mail.gmail.com>
	<f061a595660d4b9eb1516ef98c58de06@chdua14.duagon.ads>
In-Reply-To: <f061a595660d4b9eb1516ef98c58de06@chdua14.duagon.ads>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 12 Feb 2016 20:01:03 +0000
Message-ID: <CABcZANnuoQe6Tu6ipzRK=JTnjxvcv0PY_TUQVmm9Ypt_fvimBw@mail.gmail.com>
To: Thomas Kaufmann <Thomas.Kaufmann@duagon.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto/Poky with external linaro toolchain
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
X-List-Received-Date: Fri, 12 Feb 2016 20:01:15 -0000
Content-Type: multipart/alternative; boundary=001a11408e9e0924b5052b9821a1

--001a11408e9e0924b5052b9821a1
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 2:47 AM Thomas Kaufmann <Thomas.Kaufmann@duagon.com>
wrote:

> Hi Christopher
>
>
>
> thanks for this hint, this prevented a lot of packages from being built.
>
> However I still face an additional issue. in the last step of
> do_populate_sdk, when the sdk is actually supposed to be put together.
>
> I get this output:
>
>
>
> Collected errors:
>
> * satisfy_dependencies_for: Cannot satisfy the following dependencies for
> packagegroup-core-standalone-sdk-target:
>
> *            libc6 (= 2015.08-r0) *      glibc-utils *
>
>  * opkg_install_cmd: Cannot install package
> packagegroup-core-standalone-sdk-target.
>
>
>
> how can it be, that everything is built correctly and in the end there is
> a dependency missing?
>
> I tried altering my LIBC_DEPENDENCIES, but with no success so far.
>
> I am also using tclibc-external-linaro-toolchain.inc from
>
>
> http://arago-project.org/git/?p=meta-arago.git;a=blob;f=meta-arago-extras/conf/distro/include/tclibc-external-linaro-toolchain.inc;hb=HEAD
>

This looks like it's specific to your linaro toolchain bits. I'd recommend
contacting the linaro or arago folks.

--001a11408e9e0924b5052b9821a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri=
, Feb 12, 2016 at 2:47 AM Thomas Kaufmann &lt;<a href=3D"mailto:Thomas.Kauf=
mann@duagon.com">Thomas.Kaufmann@duagon.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Christopher<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">thanks for this hint, thi=
s prevented a lot of packages from being built.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">However I still face an a=
dditional issue. in the last step of do_populate_sdk, when the sdk is actua=
lly supposed to be put together.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I get this output:<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Collected errors:<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">* satisfy_dependencies_fo=
r: Cannot satisfy the following dependencies for packagegroup-core-standalo=
ne-sdk-target:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">* =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libc6 (=3D 2015.08-r0) * =C2=A0=C2=
=A0=C2=A0=C2=A0 glibc-utils *
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0* opkg_install_cmd:=
 Cannot install package packagegroup-core-standalone-sdk-target.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">how can it be, that every=
thing is built correctly and in the end there is a dependency missing?<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I tried altering my LIBC_=
DEPENDENCIES, but with no success so far.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I am also using tclibc-ex=
ternal-linaro-toolchain.inc from<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"http://arago-p=
roject.org/git/?p=3Dmeta-arago.git;a=3Dblob;f=3Dmeta-arago-extras/conf/dist=
ro/include/tclibc-external-linaro-toolchain.inc;hb=3DHEAD" target=3D"_blank=
">http://arago-project.org/git/?p=3Dmeta-arago.git;a=3Dblob;f=3Dmeta-arago-=
extras/conf/distro/include/tclibc-external-linaro-toolchain.inc;hb=3DHEAD</=
a></span></p></div></div></blockquote><div><br></div><div>This looks like i=
t&#39;s specific to your linaro toolchain bits. I&#39;d recommend contactin=
g the linaro or arago folks.=C2=A0</div></div></div>

--001a11408e9e0924b5052b9821a1--
