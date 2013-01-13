Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81167E006CC
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 11:39:56 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id p1so2876716vcq.24
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 11:39:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=2GNNguwPREJSXtpZWzybhSIK7SUghJU805NV3uFSV3w=;
	b=CHAc+VWQuHDcshoyrlhvM7Estu2imKqpk1RPOspG4DdLI/Lx3dd+zQ5pnfOqzHi+AH
	a6yI75GRJRosZHk5IFq+qyQvXYbuGRAt+0mQxKHPjd4E3eARk7hlodDpqdAd2+7iASU3
	pqttXbEAA7o1+IYVP43tcljBHxKIteHlqr6icjCr8WAMO4HAM3I3UzuEkn6djpJcHl69
	WI9TYVsqjAyUfhSFgzziiP0ZoDtLFN87GdAEVBjkQI5D7t9DqahSVnU5KBSz8ewgfzLc
	RQ2lB1iw+HpvDpnxQqPMvzFvG6tgOvtt2s2x2G9csUW2BPhGyTdR6dTfEbc4oy5VMaSg
	Z0Og==
Received: by 10.58.248.41 with SMTP id yj9mr102900460vec.29.1358105995550;
	Sun, 13 Jan 2013 11:39:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Sun, 13 Jan 2013 11:39:35 -0800 (PST)
X-Originating-IP: [5.13.223.33]
In-Reply-To: <211E2BEE5356446CB425C4E2514B1285@intel.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
	<211E2BEE5356446CB425C4E2514B1285@intel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 13 Jan 2013 21:39:35 +0200
Message-ID: <CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQlKOiTlGj0C6kW9M0PUPGrmIYChjx6UdVDm1yHoR33ewiQG/sOuSgV4glqyBfoXzl2d/mJg
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Sun, 13 Jan 2013 19:39:56 -0000
Content-Type: multipart/alternative; boundary=047d7bf0d0b26ea16704d330b17b

--047d7bf0d0b26ea16704d330b17b
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Jan 13, 2013 at 6:44 PM, Ross Burton <ross.burton@intel.com> wrote:

>  Sorry for top posting... Have you verified that GL still works with this
> major version bump?
>
> Ross
> --
> Ross Burton
> Sent with Sparrow <http://www.sparrowmailapp.com/?sig>
>
> On Sunday, 13 January 2013 at 16:23, Andrei Gherzan wrote:
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
> meta-fri2/conf/machine/fri2.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-fri2/conf/machine/fri2.conf
> b/meta-fri2/conf/machine/fri2.conf
> index 0efba2a..07ad750 100644
> --- a/meta-fri2/conf/machine/fri2.conf
> +++ b/meta-fri2/conf/machine/fri2.conf
> @@ -27,7 +27,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
> "
> PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> -PREFERRED_VERSION_mesa-dri ?= "8.0.4"
> +PREFERRED_VERSION_mesa-dri ?= "9.0.1"
> PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
> PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
>
> Tested with a new sato build on master. Everything seems to be OK.

ag

--047d7bf0d0b26ea16704d330b17b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Jan 13, 2013 at 6:44 PM, Ross Burton <span dir=3D"=
ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
    <div>
        Sorry for top posting... Have you verified that GL still works with=
 this major version bump?
    </div><div><br></div>
    <div><div>Ross</div>--=A0<br>Ross Burton<br><div>Sent with <a href=3D"h=
ttp://www.sparrowmailapp.com/?sig" target=3D"_blank">Sparrow</a></div><div>=
<br></div></div><div><div class=3D"h5">
    =20
    <p style=3D"color:#a0a0a8">On Sunday, 13 January 2013 at 16:23, Andrei =
Gherzan wrote:</p>
    </div></div><blockquote type=3D"cite" style=3D"border-left-style:solid;=
border-width:1px;margin-left:0px;padding-left:10px">
        <div><div><div><div class=3D"h5"><div>Signed-off-by: Andrei Gherzan=
 &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.=
ro</a>&gt;</div><div>---</div><div> meta-fri2/conf/machine/fri2.conf |    2=
 +-</div>

<div> 1 file changed, 1 insertion(+), 1 deletion(-)</div><div><br></div><di=
v>diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fr=
i2.conf</div><div>index 0efba2a..07ad750 100644</div><div>--- a/meta-fri2/c=
onf/machine/fri2.conf</div>

<div>+++ b/meta-fri2/conf/machine/fri2.conf</div><div>@@ -27,7 +27,7 @@ XSE=
RVER ?=3D &quot;${XSERVER_IA32_BASE} \</div><div>            &quot;</div><d=
iv> PREFERRED_VERSION_xserver-xorg ?=3D &quot;1.9.3&quot;</div><div>-PREFER=
RED_VERSION_mesa-dri ?=3D &quot;8.0.4&quot;</div>

<div>+PREFERRED_VERSION_mesa-dri ?=3D &quot;9.0.1&quot;</div><div> PREFERRE=
D_VERSION_xf86-input-evdev ?=3D &quot;2.6.0&quot;</div><div> PREFERRED_VERS=
ION_emgd-driver-bin ?=3D &quot;1.14&quot;</div></div></div></div></div></bl=
ockquote>

</blockquote><div style>Tested with a new sato build on master.=A0Everythin=
g=A0seems to be=A0OK.=A0</div><div style><br></div><div style>ag</div></div=
><br></div></div>

--047d7bf0d0b26ea16704d330b17b--
