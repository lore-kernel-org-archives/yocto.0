Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A485E00C46; Wed, 10 Jul 2019 00:37:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733EEE00C46
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 00:37:14 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id z4so1421056qtc.3
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2019 00:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=KXgbuWygMUz0qtKoeEwDFpgm8Iqi8lmKgvHe7vpbS4U=;
	b=HQRGCRcwCCOXK85FOjClKHAyRNQab7uA9dnQ7YbAGB8K9pr55opdEGdGXTMfxTlD2Y
	2cKq7528i5EbkwPR8Id67c+RPlFMmqpdHkq31RfOLx26iEKZoPS7kTuDJf8lzD94uuiy
	uMhMCcUsLwcXAQnsAJLT+24XdogIyXzPFQNt7pTtv5KgiMewKh17IUSNL+1Zv4M2czIT
	CJnLPbQcQOuIH3OMcMVN81jfMJHV0qENdfB7bk6iy9c5V5n7hKTeRKGiyCwk03kBV5vw
	rNvB8CUCV3mVR4g2yDIspQeI3CZr5zjNa4jXt+fqpE7JF12ktAOb5THQfLTkIqQNdcof
	p9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=KXgbuWygMUz0qtKoeEwDFpgm8Iqi8lmKgvHe7vpbS4U=;
	b=gMdrA+WZOGMgClofPTvjbZQam4XxSU7zsOlSh+Nd+1xj599iRAmLNyTJot20WbLjiN
	Jsqb8KP0CSH4BbdmqzuTYEteP/Ry3Tl/Gd6rC6JVEhVyrxUfVTMQ5m2Xed3YdIakfnE/
	ak/KihDf5bpSs+Qe03Z70Ppwqz4nzfeoSupz534L+ydkoXrIokk+1PDETf9G3j36FNRD
	FnxOD0a1CIm93cFhaHPH6lEk5QpR46QibybI4edsSROO4q6LVWZ3EM0MWueNrGEWZv+g
	cbK0WobNmtphsGWF6fh9X6+b2A3uazRfte4QT0dKiw98xX9BP42zeI95ElXMp7HusLZn
	F0xg==
X-Gm-Message-State: APjAAAUl9hJXp3KGJrvxkKLF8KsqWNDr5srol8uP+93rBnAoVAuCdbwn
	MJ624JA5xjOqktvUtkbMduzm9U0YAGqrh1vKzLA=
X-Google-Smtp-Source: APXvYqzjEjG0Me2rxR7KsPx3EHMo6u+tSGaZOcX1Vf7I5n1ymQhOz/X0VriV/4ACLenjiwldsgumz1GM0F3swbFQefI=
X-Received: by 2002:ad4:4466:: with SMTP id s6mr23444713qvt.237.1562744233742; 
	Wed, 10 Jul 2019 00:37:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
	<CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
	<CAG+Ob8bWkY+zhVbhfDUu_mfrpA-DNvVb4K-vfu=3BuhGsp_Akw@mail.gmail.com>
	<CAGAf8LxRTZwp0t1F=ZLZgESPK6Q=34uyw5gu_orUcXzj1r7FEw@mail.gmail.com>
	<CAG+Ob8adeHW4tNWD=GFdEySPmhRKFwNS8FQjpSC1LGEkt1e=WQ@mail.gmail.com>
In-Reply-To: <CAG+Ob8adeHW4tNWD=GFdEySPmhRKFwNS8FQjpSC1LGEkt1e=WQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 10 Jul 2019 09:37:02 +0200
Message-ID: <CAGAf8Ly1+a=yb=ca-crusMr0DW2AMxBJY+TDYCJgCNEt9fkBAw@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Wed, 10 Jul 2019 07:37:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jesus Christos!

Zoran
_______

On Wed, Jul 10, 2019 at 9:04 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello everyone,
>
> I have tried the thud branch as Zoran suggested. Faced exactly the same i=
ssue.
> Any other suggestions?
> Output: https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
> I have built a system with qt5 recipes, but cannot create a toolchain
> for it since a week ago. Am I retarded?
>
> Have a lovely day!
> Onur
>
> Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 9 Tem 2019 Sal, 12:4=
7 tarihinde =C5=9Funu yazd=C4=B1:
>>
>> One thing on my prio list is to buy very powerful 16 or 32 INTEL core
>> 6950 or + server. Maybe AMD Ryzen 32 or 64 core (most likely). This
>> almost eliminates this build problem... But in the current situation I
>> am presently, I could not even buy extra bubble gum. ;-)
>>
>> I have only my HP Elite Book 840 G1 which has 4 HW threads (2C +
>> 2HYP), and I have the same problem for YOCTO. To build any YOCTO build
>> goes forever (the extras is that I have 500GB SSD there, which makes
>> it much faster).
>>
>> But, nevertheless, the newer, the better... Hopefully! Toradex YOCTO
>> gurus may hop to this thread, and help...
>>
>> Zoran
>> _______
>>
>> On Tue, Jul 9, 2019 at 11:12 AM Onur Eser <onureser12@gmail.com> wrote:
>> >
>> > Zoran,
>> >
>> > I know you are not a Qt Layers expert. I am trying to describe my prob=
lem to experts via common mails, so they will not missunderstand my issue.
>> > Oh lord, whole new building... I am not a time traveller, but I can sa=
y that I will wait for 10 hours or something for that to build, and it will=
 fail because of something else.
>> > The worst part is, it gives the error on the FINAL STEP. After hours a=
nd hours and hours.
>> > Anyway, I will try thud branch. Wish me luck.
>> >
>> > Others can still offer solutions, I will keep this build too.
>> > Onur

