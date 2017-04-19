Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEFF3E00A9B; Wed, 19 Apr 2017 04:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68EEAE00A38
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:18:51 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id f10so12533030uaa.2
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/2CnCKcoNRYIi8Xn7ho6je6HOxTcaeu122GXd8bpt8M=;
	b=Ck2ODRwovkeE1oVUW6TzpmrrNNiVh5YICRGigK1sTikCpl9Sfg1OoIOqk7tZQIBSF0
	bL93GVBVbiukg0PNP8cM8BEUe0pwLMZW2BZ+ZfdkNlZkkGucf2dJcxOTV+H7VeKWvP4G
	DI6oLkUojOmKv/D0570CKAAULInoOSBnyHoQWG8JihE/Ya29F+4G5MajqvL6lolEYsK4
	r1G+NvA67YHvwaKMtgujVQWNw0YS69rmMBSj4/2XkRAVOXi2Or1e4Pnumn7sGtbjqxYX
	JArYRuo8VO20mNkC9fLYuwFBxbW/ET2XTuUeHjIMZnCtll30LcadIIH4EPqBv0w6dyxA
	JDhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/2CnCKcoNRYIi8Xn7ho6je6HOxTcaeu122GXd8bpt8M=;
	b=bP/IfdJPp9sYhnbUkoU/g0h1eoa1k62P4TS8Sx0CmL1+EWfEOF6scKlFhb95KhwMj7
	Z7c7hxMoNVOnZ8YJSBz86MVx22yFNEfK/qRukC66OPHyy9Vo0D3GFH80O7PAdHVIg6Jf
	RCOKTUj5xdGu3Q1w05w5tRVqbeGbbgnkAhHAXFeVH0ipwmDgreSViBzwLNH5btMz/OXz
	zApMh3N6ZJyMfU5yBYkYXaHB4jcErOh2jH1yDA9lBUFY443t1XZetawkytThrdajy9Zo
	cYjrEmKOeV4u+yMzHzhH/fwQrwuaQVsCER6VX/Inh2lLNkvXiFCR51aZ5TXeEL39CPYy
	AYDA==
X-Gm-Message-State: AN3rC/47gpUWaLFP3kOTfIWvBqMcI2Y9ug7kOkXJhxUbvG1g17UMLm0T
	2MgvjJImMRqb/xdGudB1QTL81rD1JQ==
X-Received: by 10.31.37.14 with SMTP id l14mr939185vkl.111.1492600731226; Wed,
	19 Apr 2017 04:18:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Wed, 19 Apr 2017 04:18:50 -0700 (PDT)
In-Reply-To: <CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
References: <20170418181322.14588-1-andrei@gherzan.ro>
	<CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
	<CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 19 Apr 2017 13:18:50 +0200
Message-ID: <CALbNGRRAfeguULdtd6qqNE4pDp0Z-s3cnYtBeLAm0dHdfoBW+w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Wed, 19 Apr 2017 11:18:53 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 12:41 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> I was thinking about that but extraconf brings additional
> functionality (ex automount) that might not be of interest. I
> personally don't want that. What do you think?
>
Ooops previous mail went out too early.

Agreed: Don't mix things which are unrelated and udev-extraconf breaks
at least gvfs automount used by thunar and other file managers.

Andreas

