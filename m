Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E45CDC3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 10:25:29 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.14641.1722335122298140918
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 03:25:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BzWORSE3;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f035ae0ff1so40724571fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 03:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722335120; x=1722939920; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQYXXviocmd9sFizNDHHPG3Epty/fPdAC9E52x2zFAA=;
        b=BzWORSE3a7Dp5wNQ46yz4F0owp0ARbtB/naksNzyEqt+8mAsSe/SDEHnf/vRD+Fu7H
         AYFddJSiyKYokjV4E5uCIX91rhGeX52YkFR3lR7s6v7dSaqldZ+fHLKtZZPGn3/60KUe
         0WH5ZoYWyww5Ec8xGLi4mgd4QfBB8mOUdJ/OrhG8pn2EJjR+/2HohkvDcwUilvuy9oxv
         6Z2vLVYcQWROfVuhrcRl8YFIUh1J8mVt82xqzECHF6adgPzR/CCFTWVGO+60dRKRzWev
         Klfe5fEIdSgilI8HUi/1LzA1PZ1JWl3VjWP8UB4yZIFBsKYpZgV/xEUpruXTch1W/hrQ
         uPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722335120; x=1722939920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQYXXviocmd9sFizNDHHPG3Epty/fPdAC9E52x2zFAA=;
        b=KrG6xVFrkvFJRTzSMNp7c6Vcp0xKluYmbE/eETiWAydhXNrkspqb+stjbrIw7fiQg+
         0cqogRMFchYXmtMrEdN+s2ACTKCyNRv6vxaRT/dsmzBdxj62rDsRojoVZGvkKMGlILXB
         9JzaoWiZ0vzIK0OEx0Eg8AOU+o7owRb210Wu//2YdWwiJkjqKUiSpMVJ1LNeyKG3VdL7
         fvciW4xFHxdtiwI4Z1iLGDWsi9VbUcWQVaiVyrA3d28CqYTKcvwcxSSzW0fr2UQ9jLmv
         UPmM6Jt06/x3fvlHNt9CVd1f7pf8ZQSfoJM0vQNN7TE9FJV37HmFBbQxbE704cExbrrf
         bRUw==
X-Gm-Message-State: AOJu0YztELd5IXmTNo9/36pPiCifdgdlbe6BtbMtDiupOp8UOmCp4Uvj
	2aeVwu60FApc6LcXV5Qgv5n18tC5sxBWgXqiE3yqbPwd7wGf/NkiVcXsxUc4O/fOKKdD2GN1vUa
	wLscqR1AAnYMYrlH+mr10zCwYf+JwDrTs
X-Google-Smtp-Source: AGHT+IEe27rLYNBzkMTaBMtHHO8oMewoT+Om5La56tEIbIbtKHM8mt698JENhxkDeVlPN65qjiKJr6/YDYrWpQDBLPg=
X-Received: by 2002:a2e:350d:0:b0:2ef:2d83:c136 with SMTP id
 38308e7fff4ca-2f1478a5728mr4799731fa.1.1722335120108; Tue, 30 Jul 2024
 03:25:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
 <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com> <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com>
In-Reply-To: <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 30 Jul 2024 12:25:08 +0200
Message-ID: <CANNYZj_iXMqj=f_xWqaxKvUitCWiK7o6J+z8K-hmi-_ZoXtoKw@mail.gmail.com>
Subject: Re: [yocto] Update glib-2.0 from 2.7 to 2.8
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 10:25:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63601

I'd suggest you rebase your setup to master branches of all involved
yocto layers. If you're not shipping a product, being on top of master
is really a better option, as you'll get newest software, and can make
more disruptive improvements to layers.

Alex

On Tue, 30 Jul 2024 at 02:23, MOHAMMED HASSAN <hassanchattarki@gmail.com> w=
rote:
>
> Well, I seem to be facing issue with the bluez stack. Though it builds we=
ll, functionality wise I think it doesn=E2=80=99t  work as intended. So I w=
anted to try building it on the board using the source code. Now the source=
 code wants glib-2 2.8 .
>
> Also, on a second thought how do you guys work your way around in case a =
particular package is outdated? Really curious!
>
> Thanks
>
> On Tue, 30 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin <alex.kanavin@=
gmail.com> wrote:
>>
>> You can try, but this is likely to unravel into a mass scale upgrade
>> of half of oe-core recipes, and you're on your own trying to make it
>> work. I would suggest simply moving to a tagged master milestone
>> rather.
>>
>> Where is the requirement coming from?
>>
>> Alex
>>
>> On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi guys,
>> > I have kirkstone SDK with me that supports glib-2.0 version 2.70. I cu=
rrently require version 2.80 which I noticed is available in the main branc=
h of git. Do you think pulling the recipes and manually replacing the file =
will resolve my issue. Or any other good methods I can try?
>> >
>> > Thanks
>> > Hassan
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#63580): https://lists.yoctoproject.org/g/yocto/mes=
sage/63580
>> > Mute This Topic: https://lists.yoctoproject.org/mt/107603886/1686489
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

