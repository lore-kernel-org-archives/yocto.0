Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509C7E003BF
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 17:57:27 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id es20so1433718lab.38
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 17:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bkVlsF2XGYXGi0VhlN0pvyW6b3e/gKrnsKm2MBhHKNM=;
	b=bwPLtyAFtbaJwP7naICvSx3knFgKN5TPDCepL/Gla/hPjYdiYhVNaL+Qt4jLXAuWB+
	Qx3Q4aL5dd1q80RGThpOalt6ozlxd12689A+XXdCzJ1rQolMgxJYyDRs4Ub3j/mI5Yei
	EaNu+pieOuZP7dH3IQnBrdscMQzxq/MOWnvCLCqrNYxd6FKHVQtQuuAc49are8im2tdS
	kM7CPtZaCxV+bkGn022CT30icWL8MJ3UYol4OEA/CKwotM2xrVmiMzQet4GJcxisR30h
	8St+34sSGoBIo1EuEllI66kAiZMn6/anBbFquvinDfgBVDsE/ulm1QqNx9235BGfc7ur
	Zbvg==
MIME-Version: 1.0
X-Received: by 10.112.159.166 with SMTP id xd6mr5845259lbb.22.1377392245956;
	Sat, 24 Aug 2013 17:57:25 -0700 (PDT)
Received: by 10.112.12.103 with HTTP; Sat, 24 Aug 2013 17:57:25 -0700 (PDT)
In-Reply-To: <F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
	<F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
Date: Sat, 24 Aug 2013 20:57:25 -0400
Message-ID: <CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
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
X-List-Received-Date: Sun, 25 Aug 2013 00:57:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Aug 24, 2013 at 2:06 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> On Aug 24, 2013, at 10:00 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
>> I created a new qemuarmhf.conf, to build using armv7a vfp and neon.
>>
>> In the linux-yocto_3.8.bb recipe, I explicitly specified SRCREV_machine_qemuarmhf and added qemuarmhf to the list of COMPATIBLE_MACHINES.
>>
>> For some reason, it still refuses to build using kernel 3.8, and keeps defaulting to 3.4.52.
>>
>> I know I can over-ride it in my local.conf by setting a PREFERRED_VERSION_virtual/linux ="3.8" , but I'd like to know what I've missed, to get it to work by default, without setting the over-ride in my local.conf.
>
> Weird, even after setting PREFERRED_VERSION_virtual/linux ="3.8", it still picks up linux-yocto_3.4.bb recipe!
>

Try 3.8%, you need to match on the version completely, and it is 3.8...., not
just 3.8.

Bruce

> What am I failing to set or configure additionally to get it to work, as intended?
>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

