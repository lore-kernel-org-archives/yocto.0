Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2E2DE00756; Fri,  8 Jul 2016 07:16:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682F9E006D8
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 07:16:10 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id g190so7629410qkc.2
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 07:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=T3k4On8ydLNSNYpXjKKe/44wi208jJIQakWPUG1t7Q4=;
	b=OFlAc4e30GujWda7uHNxKRIU+wmcU2YfUfiseVIVWHACC6PQAb8qNUkVc0ofK1xnW8
	GdC6PXyXkxaJIn7dYZ8ENkCKYa9SBRr+zqlagW2N8ve/DUABr4d2qx6krY41/ElXSOaH
	m7t1os5Th0SjifQi6dbeQnD3z63Kf/fTNzqbF9RLPip/sL7VrNo7ktEXMZhTE1D83Ohh
	037+p2fMAspn6usJzhnPMhWXEGuunbqBORj7InTaWKRGshVTR07Liz01vKI/C6RJIoW0
	9YtQEIcY3OLK1aizw9MpyELxmv2XnGKexmBQW8+tecMYFVssvSnjBsiP5iFbTh8+NtRv
	RHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=T3k4On8ydLNSNYpXjKKe/44wi208jJIQakWPUG1t7Q4=;
	b=briW0WBLFe6QC3sh9N7oxc9jvf82iaDLrtGH9e7LvTvJR10qz4Zh+b12JLLZPIwrpb
	vh3+ZG4kPrzJO0ndxsiv3TfpPawsPq482IHQc36vbeI8/shCmPtWtcf47RrHBCckV3e4
	Wo+smA9M+ANvmsHkQh4ercsRZ4/S7Cmf0mbC0c/nOWBZAtNkHymi8Gsprb1CAyqP+iSH
	5p/N53J4YOF7JE8ioQOsTVHpP9nCU0OKAOgHfWw0HNiwVKIfQ5SctreiNL3m8nHfloXQ
	D8F9npZLX5pYXYQCRn8K60VuF1g9PIt5xRiui3/O0cuZ1mNRO+5pOPZshGKpgNjHTQuy
	KUdw==
X-Gm-Message-State: ALyK8tKUa87/hpToLuCswMeUujiFXOun953hJR/spgNPN2g9f59/m+DhPAVFf79ulDUT6+xUcw32GIJh0YoLig==
X-Received: by 10.55.97.18 with SMTP id v18mr7513156qkb.102.1467987369473;
	Fri, 08 Jul 2016 07:16:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 8 Jul 2016 07:15:40 -0700 (PDT)
In-Reply-To: <20160708131242.GB20442@resin.home>
References: <1704123.nFWplM32RM@valkyrie> <20160708131242.GB20442@resin.home>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Jul 2016 07:15:40 -0700
Message-ID: <CAMKF1srZhfMfo9D3n4pbsDscxjJWAY2tiqOjc-3DWRM43fKx8g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Fri, 08 Jul 2016 14:16:13 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 8, 2016 at 6:12 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> MACHINE ??= "raspberrypi3"

can you change it to  MACHINE = "raspberrypi3"
and retry

