Return-Path: <raj.khem@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE19E0141B
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 21:49:40 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id v19so6640188obq.7
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 21:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rWSu53ZA9NJXJZ3pELb2wufvAmh9erArMoWbmFqXe6E=;
	b=iczzVm8hoNg8KMK20+LSrMQq2VyrDug0oJHHvq2E1agf7nVEsEQDHqlwlSOcyJb7+J
	wFZHdYvqZbUkw5ceTzSaG/E/e1rY1y2NI9WhNY0Z9jOY+teEiarF+uLHH1NVuO8J+O52
	DZVZbSnZRUvV7rpK9UkKZo74fvZ5EeZIfOwFZ08PfRHraUnpGaBIFjX2S/Ik14/zvFMI
	7DBrqVBiHF3osax/5kzepNbdCmkWIhjGLAlx/fyVw/Mp6WplGtUxafZqFsa+chCvRb29
	yuift8q4gTgodmRJiLOCj6yWTaPg/kae2IXgafUgleYfuBOVRcKOFr/FrIjHOE1Usvc8
	rgug==
X-Received: by 10.60.131.67 with SMTP id ok3mr3762187oeb.78.1371703780140;
	Wed, 19 Jun 2013 21:49:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.60.27.232 with HTTP; Wed, 19 Jun 2013 21:49:09 -0700 (PDT)
In-Reply-To: <119b01ce6d6d$06c6ae70$14540b50$@com>
References: <1371639211-3726-1-git-send-email-noor_ahsan@mentor.com>
	<746BB1A1-A592-4FFB-9A3F-B9D6C904451A@gmail.com>
	<119b01ce6d6d$06c6ae70$14540b50$@com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Jun 2013 21:49:09 -0700
Message-ID: <CAMKF1sqVM3DXDRszR2dtBbRq11QAT89Qba+PHGu03JAhwAeChg@mail.gmail.com>
To: Mikhail Durnev <Mikhail_Durnev@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] ecryptfs-utils: Modify systemd service file to 'simple'.
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
X-List-Received-Date: Thu, 20 Jun 2013 04:49:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 19, 2013 at 9:17 PM, Mikhail Durnev
<Mikhail_Durnev@mentor.com> wrote:
> ecryptfsd is a resident program, i.e. daemon. According to systemd
> documentation, Type=oneshot/RemainAfterExit=yes should be used for programs
> that do not remain working after exit. But for daemons we should use
> Type=forked to indicate that the service remains running in background.
> ecryptfs provides option -f to run in foreground. This option is preferred
> when the service is started from init/systemd. That is why we use
> Type=simple (default) to indicate that the service runs in foreground. To
> manage the service properly systemd uses its type. E.g. if ecryptfsd
> silently dies, systemd will recognize its failure in case of simple or
> forked, but not in case of oneshot.

thanks for details. Please add this to commit message.


>
> Best regards,
> Mikhail
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Thursday, 20 June, 2013 13:32
> To: Noor, Ahsan
> Cc: holger.behrens@windriver.com; florin.sarbu@windriver.com;
> yocto@yoctoproject.org; Mikhail Durnev
> Subject: Re: [yocto] [PATCH] ecryptfs-utils: Modify systemd service file to
> 'simple'.
>
> reasoning why it is being turned into simple service would be nice
>
> On Jun 19, 2013, at 3:53 AM, "Noor, Ahsan" <noor_ahsan@mentor.com> wrote:
>
>> From: Noor <noor_ahsan@mentor.com>
>>
>> Signed-off-by: Mikhail Durnev <mikhail_durnev@mentor.com>
>> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
>> ---
>> .../ecryptfs-utils/ecryptfs-utils/ecryptfs.service |    4 +---
>> 1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git
>> a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
>> b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
>> index ba12aa3..52f3397 100644
>> ---
>> a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
>> +++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.servi
>> +++ ce
>> @@ -3,9 +3,7 @@ Description=A userspace daemon that runs as the user
>> perform file operations und After=udev.service
>>
>> [Service]
>> -Type=oneshot
>> -ExecStart=/usr/bin/ecryptfsd
>> -RemainAfterExit=yes
>> +ExecStart=/usr/bin/ecryptfsd -f
>>
>> [Install]
>> WantedBy=multi-user.target
>> --
>> 1.7.9.5
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

