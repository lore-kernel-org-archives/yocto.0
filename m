Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28E8AE0090E; Tue, 12 Feb 2019 13:40:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88950E007B3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 13:40:38 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id b11so226059wmj.1
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 13:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=wMHQMw/j7Ok8K0QAgLaU11BqsZgXcUyE/VOWjv8L/Ro=;
	b=JNlK96017LDH+RbXkm/TxguQK3WpGQoGQeGVkhbhpisTLApRy/QwzuXABLW8QzdHNA
	l+WAf9UuPnkfoBcb+cZeiXzUdY3FhlmxOSgbu/C4PoN/S5j3iCN90Hspc22oGJZnDymE
	pJPRlYhfL8MvYkfQzMfVcpxMQp81GGJ+m7crg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=wMHQMw/j7Ok8K0QAgLaU11BqsZgXcUyE/VOWjv8L/Ro=;
	b=BTgz+76s6Q+Kq/YW1z7hKq2hKPSjTDUcMpe55bjdgIHfDSe1uwMfKs9dmaeEBJ1y5W
	/k3o04m66+Hgg5eJhyRYpfuG5snAD9VQrIDzmEFg6J1hmmf2KGWTw1AF/INA/9KtjlGV
	nXsR+jt2l1RZedMTG4dsO/gG5XQqqk7bf/eppY6gpSCjUNwG21c6UvaLV89E2kucpIea
	ukmPI2EwZxtZZJYxbldyc9TeM4HRjqp0/7mm90NN7Lco+GD4azn8YlIIQew7SRio9z4x
	sWtyT2XKYzGZ1DTMe83tvJJeK65wIqqpOUfQ1MBEdQn9fbV4MuGPsTXU8y2gtGPeSWoQ
	YR3g==
X-Gm-Message-State: AHQUAuYZsjfSdwWsF349ZaTSgGuO+oyG5uGCxHXksrz/lkWsrdvKSZsI
	NVy698gJb7bEpng9d/Pi2Jij/w==
X-Google-Smtp-Source: AHgI3Ib7t7XnW27KpSA3JOCcxO4fEL0vzb4pqj/I0p8oYopztF3WhbSgyPz2khbWeJIAQAUI91bpxA==
X-Received: by 2002:a7b:c38d:: with SMTP id s13mr626722wmj.151.1550007637611; 
	Tue, 12 Feb 2019 13:40:37 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	f17sm2217021wmh.40.2019.02.12.13.40.36
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 12 Feb 2019 13:40:36 -0800 (PST)
Message-ID: <73be86731b3a882c979d26e12a3ee90495b8ae64.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: pokybuild@centos7-ty-1.localdomain, yocto@yoctoproject.org
Date: Tue, 12 Feb 2019 21:40:34 +0000
In-Reply-To: <20190212175729.6D3CD601A1BB@centos7-ty-1.localdomain>
References: <20190212175729.6D3CD601A1BB@centos7-ty-1.localdomain>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	akuster808@gmail.com, stephen.k.jolley@intel.com
Subject: Re: QA notification for completed autobuilder build (yocto-2.7_M2.rc2)
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
X-List-Received-Date: Tue, 12 Feb 2019 21:40:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-02-12 at 17:57 +0000, pokybuild@centos7-ty-1.localdomain
wrote:
> A build flagged for QA (yocto-2.7_M2.rc2) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7_M2.rc2
> 
> 
> Build hash information: 
> 
> bitbake: d73dbc3580faa1225d95ae4cefac4879ca3c1b2f
> eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
> eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
> meta-intel: 29e4db5bf484f18e41bc9123161b1c069e60a128
> meta-mingw: 423433e3d31a32dbb80203c628e808442d440ad1
> meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
> meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517
> oecore: 2dbbf598192ae2b3aa488df042f56aa6c6634a00
> poky: be52da152a4d9f9e798844f592ec9ae7e051c658
> 
> 
> 
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

Just to mention there was a failure in oecore-qemuarm but it was due to
autobuilder configuration problems (now fixed[1]) so doesn't influence
this QA run.

[1] https://autobuilder.yoctoproject.org/typhoon/#/builders/47/builds/274

Cheers,

Richard


