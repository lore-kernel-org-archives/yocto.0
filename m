Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24A36E0051B; Tue, 19 May 2015 12:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98629E0027F
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 12:40:43 -0700 (PDT)
Received: by qgew3 with SMTP id w3so13092007qge.2
	for <yocto@yoctoproject.org>; Tue, 19 May 2015 12:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0p7GSEhTtiRmaVq3Z9EdGDvMOUVUokhNLPgKf8SPTj0=;
	b=kfXmBGhT8FuGHntEea8Qoc91aAtaVqOwff4JZr1E6MJ0fN/5XRmoaoUr6HR+kDQ5t+
	+GpJg2edOQ8/xKKWmH1I3sngLT4hyGR9M8NjyZlTC41y9qPpt/ISUltbpU3zd1tPqYD6
	vIXciLR22KreIjvvZAipNyJBHTzzx6D8ENjkW/N3W51Cc1DKl88qDjrrcz2DCBYsxDA2
	/aia3hzYnGUN8Lo/u4OWHr8sskgkc8bufzsnhYLqIvUaN7VgRlXpJUhV/Y8GYKBoH+nT
	5Ayeu3ed4CjWyT6WBNfcbm6udrNFCb1YDpRKVlYJic7hW4/xPsRo5lRqkoLcTfO5Axjo
	/Vcg==
X-Gm-Message-State: ALoCoQnMEb8Yeb2PVyCaxmqMqLXZDZnQ6gTt9aP128cr0WjsjHTLcmsIzz5XB0lkdp1AjB3Z5B00
X-Received: by 10.140.238.143 with SMTP id j137mr11442759qhc.52.1432064442855; 
	Tue, 19 May 2015 12:40:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 19 May 2015 12:40:22 -0700 (PDT)
In-Reply-To: <51A964697D1B374D923D8F12DAC9906F9730C3A3@ORSMSX109.amr.corp.intel.com>
References: <51A964697D1B374D923D8F12DAC9906F9730C3A3@ORSMSX109.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 May 2015 20:40:22 +0100
Message-ID: <CAJTo0LYA=BvLEyV3R7JWq+VWp86ubOEYhw1r6DF=Xp64DXDYcA@mail.gmail.com>
To: "Cai, Juliet Z" <juliet.z.cai@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Files/directories were installed but not shipped
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
X-List-Received-Date: Tue, 19 May 2015 19:40:55 -0000
Content-Type: multipart/alternative; boundary=001a1135acbe6998570516747c43

--001a1135acbe6998570516747c43
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 19 May 2015 at 20:31, Cai, Juliet Z <juliet.z.cai@intel.com> wrote:

> I am getting =E2=80=9CERROR:  QA Issue:  Files/directories were installed=
 but not
> shipped=E2=80=9D when I try to build my custom layer.  It then list bunch=
 of
> directories and files under
>
>
>
> /usr/src
>
> /usr/src/debug
>
> =E2=80=A6
>
>
>
> My do_install looks something like this
>
> do_install () {
>
>                Install =E2=80=93d ${D}${libdir}
>
>                Install =E2=80=93c =E2=80=93m 555  {S}/path-to-files/libmy=
.so
>
> }
>
>
>
> Nowhere in my do_install function did I try to install files to /usr/src.
> Where does this come from? And how can I get rid of it?
>

That's the debug source/symbols splitting happening.  That directory is
usually packaged into FILES_${PN}-debug (see meta/conf/bitbake.conf), so
you must be overriding either that value, or PACKAGES so as to not have a
PN-debug package.

Ross

--001a1135acbe6998570516747c43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 May 2015 at 20:31, Cai, Juliet Z <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:juliet.z.cai@intel.com" target=3D"_blank">juliet.z.cai@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">I =
am getting =E2=80=9CERROR: =C2=A0QA Issue: =C2=A0Files/directories were ins=
talled but not shipped=E2=80=9D when I try to build my custom layer.=C2=A0 =
It then list bunch of directories and files under<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">/usr/src<u></u><u></u></p>
<p class=3D"MsoNormal">/usr/src/debug<u></u><u></u></p>
<p class=3D"MsoNormal">=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My do_install looks something like this<u></u><u></u=
></p>
<p class=3D"MsoNormal">do_install () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Install =E2=80=93d ${D}${libdir}<u></u><u=
></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Install =E2=80=93c =E2=80=93m 555=C2=A0 {=
S}/path-to-files/libmy.so<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Nowhere in my do_install function did I try to insta=
ll files to /usr/src.=C2=A0 Where does this come from? And how can I get ri=
d of it?</p></blockquote></div><br>That&#39;s the debug source/symbols spli=
tting happening.=C2=A0 That directory is usually packaged into FILES_${PN}-=
debug (see meta/conf/bitbake.conf), so you must be overriding either that v=
alue, or PACKAGES so as to not have a PN-debug package.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1135acbe6998570516747c43--
