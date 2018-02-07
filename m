Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF3DE00E1E; Wed,  7 Feb 2018 08:06:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0C0CE00CF1
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 08:06:40 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id 143so4085644wma.5
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 08:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=MCk+sML0E+iLY8Kc5wBvX0Ebzxyy3nPC39+jNBrpFXY=;
	b=L96sYLXrLwfF3z4KUv/ZPpNxB8ikZWnTJUWtxEfZh76+9SVSyw9gANoCi8FuNdFd1f
	2+919nb4Mfb2rJavqndJa4xAL+dqrq+I+chupJFeVUxLCj4CbOuhcCTh5F3dIPwnlzVl
	WJ5OPLMfPpC7JVScwycDgxQzBpFKjVnnZdlWs+VR+uX4ouX44m1aK733FfMuqdLw73uO
	cs1fh5R1ibgrK+UzjMd03ciafv3HG/R+wGmMOL+MMtRnOAdOfr25a4z5++IyUjNxhU1M
	k6hoggj0i/dopr8lkFlGtuFliLIB0yNy028OKzH+Ilstoa6+szI0nS8fySPliB9Gywi6
	v7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=MCk+sML0E+iLY8Kc5wBvX0Ebzxyy3nPC39+jNBrpFXY=;
	b=odWjyCpUCus6qTNOl2I93MtW/upXShbjBEK1NgQEJ10s9F0AjlT6vYTsGXyYx28QeT
	DA4ex2EHSuTO60nwxAYHLp7j87icIL98fcCil+VLu7nNLc+KBgnnbpqPOITpoc6S8lDx
	arfnvEnJ4xo93Ob08U92HudKXzPsEvRnn/OdIBYZVFcvyMEunCzVwe0jp4Ijgcm4H/tq
	dy1uN4s6T435hy+zhUJC4mLViRkP0TU3u83XRcpLI1FBWJboaRLA9Ygw6KriGwS/n3bw
	05iX2vlehjF9Ta6Hn9CNwyCNAUJ3poATURdnSG3vDSXSqhfhJ5/7onDmFcI7PK6Zlsk3
	/SYg==
X-Gm-Message-State: APf1xPDPrkywaGniwI9My//XcXpgr282PSOs94sDohbKp6mv4GwEBRr/
	ENd+tBXqHLDl+VreVFHkvFJ3+/Tf
X-Google-Smtp-Source: AH8x226i+bhb0CcyINvrhugJYtvIZ4xxxxpfwWXQVl5SMauvV1qN2c3nixI+dBmAZ2Jg9ovh0wUsfA==
X-Received: by 10.28.66.198 with SMTP id k67mr4828871wmi.74.1518019599425;
	Wed, 07 Feb 2018 08:06:39 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-138-178.home.otenet.gr.
	[2.86.138.178])
	by smtp.gmail.com with ESMTPSA id 72sm2270078wmh.44.2018.02.07.08.06.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Feb 2018 08:06:38 -0800 (PST)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
	<f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
	<e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <b15ad0e8-f559-ab5d-ae61-707a4a03f5e7@gmail.com>
Date: Wed, 7 Feb 2018 18:06:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 16:06:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

OK I think I understood.

You want a static library and apparently .h and friends as well as the 
.a file should end up in the SDK and nothing on the rootfs.

If you enable staticdev-pkgs in the SDKIMAGE_FEATURES *all* the 
staticdev pkgs should end up in the SDK (I assume), but you need to use 
TOOLCHAIN_TARGET_TASK_append = " fmt-staticdev" for the .a file to show 
up in the SDK.

You use a cmake project and try to build https://github.com/fmtlib/fmt.

Regards,

Robert




