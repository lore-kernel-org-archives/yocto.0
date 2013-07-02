Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C983E013CB
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 15:59:56 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id lf11so3141505vcb.40
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 15:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=9Gvrgy2XlOkuwrYneiycng2fwpa2+VyJejUqoWjE54E=;
	b=nYJ/TjnCs9Te2M2VEC7nVNNRJtozG8xS1MwwZogpGUO1IWk+k0jv12m9i3exoZlw1S
	8uLeOOD4ZaSbVc5LRqGPUmwgJz7zEb5SlPuu7QBzZ6Uw8jXNCndaRySzlSpxK61SWIJU
	K05hBBTIRbbHBjAks03tDNhoq8WQ98rCi4OGzinArPp6+zpGGjWRh1SJS0CTWblYV6Kd
	zhX/zgZj6oY9bPdmFrr6O/ZQpAjwzAV8Y5M847YRC2tez7bDXtlsIbSEQ4qmN53AGA1u
	EU6c9prbJ5WRFSlicMOdtmH4IB9i/T95PpSelBidic6b02E/aVynVa6zVxDVQAW6dCpZ
	uVQg==
MIME-Version: 1.0
X-Received: by 10.52.33.162 with SMTP id s2mr10387656vdi.37.1372805996314;
	Tue, 02 Jul 2013 15:59:56 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 2 Jul 2013 15:59:56 -0700 (PDT)
In-Reply-To: <CAPhnLPCDq8yRw=Bz6TAwR85kpPKJucTYE7hZ5kDEK3qJ2utOkA@mail.gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
	<CAPhnLPCDq8yRw=Bz6TAwR85kpPKJucTYE7hZ5kDEK3qJ2utOkA@mail.gmail.com>
Date: Tue, 2 Jul 2013 15:59:56 -0700
Message-ID: <CAPhnLPBC4EgahMeKpQ-guukK0VGcm8rK2BP9pdo3RP5pDKGm+w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, 
	StefanX Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQlsiZq5DpBxmjfCOFFe1qWxTR6f4HlbuDvWZnSlMbm4QqB10RarG7EsiNOOG9tREDo/KglX
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Tue, 02 Jul 2013 22:59:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm going to pull these for now, but I'll probably end up doing this
significantly different when we settle on whatever solution (be it
LAYERVERSION or whatever) to identify build process breakage.

-b


On Tue, Jul 2, 2013 at 8:28 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On Fri, Jun 28, 2013 at 9:01 AM, Trevor Woerner
> <trevor.woerner@linaro.org> wrote:
>> Just out of curiosity...
>>
>> On 27 June 2013 06:06, Ross Burton <ross.burton@intel.com> wrote:
>>>  buildset-config/nightly-arm.conf     |    2 ++
>>>  buildset-config/nightly-fsl-arm.conf |    2 ++
>>>  buildset-config/nightly-fsl-ppc.conf |    2 ++
>>>  buildset-config/nightly-mips.conf    |    2 ++
>>>  buildset-config/nightly-oecore.conf  |    2 ++
>>>  buildset-config/nightly-ppc.conf     |    2 ++
>>>  buildset-config/nightly-x86-64.conf  |    2 ++
>>>  buildset-config/nightly-x86.conf     |    2 ++
>>
>>
>> Against which repository do these apply?
>
> These apply to the yocto-autobuilder eflanagan/yocto-autobuilder-refactor branch

We've moved the old yocto-autobuilder master to old-master and the
refactor branch is now master. I will be working from master from now
on (except for private branches, etc)

>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

