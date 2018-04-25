Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDDC9E005A9; Wed, 25 Apr 2018 12:50:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9939EE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 12:50:56 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id o20-v6so21533818itc.1
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 12:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=4Jtvqht65I0czHkeKOB3NzN3zcQ1xMJFwEpRPxA+IxI=;
	b=mwTunr0wsMhMBf0VB4FF/31eDY8AbRvKF3u4mFoI0BCQQyMp0PG66FTwH5Y5RCIAXI
	OvygOExdniRdNb9PFcIGhhBWYuDn2I07MSr6xHmuFUMMcMkoTSAtb6rYUAIp955DDmxc
	oKbZ+r8aS++9xRhpdpGUVRe4omFt74k1cV6wjD8kwxcgn51pbdkwtG3L0SWvSgISaYZz
	d3uXsEE8UzqGB8a3oAV6Uiq1xyUwga+RESym5uyIg/VX92pAdHwFJnUBCB5J8JEe6s/U
	NDZbfiMsKQN/nLOKES6IkDypJp6U1mFj98ovo7IBwxZ18J29FsExcFZEPkQpx9nEO9bD
	b7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=4Jtvqht65I0czHkeKOB3NzN3zcQ1xMJFwEpRPxA+IxI=;
	b=I+Qqghnv/elQ1syeI8Pf6fL0mAnCCG+L13XWybdBypSsfuivQyaC/0ag40YcuWuvj+
	cSgIUxF84eiu12lgaFpzoq7APKWFQanoyss22OFWw0qVID78SlJgElim/bTfaChpblMz
	attmp+VTT/RvEuRhjsUYizFrgaim3KFi3t0e8P22KYFYbmIzMmAnCURs787t8hpB5zml
	POMRO7KGfv/ZLkvGpcakV6NxxspRc46q61LdeOLn3201pbRg/4xsljhwTaZN81NVf6YP
	zTeRZi37uBsz+8qSyM5IryjgH/ZdJRi0VLjJzwnRp+gnvzwN+pDgJmDxcJgGRpYb9u2Y
	W16A==
X-Gm-Message-State: ALQs6tAZe6l3oQi6gEb0tLkXpY2wrBcZpjfwMoC4rt5LVQenqLRWfSHe
	uEBe8HmvKjDIJ7pyjrYXOpuHSvxBbENLd6414Vp8ZA==
X-Google-Smtp-Source: AIpwx4+iE3c9b0Z8pW1UNQIWHIfieLtH7DTtmtV3FqkE+EwEaVnr7zYsJ+ec5OAZbErdD00PCHM9CPJk6JMGdgTQo0I=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr25393705itb.45.1524685855778; 
	Wed, 25 Apr 2018 12:50:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 12:50:35 -0700 (PDT)
In-Reply-To: <5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 20:50:35 +0100
Message-ID: <CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 25 Apr 2018 19:50:57 -0000
Content-Type: text/plain; charset="UTF-8"

Jethro doesn't support Yocto 16.* because it is very old (released
2015, it's been unmaintained for six months now).  If you want to use
Jethro despite the known serious security problems then you'll need to
dig out the relevant fixes from the newer releases.

Ross

On 25 April 2018 at 20:36, Oliver Graute <oliver.graute@gmail.com> wrote:
> On 25/04/18, Zoran Stojsavljevic wrote:
>> > I try to compile yocto jethro environment which is working
>> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
>>
>> What would be the benefit for the successful compiling of YOCTO Jethro on
>> Kubuntu 16.04 over Ubuntu 14.04???
>
> I tried to get my Yocto compiled on a PC of a colleague and his
> installation was a Kubuntu 16.04. I've made the experience that often
> only additional packages needs to be installed to step over these
> compile issues. Sometimes its clear from the debug output but in this
> case I have no Idea which packages is missing. On my develop PC and our
> Buildserver with Ubuntu 14.04 everything is fine. But I'am afraid that I
> can get similar trouble if I update to a newer ubuntu release there too.
>
> Best regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

