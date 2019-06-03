Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A9B7E00D33; Mon,  3 Jun 2019 01:35:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5019FE00C43
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 01:35:13 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id f10so10196296wmb.1
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 01:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=lt4QrSPMeg0aqDHqya+ptAberPOUzDUWlmu+UdfhI0M=;
	b=hZGEPtCRra7qAhKKiElf7oSIJoSL43r8kfHFdV2gQrnawwJ+rpVnvjCj6y/bdxYsSz
	pfE3cTpqWEriPyjYO1kAS0cTKBrar6pwWnVGrTXcDCamIXC9p82dHuu+uBj/U3Wn+K2Z
	iTg9LEK0KI9XrI/6O8QeZo9vvuDkGRQjBnjyD61LsF1um9LpB0ZwoQx66y9Dt6sj91nL
	7RAi37f5ClFcnp9IeK/V36Wj3spwrO091N4zlf/8xb/atWkwjEN4/RBrc2sjuMjPwF9m
	QegW1E9udY830vDHSqzYHkcur9co1iLhrVL+01d19KTK+PICP+6Jkv8D0uGRNQsTOtJY
	WLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=lt4QrSPMeg0aqDHqya+ptAberPOUzDUWlmu+UdfhI0M=;
	b=Rnsw9LeohXcXMgB7sxi82kQobkP5TVAQt4qHW6r/AaIgdK+SUkcAf/ruX03VUoLCeq
	SOxQ2/zN/ta3g471zDIQ8qRNeIeOoWAa2ggEyp1/AEJNg88nbiNkBDIFvJzlmFUMekUJ
	QnZS+LMMmqhGHh3MpMh4LUOyLKWLyXcAg0l0uJTzBNknGxT+IijLqcutV7Ky53DprTuh
	1hQnE6LyKjxhspZ62TM/RptCNeQVuMe/9yttPGwJIU3LkChums7gGzRBOkInaqFIaZ2l
	OvR/49AipeBFTRlmr7NXKKopJPqdaP/mbonOaGOz+LjvFWplRL/u4hQPSbEHWLtKYqQB
	t6cA==
X-Gm-Message-State: APjAAAWbfqnvn9gb9EyUIjmI/rNyxBAjnTnF/fV/stneANYlY3N/kuu+
	561Vk4R3ViQUS6uPoaIfgbL5AQ==
X-Google-Smtp-Source: APXvYqwMU1QN9F6JwbmNKeO1hzvY8LgK/wRXsMNFK/37YpLfjf26eesK3tCQE4PdSq4fpXExMTiFwQ==
X-Received: by 2002:a7b:cb01:: with SMTP id u1mr14211724wmj.153.1559550912047; 
	Mon, 03 Jun 2019 01:35:12 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	y16sm14076146wru.28.2019.06.03.01.35.10
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 01:35:10 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 3 Jun 2019 10:35:08 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: Belisko Marek <marek.belisko@gmail.com>
Message-ID: <20190603083508.GC26408@archworkstation>
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
	<20190601182556.GB19383@archworkstation>
	<CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Mon, 03 Jun 2019 08:35:14 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>Which startup system do you use (sysVinit or 
>systemd)? You can take a look at 
>poky/meta/classed/update-rc.d.bbclass which 
>checks various parameters and try to debug it 
>(by adding some printouts). By my guess is that 
>some misconfiguration between systemd/sysvinit 
>must cause this issue.

I'm using systemd. I think you may be right, I'll 
have a look at update-rc.d.bbclass and see if I 
can debug it.

Thanks for the advice !

		- Morné

