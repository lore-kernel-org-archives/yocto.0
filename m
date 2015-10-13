Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE865E00BDE; Tue, 13 Oct 2015 14:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2308E009B8
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 14:57:04 -0700 (PDT)
Received: by qgx61 with SMTP id 61so27633519qgx.3
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 14:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8dWXVuAjTPVgelLqHuYL05lfObvoHOwv0xMcECstNFY=;
	b=nHifZea7zVQEZwx2RQP6LZWUS8UECd7G+e169JDEOfDJNvH98JtNpHVE/KbBlcHgyc
	mv9WVOJofcwMoh5YtMxkvVic20Lgz0TfWGYUpxi+45G+6yVo7jaWRASg9ZoxLAkNivC+
	rP8Nhj1pTGCh7a1BUyZkVGx83rmnI7vYqs4fF3QwUPto+kOyVIeBqyDowAjbZHuPcRFC
	r1vDOlFqxNpy86/ccGTKIJRP7HFvn6ZZPLWmECZH/o514LdjTM4ofhjBeQ01PvSSDO12
	kqTG0f5NJG1KgVmQoOmE65teqgh4ep5kA8Sn5qIvhFXZ4mSc9/vA74Fiml4kGXPrU7QO
	l38w==
X-Gm-Message-State: ALoCoQkjHHb3Hht7lBkX8eHDarzCy+XBIQBt1VXjCXFXv7GMjYK1pODozk1eRsqDfeDdRgv8U23z
X-Received: by 10.140.20.20 with SMTP id 20mr42716565qgi.87.1444773423740;
	Tue, 13 Oct 2015 14:57:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Tue, 13 Oct 2015 14:56:44 -0700 (PDT)
In-Reply-To: <CAD-yPSeYso2N-KaS3uHVaWKZjTcZ=4yHQxHPust9Qw8nW1Z_8A@mail.gmail.com>
References: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
	<CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
	<CAD-yPSeYso2N-KaS3uHVaWKZjTcZ=4yHQxHPust9Qw8nW1Z_8A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Oct 2015 22:56:44 +0100
Message-ID: <CAJTo0Lb9E2PY5wnj-T7VpEyVHzdn4TQ3Vws1mqQY0R2m4dfq_Q@mail.gmail.com>
To: Finn Carlsvi <finncarlsvi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cap'n Proto Recipe Help
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
X-List-Received-Date: Tue, 13 Oct 2015 21:57:08 -0000
Content-Type: multipart/alternative; boundary=001a11c13cbcb415c40522038674

--001a11c13cbcb415c40522038674
Content-Type: text/plain; charset=UTF-8

On 13 October 2015 at 20:55, Finn Carlsvi <finncarlsvi@gmail.com> wrote:

> INSANE_SKIP_${PN} += "installed-vs-shipped"
>

You're telling the system not to warn you that you have a do_install() that
installs files that are not getting packaged anywhere.

do_configure() {
>     export CAPNP=/usr/local/bin/capnp
>     ${S}/configure --with-external-capnp -build=x86_64-linux
> --host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi
> }


Here you are overriding all of the magic in cmake.bbclass that makes cmake
actually work.  You probably just want to add --with-external-capnp to
EXTRA_OECMAKE and remove your do_configure().

Ross

--001a11c13cbcb415c40522038674
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 October 2015 at 20:55, Finn Carlsvi <span dir=3D"ltr">&lt;<a href=3D"=
mailto:finncarlsvi@gmail.com" target=3D"_blank">finncarlsvi@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex"><div>INSANE_SKIP_${PN} +=3D &quot;inst=
alled-vs-shipped&quot;</div><div></div></blockquote></div></div><br><div>Yo=
u&#39;re telling the system not to warn you that you have a do_install() th=
at installs files that are not getting packaged anywhere. =C2=A0</div><div>=
<br></div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex">do_configure() {<br>=C2=A0 =C2=A0 export CA=
PNP=3D/usr/local/bin/capnp<br>=C2=A0 =C2=A0 ${S}/configure --with-external-=
capnp -build=3Dx86_64-linux --host=3Darm-poky-linux-gnueabi --target=3Darm-=
poky-linux-gnueabi<br>}</blockquote><div><br></div><div>Here you are overri=
ding all of the magic in cmake.bbclass that makes cmake actually work.=C2=
=A0 You probably just want to add --with-external-capnp to EXTRA_OECMAKE an=
d remove your do_configure().</div><div><br></div><div>Ross</div></div></di=
v>

--001a11c13cbcb415c40522038674--
