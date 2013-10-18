Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F72E016DD
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 03:25:46 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id q58so3551631wes.3
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 03:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=qLhCipvecqjFB9htJ1EAvl/YnFlr6fh2ZI0OzqSWQg4=;
	b=UQP8SlzgwH4/lGcOFa8NdOes0Zbd/SwEurZ58/1Xxgj2YgkVaA7e0JMmqMkpWt50SW
	Akll8gFnEVmsaiodQLkI9KgSbCgme0+rk8TpGKt7s3UApOj96C1YU4aPOvB5IBbETXRv
	TliNr2ongoJ7Amr7RM0EmYzLTEE+8lsAtB7YG1sSmU3cmRmA6rUFtlodAMxy94FHUGhy
	r7tojwgI17PqY1kNi7Ye/e2CWJgZOE2ja5neIp3liTBIl4s69XXXZh8FgNgDfbsVsuaB
	kKPIZ/xzgH6BRaY0STyd0jCfNfN/57wnpPQhwN1Xi6inoF/Gar5KoBM+R688ud5BERI1
	4L0Q==
MIME-Version: 1.0
X-Received: by 10.194.175.66 with SMTP id by2mr969695wjc.59.1382091944742;
	Fri, 18 Oct 2013 03:25:44 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Fri, 18 Oct 2013 03:25:44 -0700 (PDT)
In-Reply-To: <3658977.emNrkgtHjm@helios>
References: <CABHD4K8THEdw4na-mODkXqPbh1KL+wSupa+N55at07bgnwyYTw@mail.gmail.com>
	<3658977.emNrkgtHjm@helios>
Date: Fri, 18 Oct 2013 15:55:44 +0530
Message-ID: <CABHD4K8RB-d4uYJjt-Yphopm7qfH8eDuiu4EUVZ-ZXP=KC9PHw@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Applying Patch to /etc/passwd file in Yocto
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
X-List-Received-Date: Fri, 18 Oct 2013 10:25:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul for your reply

Yes frfhsjk is added inside the
poky/meta/recipes-core/base-passwd/base-passwd_3.5.26.bb using sed
command

Now how do I achieve you need to change it in the place where the user
is actually
being added.

Though I am able to get desired changes using below

SRC_URI += "file://passwd"

do_install_append() {
install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd

                    install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdir}/passwd
}

But still wanted to do it from patch file.

Thanks

On Fri, Oct 18, 2013 at 3:46 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Amit,
>
> On Friday 18 October 2013 15:21:37 Amit Tomer wrote:
>> I wanted to apply a patch file /etc/passwd but after many attemps
>> din't get any success
>>
>> Below is the file
>>
>> poky/meta/recipes-core/base-passwd/base-passwd_3.5.26.bb
>>
>> which is responsible for copying  the modified passwd file to
>> /etc/passwd in my final image
>>
>> install -p -m 644
>> ${STAGING_DIR_TARGET}${datadir}/base-passwd/passwd.master
>> ${STAGING_DIR_TARGET}${sysconfdir}/passwd
>>
>> I believe above line copying the passwd file to /etc/passwd in my final
>> image.
>>
>> Now I need to modify this passwd furthur, so write a patch for it
>> belwo is my patch.
>>
>> --- rootfs/etc/passwd   2013-10-18 02:03:50.119529158 -0500
>> +++ rootfs/etc/passwd   2013-10-18 02:05:01.703249079 -0500
>> @@ -18,7 +18,7 @@
>>  nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
>>  ftp:x:999:999::/var/lib/ftp:/bin/false
>>  fuwmshey:x:0:0::/user/fuwmshey:/bin/sh
>> -frfhsjk:x:998:998::/home/frfhsjk:/bin/sh
>> +frfhsjk:x:998:998::/home/frfhsjk:/bin/false
>>  quagga:x:997:997::/var/run/quagga:/bin/sh
>>  messagebus:x:996:995::/var/lib/dbus:/bin/false
>>  sshd:x:995:992::/var/run/sshd:/bin/false
>>
>> Above is my patch
>>
>> Exact patch of file to be patched is
>>
>> /tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd
>
> How is this "frfhsjk" user getting into the passwd file in the first place? The
> reason you're getting the error is this line you are modifying is not even in
> the default passwd file you are attempting to patch; it presumably is added
> later on. Patching this file is not the correct way to modify it in the final
> root filesystem - you need to change it in the place where the user is actually
> being added.
>
> Cheers,
> Paul
>
> PS: you should not send your mailing list postings also to yocto-request@,
> just yocto@.
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

