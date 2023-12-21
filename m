Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9368C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 09:42:28 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.48389.1703151746497325685
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 01:42:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=POWh6eyK;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50e5a9bcec9so879788e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 01:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703151744; x=1703756544; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLf5ZvBvls4N+UVKSmRtyKSVg+NlqzkKjn3fOInavMk=;
        b=POWh6eyK7ht1Mm17smATnSfebeX02vQNhOg9PxCKjFW71AaN1MNt2tCPlVi2H/ZTcm
         X4cDMsX1NJeycHh8vcNhRGtTsGOQ9zb0vYrBhGGSmY6wYh3nDWwbuZoI+E8l1HY4oacX
         R3bmOKZjEjn68K5JMVTvNri1nOeiHwXkwklvp8Sp+ml63tNGqbmQkjZzkbRiqDp3mcwh
         xY95shhl6Q8w6Uie0YhzEoyRMfwHs24Q2PqQgWVE0ulOa2WykBWSXWFr9nkqrkLkjkk8
         YxROXz7s0josDP0rhF3tSJVQQ0nSOMX9/g44Qi46rwc99GM8hITwP9Z/DOKNxaxo+Lo5
         jT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703151744; x=1703756544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLf5ZvBvls4N+UVKSmRtyKSVg+NlqzkKjn3fOInavMk=;
        b=Idk93IjB1np4nH5M1GG9CuK08rNuk5t1cgAHGEk6FSVpTr7vr+u985CHrt5OgfsWNG
         osy1JCw8ro9pH1LnUuSJTDJhOEJVwzkyKcRFKP7Ec73NNM6Iqcr9mF7PJppiZ1LHfl0U
         O4L3rn2T/2vFKqHeyJDiVBjVQU42TAD2vA5L+m55KnaRlrwj4mdTvGx1ihvqshR21JY6
         Nn7If0sALGCuafsTXO3s0bIG/z454f+FE45+KcybsEX/p16Lp6N7zAye9BvesrL4LNQ2
         aR1Dx92nJ98VwwUS599/7vvzkI3RzBri/9cEQzJplb4dwI8PO7DaxLaMOk/gmpCrbbJ0
         wZdw==
X-Gm-Message-State: AOJu0YxJSVhFqmq/HvB1yzRDMYXabm9KXT1xKmOuNB7gos9PXW06YKSa
	DRyoJPZmmodrb+WtKbtnK0ToyPNlc9KBeKrXMEM=
X-Google-Smtp-Source: AGHT+IGM31i7/WOqivQufZipetUvSsH9E/K8w7l2k7DcBbe1TwpDqtJPLVixP0cBa3i6nIDwfVMu02ljm05SH8Q57Vs=
X-Received: by 2002:a05:6512:481e:b0:50e:4e56:9987 with SMTP id
 eo30-20020a056512481e00b0050e4e569987mr1428180lfb.77.1703151744256; Thu, 21
 Dec 2023 01:42:24 -0800 (PST)
MIME-Version: 1.0
References: <9B6E1D5F-50FB-408B-9A16-AFFC956FB49B@arm.com> <24207.1702552293492620689@lists.yoctoproject.org>
 <75C93DB1-34A5-49D0-9912-0E937B111495@arm.com> <CH2PR19MB3429DB00CE138E0B42C57172DD96A@CH2PR19MB3429.namprd19.prod.outlook.com>
 <CANNYZj_apJTWSZAEASHSxGaXfs2oFQBb66gwsFpR9EesCPJ0=Q@mail.gmail.com> <MN2PR19MB3440B873BD88093542C6358ADD95A@MN2PR19MB3440.namprd19.prod.outlook.com>
In-Reply-To: <MN2PR19MB3440B873BD88093542C6358ADD95A@MN2PR19MB3440.namprd19.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 21 Dec 2023 10:42:12 +0100
Message-ID: <CANNYZj96YwYbDh+bym5-Ud0oXV6GEwbiHepn7P+LQSuvviQjDg@mail.gmail.com>
Subject: Re: [EXT] Re: [yocto] do_populate_sdk_ext failed
To: Ming Wen <mwen@ambarella.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"ross.burton@arm.com" <ross.burton@arm.com>, Song-Jun Han <sjhan@ambarella.com>, 
	Jian Tang <jtang@ambarella.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 09:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62015

