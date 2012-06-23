Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 022A1E00739
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 11:27:07 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1114661eaa.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 11:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=q6T4oLqF+C0bkDp79cSUAzxHGyZyX7GeXtZMw0k4erw=;
	b=FwIuy+WcDeBzvB+iLiDu9k8OttbMKBoAl3USZ/2UMvFAkuHwIie/Et57LIf3xBin4d
	j6ZgyMYyX9ZLpiqeUsMZ+8/ImFZ1OaN8cM7rhyZxbRcQuREMX5z3KjGRynlT82eULYug
	SdqGTM2vQfG4dVOqq28BZS4HI0b7zXnfmplFwU+VbTbPpyqpeANt4JkMpJAfczNzJCAb
	hEM1dLw9R20OiLajzrmn5zHmOZBKqQ6JrMME32vaP4nd2bwooW+2bRvzoEOVT+EOe3pS
	WKKcMeCutmVfnr1Q1+Pl4KITAMBNhqjIYlirwesBzqGQLVb/4HXBcAImOnefy6dVWBjX
	s7vQ==
Received: by 10.14.37.76 with SMTP id x52mr1305318eea.102.1340476026717; Sat,
	23 Jun 2012 11:27:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Sat, 23 Jun 2012 11:26:36 -0700 (PDT)
In-Reply-To: <883800F1-AD79-4AD7-AF0B-2E72E5235DE3@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
	<CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
	<6C530CF7-A92F-495A-8472-B2D46EBBDFCD@gmail.com>
	<4FE5DDF2.8040908@gmail.com>
	<883800F1-AD79-4AD7-AF0B-2E72E5235DE3@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Jun 2012 11:26:36 -0700
Message-ID: <CAMKF1srA=tQ4zm4Vbeb-B+YG9mopeMRjx5p693sOqiVo5ZM16g@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 23 Jun 2012 18:27:08 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jun 23, 2012 at 9:04 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> What do you recommend I do?

well I think redefining overridden value is right if you dont want to
modify the layer policy

SRCREV_pn-${PN} is the way to go with this layer then

