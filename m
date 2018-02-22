Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D09ECE00E02; Thu, 22 Feb 2018 01:51:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50592E00D17
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 01:51:32 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id d10so5814810itj.2
	for <yocto@yoctoproject.org>; Thu, 22 Feb 2018 01:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QTapbde8rla/Ss2/07fwDI3KdPhD8VRrP7TMPB7Odw8=;
	b=Aapg/vQz/i8zCRYmD4GwrX5PRTHbbAZNqurCLyy6LNfUipxXzCKtYvCWY0DMYdVDqB
	xYv7g1BkPx7gyIvow1gjs07tATn4+jarzVYEGP61pptjaU9VFfZAgjTaYo09tLbe3IGa
	6GvmDwLCR3Yi2kl1A+GmXS6rV5n+eDepAxEb8vUFKOTFix6sfKyLo7a0Qz/VqMN67pUp
	kxkzHoCahO5Jd6scRDBEPb4tKvJf6ydCLr0ywKpcxtWbEpRCHtZOZCLU1mJnaSOCyybg
	fFB6EqF0BjczAoUEe3MZbAIlRB13YD7CNBxRxTH3S78kwUnNgEKf05opo7MQalM25L/X
	Tt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QTapbde8rla/Ss2/07fwDI3KdPhD8VRrP7TMPB7Odw8=;
	b=CdQUVjKfPPWxlFx26wuMGsI1YvC/4k+RDY9nMCqwGY3aBwQsqN/vf/kXpdC/gD+N0D
	zivI/HtYGFl9aLcXIQk+/fZOfH7p6MVef8uLjC5WDXx7KLtAoUjaC8v9RNm18PSYv0Y1
	VUNTfxy0uRnCVK70+pJWWiiuItXuOy3Zt0mBeNCsvQbzjVriBKsnXlXjssmbpFHdyRQl
	pMu2kEyGcai6iHIqsqOMt86zjMh0p2K7jPVWCQR2mtr+OpMKMSuS1dTbouFURRezsvMB
	Vw1LAhNFiimZoA6XOHRwoG3P6CuCoAX/9wXG/fzoSVJE/qlzakBruII1i0uH47500jC5
	gQnQ==
X-Gm-Message-State: APf1xPCJwcLzkWqZZ8rAxnutV0UE1H395/YIX0q210mJAc5QnPw97pKT
	VEjAkJNpre26g4RtNJnB5utzamUv+69CVpPOdRY=
X-Google-Smtp-Source: AH8x226iiRyzzz6xbAWxhadBrc4gejH1miu8q38fFO9gJjCb/FP1Z8HaJ31rVQeNdIiWO21A215jr4BnldED7Wx/ZvI=
X-Received: by 10.36.53.197 with SMTP id k188mr1285906ita.30.1519293092470;
	Thu, 22 Feb 2018 01:51:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.96.23 with HTTP; Thu, 22 Feb 2018 01:51:12 -0800 (PST)
In-Reply-To: <11f25cc0-ad3a-0550-68f3-2ea962e68427@gmail.com>
References: <11f25cc0-ad3a-0550-68f3-2ea962e68427@gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Thu, 22 Feb 2018 10:51:12 +0100
Message-ID: <CAB2nKc-0FFJ0G=UPJQ=x51sxpTsdMfLGY-9Hte_p2nj+kTVQbA@mail.gmail.com>
To: Thibaut SARRAZIN <sarrazin.thibaut.celad@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: add a new partition during flash with mfgtools
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
X-List-Received-Date: Thu, 22 Feb 2018 09:51:33 -0000
Content-Type: multipart/alternative; boundary="001a114a9b461623560565c9fda4"

--001a114a9b461623560565c9fda4
Content-Type: text/plain; charset="UTF-8"

Hey Thibaut

Easiest way is to boot on small ramdisk and do partitioning/flashing with
Linux commands.

Regards,
Vincent



2018-02-19 17:00 GMT+01:00 Thibaut SARRAZIN <
sarrazin.thibaut.celad@gmail.com>:

>
> Hello everybody,
>
>
> I don't find solution to add a new partition to my emmc directly during
> the flash. I don't know if I need to modify the u-boot-fslc recipe or if
> there is another solution.
>
> board : mx6qroj
>
>
> Thanks you all  for your help,
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114a9b461623560565c9fda4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Thibaut</div><div><br></div>Easiest way is to boo=
t on small ramdisk and do partitioning/flashing with Linux commands.<div><b=
r></div><div>Regards,</div><div>Vincent</div><div><br><div><br></div></div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-02-19 =
17:00 GMT+01:00 Thibaut SARRAZIN <span dir=3D"ltr">&lt;<a href=3D"mailto:sa=
rrazin.thibaut.celad@gmail.com" target=3D"_blank">sarrazin.thibaut.celad@gm=
ail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Hello everybody,<br>
<br>
<br>
I don&#39;t find solution to add a new partition to my emmc directly during=
 the flash. I don&#39;t know if I need to modify the u-boot-fslc recipe or =
if there is another solution.<br>
<br>
board : mx6qroj<br>
<br>
<br>
Thanks you all=C2=A0 for your help,<span class=3D"HOEnZb"><font color=3D"#8=
88888"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114a9b461623560565c9fda4--
