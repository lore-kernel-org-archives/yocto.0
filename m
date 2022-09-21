Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 267C1ECAAD8
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:38:32 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web09.5741.1663763904153203303
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:38:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bhWhXCFQ;
 spf=pass (domain: gmail.com, ip: 209.85.208.171,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id j24so6327321lja.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=F/Ih8S/CMq1cZKd+wmXXbZ3p1c0AfxddqjRehJA/UH8=;
        b=bhWhXCFQlzstLlbxDQIKjgk0pH7wjXviZzjAqKq/+h95Tems1NnoO2Kaq/ox4H5XMy
         nEmTeTnNEXKfhpgr4FzRucWk4kRdnJ4rcRUl+GV+uwGtq8ZiVdwMAShWbLCf6SeNo+Ui
         QVEwOFJdpReaJq2gXHExDLQcjndACRjIp1lXm7LdZgFDK5L00u2NRqsLRfL6wGQ40u5W
         tcWQEG82wcg+DxQyrodHWP8n2vI3QeLVPcX69XLL/d5QDgCcg+XfJNOpl8HxQFrQh5hX
         WUVt1NZVv0k5X/zN/H8cYZgO/2QSWV3yP3YqQxockCR1u71XF/attdFoGuJUb/TVeam8
         MdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=F/Ih8S/CMq1cZKd+wmXXbZ3p1c0AfxddqjRehJA/UH8=;
        b=nzG8L9r9uVUHhvOtQiJa4wmLUmuhMOZOTkAM6ngmdZ/p3lfL5ybOgN0apk4WqV5osd
         gzEV+fBmM8HCBZf8O9hcgVVi6cUJHJsq2ZgviAyDUqKyQnJGpY2qXeuhzAF60juC5/kj
         4UaxdEmoKgrUkssFchSBkeLgn3UlQnT7Hh0n70+a1aeqaE6CHlKnZu3XHMKF/CkWwinV
         Njs78ZYdL3PO75i5ijUztNXzWchkqoGSv2EiNO/1rmuAHJDk2Tn7k6jRdmve13BKQlR9
         y652FVtR0fHa8a2BfZTuUu+QFZllmmDF9HAdlNfLqC7F9dgMx1yGdZXdeZH08hUyqqTj
         m9yg==
X-Gm-Message-State: ACrzQf05hOPbk2UDZJythS6GiHDbSMVDdFGUcSpQLfbJV5Gsde7ttEW1
	eJkZQ05EJ5YiZaukP8UXJ36TdIuv+C3bzuWWpQo=
X-Google-Smtp-Source: 
 AMsMyM4ljl2TMt65JJz+gdfZ/FR7eh9gnM8onojwzZTHbDABYjrstdjbR/4hn2Gf7EiSS+glOpikjZY+lBJlhKh/L8E=
X-Received: by 2002:a2e:3817:0:b0:26a:d369:ca71 with SMTP id
 f23-20020a2e3817000000b0026ad369ca71mr9262774lja.191.1663763902331; Wed, 21
 Sep 2022 05:38:22 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Sep 2022 14:38:10 +0200
Message-ID: 
 <CANNYZj9kALWyEp+56R8RUhjJ6kPB36q4QpbtJzc0v0imPOdw-A@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:38:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58120

You need to check package-split/ to find out why.

Alex

On Wed, 21 Sept 2022 at 14:30, PHIL <heideggm@hotmail.com> wrote:
>
> Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22.0.=
0-r0 . In there, there is a package directory that has all libGL* libraries=
 and one libvulkan_virtio.so but they are not installed to the Image.
>
> Am 21. September 2022 14:14:10 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> This is not logs from mesa, this is logs from your image recipe. You
>> need to start with mesa.
>>
>> Alex
>>
>> On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  One of the logs has this
>>>
>>>
>>>
>>>  Error:
>>>   Problem: package packagegroup-base-extended-1.0-r83.qemuarm64 require=
s packagegroup-base, but none of the providers can be installed
>>>    - package packagegroup-base-1.0-r83.qemuarm64 requires packagegroup-=
distro-base, but none of the providers can be installed
>>>    - conflicting requests
>>>    - nothing provides mesa-vulkan-drivers needed by packagegroup-distro=
-base-1.0-r83.qemuarm64
>>>  (try to add '--skip-broken' to skip uninstallable packages)
>>>
>>>  Am 21. September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>>
>>>>
>>>>  You need to go to mesa's build directlory and inspect what is getting
>>>>  built, with which options, and how it is installed and packaged. All
>>>>  the needed bits are there, but it does take a bit of 'yocto skill' to
>>>>  find your way around there. Start by looking at temp/log.do_configure
>>>>  (and then do_compile and do_install).
>>>>
>>>>  Alex
>>>>
>>>>  On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>   If I read the mesa-vulkan-drivers recipe right it should install li=
bvulkan_*.so but it didnt I had to use vulkan-loader. Any idea in how to de=
bug that?
>>>>>
>>>>>   Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   What often works is running it under strace - you might be able to=
 see the one key syscall that causes the failure. Otherwise you might have =
to go through the heavier gdb step through.
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Tue 20. Sep 2022 at 10.25, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   Ok it seems to use Software now given how slow weston-simple-egl =
has become. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.
>>>>>>>   --
>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet.
>>>>>
>>>>>
>>>>>
>>>>>   --
>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>>
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

