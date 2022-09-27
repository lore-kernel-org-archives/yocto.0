Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E65F5C54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 08:50:22 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.8743.1664268616418183808
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 01:50:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qU9SCKLR;
 spf=pass (domain: gmail.com, ip: 209.85.167.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id a8so14629988lff.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 01:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=LDhB1wncaSCbihQOULOZmGnPeR4o0BoAB33RDlRhEdA=;
        b=qU9SCKLR0568AikbHpwAsA952NfNktE3hRclhTQjRCFA1JExLd77JeM9xeDeBpMAbJ
         2MPsGo0jMGIRmlKlhNd31KEpFzuJxBKk0eAvvsjP47kwwi7ufoGSY0D5frnwQIGAk9g+
         uRUfFA1IoJ+oHacnvk7dHfCEM49ZxguqDl390cDwdezw8uFeJgSabsTxEi4DLZb28Xq2
         +TcRT1teDGIw7BiTFn22S0m1yLyWeOJNakhaCTVO0GAFTp3cG0X32eUXnWr86paNDTxN
         RhAUUgKhTXeUyGurydhNfyXdUV4s/Tug0XqispB17HHExWiy6ouneMztmJLGGHFBmNB3
         0JWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=LDhB1wncaSCbihQOULOZmGnPeR4o0BoAB33RDlRhEdA=;
        b=GtSMdFt+zzeii6EwcVbF5HIHRdITrBkDRxBmk8IHZPh46BCSIj3oEd0noFHdKbjnG3
         uOIu2w25GgEba34ryZC7SSvV4gc1uj/UoZsR+SQulXjARKLsoBt74++5B7AT4EXwgpgM
         gPMrW4i9m9jXvgIE4dWU7e3OYZRYy8W5/gCG89yqp09Slj2hvUuICyybH6Cn9zQZ0mxf
         el/1IkWge83CHqckfaaNhCqHlHbzWbh5XvQMM/8jOd3wbfGPQCiBXs8dzO5zcjdvxntO
         /AATJa3wJijullLNEzHjUtgWxxOF4ORK2rOCkpClfbXTPZj2eE+QSQPHxBO1jkEWHjN2
         mlCA==
X-Gm-Message-State: ACrzQf1P2tXxHr5r7FodR+1CLDl12HP4H8O7pcjWRvSyWJm+8YHxjHVn
	e9IpPbwEMYwm+F7ub93M2Rwy6YsU+7ByNF45QM8=
X-Google-Smtp-Source: 
 AMsMyM7ZfcbzUYXWc6nD7CpAfEyfpp8uHwIUYqS5ZfV4TmAfhwQ5BwObImU6JpGBikZwevqbtMjwrCeLeI/iAio01aE=
X-Received: by 2002:a05:6512:40c:b0:4a0:5b27:76f0 with SMTP id
 u12-20020a056512040c00b004a05b2776f0mr7835751lfk.358.1664268614303; Tue, 27
 Sep 2022 01:50:14 -0700 (PDT)
MIME-Version: 1.0
References: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
 <SA1PR06MB8209B064AB1471F7B0AF432B86559@SA1PR06MB8209.namprd06.prod.outlook.com>
In-Reply-To: 
 <SA1PR06MB8209B064AB1471F7B0AF432B86559@SA1PR06MB8209.namprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 27 Sep 2022 10:50:02 +0200
Message-ID: 
 <CANNYZj8NzbdA8gWocxcX6TOJTPhFbCSEuNOFOVcHDB-vcD2muA@mail.gmail.com>
Subject: Re: [EXTERNAL] Re: [yocto] nodejs do_compile eats all resources
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 08:50:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58178

Do keep in mind that PARALLEL_MAKE can and should be set per recipe,
so you can make-limit only the worst items.

Alex

On Tue, 27 Sept 2022 at 10:34, Westermann, Oliver
<Oliver.Westermann@cognex.com> wrote:
>
> > Am Montag, 26. September 2022 19:33 schrieb Alexander Kanavin <alex.kanavin@gmail.com>
> >
> > Anything written in C++ tends to consume 1-2 Gb of ram per compiler process. If that lands you in OOM, you probably should limit that with PARALLEL_MAKE:pn-nodejs, but otherwise that is the sad reality of C++ builds.
>
> I expected something like this. Thanks for the confirmation and I will try to play with PARALLEL_MAKE to reduce the impact.
>
> - Olli
>

