Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0331FE017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:26:56 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so5285191iej.22
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Y2txHDWe7QKU6EAVjeYppRwycfYD2d0mPq0TSh+udyw=;
	b=CHVndmK6Fm9NutsGc/srgb27fEPWOB0i6l+D5Fm+Q0i+UNUpPDvMqqRYZ/XEO6LbeZ
	eDvHizfWKB1s9CyDMvDaFYdSim2G4gk+NLUFd3TFHB9s3re2IeqS1qQ/ACKsnx3Ip/lO
	chP4zbGPyFsl/kd01m9G0F5vWTAkC8Jdwo4DbX7/v8K7DBrn2vnrO9C6ednK1C66Yj+r
	Sl1c3VPPVPwuqbs9VH4tk0TxcZJsHpt2+pl+favqNwfPJqjMnB5RxCT9kAQo86TH53C/
	bLevmgruhAT6Zn158NvF4IrBBKRh4ijlPtTNrddr4Xt1D5/fao7ppDl7aeiq7mF5LdeL
	cRRg==
X-Received: by 10.50.22.67 with SMTP id b3mr106888igf.39.1383236816009; Thu,
	31 Oct 2013 09:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 09:26:25 -0700 (PDT)
In-Reply-To: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 09:26:25 -0700
Message-ID: <CAMKF1sqkCKjY=hmOgNw9ezs3EuCXtenv+OVY1xP1FWKV_chq5A@mail.gmail.com>
To: sonia verma <soniaverma9727@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable Shark support in JAVA
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
X-List-Received-Date: Thu, 31 Oct 2013 16:26:57 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 8:08 AM, sonia verma <soniaverma9727@gmail.com> wrote:
> Hi ALL,
>
> I have integrated Java in one of the board having Powerpc architecture using
> meta-java. By default it cam with Zero port support which only works in
> interpreter mode.
>
> I need to enable Shark support in that. Can any one please help me with the
> procedure to compile JAVA with Shark support.

zero is the best option you have. Shark wont work on ppc.

>
> --
> Regards
>
> Sonia Verma
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

