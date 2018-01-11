Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05D13E00DA8; Thu, 11 Jan 2018 09:35:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830A7E0085E
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 09:35:12 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id f6so2814933ioh.8
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 09:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/oxmZZUYr7tPlK5edT8qWMtlxGNOxP7w5gTDb14aIlQ=;
	b=UyrBG+Ej7+Tt3ISxBDmaFbX99HOMUf6Wsdfl0qNWxC5GBKlJ+Jr/WJEYs9C8zWIc1f
	KA8z7goJEeERZpjRoLV27uaXz4yz1Av3jbebj9zZFDhjRokK1rZHahvgvoGeVNUzB3Uj
	dh2WMsOWRDeUXP0NcqcRj+Ni5vx5YD8fnKBlmLRGka1149axpyBdIhGuP8G3LqwnZkuy
	WwZ/LBkerRimGJtNrQ89m4AN3jG8OfQOk74WqaTZwR+kwHGLv4wuUx4vlZAj00l55jKi
	1KKviZ+2HVus7GGoHZvvQ4dEdUoVbilDFNDW48gJctcsJIjWJyL86ybsVISQV/SsqxYN
	/kDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/oxmZZUYr7tPlK5edT8qWMtlxGNOxP7w5gTDb14aIlQ=;
	b=eZZfMWAYYgyiA1FDkJQildaP2JRAhXiyivfxqcs5ht7TCCsu4m1yoWczGuhDf7Zvvg
	G3gtqj6tp466M+/LN4SjLukDf+EXJPWW9HsPsMLPTaI/WHaZPjETq44eVL7tyBNr9XuW
	bqczQf9TJSxgtvgT2LUEriBARn2uvFhhz8keaJ3ICjZ2eF4fU0ACUxz9HnfDVl01YMB9
	wlFKI7xJXWgd/4XkUKz6lh1HTcOlaAXCfRNjZHEBsnbyRnwRM4usaqvrgsc419CKZNnT
	Y19kiAMx2+h/nIdCsVuKajlqz2OBo6k6fqM9m1ZLGse6uVDSNIrLJA4tvF2Xk+E8ZfHW
	RRdg==
X-Gm-Message-State: AKGB3mIZiYaL45QM0Dz+qPLd+uJJaTSxFKffZXMqIsnnC+U2e/am6aQs
	6AoLoZP2UXf+0y9h6mRdukrdVf6zPqgQw6mkjDiNSA==
X-Google-Smtp-Source: ACJfBotUyk16fTw+2cMtPTAJY2IUQrKvda3mPzJvwglVcGFsRIERacw9/2GETM+dEilrUJdtQS6DzVV9DsJIlpQGnDw=
X-Received: by 10.107.102.25 with SMTP id a25mr21858321ioc.217.1515692112527; 
	Thu, 11 Jan 2018 09:35:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.147.193 with HTTP; Thu, 11 Jan 2018 09:34:51 -0800 (PST)
In-Reply-To: <20180109155456.GA19053@localhost>
References: <20180109155456.GA19053@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Jan 2018 17:34:51 +0000
Message-ID: <CAJTo0LYfpUa+A-A5ib6zOobo6hoKSJRKmvXcwoe+RrWcmMiZgQ@mail.gmail.com>
To: Vadim Intelegator <v.intelegator@sirinsoftware.com>
Cc: yocto@yoctoproject.org
Subject: Re: applying patches depending on the image's name
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
X-List-Received-Date: Thu, 11 Jan 2018 17:35:14 -0000
Content-Type: multipart/alternative; boundary="089e082d0780f4d7eb05628391eb"

--089e082d0780f4d7eb05628391eb
Content-Type: text/plain; charset="UTF-8"

No, because images are built from packages, and the packages have already
been built by the time the image is considered.

Using master you can build two different kernels in the same build and have
different kernels in different images.

Ross

On 9 January 2018 at 15:54, Vadim Intelegator <
v.intelegator@sirinsoftware.com> wrote:

> Hello,
>
> I have several images (image-a.bb and image-b.bb) in a yocto layer and
> want to apply different patches to the kernel depending on the current
> image name.
> How can that be done?
>
> Thank you in advance.
>
> --
> Vadim
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e082d0780f4d7eb05628391eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, because images are built from packages, and the packag=
es have already been built by the time the image is considered.<div><br></d=
iv><div>Using master you can build two different kernels in the same build =
and have different kernels in different images.</div><div><br></div><div>Ro=
ss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
9 January 2018 at 15:54, Vadim Intelegator <span dir=3D"ltr">&lt;<a href=3D=
"mailto:v.intelegator@sirinsoftware.com" target=3D"_blank">v.intelegator@si=
rinsoftware.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hel=
lo,<br>
<br>
I have several images (<a href=3D"http://image-a.bb" rel=3D"noreferrer" tar=
get=3D"_blank">image-a.bb</a> and <a href=3D"http://image-b.bb" rel=3D"nore=
ferrer" target=3D"_blank">image-b.bb</a>) in a yocto layer and want to appl=
y different patches to the kernel depending on the current image name.<br>
How can that be done?<br>
<br>
Thank you in advance.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Vadim<br>
</font></span><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--089e082d0780f4d7eb05628391eb--
