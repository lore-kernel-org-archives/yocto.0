Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EB2EE00DE0; Thu, 20 Jun 2019 00:28:55 -0700 (PDT)
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
	*      [209.85.128.68 listed in list.dnswl.org]
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DCBE00D11
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 00:28:53 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id v19so1989377wmj.5
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 00:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=FjldBIUF4yIsbJrhe54AeF/HAsqfwrj895chGxAEw00=;
	b=IMXEWa8/QAeeAqYuq8U4IknhV1t5cIKHDXOgny2RfPut9nT2qt0jNHxjLYtTptdTzO
	gl6+NTz3/oqNPXra5D2yR9hlgc2XkhHIFVnVA5VnCp6XcZ6/vOw25CeO0U/tkgJe3gCY
	sddzH5+9f1V4bdDHFHYUNqFfzSDtRtTREyiJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=FjldBIUF4yIsbJrhe54AeF/HAsqfwrj895chGxAEw00=;
	b=XjuOwZpIYQXKDqVGB6XZZF3F8GGiEEmQWYNg2/ZcFoJUuSThRCiiCRxwWG3QuZnsKz
	UTFGEFoYqd2GsPpTSG20B9edJXye7HeEx0AWocNh6EQjq2CNBLAh+Gg7iYOa2vDlU5Y3
	zUjqwWcJwtXuKNQNapmd2+AVxLzN69Fqo1VN+Y22js02WLLlvGvMPx5M47O8JrxRHOTe
	T6yAWOVrGSNdVrar6Sjtbur3YgLGStdSfeDXGUnDG29XKyDNABQn1SFg1/xWE1IB3Uzk
	mvZyYM5dBZ3myeusA9HLQedqiDSFkLWVZUGmGzCmgFxipDezE74c+ahfaSq0SlKi/TN+
	IFNg==
X-Gm-Message-State: APjAAAXd1ND/AMi/DMGYJUtcdUXsscKjwNGwIw9BnzV95dXL1titbzz3
	i4JiWXqYPdIaRe4bDeURELnj2/+JHpU=
X-Google-Smtp-Source: APXvYqyQ3MZVgc6pXfIo8RsGolN8nWlmk5/S1e/dYze9l/A+2LjdrgwUPGscR7eWP8LDXx1JzadzDA==
X-Received: by 2002:a1c:3b45:: with SMTP id i66mr1530629wma.48.1561015732746; 
	Thu, 20 Jun 2019 00:28:52 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	p3sm19584130wrd.47.2019.06.20.00.28.51
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 20 Jun 2019 00:28:51 -0700 (PDT)
Message-ID: <1fdd6cf809303377f2588b3aa07576e0a2398b86.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org
Date: Thu, 20 Jun 2019 08:28:50 +0100
In-Reply-To: <d344ac6a-5592-4c0d-6d4d-bb9899412c4e@windriver.com>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
	<1556607386-98960-1-git-send-email-changqing.li@windriver.com>
	<d344ac6a-5592-4c0d-6d4d-bb9899412c4e@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: [PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Thu, 20 Jun 2019 07:28:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-06-20 at 10:07 +0800, Changqing Li wrote:
> Please also help to review this patch, Thanks.

This patch needs to go to OE-Core for the bbclass part. The
documentation piece needs to be separated out as its a different 
repository. Also doesn't it depend on the change I just made to the
update-rc.d repo so there will be a SRCREV that needs to be updated
that this depends on?

Thanks,

Richard



