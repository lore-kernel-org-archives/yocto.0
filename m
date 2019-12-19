Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.47.1576775741178766583
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 09:15:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lUVJV/lz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99696E01283; Thu, 19 Dec 2019 09:15:40 -0800 (PST)
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
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1325AE0080F
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 09:15:39 -0800 (PST)
Received: by mail-pg1-f169.google.com with SMTP id k3so3464695pgc.3
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 09:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:organization
         :user-agent:mime-version:content-transfer-encoding;
        bh=k5R3a2xts0rtimj0FVh6KzF7IH85e60+mFqZuFINQ7s=;
        b=lUVJV/lz4BQtablzgnNXESYqLbkze7Gd3MwpMVHdWpg7Tq8gSqJb042J3gb7w7SFVU
         CvmPP27aq+SO2wEe0kFhn4/nhKXqqORD8nxs6vcHzIfsUQ4ztvUOb8o6ugz7rPeSxXJ8
         WAOhS3Yp67UifNNLt6mLKQx1tLrWIZxJUVHUwrBrhFB7zD4/alOzH2fPr6Ef13470x8f
         9bDDGYX7x1cRhaI8RGQs4wbeD+LQVLz6OiShKQzmSqZBUwF+uWZXJBNpDhh7ckGR51+3
         StvjvMDTq7HVzCyTMd1jnVey9IM5WE/4R7/bvKMHuJcICoR6YKeIl3FLpsvbdUbBFFDk
         AwOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:organization:user-agent:mime-version
         :content-transfer-encoding;
        bh=k5R3a2xts0rtimj0FVh6KzF7IH85e60+mFqZuFINQ7s=;
        b=hJOXuqL3r7c78JD16ZavydayQn4s/oTxhM0vuG5XxGtei2gv+OmKeoZxmP9fubxVND
         fbcRWh0VjN6GSQSARPfBjWkWji0l505SERqXiJIh0iIX70Vik71Mz1AjxJcbBs5G/76E
         de/yDp43WJuJP5yzWy7oDInDwaqOuUq7l+mT8LvCv4X2N9+d1I6GClzhRSABfPfvZWxa
         Kjm5cog8R9j8fw7ZCSCPqkimMLn5AesejnP9dXALlYkAi1Lb2CAFajxmwLu+kkzlJqgH
         qpj55xgH/DbJexOchS8YjKr+l1V4Sc/6NxK0lbKN+5DFpHypLcL1+5Hg9zaKZK6OTYPk
         2DDw==
X-Gm-Message-State: APjAAAWWnTqoNvRK2sGQchGZh/kQfaFvHaa+gW66392eOgyc4593imtb
	nQIumTLoG5dJSo/gIPOMKFm5rAfquJI=
X-Google-Smtp-Source: APXvYqz3J6y/lm8VseoFsYKsDUPnK9w9IHAsFE2aj+4cgMGEMLv8o+mU00ln3JQByBXsejdFyPA3HA==
X-Received: by 2002:a62:197:: with SMTP id 145mr9788377pfb.188.1576775738477;
        Thu, 19 Dec 2019 09:15:38 -0800 (PST)
Received: from tyche ([2601:646:9200:4e0::c389])
        by smtp.gmail.com with ESMTPSA id c26sm2993842pfj.101.2019.12.19.09.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 09:15:38 -0800 (PST)
Message-ID: <46b9ca2c8ca78ea6c6ee6bf0af306edc0baee73e.camel@gmail.com>
Subject: Re: [yocto] Skipping network-required recipes automatically?
From: "Khem Raj" <raj.khem@gmail.com>
To: Joel A Cohen <aaron@assonance.org>, yocto@yoctoproject.org
Date: Thu, 19 Dec 2019 09:15:37 -0800
In-Reply-To: <CAFSZm+giT64Fn93BWQc24NaPp6cr-tTo9z+hpqRzy=2p5GgPxg@mail.gmail.com>
References: 
	<CAFSZm+giT64Fn93BWQc24NaPp6cr-tTo9z+hpqRzy=2p5GgPxg@mail.gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-12-19 at 10:03 -0500, Joel A Cohen wrote:
> Hi all,
> 
> My layer has a bunch of "development" recipes that contain something
> like:
> 
> PV = "1.1.2+git${SRCPV}"
> SRCREV = "${AUTOREV}"
> DEFAULT_PREFERENCE = "-1"
> 
> 
> In these cases, my recipes have a "known good" version that has a
> specific known-good version number (recipe_1.1.2.bb), and then the
> "recipe_git.bb" file that I only enable using PREFERRED_VERSION when
> I'm wanting to use the latest source code.
> 
> My problem with this is that it seems to defeat BB_NO_NETWORK, and
> I'm not sure how to handle it. I would like my layer to work
> correctly with no network, but the mere presence of these development
> recipes causes my build to fail during parsing if the network is not
> available.
> 
> My last failed attempt was to create a "skip-git" class that I
> inherit in local.conf with the following:
> 
> python () {
>     no_network = d.getVar('BB_NO_NETWORK')
>     pn = d.getVar('PN')
>     pv = d.getVar('PV')
> 
>     if no_network and 'git' in pv:
>         raise bb.parse.SkipRecipe("Recipe requires git, but no
> network: %s-%s" % (pn, pv))
> }
> 
> 
> Unfortunately, bitbake seems to fail in data_smart.py before my class
> actually has a chance to skip the recipe even in this case.
> 
> Is there a better way to handle this?
> 

you might add PREFERRED_VERSION to select the given recipe, in that
case recipe in your layer should have different version than the
original one. Then you can do something like

python () {
    if d.getVar("PREFERRED_VERSION_<pn>") != d.getVar("PV"):
        d.delVar("BB_DONT_CACHE")
        raise bb.parse.SkipRecipe("Skip it")
}


not too sure if it will ignore it. 

another option is to look at devupstream.bbclass it might have some
ideas for you.

> Thanks,
> Aaron
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> 
> View/Reply Online (#47773): 
> https://lists.yoctoproject.org/g/yocto/message/47773
> Mute This Topic: https://lists.yoctoproject.org/mt/68832469/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@
> gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-

