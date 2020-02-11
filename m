Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.19094.1581465011958343429
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 15:50:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TfSD0n3s;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kent.dorfman766@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E348E016D6; Tue, 11 Feb 2020 15:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (kent.dorfman766[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 199E5E013AE
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 15:50:10 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id x18so354636vsq.4
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 15:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Cxori8ayMEC8kB1PveHA9yCgR/D6IgMFDX181/t6fBk=;
        b=TfSD0n3ss9El8qQIEeS94OB0fX6XpFgFbepREtBf07Z5A5sTk6g9f42FJpbNzGVjeD
         ByFDGJ4abpzzkWBB/Sko5d1+ajuLZLRGGDLvK7q+ABLh601jUBiFOR+Hgu+d4nTrNQcJ
         wZM/RCJxhoQnCskfVl5GKMLH9lqq+hNAkiUQyjWv6pf+Fbk7y6YrHl7EGUCf9BbM1mAV
         5fDboLEmFljE7Lb5sSRiwdO7mmjQ0KSxUy4VsM1tt+v9JJwhvU41lAP/XBHzXI1Pm1HE
         MeM/aMDRkO+9a1VY7jT6H1jzX3/5H6yue/J1x8tohHWBb5BISOe4aBYrMd6s18HC1aRI
         5a0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Cxori8ayMEC8kB1PveHA9yCgR/D6IgMFDX181/t6fBk=;
        b=CR9cyEduxMe4zADsy802ocTOGzaDDbCJLYgDuFhb5cefKVbFlYmuKVJhd5oz10uq12
         cgDm+/2xbhJWgaVbYJXVLa+WX+DlMVMvFupwptnD4BHaYbAl+nEIM6t47uRJT3kElaMn
         hs5RqI3ykgKY5Dr9wIc+dtGtetI+coe0b/X/S4Iqjkz7nLLO6LcZRC1/Cc3ZDRP0WMN+
         WzqWrKnU4TfSOdHd08mqZi9Ds1qwzerD/IZYln7V3NIwfyydztt1tzJduafWBqugxUsT
         RThywd0codVEbIMVMIbubmg6xcUmWemN4stcRGLpGDmKogjwlkmfM1g4+t1t/IR0CK0z
         aSaQ==
X-Gm-Message-State: APjAAAXwcDPOqTl83+Hcjsa9dee+zTePhtpe+vNmp/WktAEzJzQlQ+wA
	BRo0Z7C86b5APh7YDr0vKbLO9iE5bhuQvVlB+vh2Dr2p
X-Google-Smtp-Source: APXvYqzC19Pp8Y+YE9NlFS5knxvWzSzz7QOn6WB1aVs1B3jT6OltE6253/4lQckHTY3P8VFRKeBdJwT+uhk7+BIITjQ=
X-Received: by 2002:a67:1301:: with SMTP id 1mr8071438vst.225.1581465010127;
 Tue, 11 Feb 2020 15:50:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Tue, 11 Feb 2020 15:50:09
 -0800 (PST)
In-Reply-To: <CANNYZj8pMsUepCAa=+S89mpxCSf=4JPO86ek_gA01RWZ8a5hyQ@mail.gmail.com>
References: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
 <CANNYZj8pMsUepCAa=+S89mpxCSf=4JPO86ek_gA01RWZ8a5hyQ@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 11 Feb 2020 18:50:09 -0500
Message-ID: <CAK4PFCXVMVOtHAEuxK5yexUFTKTZ+1naFJR-HYCyvAC-085KrQ@mail.gmail.com>
Subject: Re: [yocto] how to remove a package from image
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

was able to modify the vendor's machine/inc file to remove the
offending package.
Since the whole tree is in git now, I suppose that's OK, but I do wish
yocto had better tools for managing inclusions and introspection into
what is in an image and at what level it's defined.


On 2/11/20, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> You need to modify the image recipe so that those packagegroups are not
> pulled in. If you cannot do that because it's in a layer controlled by
> someone else etc, then make a new image recipe, and build that image
> instead.
>
> Alex
>
> On Tue, 11 Feb 2020 at 18:05, Kent Dorfman <kent.dorfman766@gmail.com>
> wrote:
>
>> My vendor finally realized that I needed a full yocto release and not
>> the eSDK.  Anyway, I can build their image, but when I modify the
>> kernel to remove CAN drivers I get the errors that
>>
>> packagegroup-can-support
>> packagegroup-ow-support
>>
>> are required.
>>
>> What is the "yocto way"  to remove those packages and dependencies
>> from the build?
>> 
>>
>
