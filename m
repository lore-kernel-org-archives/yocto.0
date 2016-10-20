Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5140E00D6A; Wed, 19 Oct 2016 19:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.53 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3530CE0089B
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 19:53:42 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id b186so53754466vkb.1
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 19:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=dloMRjCWG6v0vY/FpnXD3OlA6laWhAl4zxfYxAgZ0mk=;
	b=Iaan7A5KmJuCs3hLx4I/b+eLmoeie39QY+bD4YvLU2KWc7TRlvnT3TsANU/OeV/POH
	4OjQyFBLLIkTuVKQMJUFtUkuf37NYjjfvh2+94fbCLpxmiWqAU82LTPbQf0BvHNpOXzH
	vgXtxTyQSJ6RSPIpUoYiyp306Yakxz1MwE6hODKgZQuNkBashYSczKQN3Vqxy4g86sbr
	s3WdRM22GqMtaVd7tNFQga0pMhBaui6t73k8L/BS3mEmmgj9pOjboO4OaezgGnpe+pjt
	pnhCZj2f6LXlNBCF4Gb4n8LBbzqwzL7dszmPMTcwMyYx3wPsswxxpBA3up5d/8y2eR39
	KRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=dloMRjCWG6v0vY/FpnXD3OlA6laWhAl4zxfYxAgZ0mk=;
	b=Xp0d9moo7PGSrGCmi6M5rFI+MxwQON0Y0QNgfy/wj069LNveJtaSFojqhGK/M9Uq26
	KNz1OjFWT9itFLHByZxNxm/FjoupdsOrIeiMtJ3WwF8NmPzxHTpJsG71J3ujXCdy5Sbk
	gVE82cU/KslLxui2LqI8PATcqbb8txI3o/hz9Q7GFMawLqZ0FFQh5CYy3wQSa6HqK8WL
	2C0POmg+6Bb437dG0MGaPtwyh0zNigQsuEnvEvJrpbAclay28VsdLYtobHq8bZBL774K
	RECIjNPUqzXdL9Zq3mdVNRI/VYajMu7QFIQttWv0zMzaF9BH0++aZmQxxnXA/TkzkaUU
	6Q2A==
X-Gm-Message-State: AA6/9RnN5WfhQtsnvsHGg+AjkA1CS6e6P35aC+ObWJf0f9seH628QO37RV74Ffq5lSXbfgh4DobgmAhxBfNq4w==
X-Received: by 10.31.108.70 with SMTP id h67mr8886667vkc.163.1476932020847;
	Wed, 19 Oct 2016 19:53:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Wed, 19 Oct 2016 19:53:10 -0700 (PDT)
In-Reply-To: <845509FD-6E43-42F8-9F9F-8B1BF8F9F264@cisco.com>
References: <845509FD-6E43-42F8-9F9F-8B1BF8F9F264@cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Oct 2016 19:53:10 -0700
Message-ID: <CAMKF1sp7iJAnpmb7kaQXxBssb3x48A5EAYq7QzCzAhT7_8mEeA@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe for Turbo.lua ?
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
X-List-Received-Date: Thu, 20 Oct 2016 02:53:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 19, 2016 at 6:56 PM, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrot=
e:
>
> Hi Yocto Gurus,
>
> I am trying to use the Turbo Lua as a framework for building Lua JIT.
> https://github.com/kernelsauce/turbo.git
>
> Is there any existing recipe for =E2=80=9Cturbo lua=E2=80=9D ?

I checked at layers.openembedded.org and it seems there is no recipe for th=
is.

>
> Many thanks in advance,
>   =E2=80=94Dinh
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

