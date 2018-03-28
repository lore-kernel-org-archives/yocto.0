Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21157E00A6A; Wed, 28 Mar 2018 06:40:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 414ECE0084A
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:40:16 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id u46so2283875wrc.11
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=x8+n1u1DeH2s3a+d513vafRzy65YmnbdYNOG4KbeiqA=;
	b=dbft87Mz+OjFIByh2BKskIow/oVsQ8adQJ0iNpjOOdG6wiZO86svY3REajVCNHyQn6
	CgfUWMkG+Rsbcj4YpIp3DIUFJCOfeHEFqyzElAddJnWnYyQWBPAH0Ldm8LH2W4RtVYxK
	ohbiao9phi1IIKMcgW20nr73SzBclHQr9SP9/HpGVeynIuCLrjfN+Mdi0hB4Yfse9sKu
	r0gJKjv9RXExjYlXYKnUWuQw0lXxxK53beQiKM3dltxhGXu6wg9YYXJu+M4pvhEIVOGI
	ZjhxYFTN9E+P3eVfQ1L5oLop3cDhXXQvSRNExLTcj2FMnSa92GPLZL33IdYTe/Je/07x
	3Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=x8+n1u1DeH2s3a+d513vafRzy65YmnbdYNOG4KbeiqA=;
	b=cFPcz+NEtmoft9UhPflbxoh+GbOgJPX8VMzW9mzdhrjmTi5uvw03Tg6G3KknB8JmLQ
	MU+5Cj1wFrZpqJEv2ln8nq7L4GsPokGKK08fVY6ijSaY2C7Gib/+tKoiizOXkY5syka0
	Js5cKR85H8N6KDTbrpj4GzmcqbI+3WuFKEO366HtBIOwgXblkSV8F88FGYkj8u8gP9Sk
	OH3BoW7dHyCTFWzB8q2DGT4ISjzb+k8Y8D1jvnnVRgt5NucEv9SMp6wLE1N+FHkXzYO0
	uGkU/Vl/Lqt27KtqBjT8znQ2b9qja5cAyb75VsiTr2W3HOBafis6X0jZ3ss6OhYYMi7T
	BDEQ==
X-Gm-Message-State: AElRT7Hrnn19esQxeHr7DBI9DzxM4mGbUqWPXccJi1FAKYmx0sAJOuRV
	kvo5H9dniRJufDtVeKi6xg0hJk9q5gH6klE5QiSxcg==
X-Google-Smtp-Source: AIpwx4/Whc/6kVnr6tw/aMnpLnLa5oWZAmCVj7Ec0eSJDjEsMGDVKb+yUkklRQ6Ap0/d13xs+QqgDa58h84D8c5MUq8=
X-Received: by 10.223.156.210 with SMTP id h18mr3107733wre.109.1522244416012; 
	Wed, 28 Mar 2018 06:40:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.168.103 with HTTP; Wed, 28 Mar 2018 06:40:15 -0700 (PDT)
In-Reply-To: <CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
	<CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 28 Mar 2018 14:40:15 +0100
Message-ID: <CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 13:40:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:
> Hi,
>
> Thanks I will do that. But I have other layers that depend on the rocko o=
f
> meta-raspberrypi so I believe I will have to use the rocko at some point =
but
> for testing I will try Morty. What is the reason for using Morty do you
> know? Is rocko unstable?
>

Yea, we need to get this fixed in rocko. My test device for
raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us
out with testing here.

Could you try out core-image-base built from master with just the
required layers? If that works then a kernel/firmware backport is
likely what's needed.

> BR
> Mans Zigher
>
> 2018-03-28 14:38 GMT+02:00 Sherif Omran <sherifomran2000@gmail.com>:
>>
>> Please use Morty, it works fine.
>>
>> On Wed, Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher <mans.zigher@gmail.co=
m>
>> wrote:
>>>
>>> Hi,
>>>
>>> I am using the meta-raspberrypi layer in my build currently on the rock=
o
>>> branch. When powering on the rpi3 Model B+ the power led turns red then=
 when
>>> the green led is turned on the red is turned off and nothing is booting=
 the
>>> green continues to flash sporadically. My build works fine on rpi 3 but=
 not
>>> on Model B+. When running raspbian on Model 3 it works fine so it is no=
t a
>>> power supply issue nor an sdcard issue. Right now I cannot use the mast=
er
>>> branch of meta-raspberrypi because of some patch issues but is the rock=
o
>>> branch not supporting rpi 3 on model B+?
>>>
>>> BR
>>> Mans Zigher
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Paul Barker
Tog=C3=A1n Labs Ltd

