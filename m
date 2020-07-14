Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.18297.1594728531761532185
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 05:08:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C+N+C2DW;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62839E01E7B; Tue, 14 Jul 2020 05:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B2A3E01E32
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 05:08:49 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id e8so22281118ljb.0
        for <yocto@yoctoproject.org>; Tue, 14 Jul 2020 05:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=aXMdlTTE+Z+0CArIVeVkeWG0C7jE1s1pw8OIi+LAeH4=;
        b=C+N+C2DWsYL24c9WYZitOK9DiUeFpFwr/ggU+leuZd/yZckGfOoRjNnKi0xBFnBO7b
         0C33pgM3XG4kecLc6ooRrwWyHe0M+hIHH1+sC+C7FhBy4yAARQIz++S9oJQ8OccaO+3p
         oVwtqOIBRT6T/vkJriy1a37TaFnBtS9N02Cx05Oznq2JCP2DPryBmZIfQiZvanjkbNtc
         2qkYaZXfdSqHQNg5m/RB1QPCx5O4RRZyYK8zShywXtozGSyYPCd8VeAPuKr9IH8N9+G5
         eU7b2JYmkhfbu/U4SefyZg3aqPt5A5hmJrKHj9p/aNalGAYtrd9KoI6eogtYT/7Usb3h
         UU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=aXMdlTTE+Z+0CArIVeVkeWG0C7jE1s1pw8OIi+LAeH4=;
        b=D5kVdH4wW0bKdy8K8YuodyBtaybIoAprkq2n+oUrIQP9Kazl4e3rP78JpTTKeZ09L2
         pe3pu1a67tQCZ+qtb8/iBdYH6zKTfFJ0dXznVinfBT3FdL21wO0oyeC6Npvr73Jzm3u1
         Kefst2lIlm2IqNuxWD5P1pTUZ7kqyZDZ9X6ZWoq9hDHR98o28J8WdGbmiuiPI3nHd8qz
         InBFQq13+MQw0D/Sz15Nx3Jdpi/b6FGN9efuVDryj2nykIZSLQD8afe1ORSRJcbA8x2Z
         1/L7zcCdI8kTHxkE+zYMimMo6g2vBxDbNA6DF4mhw57NokuhWU+h/n9jYfvj8ITPZoZ2
         3vfQ==
X-Gm-Message-State: AOAM531+M+3Qhu2Tln0yxjHsQmOb0eqFtfZqzDSSK+IFgmibXUB0xaMR
	0amJx0dlDSzLudRl0SpRyiw+XcmjaLiPdJA1ERBz3v/L/TTyYw==
X-Google-Smtp-Source: ABdhPJwamkByBLNG3qjbtLF7CzcnJ+WsnBh5NCkzCxm7bjhFUkR2W2wMEYba5YkMyhQ/dYikkOQuQqvS74TfiwxkTxY=
X-Received: by 2002:a2e:9785:: with SMTP id y5mr2341869lji.383.1594728528202;
 Tue, 14 Jul 2020 05:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8kgE933ACogqL48Ncdofcu-DW85sJ275ccZH0WFTKEOJA@mail.gmail.com>
 <CAEhQi8nxjCkWr6YZ_6BTOg4RddY7ff8fU5sj33XCnTp_W7LACQ@mail.gmail.com>
In-Reply-To: <CAEhQi8nxjCkWr6YZ_6BTOg4RddY7ff8fU5sj33XCnTp_W7LACQ@mail.gmail.com>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Tue, 14 Jul 2020 14:08:37 +0200
Message-ID: <CAEhQi8kJuZNpx5=-oaFowLkR_2bWkAanBfPYgrk1uFMuTrdTAQ@mail.gmail.com>
Subject: Re: [yocto] meta layers priority using BBFILE_PRIORITY in layer.conf is not working for me?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I figured it out the problem was that in meta-layer1 we had
SRC_URI_append_machine1 += "file://0001-patch-one.patch" this
apparently will always be added to the end of  SRC_URI list and
thereby the meta-layer2 patches will be applied first. Is it possible
to get machine specific patches applied first?

BR

Den tis 14 juli 2020 kl 13:29 skrev zigext <mans.zigher@gmail.com>:
>
> I have debugged cooker.py and everything looks good it produces a list
> of the bbappend files that matches the expected result so something is
> screwing it up when the recipe is baked since I can see that the order
> is wrong when dumping the environment for the virtual/kernel.
>
> BR
>
> Den tis 14 juli 2020 kl 11:21 skrev zigext <mans.zigher@gmail.com>:
> >
> > Hi,
> >
> > I am using thud for my distro and I have two bbappend for my kernel I
> > need to make sure that meta-layer1 is parsed before meta-layer2 to get
> > the patches applied in the right order. So the patches in meta-layer2
> > need to be applied after meta-layer1 patches have been applied. I have
> > adjusted the BBFILE_PRIORITY accordingly so layer1 has 1120 and layer2
> > has 1110 based on "A larger value for the BBFILE_PRIORITY variable
> > results in a higher precedence." but whatever I do I am still getting
> > the wrong order and do_patch is failing. Any pointers to what I am
> > doing wrong? I must be doing something wrong that is preventing the
> > BBFILE_PRIORITY in my layer.conf to have an effect. Running
> > "bitbake-layers show-layers" shows the expected output but when
> > running the do_patch it is wrong and when dumping the env using
> > "bitbake -e virtual/kernel" it is clear the order is wrong.
> >
> > BR
