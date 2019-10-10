Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38F26E00BE2; Thu, 10 Oct 2019 09:04:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08E26E0098A
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 09:04:15 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id w6so5337257oie.11
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 09:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Mu21xGkNnm8wIQSCbaQHnyvRQKjAedn1yGvanHMk50w=;
	b=pIQfcZpE4/6UbpDenG5wpJRRq3V1IORsgic7LlO16rkBanTR7uDolAeKoq+BGLXmc/
	xmhnkT45Jry+5HMUtHZePlFKYFWiALkaT6DhU5F2amWj0qTRRpr1pV31qTtiZOYzeso9
	zwZMuoNctwRoBtfRPI1fRSZbxIoeHrvWHhWI1H9Ru5BLQiRJAeHCujvVenI36m9Hiwgs
	TlBMXFCvM91b+3jsgFrSsZrUDmYi0UqvPL2Xn6+DXpsfdKa1SufwsVK91qu3UfrAWG0W
	HKc9r+g+Qc80dxm5vFr6ZTa3Il3zc0NAt8eraDDRz4/GXgmLrSjacNZ9430SAAfrM6V5
	L8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Mu21xGkNnm8wIQSCbaQHnyvRQKjAedn1yGvanHMk50w=;
	b=IdDsc7x76TyUieQcwqW80JhZ/z4EbpwznBWnp8MGzD9ZvU58ri7hEMlO2HCo8OFIT6
	shWZxjd4jw6aoxpdmPPCbp4OjNQN4Bw0qMdGJg1KdVV2DaoVuWoN1+xWUub/m6lj8vlQ
	299x3hzGoWuB2dcwUREkWrk1R1sKc9Jgdt4Snv6FRQb9K5KigoQlueMw0iFG0wxb5waL
	YWC7pbllDfOjHs5kH3W8v8c2oynb0NQ2M2nnr9KbLOmbBsL/LKbkXmtm8FpbN9x94nXv
	0y6MjDhwpI3tHxJoZ2IcwQufQ7kzI/mpzNjmVX0AXUCIMLw4KTHo78ZUPEWRbYTPr4mG
	0VoA==
X-Gm-Message-State: APjAAAUXn4FywJBU22s4fltjitSnT1nPND1Lic9zzIA6oCFSF9pkCPFg
	VpdhGW7fkg4Wacsh1CGwI45yZD3UkupLbSmS6Vf1cA==
X-Google-Smtp-Source: APXvYqzgDELq9WpyF2Jvr9BzeZP7QlmreQNeHEjPO+7yKVhUes/kwbAC3pfEUL0whF9lYlLERsKwccYQfT8MLCZj4cQ=
X-Received: by 2002:aca:5885:: with SMTP id m127mr8420535oib.110.1570723454562;
	Thu, 10 Oct 2019 09:04:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:ce8f:0:0:0:0:0 with HTTP; Thu, 10 Oct 2019 09:04:14
	-0700 (PDT)
In-Reply-To: <1b7ec764-48da-a89b-c6b3-2b08f82a2ddf@faresoftware.it>
References: <8d8b0186-6319-2967-2d62-bbfea38952be@faresoftware.it>
	<CA+4=imZSkvtDfDtXXph=WJCrJbM4befUBOxzd4X4HvOx__407A@mail.gmail.com>
	<1b7ec764-48da-a89b-c6b3-2b08f82a2ddf@faresoftware.it>
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Thu, 10 Oct 2019 18:04:14 +0200
Message-ID: <CA+4=imbBv8NmBUm7QRFzHmG34Pi1v2M42xCjDiVnP3xTd7CtzQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: buildhistory revert
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
X-List-Received-Date: Thu, 10 Oct 2019 16:04:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you see a spurious rebuild, you should investigate with
bitbake-diffsigs, rather that trying to outsmart the build system,
else you're likely to shoot yourself in the foot :)

2019-10-10 17:32 UTC+02:00, Mauro Ziliani <mauro@faresoftware.it>:
> I find the solution.
>
> I know that I have not modified the packages rebuilded (i.e the kernel)
>
> So I see in prserv.sqlite3.
>
> The table PRMAIN_nohist contains the history of buildhistory for each
> pkg/recipe.
>
> I deleted the=C2=A0 line which the field value i bigger or equal the valu=
e I
> need
>
> The package kernel-4.1.15-2.0.1_4.1.15-r0.17_armhf.deb is built from
> recipe linux-imx
>
> Inside PRMAIN_nohist table there a record with the field "value=3D18".
>
> I make this from sqlite3 tool
>
> DELETE FROM PRMAIN_nohist WHERE version LIKE 'linux-imx-%' AND value>=3D1=
3
>
> I rebuild the linux-imx with bitbake linux-imx and magically the package
> kernel-4.1.15-2.0.1_4.1.15-r0.13_armhf.deb is build.
>
>
> MZ
>
>
> Il 10/10/19 14:40, Yann Dirson ha scritto:
>> The PR server takes care not to reuse those versions.
>> Apart from making sure your recipe's signature matches the one for
>> 0.13, you probably can't (assuming you don't want to mess with your
>> PR's database).
>>
>>
>> 2019-10-10 10:27 UTC+02:00, Mauro Ziliani <mauro@faresoftware.it>:
>>> Hi all
>>>
>>> I need to change the build number of a package.
>>>
>>> That is: i have the package
>>> kernel-4.1.15-2.0.1_4.1.15-r0.*17*_armhf.deb, but in need to turn back
>>> to kernel-4.1.15-2.0.1_4.1.15-r0.*13*_armhf.deb
>>>
>>>
>>> Can I setup manually the 17 value to 13?
>>>
>>>
>>> Mauro
>>>
>>>
>>
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

