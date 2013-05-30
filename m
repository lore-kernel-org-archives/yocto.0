Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B85E01488
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 05:31:19 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id ea20so178175lab.26
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 05:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=q0RNfaQSYZ4BMOgvaQEHi4BoirVKyd1RzZ/XjjbKkIg=;
	b=1IP5dPu5XdzrkmIwYfydrRxPRnlgOCICqtvmrow1YDuoS4FgPhrAq/QNQHqrvwalAH
	6xMSjbdyGY9WyAWQKd6J4dJE20Ai1Gl5R7dVVjz1OG92/H2Zodr0OlLxTQa+J9J6FCBe
	olvpW/pz5M0e5W0xbdWPOQh1WYBaXfQWrlYVvVhNz5yuVE6cg46YbtI5+58KI2f31EMt
	6Lo3kRIdpKrzdIkCxxs8RSECL4WsKQ8ftFf1Xa1HRerIoUgWG/t19vslPfJeZCT8d1QK
	QD84J7rY/4uo3y116o+Y1gohP6cQgDZsGSqErb8W8UAbFNFvtrNaPzBYxFjO5XZuWlxZ
	pAgA==
MIME-Version: 1.0
X-Received: by 10.112.170.201 with SMTP id ao9mr3662195lbc.40.1369917078695;
	Thu, 30 May 2013 05:31:18 -0700 (PDT)
Received: by 10.112.71.14 with HTTP; Thu, 30 May 2013 05:31:18 -0700 (PDT)
In-Reply-To: <3685099.fniMcpLHSL@helios>
References: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
	<CAJqtCybqZHCvuvXNVdnOGS6_oxKBHYJcj1OhrVoMiM6Q1Qv60Q@mail.gmail.com>
	<51A6C870.8030404@windriver.com> <3685099.fniMcpLHSL@helios>
Date: Thu, 30 May 2013 08:31:18 -0400
Message-ID: <CADkTA4NX7T8GGK2FJtknB4dnxFBOFRdKB-NSVEziUMBtPX4ocw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Problem to compile kernel (enable nfsd)
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
X-List-Received-Date: Thu, 30 May 2013 12:31:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 30, 2013 at 5:03 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 29 May 2013 23:33:04 Bruce Ashfield wrote:
>> On 13-05-29 3:05 PM, Caio wrote:
>> > bitbake -e -c kernel_configme linux-yocto-custom | grep KERNEL_FEATURES
>> > # $KERNEL_FEATURES [2 operations]
>> > KERNEL_FEATURES="features/nfsd/nfsd-enable.scc"
>>
>> Aha. That's the problem with cutting and pasting patches, I missed this
>> part of the fix:
>>
>> diff --git a/meta/conf/machine/include/qemu.inc
>> b/meta/conf/machine/include/qemu.inc
>> index 7111926..b303191 100644
>> --- a/meta/conf/machine/include/qemu.inc
>> +++ b/meta/conf/machine/include/qemu.inc
>> @@ -25,4 +25,4 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>   EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
>>
>>   # Provide the nfs server kernel module for all qemu images
>> -KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
>> +KERNEL_FEATURES-pn_linux-yocto_append = " features/nfsd/nfsd-enable.scc"
>
> I'm afraid this is not correct either.
>
> You need pn- instead of pn_, and I think in terms of ordering you also need
> _append_pn-linux-yocto instead of _pn-linux-yocto_append.

Heh. Well that wasn't the patch, that was me typing it in at 1AM based on
a modified line from the original :) My laptop with the real change decided
to drop of the network.

Bruce

>
> I'd really appreciate the final fix for this as soon as possible so I can
> integrate it into the dylan branch for the 1.4.1 release.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

