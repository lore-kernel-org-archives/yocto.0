Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC099C4743C
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:40 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.7936.1649747783048259782
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 00:16:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=2bTTNEJP;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.208.174, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f174.google.com with SMTP id m8so5464869ljc.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 00:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GhxlcTWq4pJKta9kUYcC3GePtM1gfqHoDdCH6eM7/B4=;
        b=2bTTNEJP7w7kTe+aldDS04Wq/xABDQcASq7pHSro39MPVZkA1jQYpuf4aUtuho4jlg
         /WAZg6YewiiTqQcvO9FqDGilinGcf+UUF/PZX19OIOkNi9vuAFiTwCVJhPC2TdlKPqwr
         +3mO74CGtIHjfCgkLbNjD7EurQTAIop06T25yBiLfHDeaa33PsxpVDXH/7U9J6npI2w3
         Y6arkb0Ai2aMts0nSUKDsQZlIn0ta6iYdeDz0EYbiynEy209NTfSObs9tnFTKNtEg/1Q
         dG7P9b6xXziDqUKWmcBtTIEoXTg47/sxUJt72KfGHVerwSBWxVB+L6eamI0d+xnDDzmi
         WXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GhxlcTWq4pJKta9kUYcC3GePtM1gfqHoDdCH6eM7/B4=;
        b=coSSAosCYFb+0ZuRNwsz3c9pJKnzZMP1Nsq2LWGDYLJL0uLrsNK+zvyMzzOT9SvQ3e
         ijFlxnHFyZSV+AUJGWyVxCJcD76h35QabP6AD9emlcvGITQr6kLK1juYx3Kyn7cdjLKK
         LfWAtX45Hc+hJzTTsM/AOeJ/318O0iSzJxIVoD6OZ7+s/oayQcyxa98A3F8W87mPK+lC
         2htEn5P7NGJ06CJ0nuET6gGgOva4u3am1n6ku71I7VquBgo/8Wabj/rdHvwpxC+btZwu
         iv3lpt77gifVvuaUdXgREZzM+Jb34cL4xgYajiOovwuOb5FNy5jKmYnybiiKwLb6i4Vo
         axfA==
X-Gm-Message-State: AOAM5329oVM4N80UdGeAOFTjpPsP6QC5hYksu5lIMv/0oSZ04d1hGYTd
	xuMyjyxaWyfxYsoea+pEAKcuSXsKPxpRlOArgw56Ew==
X-Google-Smtp-Source: 
 ABdhPJzhzpdecZsVgjbhlVLxnTpC3joud247I3YmywIqB4lOoVmw8KmTx3sfWSTt/W2Elhe+aYbJLsFHBH16NQ89hqY=
X-Received: by 2002:a2e:a0cc:0:b0:24b:4e67:eab2 with SMTP id
 f12-20020a2ea0cc000000b0024b4e67eab2mr13416004ljm.119.1649747781107; Tue, 12
 Apr 2022 00:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
 <CAKKtPp_OLSWBhEZmS0hmuM-p9va_OcpMoLDs8VZq5p8frPJ0TA@mail.gmail.com>
 <CAKKtPp90UdmN3ZghM9TwZXvS2v3pBOX8_GQaYydOp8hd8-5atg@mail.gmail.com>
In-Reply-To: 
 <CAKKtPp90UdmN3ZghM9TwZXvS2v3pBOX8_GQaYydOp8hd8-5atg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Tue, 12 Apr 2022 09:15:55 +0200
Message-ID: 
 <CAEt6NwotUehxD_ZAH-kriTpd+8thAUrUO5sRxSKE5YXYOmEf3A@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56738

As already pointed out on IRC, the only real solution is:
a) removing the shipped binaries from the install (as Khem also mentioned)
and b) making the module re-build the binaries using the cross
toolchain that the rest of the build also uses.

Greetz

Am Di., 12. Apr. 2022 um 00:26 Uhr schrieb Alessandro Tagliapietra
<tagliapietra.alessandro@gmail.com>:
>
> Tested with updated honister branch, same error
>
> --
> Alessandro Tagliapietra
>
>
> On Mon, Apr 11, 2022 at 2:41 PM Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com> wrote:
>>
>> I'm using honister (it's from a few months ago, I'm currently rebuilding using the latest commit)
>>
>> On Mon, Apr 11, 2022 at 2:29 PM Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> which release branch are you using?
>>>
>>> On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra
>>> <tagliapietra.alessandro@gmail.com> wrote:
>>> >
>>> > Removing works, the build succeeded, however I can't test if it's actually needed by the package, I'll try that tomorrow.
>>> > Regarding file paths for example file linux-arm/node.napi.armv7.node is in these paths:
>>> >
>>> > image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>>> > packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>>> > npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>>> > package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>>> > npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
>>> >
>>> > so it seems to be in node-red-node-serialport which is our package so INSANE_SKIP_${PN} += "already-stripped arch" should work.
>>> >
>>> >
>>> > On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:
>>> >>
>>> >>
>>> >>
>>> >> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com> wrote:
>>> >>>
>>> >>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
>>> >>>>
>>> >>>>
>>> >>>> what package folders do you see under packages-split/ folder in your
>>> >>>> build area for this recipe ?
>>> >>>
>>> >>>
>>> >>> The ones I've added in the INSANE_SKIP
>>> >>>
>>> >>> ls -lah /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
>>> >>> total 32K
>>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
>>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
>>> >>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
>>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
>>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-locale
>>> >>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04 node-red-node-serialport.shlibdeps
>>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
>>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-staticdev
>>> >>
>>> >>
>>> >> Ok then next thing you want to check is where the reported stripped file is located and even if it does not work then perhaps look into removing these files if they are not needed
>>> >>>
>>> >>>
>>> >>>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56729): https://lists.yoctoproject.org/g/yocto/message/56729
> Mute This Topic: https://lists.yoctoproject.org/mt/90398675/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>

