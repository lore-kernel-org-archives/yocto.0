Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E5C8E00F70; Sat, 21 May 2016 12:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E008E00F69
	for <yocto@yoctoproject.org>; Sat, 21 May 2016 12:24:18 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id bi2so11913460igb.0
	for <yocto@yoctoproject.org>; Sat, 21 May 2016 12:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=H5YVEmVgMaoSeZr8G3mlq4VVqG4CLDv3dVYtLpC3h+A=;
	b=YNXFk5NJGck32FlWdM5WwXDFTFE6BQmUAbH6J/rNLhdVhMGl3R7LXoait0FFBpXRHL
	o3Fq88CsbmjIbYZjdN4/r+cByhIl5Fr8bEEhxjmTBkQBVshNBrM77ixKW6TUKG8pHQqM
	6POyaI4Mgar2wMi7BQe1JoN+b17OpnbLjVqWtV/mhuGv4+sUP5HrS6avCi2PTEYguMKN
	0OpQcZFT5hISxSrj1KimzFrIUN3WeFrmlSeZPXt6TR2AIIcj9Pv5HxdOTB+kZwvbyf8y
	R2rtdJGgHWaC711Woad44B5sktjbSyUQbPwNT7iQXHa3UUUou9Q1/SuUmMH2qrty6N17
	HkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=H5YVEmVgMaoSeZr8G3mlq4VVqG4CLDv3dVYtLpC3h+A=;
	b=mrJEzKcR7gjcWxL2zEmp3HrMJP2V8T8AP7Pds5k/il9LYlyOCf+UPWkFEHiTQZBgFJ
	UnBBw3eCPlfX5X9XKeb+unfszqEt/n3TvzccDwcqe7GS0Ra2OoGSura5TWqjQ2Rupmnv
	I7MOvXxFQDSQJyT9G0TND4nFcJyaBGVIUrCTzpQl2QpoJEGBqHUGvhrfx7YLPps/F+PR
	w80/YgXCtcrb+4I2o5kzBt8Oc5aCPy7uGktQzb+1rPaLgD0zs7D9q4UzCAGmKg3sLgeH
	xlhVMZEszFkMYzcBuKzZPT9XYw0Dsuu7q6hRhhAQe7fRdUCG115ARRlPEesAzxgn4RpM
	KjRw==
X-Gm-Message-State: ALyK8tJ5F3CbyugcLJqXf74OOODXj1F8lmcEj2EDW2gC/6kTBMO9sgsZR1QhmUdp8sd+4nFkizkK3imjzQhZGESx
X-Received: by 10.50.6.201 with SMTP id d9mr459674iga.78.1463858658250; Sat,
	21 May 2016 12:24:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Sat, 21 May 2016 12:23:58 -0700 (PDT)
In-Reply-To: <6741EAAB26B57F4995668065CB62D86B50802B52@fmsmsx116.amr.corp.intel.com>
References: <6741EAAB26B57F4995668065CB62D86B50802B52@fmsmsx116.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 21 May 2016 20:23:58 +0100
Message-ID: <CAJTo0LYHv_3hqhKd21ib8ivGwVH2njjrTKdB04UdVeL5-41G9Q@mail.gmail.com>
To: "Sywula, Krzysztof M" <krzysztof.m.sywula@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: documentation change - DISTRO_FEATURES
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
X-List-Received-Date: Sat, 21 May 2016 19:24:25 -0000
Content-Type: multipart/alternative; boundary=e89a8f6465b153b8cb05335f270a

--e89a8f6465b153b8cb05335f270a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 20 May 2016 at 21:17, Sywula, Krzysztof M <krzysztof.m.sywula@intel.com>
wrote:

> I recommend we add =E2=80=98bluez5=E2=80=99 to 11.2 Distro Features secti=
on as that=E2=80=99s
> where people go to find available values for DISTRO_FEATURES variable.
>
>
Agreed.  I've forwarded this to Scott to ensure it gets done.

Ross

--e89a8f6465b153b8cb05335f270a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 May 2016 at 21:17, Sywula, Krzysztof M <span dir=3D"ltr">&lt;<a href=
=3D"mailto:krzysztof.m.sywula@intel.com" target=3D"_blank">krzysztof.m.sywu=
la@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p cla=
ss=3D"MsoNormal">I recommend we add =E2=80=98bluez5=E2=80=99 to 11.2 Distro=
 Features section as that=E2=80=99s where people go to find available value=
s for DISTRO_FEATURES variable.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Agreed.=C2=A0 I&#39;ve fo=
rwarded this to Scott to ensure it gets done.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--e89a8f6465b153b8cb05335f270a--
