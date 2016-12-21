Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1783E004E5; Wed, 21 Dec 2016 09:22:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7830DE0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:22:12 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id 2so84171316uax.2
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YfToyQXQX/UvepbvK9Zgx2EKPbRetUD9/zaEhfVZWrw=;
	b=eOqozfOkqqE/DLgcEPfzRi75eq9Egmmazmqk3BGi9esQTSqmlxZAUrujUUVpMg6nQ5
	N1q5JotE4cOWO8noLtpI29zj4cdMv/K1/BSaPpV4IJzHyI3Z1iT7S4iKY9gQtdwmEWD3
	PptJtX0Su7Srcm1f2gnqkfXJjmN4Opo0MOHGEEFnS9eanB7gINKeqoV8ohYiPOJ+IcUt
	7MOCpJLJIj1qkuam26sODkSErOdPeA49oK8ApXhrQclgXN7AHGwMA71XHbLwR7deQ7NT
	y9FZMrGA1jkoPhVVbjaVGpBU4rU+ipJk61KPiEvDC7cjo5ozvdymuttRX/ijPB/gnn5C
	TQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YfToyQXQX/UvepbvK9Zgx2EKPbRetUD9/zaEhfVZWrw=;
	b=JemOpUIiCssLtyJRN5W9aNK8w/xKE/qIaGfWAe5b8IY9mrQJxeqcvALbS3pI33QZkL
	FFYZ8lR5HGN+pBkaqqzAeXj96nhDC6HbY3MxG008wgelsFdsMuVcS/J9vGWIcjxNbMiK
	3xNju8vNUAdxtiOuJLbD98K45VUcmaXgLF9fAP/GX3q4DCv7sdPkjkreTvTzXGSvyTyI
	QOLUAPH9baCpnWMXZzl+aHxDJVztJ5IVeJ94TGi67Xlqtf92w3nlqo9zcs6ah+HKbbbJ
	RdE6pA61E6YO+KS+C6RlmU4d9wIIZLn9k2xFqRzqqdwysIVWpMvi8HQfJyz1lQQP+mz9
	6Erg==
X-Gm-Message-State: AIkVDXLNxlHhZo22FGzhIwmIfiIYeSjRpdLjwLXuT+8dolZdnWgfNToXKUUP3b9IwlvEsJQMOKR+QWvqGFSiuQ==
X-Received: by 10.159.48.147 with SMTP id j19mr491625uab.6.1482340931432; Wed,
	21 Dec 2016 09:22:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 21 Dec 2016 09:21:40 -0800 (PST)
In-Reply-To: <2f7ef8d8-1731-d3d6-ad12-cc90fb398d6d@3cityelectronics.com>
References: <396d7721-c317-789c-6a66-938280ccb006@3cityelectronics.com>
	<CAMKF1so+ZwuF=ecyhkaXOzJDB1y08kednf4Bi8KCtZUfTdqKEA@mail.gmail.com>
	<329f43bf-dcc3-ddea-fb40-8b1bb9f536bd@3cityelectronics.com>
	<2f7ef8d8-1731-d3d6-ad12-cc90fb398d6d@3cityelectronics.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Dec 2016 09:21:40 -0800
Message-ID: <CAMKF1spFedNKS=jWSa7=EK49gxVJ5Z1fXGXgmpb10N8714_f4g@mail.gmail.com>
To: =?UTF-8?Q?Mateusz_Orzo=C5=82?= <mateusz.orzol@3cityelectronics.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bitbake] Failure to compile UltraJson, LMDB and Netifaces python modules recipes for Krogoth.
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
X-List-Received-Date: Wed, 21 Dec 2016 17:22:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 20, 2016 at 10:54 PM, Mateusz Orzo=C5=82
<mateusz.orzol@3cityelectronics.com> wrote:
>
>
> W dniu 2016-12-20 o 10:46, Mateusz Orzo=C5=82 pisze:
>
>
>
> W dniu 2016-12-20 o 00:43, Khem Raj pisze:
>
>
>
> On Mon, Dec 19, 2016 at 1:46 PM, Mateusz Orzo=C5=82
> <mateusz.orzol@3cityelectronics.com> wrote:
>>
>> Hi everyone,
>>
>> I am migrating my old Yocto image from kernel 3.8 to 4.1 on the Intel
>> Quark based platform. After dealing with some SPI driver issues now I've
>> encountered some strange bitbake behaviour. My web application requires
>> UltraJson , LMDB and Netifaces modules. After running bitbake  I am gett=
ing
>> a lot of undefined reference errors. In all three cases pretty similar.
>> Exemplary log for python-ujson is here: http://pastebin.com/8ms9PgnY . I=
t
>> seems like the python environment wasn't linked properly but many other
>> python recipes have no problem with compiling.
>>
>> The python-ujson recipe comes from here
>> https://layers.openembedded.org/layerindex/recipe/49510/. In  previous
>> distribution with kernel 3.8 it was working without any problem.
>>
>> Have you got any idea what could be wrong or what should I check first?
>
>
> The error seems to have nothing to do with kernel version. Are you upgrad=
ing
> the whole of yocto framework from one release to another ? and if yes fro=
m
> which version to which new version.
>
>
>
> I am upgrading from 1.4.2 Dylan version to Krogoth. Firstly I've prepared
> clean Krogoth image which worked fine. Now I am adding necessary recipes =
and
> packages one by one and currently the only problem I've encountered is th=
e
> mentioned one.
>
> Hi,
> W have found found quick fix for this.  The errors disappeared when all t=
he
> build flags were cleared in mentioned python modules recipes. It means
> TARGET_CFLAGS =3D "" LDFLAGS =3D "" CFLAGS =3D "" in module .bb file. It =
was
> checked on the device that modules are visible in python and they work. I
> don't know why this helped and also what was causing the issue. Do you ha=
ve
> any clues what was wrong and how to fix it in proper way?

Can you post the exact change ? perhaps there is issue in Makefile
environment that
bitbake is handing off to the makefiles of this component. There
change in this area
in OE recently.

>>
>> Thank you for your help in advance,
>>
>> Mateusz
>>
>>
>> --
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
>
>
>
> --
>