Hello Ming,

I'm happy to hear that you're overall satisfied with the project, but
I need to clarify the 'terms and conditions' of open source further:
not only no one owes you a fix, no one owes you an investigation of a
possible issue either, especially if the issue looks difficult or
time-consuming to replicate (and in this case it is). So it's not
likely there will be a definitive answer to the question of whether
it's been fixed (or even whether it's a real issue in poky, or simply
something specific to your configuration).

On the other hand, Yocto is open source. All development happens in
the open, and obtaining the latest source tree is a single 'git clone'
command. You're welcome to join the ongoing development rather than
just use the release deliveries, and obtain the answers that way.

What I'm specifically suggesting is: get the latest poky master
revision, set up a minimal configuration where the issue can be
observed, and then see if you, the team most affected by it, can first
find out where things go wrong, and second how they could be fixed. It
may also well be that the issue is indeed fixed in latest master. The
community can assist in that investigation if you run into problems or
are unsure how to proceed, but doing the investigation is on you.

Once you establish those facts, we can help towards making fixes and
backporting them to LTS.

Alex

On Thu, 21 Dec 2023 at 05:15, Ming Wen <mwen@ambarella.com> wrote:
>
> Hi Alex:
>
> Nice to meet you and thanks for the comments. Fully understand!
>
> We're not trying to push you for the fix(definitely not). Instead, we alw=
ays appreciate your efforts on bringing Yocto to us. Really so many R&Ds lo=
ve it. It is even much more than our expectation when we tried to welcome Y=
octo to our SDK years ago.
> Here, we just seek for your help to see if this issue has been fixed in y=
our later LTS poky. If not, then to see if it can have a chance to be fixed=
 in future when you have enough resource.
>
> Thanks again for you and Yocto!
>
> Best Regards!
> Ming Wen (=E9=97=BB=E6=98=8E)
> SDK Team | Ambarella Shanghai
>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, December 21, 2023 4:40 AM
> To: yocto@lists.yoctoproject.org; Ming Wen <mwen@ambarella.com>
> Cc: ross.burton@arm.com; Song-Jun Han <sjhan@ambarella.com>; Jian Tang <j=
tang@ambarella.com>
> Subject: [EXT] Re: [yocto] do_populate_sdk_ext failed
>
> On Wed, 20 Dec 2023 at 01:51, Ming Wen <mwen@ambarella.com> wrote:
> > Song-Jun and myself are in the same team. We spent some efforts to
> > make it happen for " do_populate_sdk_ext" finally by fixing some issue =
in Poky(we're using latest Kirkstone 4.0). But as you mentioned, when we tr=
ied the generated eSDK, we found that it still can't go with externalsrc en=
abled. :( We're wondering whether this limitation/issue will be resolved in=
 your next LTS Scarthgap (5.0). Or it is still waiting to be fixed in futur=
e. If it is the later, we will file a bug for eSDK.
>
> Hello Ming,
>
> I have to stress that Yocto is a community open source project, and not y=
our commercial supplier. Nobody owes you a fix. If things do not work for y=
ou, it is your responsibility to find out what solutions can be, and implem=
ent them with code. You can of course file a bug as a way to document the p=
roblem, but it doesn't mean the bug is going to be worked on by someone wit=
hin reasonable time. That only happens for high priority issues that affect=
 many people, and this one isn't such.
>
> Thanks,
> Alex
>
> ######################################################################
> This EXTERNAL email has been scanned by Proofpoint Email Protect service.
>
> **********************************************************************
> This email and attachments contain Ambarella Proprietary and/or Confident=
ial Information and is intended solely for the use of the individual(s) to =
whom it is addressed. Any unauthorized review, use, disclosure, distribute,=
 copy, or print is prohibited. If you are not an intended recipient, please=
 contact the sender by reply email and destroy all copies of the original m=
essage. Thank you.

