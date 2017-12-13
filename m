Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A34CE00CEF; Tue, 12 Dec 2017 22:14:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C131E00B5F
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 22:14:38 -0800 (PST)
Received: by mail-pg0-f43.google.com with SMTP id j4so869012pgp.1
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 22:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DViipjiBsI280jkQGZa3q4VfmehLo/IKp1FHqX362Hk=;
	b=Uyk/ZwHzYG6eZwKsEce9cReZ4Q9RyYa53yFne1v7I8QRnTlyLY223K7kEDXvR5BDMY
	WTh9U5dMA8CuEf2BE1IVNKxZ+f6UyvQN30NoAv/QHiuxJbFhTFio/asGL5MMIWHN3LsO
	Pc41E5gsxXBJ355NJ+pfxvyU/itjmJhgcpOaaZ5zCHC+wjtLAQJuC+DWnuUXEBGemVUv
	Ft2O+Qg78L2NuuYjqDi8GXbh+EeV9Owhe1p273aPAoV3uMzD/VAaAJrj/Rcx1WnrvORU
	3EnOyyeVvzXdclOFALYnwbXy81wiETYFeJWbNPrX/EYCG9lWdow+UPczoaULboxILspc
	flMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DViipjiBsI280jkQGZa3q4VfmehLo/IKp1FHqX362Hk=;
	b=cN+EFrOS/DdnS43pES1pS1UtltqXW2SEwbRFAVIoR2soDCNfvqG/LZICL4ReW1O0yf
	9acup2DUhYYwJwcNHN9gPMppZvArgyGcVG/DDYXX+WVKL1HIT2A/SGgcvWUTYvSvPEu2
	V0beu6lKE1+zmOw9EP2gPWCPUZcSf5PxzBNbAOe1vTCkB4w24meDJzcbmGGhtF10Gv0S
	xv8MktmALTIjv1WKcxaODi3X2UBUDpuCwNnU4DzafzysyYlC1DRrQO+76350HCisvNku
	pjy+CeEgdNOCcVpome6uyN9aid4xbpGjmSUvIYaOXWB32qtYeude1sHspq/tfvC2Zc9Y
	+chw==
X-Gm-Message-State: AKGB3mJelj7nti3HTYQAEsqYN57CFjKStYaTSnJ1bWtfUdmY1+8m2EcP
	IADITprVaKI3nc+qarYMe0WmWNM9GEjZ3FWnh6c=
X-Google-Smtp-Source: ACJfBovVmatkBbGtf5eHbWdtBDNZXPR0T1d11cKWLmddoNcJrwf0L3Wva8dzyD8UONFbq1QzwEbL8ZWe5LCS2HMskiA=
X-Received: by 10.99.130.74 with SMTP id w71mr4283205pgd.31.1513145678556;
	Tue, 12 Dec 2017 22:14:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 12 Dec 2017 22:14:38 -0800 (PST)
In-Reply-To: <7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 13 Dec 2017 07:14:38 +0100
Message-ID: <CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Wed, 13 Dec 2017 06:14:40 -0000
Content-Type: multipart/alternative; boundary="94eb2c116966a9f342056032ae56"

--94eb2c116966a9f342056032ae56
Content-Type: text/plain; charset="UTF-8"

hi Mike,
i could not get it to work, if you have a recipe that works, please share
it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.

thank you

>
>
On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> On 11-12-17 15:18, Sherif Omran wrote:
>
>> i want to create a recipe to clean some files from the rootfile system,
>> but i don't know how to let this recipe run the last one before building
>> the rootfile system.
>>
>
> You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe to do some
> last-minute filesystem cleanup.
>
> However, in most cases it's much better to determine what recipe puts the
> files there and modify the recipe or remove the package. It would help a
> lot if you would reveal what files you want to remove and why.
>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Products
> Materiaalweg 4, NL-5681 RJ Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c116966a9f342056032ae56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi Mike,<br></div>i could not get it to work, if=
 you have a recipe that works, please share it. ROOTFS_POSTPROCESS_COMMAND =
seems to be buggy.<br><br></div>thank you<br><div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br></blockquote></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Tue, Dec 12, 2017 at 1:58 PM, Mike =
Looijmans <span dir=3D"ltr">&lt;<a href=3D"mailto:mike.looijmans@topic.nl" =
target=3D"_blank">mike.looijmans@topic.nl</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D"">On 11-12-17 15:18, Sherif Omran wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
i want to create a recipe to clean some files from the rootfile system, but=
 i don&#39;t know how to let this recipe run the last one before building t=
he rootfile system.<br>
</blockquote>
<br></span>
You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe to do some last=
-minute filesystem cleanup.<br>
<br>
However, in most cases it&#39;s much better to determine what recipe puts t=
he files there and modify the recipe or remove the package. It would help a=
 lot if you would reveal what files you want to remove and why.<br>
<br>
<br>
Kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
TOPIC Products<br>
Materiaalweg 4, NL-5681 RJ Best<br>
Postbus 440, NL-5680 AK Best<br>
Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=3D"+31=
499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blan=
k">mike.looijmans@topicproducts.c<wbr>om</a><br>
Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=
=3D"_blank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<span class=3D"H=
OEnZb"><font color=3D"#888888"><br>
<br>
<br>
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

--94eb2c116966a9f342056032ae56--
