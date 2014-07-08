Return-Path: <fathi.boudra@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2BD3E00576; Tue,  8 Jul 2014 05:44:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24C8E004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 05:44:37 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id ty20so3968850lab.11
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 05:44:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=dfVTcXByrAR6LZTToRA8xL4UIHP9Snhp5s8ByMJ/JIk=;
	b=Xub4iqJYjK2h/a7ejzpn0t0O3pDxA5CmwEQtceKvtANdx5E+AwTkOJC/6/pNhJVFED
	Ecpbp+H36Fdpf5j6DixZ5TrENe9DrtR3Cpri547604nGoQ4Ldd3p8AKKt3JKzOHWZvvo
	2WGvX72/2r6KCbSvJ8HVTynzDRVqQfdMqWA1YkVJMuGagEHkE3teT7t11rVQP1giFgjw
	D3TgrWpEIfeBSoyqdAq6Y4lyGv3JVeh0zjhu6WhcG/FQh4lyr2LDTRGiCYC/p9/ShjuJ
	LUH254mRpX0WOSe22nA6krTA9DhARkaJADk9GzwuKVPyeusOlAKM+rbaqGInlUMyshDe
	fNzg==
X-Gm-Message-State: ALoCoQlS7v0g+Lz++3Utvbm+pFDdEhaWPuxOxiBWLjYGWHd2VIwbVMmA7UTRCd6zv2KOD6uhZksL
MIME-Version: 1.0
X-Received: by 10.112.140.41 with SMTP id rd9mr26475268lbb.31.1404823476223;
	Tue, 08 Jul 2014 05:44:36 -0700 (PDT)
Received: by 10.112.35.133 with HTTP; Tue, 8 Jul 2014 05:44:36 -0700 (PDT)
In-Reply-To: <CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
Date: Tue, 8 Jul 2014 15:44:36 +0300
Message-ID: <CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
From: Fathi Boudra <fathi.boudra@linaro.org>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Aarch64 support
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
X-List-Received-Date: Tue, 08 Jul 2014 12:44:47 -0000
Content-Type: text/plain; charset=UTF-8

On 8 July 2014 13:27, atulkumar singh <atul.singh008@gmail.com> wrote:
> Hi Maxin,
>
> Thanks for your suggestion for the same.
> But that git repository for meta-aarch64 is not working.

What do you mean by "not working". We produce daily builds and they're tested.

> Thanks and regards
> Atul
>
> On 8 Jul 2014 01:25, "Maxin B. John" <maxin.john@enea.com> wrote:
>>
>> Hi Atul,
>>
>> On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:
>> > Hi All,
>> >
>> > Is there support for Aarch64(64 bit ARMv8) available right now?
>> Yes. Aarch64 support is available in meta-linaro/meta-aarch64
>> URL: http://git.linaro.org/?p=openembedded/meta-linaro.git
>>
>> > If so then what i need to mention as a MACHINE in local.conf.
>> You can choose between:
>> 1. genericarmv8b - generic armv8 big endian machine
>> 2. genericarmv8 - generic armv8 machine
>>
>> > Please let me know with your valuable suggestion if any.
>> Please use http://layers.openembedded.org/
>> to search Machine/Layers/Recipes supported by OpenEmbedded.
>>
>> > Thanks and regards,
>> > Atul
>>
>> Best Regards,
>> Maxin
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


Cheers,
-- 
Fathi Boudra
Linaro.org | Open source software for ARM SoCs

