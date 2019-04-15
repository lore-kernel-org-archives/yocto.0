Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C2C3E00C46; Mon, 15 Apr 2019 01:40:31 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5576E00BAA
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 01:40:30 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id q16so19509564wmj.3
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 01:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=GGFg+Ja8dLuPThjrGeRwdxhl3tduskmUk3sPgUowSLg=;
	b=Ba4bA3UB20nKkTGpQ1FYx3KZ2G/6y9IPnujHkMQ2ekaonGrlGT+TfV99Jb8uxjb85y
	XA9GLiM4vZ3Rbtpz/WbQoimeVp0fqa5lx+u+WAH2EtmQz6C+ManfZCGa5l/OG/0+JvRR
	x2Z6/lPg/tkb/Qq4G/g0s370mWifSN5Wk2fUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=GGFg+Ja8dLuPThjrGeRwdxhl3tduskmUk3sPgUowSLg=;
	b=s/Njm3DUnOUjfvywNzlcYPVm4kfwfSYPFlp7efqLMLO6l8ucWU1/yXjSVRJAmB/OLv
	jD5eQHUvVHYZvNI4XmZDyx222CduS5TkXkEfJxnHjz4N5wPy0WYUobyy8jk09qQjHBsz
	0vSDJkho5DMbb/ccpYqPYf40/5CWTSHBMPuJP/bAv3QLiqklUvdWO7E/zoMcm7RGb0TT
	sd34VwHP1Hxwo8wwfSzvHqAeWiyQTJCTsOHC+p6IiVJQKwGJqQe14CxPi8ZdsVRxNdqK
	EXSY0gPq8uW+gciTP75JYpXpFzO0tAn51aVQ57VOoblHF3OtQ/b6dBqOAq44Wgsr6Hli
	Ql9Q==
X-Gm-Message-State: APjAAAXz30V2N/3IB3522Spm8VoP9oRqz+4V5IaPiVHCoMvn6Nc/0NWS
	Lvh80IJhDnhrx+i2HU9U7pUXZo3gmYw=
X-Google-Smtp-Source: APXvYqw+9P9WMIycT7tD6zLw0ip20m5tIt0ql6ea8Oax5P5EeR6vHLTcGj79c43b5Qmnx3cCF5R6vQ==
X-Received: by 2002:a1c:bd8b:: with SMTP id n133mr21446736wmf.73.1555317629800;
	Mon, 15 Apr 2019 01:40:29 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o130sm17552208wmo.43.2019.04.15.01.40.28
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 15 Apr 2019 01:40:29 -0700 (PDT)
Message-ID: <0d74439333138944ae17bef77fea85b48a0cc6ce.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: yocto@yoctoproject.org
Date: Mon, 15 Apr 2019 09:40:27 +0100
In-Reply-To: <20190415082707.5742E181B4E40@fedora29-ty-1.yocto.io>
References: <20190415082707.5742E181B4E40@fedora29-ty-1.yocto.io>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	akuster808@gmail.com
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc4)
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
X-List-Received-Date: Mon, 15 Apr 2019 08:40:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-04-15 at 08:27 +0000, pokybuild@fedora29-ty-1.yocto.io
wrote:
> A build flagged for QA (yocto-2.6.2.rc4) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-2.6.2.rc4
> 
> 
> Build hash information: 
> 
> bitbake: 7c1eb51d1e8a4c5f39bf9dddf05fb0b3598da72b
> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
> meta-intel: 27dadcfc7bc0de70328b02fecb841608389d22fc
> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
> oecore: fddd3ca8490adaceab6491632cf249c2320e4fda
> poky: e7f0177ef3b6e06b8bc1722fca0241fef08a1530

As discussed in the QA report thread, this is a respin of 2.6.2, one
commit different to avoid the boost upgrade. The intent is to release
this as 2.6.2 rather than rc3 if there is general agreement.

Cheers,

Richard


