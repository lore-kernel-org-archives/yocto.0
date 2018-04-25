Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61BCBE00B9C; Wed, 25 Apr 2018 12:36:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 488D9E009CA
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 12:36:22 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id f6so9072557wmc.4
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 12:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:date:from:to:cc:subject:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PyTwCnYZNvzUuJjdlC9XLreU4KCLFv6Oak8koPd1QuU=;
	b=TCkIzRI3uBwjeM3NoV5dnATKKmIUjJrU53onNLUiZPdxRn1NcsBa5ZOkWBSBQIF1/n
	rL9G3reg2/FgyEhrO7XpGu0GLdSrKZlCbL8Ckh/4pMj5unXug+2U2rZTMQDOy+PqO1ss
	WotnaPqlV0JCTeDuK/mHQzZpgd526zYuIVswYCotZ5IpwKrfEIrDuw4j/a/eG+cou2IH
	VGDcQo4pGzQwfoCocnI84GluoGKjo6KM3QdScLxCcChsnNTfbJXIydPg6i5ZHCsTRWYs
	s6lqfhnBI+YkPp2D0Bg9mnmJBbblcmBQ7Mr15Z7qWibAN9tSkegYzXTm7mPjG/Vwm5En
	M6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:date:from:to:cc:subject
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=PyTwCnYZNvzUuJjdlC9XLreU4KCLFv6Oak8koPd1QuU=;
	b=rSbjs9optDqpsx0+ZY120mfVy3ge+9CvBxDWzM3DcgakyDKnmMEnDX1k+q1/4ec8Fr
	UgABB14ZxmGFSwYXzv0BuHOW0nt5P8OQzjeqUIEr6XE1pWnJYO0VnaW99R56qGNfxZkx
	Q0omo7Ff+QORvm/pJDfOnH19JdHWYyeg6LH7JpoSmMnQI4qpVOvkZ3oOmBHMh1qgg709
	/ydi2xm9UQD2+xZsHGKPIcLlHxpWUbbIQBVOu4zN5+0L82EkLB0COZ8pCfsoLEMELKcL
	It8nrjODd+5K6CIZXaWQ1wUdlDLfaVfa1Px/8eGtrpaTfUZ4UgD43PU0kUiy+LJnSy9U
	XtJw==
X-Gm-Message-State: ALQs6tD9WCAcMGQuVOrxFUnvmELZkV7cyrnHgLs36RdWm+FwHfi2NceX
	vbCFHSsSa1qNoU6Bb5+L+X4=
X-Google-Smtp-Source: AIpwx4+o89WLBbTPzRKV+dC5rUqi/SfEgkHpWtpaXA3qXqQbYXU3AIgnatUL5t2Wco/GQO/vjEwktg==
X-Received: by 10.80.245.89 with SMTP id w25mr40863003edm.230.1524684982051;
	Wed, 25 Apr 2018 12:36:22 -0700 (PDT)
Received: from localhost (ip1f12155b.dynamic.kabel-deutschland.de.
	[31.18.21.91]) by smtp.gmail.com with ESMTPSA id
	y56sm2932225edd.42.2018.04.25.12.36.20
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 25 Apr 2018 12:36:21 -0700 (PDT)
Message-ID: <5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
X-Google-Original-Message-ID: <20180425193619.GA3836@portage.(null)>
Date: Wed, 25 Apr 2018 21:36:19 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Mail-Followup-To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 25 Apr 2018 19:36:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 25/04/18, Zoran Stojsavljevic wrote:
> > I try to compile yocto jethro environment which is working
> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
> 
> What would be the benefit for the successful compiling of YOCTO Jethro on
> Kubuntu 16.04 over Ubuntu 14.04???

I tried to get my Yocto compiled on a PC of a colleague and his
installation was a Kubuntu 16.04. I've made the experience that often
only additional packages needs to be installed to step over these
compile issues. Sometimes its clear from the debug output but in this
case I have no Idea which packages is missing. On my develop PC and our
Buildserver with Ubuntu 14.04 everything is fine. But I'am afraid that I
can get similar trouble if I update to a newer ubuntu release there too.

Best regards,

Oliver

