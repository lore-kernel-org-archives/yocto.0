Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B31E00D3D; Wed,  8 May 2019 06:45:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB37DE00D4F
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 06:45:12 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id i8so8628560oth.10
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 06:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Uh4DCtE6l3KnYLqMsERH8E9gnH2Q/TdwrOTqae1spPg=;
	b=LV3sAm+KohsP/qjQxfJYHT1SvRcvlo5eIQaDgltGqDG8lEXc3pJ6IyzWkkJ3m+qHFw
	XjBvzm4GNvI7KIqmOCuLSB6yWa5Rmdxyj1BgXMcLOG4v5icq2qYZs0MWhA++UUh+yZRo
	Xgds0Rb9DTUIM7IdbJmRJj1+chCimmByy2bE/5NYwhvgVkB7dAz5giBqTc7smPhsaztB
	nCEUjXkEN1HzQgmk4pROGWDYfkOPM26TodL/4+L+CR8P7SL9eVh5OZeXcUugdyuhbiBF
	plzenguoqnQA7PQPr7nsJoFwK5ZPoTsMjm27taLhLSpOGnX8DMxHS+BLlCZf5eygHNrj
	LGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Uh4DCtE6l3KnYLqMsERH8E9gnH2Q/TdwrOTqae1spPg=;
	b=Ynf09rzpiWChvAS82eWp5mbuXuPcoZUk1SlbrvuNe6YouHz2HFtrz8d+XUFx05N56W
	TLQ1eXM6KqxgSTc56V96do/HJU6n01ZQhJiPWb8wFmXnuAtP1laQIGTgk7e1v2p9jOdb
	pGS9eRFTmVgoxzeuIYL2G2YRdS4VkQnH+x311Mem7IC7HMtqoVY68pkZtaiviJ7HGNx/
	/vs8z9Gb4Gus4nNyYf5UdG5MfuMe/ZiRbMqowbJfm0tkcqKDmnMbb4Itcm22/pPZbxoW
	SZFEWnAj7Jh6rjs3H65d34cU++yiXaqY3xCJkwH0Wzq0XxT9ODaKlSV5QOOVT4NR3NST
	wLBQ==
X-Gm-Message-State: APjAAAX0MXF0ebqesg/+Ltda0bxRkNV8LOBwtrwUHncHRjSeSQ3ILd07
	7aOfNqmcxeqJJTviXnUzsGLxrOTGFacjy0Q0kII=
X-Google-Smtp-Source: APXvYqz10ETjfF9OOzGZsNooUy7+wkB2oOH/0+0BZxvVjq5lQr2yYvoH6Nmsmbf4OPEeQ7cW8pYMcQpBZYhUpkLjy1s=
X-Received: by 2002:a05:6830:140d:: with SMTP id
	v13mr4322700otp.293.1557323112442; 
	Wed, 08 May 2019 06:45:12 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-ee79f97b-ae6e-4e44-bef7-07fa5c0e3085-1557313560088@3c-app-gmx-bs06>
	<CAGAf8Lz3xo8CKAQ_g5MVjaD5_5_4ytsFRiQPEn+-aH=ckFJ-6A@mail.gmail.com>
In-Reply-To: <CAGAf8Lz3xo8CKAQ_g5MVjaD5_5_4ytsFRiQPEn+-aH=ckFJ-6A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 May 2019 15:45:00 +0200
Message-ID: <CANNYZj-4T2HRRcyZNWZON54onS-XoFjeXpN5mRmBJ_egik+eyQ@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Arno Steffens <star@gmx.li>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Eclipse (plugin, settings)
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
X-List-Received-Date: Wed, 08 May 2019 13:45:14 -0000
Content-Type: text/plain; charset="UTF-8"

Nevertheless, you are welcome to resurrect the plugin, if you are
willing to do the maintenance work. Yocto is what you make it.

Alex

On Wed, 8 May 2019 at 15:37, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> https://marc.info/?l=openembedded-core&m=155482339222316&w=2
>
> (do not shoot the messenger, thank you)
>
> Zoran
> _______
>
> On Wed, May 8, 2019 at 1:11 PM Arno Steffens <star@gmx.li> wrote:
> >
> > I want to use Eclipse as IDE for coding/debugging.
> > What do I have to set to get the proper compiler prefixes and pathes, libs and includes ?
> > Or any way to combine the environment setup with start of eclipse?
> >
> > I have seen there was a Eclipse plugin, but not for newer versions as 2019.03.
> >
> > Here (https://www.yoctoproject.org/software-item/eclipse-ide-plug-in/) is referenced to the eSDK manual, but no word about eclipse in it. Til now I just use SDK.
> >
> > Thanks
> > Arno
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

