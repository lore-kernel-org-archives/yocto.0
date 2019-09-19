Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F064E01066; Thu, 19 Sep 2019 07:04:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1352AE010B0
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:04:19 -0700 (PDT)
Received: by mail-qk1-f177.google.com with SMTP id y144so3465146qkb.7
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RiPXJmJkLH9eDy2fvqloXhuuLtHNrjM+D0peU7iptMg=;
	b=DLXQx1MW1tf+C0WGlusGk59R/OofDWBPpmxEEVaoS7n7Jp1z6yQlujGk4tbYRrceiX
	ETHU5TAkEi0wRWYI3C+NMCFDytkx7kBsjFWBwDp6V2e8AxTDa0sr1nTaoszOG1TZ+n9V
	6Cso5wsEF7pfAxq6Dn9iIKqA4JVVo4VyQn9tIThQ0QeweGFI/lb17bK1ScmZAX44fNka
	PrHvvT7EPRIpzCAsYctK2shG1dcKdRPI//l9i0a+c1xZV5lZx2KdxkJ2llmoye21gVK8
	oyqlA7u5HwTumoctnx5dhcl3a7dqNs+7hb0psPfRmK/w/PC/VjdwZwkZkDDAYzgsbB8l
	z4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RiPXJmJkLH9eDy2fvqloXhuuLtHNrjM+D0peU7iptMg=;
	b=fWuGitZhU9Yt34x8hFZhe5nCW9qCIutPebPi7EgLDSm6qJ5qqqrzJ+NMcwaCCCrm4y
	sP9s4SPdahxBUSYRfls95fWAFqioePQTjcW7NZZozZ0u2K6yvy0iMuGXzWgVo1ikUomw
	2cXZWEGlWDmAXfkqHDAmErt9ZC2tPsybLoCbp8i0UwFO75fbWSltsVvWcQgHhhE21MZT
	cGWJx18dfpOCS86dYq7uTxztwf2aIPTGZe11StsTSoJAwaGIy3c6ypjPt2npbb/iIQJn
	8mJpSQmN4VZfzNSNTgkTvRUcPjzwVQSvpJXj0V6Azzvce7lkgFUppCKvpFpiJ+ZAaAcy
	Z2sg==
X-Gm-Message-State: APjAAAURBGnXJE5sWuRdMB+JhU50vAA1tFZNz+KPj5SbsXpt80m7x3VI
	V14eCn3IQxMQWNcyiKc4NiRu+W8QFDCmNrIU8v1j7vnf
X-Google-Smtp-Source: APXvYqxfifhRENggbPGMD4068t/SIxV017IgW/MtSHVAThiRuFUkkLpNzHX+HK7iiYmBP2I6TEL9hxDc5auHqYia1Hw=
X-Received: by 2002:a05:620a:798:: with SMTP id
	24mr2998767qka.238.1568901858491; 
	Thu, 19 Sep 2019 07:04:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
	<20190919134820.GI6154@hiutale>
In-Reply-To: <20190919134820.GI6154@hiutale>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 19 Sep 2019 10:03:52 -0400
Message-ID: <CAF_dkJAbOm6V7fHPKAU8b3xBYzKuEg7K956ahzzsy=ok5=VgwA@mail.gmail.com>
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to share files between recipes?
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
X-List-Received-Date: Thu, 19 Sep 2019 14:04:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 19, 2019 at 9:48 AM <Mikko.Rapeli@bmw.de> wrote:
> One possibility is to provide these keys as host native tools and data to
> build of target recipes. This makes the files available in the build environment
> but does not expose them to target.
>
> Create a -native recipe which has and installs the files and use via DEPENDS to
> the -native recipe.
>
> Hope this helps,
>
> -Mikko
Thank you.  That feels like the better answer all around.  Ultimately,
that's where I was going, but hadn't thought of the fact that I only
really need this data on my native build environment.

--wpd

