Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E342DC433FE
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 09:52:03 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web12.2653.1665136320783205326
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 02:52:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J1s75Xz/;
 spf=pass (domain: gmail.com, ip: 209.85.166.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id i9so2255077ilv.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 02:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NT7gCj8Xf9sqj0XRr7k4G4H2TKVx2O3z3SUbDKggp3M=;
        b=J1s75Xz/UkBvlTw3Heb+SmS49mTEAYEoABo4h5JtfZ7ghKojCmA4McFBMS7ZlryBjh
         KwEsea8rbtyMznd81Gx6f3a6hs/+Avte0rN2/OFctsdrnAD2w/utXMS0kQqCy+hvwgJ7
         /id5HFAkPS/WRC27rNmc9U2BglVgEAeuIo6+exyqms7KDb/TCqma4/GeHYytTtffTIOg
         Z8yGqg1ayCCyv/3i2VH3UPLZYfjaheLlXsRM6ppHGQWctQ4gjCLHKsG8lkjWKDQTjU7n
         ekGyGZKPgqrEFgLERsLjg0dFtfoL/nCEAZrQbKMGDjeMaKivKs0Jyg+BLoR5LZ64wMxV
         N7Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NT7gCj8Xf9sqj0XRr7k4G4H2TKVx2O3z3SUbDKggp3M=;
        b=Uz9YpxP6R8tpCpZrx0HcXvrIkwP4e+Ty90J0KiqkVFn5nypJVvrtTFeNi+MblOWjNn
         0HnbEjXypOC5bd5i+A9Fz54VkQSB7wQuBVXFLonYw/zobdSNCkMsI5HqlkDqPn+fhKBK
         eCvT/wO2Y+zw0hNYXo3n4S33yGfK+3QL0vkRhn3HftdnH41cljyKsnWbG+NDGfcN9uqa
         1+h8J11OPaynShEv9oypPJ32aoMQQdKbrAd90zlwAlIjU6wfRiVEsfUaaXYcsS7FEGEw
         MjK7MtdIhx97RR8SEzePWIRraxAVn26SOIe5WSklN44/iiYTGnX+ias2RxqV0AYLxZO7
         a0zw==
X-Gm-Message-State: ACrzQf19pkI2BOjqDhlYOkjNAXaaL5nmV5o8OAZgCuvSzWn7loX78XLn
	WLHjgUytfcdVgwbVT8gwrdbTgtOhWVI/q4lDLQk=
X-Google-Smtp-Source: 
 AMsMyM7Yx65HFScR242CYWSFVxCC2dn0xZp+rddKvpMVq7tMk7Tl0mf7DO0xiWniEHjy0dcqKqQmXJRMm7aDrKAMGnc=
X-Received: by 2002:a05:6e02:17cb:b0:2f9:1fb4:ba3b with SMTP id
 z11-20020a056e0217cb00b002f91fb4ba3bmr1838242ilu.257.1665136320121; Fri, 07
 Oct 2022 02:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <931a9536-5f23-f48c-0831-33d2add6406e@bootlin.com>
 <12998.1665134928428236625@lists.yoctoproject.org>
 <171BBFBB3D98A617.12674@lists.yoctoproject.org>
In-Reply-To: <171BBFBB3D98A617.12674@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Oct 2022 11:51:49 +0200
Message-ID: 
 <CANNYZj9ar+z=m-G-76bi0icLac1wLfHw++9zpWaMC=3n1uz=Ag@mail.gmail.com>
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2)
 #gplv3
To: alex.kanavin@gmail.com
Cc: poberauer@yahoo.co.uk, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 09:52:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58285

Oh and: anywhere where INCOMPATIBLE_LICENSE is mentioned in the docs,
it must be adjusted to stress that per-image variant of it is a far
better option than a global ban. Also further instructions and
pointers, e.g. to the tests we have which can serve as a starting
point:
https://git.yoctoproject.org/poky/tree/meta/lib/oeqa/selftest/cases/incompatible_lic.py#n100

Alex

On Fri, 7 Oct 2022 at 11:35, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> For what it's worth, I have eliminated meta-gplv2 from the
> infotainment stack (e.g. a major build) of a major car OEM, so this is
> doable. It would help if you bring up specific issues that you see and
> we try to figure out how to solve them, and come up with a list of
> 'standard practices'. Even bash has a sort-of replacement in busybox,
> which needs to be enabled and played with.
>
> Alex
>
> On Fri, 7 Oct 2022 at 11:28, Peter via lists.yoctoproject.org
> <poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
> >
> > Thank you for the replies, Alex and Michael.
> > Have joined the docs list.
> > Couple of related threads for reference:
> > https://lists.yoctoproject.org/g/yocto/topic/question_how_to_handle/90285507
> > https://lists.yoctoproject.org/g/yocto/topic/incompatible_license_how_to/75210517
> >
> > Thank you
> > -- Peter
> >
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58284): https://lists.yoctoproject.org/g/yocto/message/58284
> Mute This Topic: https://lists.yoctoproject.org/mt/94157267/1686489
> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

