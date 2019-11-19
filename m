Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61A88E00875; Mon, 18 Nov 2019 16:22:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3EFE00D88
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:21:39 -0800 (PST)
Received: by mail-qv1-f42.google.com with SMTP id i3so7399412qvv.7
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gpvDbqJuzdiIVIdz5vkLUgCSVOxFpmB46wQ3588+BNQ=;
	b=cJX0C1VRNidBJ4+aY2b1J7Ds5EqAE0HqoIoqw/w2pGVNz+A2lY595tj/a/l04LzLUP
	Cc8nUw7WAveLWJKdRjkKCoZ/4CeLdNSVEv4p3gj0Iiu64vD4yCfZHjRnVGDy2VlyglDB
	hHj/PjS7FIOzmhnH0QBBcTkMZvMmXCkYzahVGXI3pRy5bChpcafNTpr02/RbALewEUQs
	s1CgoJx7ClLxGbQZU4wjS8S9JyOkkrieLVuQiho6HwYZllP7UmSAqY4b/TRd3K2iRMcp
	B5JH0n6m9QDPCWsnD4w5iUbyepaVIcxEJf3Jgv0MYVdT53oSAN4tw6U6h01je585yOIh
	9LKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gpvDbqJuzdiIVIdz5vkLUgCSVOxFpmB46wQ3588+BNQ=;
	b=JuVNIbxKwOJEBIJwbYIsv9J5zlqClTOSTp/OZisr63GrRuqi48TC3D3+S2cboVxu5i
	G8YWR6XFKLGt0Dr/3on3a9Lb6djZtcW8xipulBbG8C+W4kAK5stZJhIOtm974JAWpy9j
	GWgXoz8AhOnl1+lPw4abMdOGyvFm5H0yg15bHzJkxjmD8yCc2b3IGd38O7sb6ZCy9a1x
	wURqz4F8mRhow52qM3gHJevAjYH/cbSMEq0fKzEKYlRVlyYOqL5tBxZDR6+66uAhmcKh
	LWhLqRqF0ZhMhuWLSWULM4F8IY06icXp/jpaZxsdTFqed8gVT3OzSmqvNisvP6kd7TQJ
	LVjw==
X-Gm-Message-State: APjAAAWjQdj23b0pObN14xXxxaHQfe06dZtdpePziPUxRsoHPusYH18L
	AVmDjT53CmGh02xZ6VoDBeuHFo4gE2OPP2817N146CZs
X-Google-Smtp-Source: APXvYqwmt1JKgAIeHx8IYnwig4b56aZuo+NAw+0Em6+Tji1/93/+hDkKj7Xhl6ijRkU2yhkP4bhzX7/S0FLxTtYca+Y=
X-Received: by 2002:a0c:fe69:: with SMTP id b9mr2676625qvv.206.1574122898688; 
	Mon, 18 Nov 2019 16:21:38 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
In-Reply-To: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Nov 2019 16:21:10 -0800
Message-ID: <CAMKF1srJOGaaL4dhrziKe8xuHvSyz18vycKj8mJ_zb5gWYCdog@mail.gmail.com>
To: Chandana Kalluri <ckalluri@xilinx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: patches to upgrade meta-jupyter layer packages
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
X-List-Received-Date: Tue, 19 Nov 2019 00:22:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 18, 2019 at 4:17 PM Chandana Kalluri <ckalluri@xilinx.com> wrote:
>
> Hello all,
>
> I have upgraded python packages from meta-jupyter layer to work with the zeus branch.
> I am planning to send out the patches to this yocto project mailing list yocto@yoctoproject.org Please let me know if this is alright or if I need to send them to a different mailing list.

have you upgraded the recipes in meta-jupyter ? if so then it should
be reviewed as per that layers policy, if you are looking
for migrating the recipes from above layer into other layers which use
yocto ml for patch submission then its ok

>
> Thanks,
> Chandana
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

