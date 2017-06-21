Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FCB4E00BBD; Wed, 21 Jun 2017 13:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00597E00B83
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 13:46:46 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id c11so95330884wrc.3
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 13:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ml8veR9EzpGVjd1ltoXQx01Bpa1859fgyngk+v0Sv5I=;
	b=MdQJIHvBnxd/RtgsN99UeNlKOD19EjrBqA1oKabpQ8v1UFSOH0S0HMaFSg0eK/J/pT
	f36V9kW7W1ddAUjpXnuyhaw4xBMink70HxrYbxzW84yXNobvrWr4zVusKb0uWs+Pwpe1
	Oo30+S+5/SCtBqIIWFMHHhmIzJctdgFfioRbt1MHsYntcdUzsFMikV74W0JijBB3y76R
	+sKAo/Sg6Irsiz+WvUdF8zym3gR1F5czNYiAm8EuIM3uWz9zZwJ36dAFtIKlP/HN/8Bg
	vjDaSeOUKyELkmH/5WY67+A7ijKBrPR50Ktsd/Yi/nH40qKnbohljxwGWe/34POravpg
	1T+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ml8veR9EzpGVjd1ltoXQx01Bpa1859fgyngk+v0Sv5I=;
	b=lqFLhYU1z1dbp1IOljciWlPhxUAH2k8i+mjaMX4DvzIp/k6ylZgcTggDR0WiAwQ3LP
	oybZ+KnQqki/VlPEfaFzVJTO+NMpL9ArNiLq34j1qNLgGYIFi+jtaDGfM5bel64N6f2K
	AvuRILUphjKUvrZyH5EIeH1AGRZd6OSfHy7kXkxh1Nv8o1sMjcqFequnkmVKU3IvWb7t
	tzFRVfGfUPNVdbVaWw+KeY72eH4HqsNUGV0fQoyNz812e/U1ZFxv7dWuQVAewTM5KqA7
	3Spntl16Nob+P7s6JwzwyGCRqsyDP96W3PPuW41VQF5G8jKyGAuwJUdxqNANGDUXBMhm
	INjQ==
X-Gm-Message-State: AKS2vOxxPiXlTmU3NAv0QCdVoi35tFvYOvCtUJaYMhBzOtMWunzutFTs
	cKfEN87IyLkCnLa32osujhRzMJBuBg==
X-Received: by 10.80.151.37 with SMTP id c34mr27140028edb.30.1498078005690;
	Wed, 21 Jun 2017 13:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
In-Reply-To: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Jun 2017 20:46:34 +0000
Message-ID: <CAMKF1spmLmRv8z2vBvSLUh2VrWVa9=Ov-W7QzK7LDYSnwd=HjQ@mail.gmail.com>
To: Anders Montonen <Anders.Montonen@iki.fi>, yocto@yoctoproject.org
Subject: Re: AppArmor
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
X-List-Received-Date: Wed, 21 Jun 2017 20:46:48 -0000
Content-Type: multipart/alternative; boundary="f403045c55646006e705527e77f8"

--f403045c55646006e705527e77f8
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 20, 2017 at 9:56 AM Anders Montonen <Anders.Montonen@iki.fi>
wrote:

> Hi,
>
> Has anyone tried using AppArmor with Yocto? The recipe in the
> meta-security layer is broken, and when fixed so it actually builds, it
> turns out the installed init script relies on functions not found in
> Yocto's version of LSB.
>

That seems a bug to me perhaps can be fixed in initscripts ?

>
> Regards,
> Anders
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045c55646006e705527e77f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Tue, Jun 20, 2017 =
at 9:56 AM Anders Montonen &lt;<a href=3D"mailto:Anders.Montonen@iki.fi">An=
ders.Montonen@iki.fi</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Hi,<br>
<br>
Has anyone tried using AppArmor with Yocto? The recipe in the<br>
meta-security layer is broken, and when fixed so it actually builds, it<br>
turns out the installed init script relies on functions not found in<br>
Yocto&#39;s version of LSB.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">That seems a bug=
 to me perhaps can be fixed in initscripts ?</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><br>
Regards,<br>
Anders<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f403045c55646006e705527e77f8--
