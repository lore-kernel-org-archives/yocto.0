Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C75CE0083C; Mon, 17 Apr 2017 08:11:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB2F8E00826
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 08:10:58 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id h2so47702945uaa.1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 08:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y00WY+ICD0sFrLus0HkZYok2bDEJtLbjVc1RGnaggzk=;
	b=SuiNEoai36r8PjC4Y08RcKBXa/1uszReVZw9kxAr3/b0vwy6NLtzOUVN/pI9fljBOL
	HdhnoMw8ftCznrqqmG8Hlxoqd/AXCPL4igme6foqdKy49KZbYGx88iGrZMvxbuK1vJuA
	67UJYpowiPR54OcY4x9Ic7G5At8lj5APNWr/HLL4/kzlWgbHUOf33UJtea3RFPNOt0nE
	Idn6ac/WCT299zqKhFh9tTZoARlh7+C9/TA7r5V5RrhkzKPY07IJfVD4B0Fy9ZEoyd+g
	DEur0ernY2WexJkY5GjbQbay/osNHLaNF0JVY786zeBjarvMDChsfGrajv6I0ZtUbXqK
	pCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y00WY+ICD0sFrLus0HkZYok2bDEJtLbjVc1RGnaggzk=;
	b=hJl1N7SpTzmy0VrIMhqzAUSzsBw//WMm0kyb23+8kR/LWQc8KYliKuC55ehYZ8Sgt6
	KPIdlxdpz4kPSVuX9Za1fDV7c7JflMIVQaLtF2PPOyWqrCo68Ww9cGUHVYQtmhjwtD1x
	VisrAj2XMBharQ7JuZaRfnCmYMepVCsNyJ+9bAib9YJ3gGS92X3WZec4aFWOwD3dCuOs
	iQG7vH44K4Fs9ETBg5DCXwmEooWe773fGg59t9uIKAV+2EqdgyrftDTiRad5fhfCzNi8
	mtGIGASZvIKLnbxjBiydw96xfkuxxjs3dWp3Kh107TUGrmJyEwY9XAdhucb3JctvD5y0
	50xw==
X-Gm-Message-State: AN3rC/6zz8GkmXVw7KXqMoyHdEsdrrEEiGaevhevuCC+PYv+rU5flrjg
	6MCIafmJbG0MNKDdy/EkxR/UoO0r4Q==
X-Received: by 10.176.67.97 with SMTP id k88mr10110732uak.5.1492441857440;
	Mon, 17 Apr 2017 08:10:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Mon, 17 Apr 2017 08:10:57 -0700 (PDT)
In-Reply-To: <1492411200.15749.3.camel@collabora.co.uk>
References: <CAAHuHfxQbRCgC6fRJo1R=oM11duYh+zzWTZ=J-NTUQ7W_yhCzg@mail.gmail.com>
	<1492411200.15749.3.camel@collabora.co.uk>
From: Weng Josn <sadlife1990@gmail.com>
Date: Mon, 17 Apr 2017 16:10:57 +0100
Message-ID: <CAAHuHfzzUoF8+LZPs4jL5vgDSxxRGRPc=KJ=Fee71rKcDSaaYg@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Static Lib build.
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
X-List-Received-Date: Mon, 17 Apr 2017 15:11:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi

Yes I can provide and logs. What type logs do you need ?

Thanks.

2017-04-17 7:40 GMT+01:00 Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>:
> On Sat, 2017-04-15 at 17:24 +0300, Life Life wrote:
>> Hello,
>>
>> I'm try to build static library for SDK.
>>
>> Update the build/local.conf file with the following information
>>
>> SDKIMAGE_FEATURES = "staticdev-pkgs dev-pkgs"
>>
>> INHERIT += "buildhistory"
>> BUILDHISTORY_COMMIT = "0"
>>  BUILDHISTORY_FEATURES = "sdk"
>>
>> But cannot create static library for SDK.
>
> Can you provide command and logs?
>
>>
>>
>> Thanks.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

