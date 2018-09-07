Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C746E00953; Fri,  7 Sep 2018 13:36:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12623E0090C
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 13:36:41 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id g53-v6so17583310qtg.10
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2018 13:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8qbVWDrZXUpdel5nB42XqtMlqx5UxQRJDe3PfmMrhZM=;
	b=BA8HUtpStng2idwl8fcOORgVbbPLsfHYDa2X/4elTsna2G6MBpzcVTgBoGG2JRSa+N
	HGR7jiZpykFxWzKd2C+b4jewJZWUS9ETMRcragtMaqmQCCXAzAz0+jqu1Fj3H1tNf7EU
	4kI7WzMKfqRwDknBQbeFpISmvIHFBeXFyeQRrxyZgDA7y588Gpf+rbmjItEOVSCK8fTv
	QF8wBoSec4wvdWm9GDg4ElcQ230CM7uumyuirUh5WMup8ZoJF+5OJFQY/ParuHMHeGb0
	KPTzZ8EMkhxkR1BENQs5c6OARGTJI9vVrYT2qYq/NurzPA470y83hbKjDMA/+pMi/AdT
	bSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8qbVWDrZXUpdel5nB42XqtMlqx5UxQRJDe3PfmMrhZM=;
	b=LiQTWzdLKuColdUOKwQlPvWNV4RnFty96v4BMFnOhmpPU2IrF3uCyICtrSZ5r4QRQT
	w5WpNuBvbeW9ZlTywKXYpvzl6jkJM9mp6UGc/E9PrA3jehqnExTS1LO+8Ix23wZ+HSl4
	0mQGC0YWupQ5ls8sa20tRmCI76O3/Ck15yu2blUXTFt2dLIee6RLAV2A7AOBBxHCzSXb
	Nm+u6Smfl3PhrWXU1JARsGNA5wLjwhSbjk1poFTghAVtglvB+Y8B0HWSLkSeDOb4P1eo
	SMMi64QNznllS7E5yc1okvFKRCyPKJBkP1PEV9HWXNvAaeydeX7gdju106u1NHTTcgxw
	4J3g==
X-Gm-Message-State: APzg51DgKH9NpbJ4nUOt9Po6+NbByrvyvhVK4bFlPxJdRFBXb0sGRmnF
	uixjPcl0fdcxj/Ou70OaZZ7k7sXyWi8pV1nfx9UYnfK9
X-Google-Smtp-Source: ANB0VdYTltJdwVE+ShPG9+vYNy9b9DM9ONK/Eje8bKhc9vzQlkZfcpplGn7+HUTn3EUznBS8Fvj74vqTq9M35Gkr50Q=
X-Received: by 2002:a0c:f94e:: with SMTP id
	i14-v6mr7222159qvo.50.1536352601014; 
	Fri, 07 Sep 2018 13:36:41 -0700 (PDT)
MIME-Version: 1.0
References: <c6323c5a6230ad0faea75b4f31a5e7a9@bsmucker.eu.org>
In-Reply-To: <c6323c5a6230ad0faea75b4f31a5e7a9@bsmucker.eu.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 7 Sep 2018 13:36:14 -0700
Message-ID: <CAMKF1sosGoqNaosDRLvyoEcU=Z2gbiDfQ5LNktCNMh+2YgXoZA@mail.gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Security updates question
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
X-List-Received-Date: Fri, 07 Sep 2018 20:36:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Brian

On Fri, Sep 7, 2018 at 1:25 PM Brian Smucker <bds@bsmucker.eu.org> wrote:
>
> Hello all,
>
> We have a device whose image is built using an older yocto image. It is
> based on yocto Danny, if I recall correctly.
>
> How do users of yocto handle the need occasionally to update one or more
> component packages to deal with security vulnerabilities?
>
> I am not a yocto expert and I was hoping there would be a clear way
> forward here.
>
> Migrating all our recipes to the latest version of yocto probably should
> be done, but it would involve weeks of pain. I know, I started to do it
> sometime back.
>
> So that is one option, but a very unattractive one at the moment.
>
> When we jumped into using Yocto, I was hoping that there would be a
> clear answer to this, but I have been frustrated. Perhaps there is a
> clear answer, but it's outside of what I know.
>
> What are my options and the tradeoffs of each?

yocto project provided infra to build distributions. so you would have
either built your own distribution or procured it from someone else e.g.
OSVs, if its third party the they generally have security update schedules
that you can work with.

If you build your own distro then you have freedom to make changes
and patch the security vulnerability and deploy it.
community maintains releases for quite some time and you can just
cherry-pick the point releases which primarily get security fixes.
danny is an old release and is not currently supported in community

https://wiki.yoctoproject.org/wiki/Releases

so you can still check if needed fixes are there in danny and build it.
you can also work with some OE/yocto consultants to get this done
for danny

There are also binary feed based distributions like angstrom which can
provide prebuilt packages ( ipks) but they also have support schedule
and I am sure for angstrom danny based feeds are not updated.

Thanks
-Khem


>
> Thanks
>
> Brian
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

