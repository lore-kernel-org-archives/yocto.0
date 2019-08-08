Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF1FE00DB5; Thu,  8 Aug 2019 12:59:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C637E00D74
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 12:59:16 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id d17so14568876qtj.8
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 12:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rsYIdhAkNzpoUjjOVKyvUF8IIDgF2xBuh6E+ZqymRQA=;
	b=GXjqCub26gdfW9hM7YHpsPQYKlfAo5Juuskiddrra3rriUfWwR+FYCUfFrVcAbfnPQ
	MVH/QU0MOFdqmiPEofdKj1AH2uq5s4Lg4FlhDkLQxpFKakcRPpSLDfqMuFAJ4Mjfqx59
	7rEoQUaY22cEFiUXPt6UwIHKU8IoYe9iuGbUD6RCgO/A2Md+fP29Uu0/NWtpUCWn9G/T
	OtRTtX4Mk+UlI3ipfmiNuW7plTbmioDMRfiuasP/6uQlTaxlbIIZ/u+Ks0sRWC0Izg1m
	sB5E3oEVw9EQlF9+e/A0LXjFXKSXzE4rLoohTSlNWqQwmECrOhOjxDgb6Sum+8b+uO0R
	0EJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rsYIdhAkNzpoUjjOVKyvUF8IIDgF2xBuh6E+ZqymRQA=;
	b=BqnIzN0brrc8r7W01i4V5Uw4MbqDRByzmAr0UD0OSfjTa+tPDSAqlOX+6Ze4srh/cM
	YDSXMQKzXh5Mx5nix4wkCay7V7GGAaVyl8f6Ljb970gC2BaWeSvSzOAfogZJscr3RiG3
	PUfyX8/IiBEyZbpWuYCH8yosE6s+YtPp9wEQxHCipYWS551xAHR9WKlst7YtkCra+Y2C
	6tHgrdmDEOXbt+7f8A7CBhzwA5ppP86d5GPPW6ARcJnE1T64nnj0kxCmno67xMjHK4bn
	DK/IbbDppdpTXEFWCiFQRenMHiWmKlGVLkOVb3yapBKiiFqXYlMOna5ILYqCQZtAzvl/
	4TnQ==
X-Gm-Message-State: APjAAAVLg78apMHFjnyM+tq795JhuNluDTanxUPJFtmyBNvxb85u3Z7S
	nXDjTzPb9l7bnZ8ZjNIeQunIMRAfdRUcvM1399cMqw==
X-Google-Smtp-Source: APXvYqz/NGrhflTfhxDS+tuhvkXT1yFwpak27sUKrzBY9CCOIzTVfpHG5VaS4agWod14j0WUYDYSuZ8kvd/0WxwLm6M=
X-Received: by 2002:aed:3644:: with SMTP id e62mr14373780qtb.80.1565294355063; 
	Thu, 08 Aug 2019 12:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <36866779-21f7-483f-f7a0-f28d4318135f@faresoftware.it>
In-Reply-To: <36866779-21f7-483f-f7a0-f28d4318135f@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 8 Aug 2019 12:59:03 -0700
Message-ID: <CAMKF1sp83LreXgyGTgVuqUrtjKbTEcgYVDQHwabDEvjupimj+w@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: meta-rpi vs meta-raspberrypi. Which one?
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
X-List-Received-Date: Thu, 08 Aug 2019 19:59:17 -0000
Content-Type: multipart/alternative; boundary="00000000000000a79a058fa07e40"

--00000000000000a79a058fa07e40
Content-Type: text/plain; charset="UTF-8"

Meta-raspberrypi

On Thu, Aug 8, 2019 at 12:57 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> I'm working on a RPi3B with pyro and qt5/qml
>
> Which layer between rpi and raspberrypi?
>
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000000a79a058fa07e40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Meta-raspberrypi=C2=A0</div></div><div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019=
 at 12:57 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it">mau=
ro@faresoftware.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">H=
i all.<br>
<br>
I&#39;m working on a RPi3B with pyro and qt5/qml<br>
<br>
Which layer between rpi and raspberrypi?<br>
<br>
<br>
MZ<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000000a79a058fa07e40--
