Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC04E00942; Wed, 24 Apr 2019 05:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72D1FE0053F
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:36:12 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id m188so14540738ioa.9
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=kchg3juV3q0XatwaCzQNB66eXUB/bUc2eQRu6EpOyk4=;
	b=GHRUVlN4d3e1Xe0DY4WADWf4Eq3OPPBU3HPjtokkQkvEhnA+XSkGwM/xZDy3bu0nYm
	7S7MUs9gVaFI1eE9m8ERGY5gskT5OWQdPzvRzJyjObAViqIQ79XiJReoKqQ2dvYMkfhZ
	Z76gZ2MkVwl6SZ6bPes0whtMkhPD4rvQayxT0caLL4KXVSF/tWO8hne72x+jg9HI4VA3
	7JriUWZM0vU5NBmwYKmuf/5DOIwJniA0vbN6b4QM8c8XLg7zL+SLbBQIsWf4uc0m5Yjm
	XrUpAtFa7VgmEyRdUqJiDviIUG3JnlQLuUuzcJ+lF8qC/2JqGC8W+ZOOq2tLctQ1ilxO
	a9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=kchg3juV3q0XatwaCzQNB66eXUB/bUc2eQRu6EpOyk4=;
	b=fx80I/GbZdYM+jz/ml7EvOD3uPpnO0hk0QqqOPmJF9ajFcyuI96KMVQMeSzxOXrci1
	ZIEedm2wzcYeo4Nuzs5Zpu3I42chY0MYv3cgpuPSgAJFEgw0xlnrg7mIa4gwSZt2xbQO
	wohPmL+EK1rxsu/flP+9sMr1MCMeM3BRfaLQKRhmoh1IojgBnJr4Q0o1ACC0jjdYCT3y
	R4LXtg/dWsF40i7z1SlXhgzCMETZSjPtnCfxIax9rivglqjrmjGw8VwzA8JGZXRKnkYu
	ByTWXeWJf8FaOfnBcihrJ3Y4WITK/WaQjKDVTkiqrhPdRSiB9EcmNnM/+Y+8O1ikMq4t
	Qg6w==
X-Gm-Message-State: APjAAAXxFCQVVcYyfcbB46oo/8RZ8b2mrp1L+3HFTbt+/HMmM8dbKoxX
	pkX8kka93kr4+hgLA3n46RvFV7ptwhuZbpU+q9wACQ==
X-Google-Smtp-Source: APXvYqwEqE4dCNXeB/TpwyIc3OLhoLSJHV7glIvBeYF3lyWsEa3GITUK26ZiBjqoKdA+pHtxtPMWder1XEac+aSrx/E=
X-Received: by 2002:a05:6602:11a:: with SMTP id
	s26mr12728752iot.201.1556109371866; 
	Wed, 24 Apr 2019 05:36:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
	<CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
	<VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
	<CAA=hcWQJ+cJQpy6zZ3wQQaH2eutk=cdnikspBiyyL0K+-Q9gjQ@mail.gmail.com>
	<VI1PR0701MB252796A4D460A59941E82F2F95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
In-Reply-To: <VI1PR0701MB252796A4D460A59941E82F2F95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Apr 2019 13:36:00 +0100
Message-ID: <CAJTo0LaJ51Z9XG6tUZeCmiKuysRWvmzwonG5Bd7xeB6gC9K_=g@mail.gmail.com>
To: Erik Hoogeveen <erik.hoogeveen@outlook.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Wed, 24 Apr 2019 12:36:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Apr 2019 at 13:29, Erik Hoogeveen <erik.hoogeveen@outlook.com> w=
rote:
> What I have is:
>
> SRCREV =3D "${AUTOREV}"
> PE =3D "1"
> PV =3D "0.0+git${SRCPV}"
>
> To make that work your recipe file name must have the format '<recipe_nam=
e>_git.bb=E2=80=99

Some corrections.

If you're using a git URL then you need to set SRCREV to the sha you
want to fetch.  Using ${AUTOREV} means "always fetch the latest SHA
for the branch I specify" is bad form unless you're actively
developing something because you'll be building untested commits.

Setting PE (epoch) is very unusual.

The recipe filename isn't relevant, foo_git.bb simply sets PV=3D"git"
but then you override it in the recipe anyway.

Ross

