Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE79E00D28; Wed, 30 Jan 2019 09:43:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97005E00D16
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:43:03 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id u16so327755otk.8
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:references:in-reply-to:date:message-id:subject:to
	:cc; bh=cmltyb7p4RX/5N1Evjq0tCcOyxoS2iuUR0ZcGOGkDVs=;
	b=TNRTrLESdswCV5USPr6I435A3Mfl99TvzKgu6mO9hhufjxl1TBQJxBBuVO8lD1O61O
	WchWYDrmYPmhdTW1pwv8C2U65h/8Ujp4sWW2XBPgeeRcHNqNi6CbfCTdKRo7nazsei9t
	7SDpCd1P7cLJAYHL52dR/xsLA0EHGD+7aztpAXsl7pEgS5jFHn1T7IYkte9sD5ger4qE
	Lsb0UNv/HDURo/OiFnPRD2oCp5GlIBFvIy7Q4Z0zTEibQb9DDdvZxp3BkFjLBsZcO9Ur
	OMnV/0I4nTV2lC48qSs/P8u3EwecrKWH7lJyeaYoV8rrS2CyPAgAucv31IHhvkowu/d/
	TTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:references:in-reply-to:date
	:message-id:subject:to:cc;
	bh=cmltyb7p4RX/5N1Evjq0tCcOyxoS2iuUR0ZcGOGkDVs=;
	b=dv8BjmloERyJ6IJ8A+EwT//uaUJNEjCBzyHMSSoGAweX/Czy1UjESmNZG4HUMuUHdD
	Y7gkCWwN3zxZ3r3jFnxtnbJEi711rPo5jkTiPYq3z2uUrw1V6Q7/8WQm9F1t1N2Z6M3i
	mQ5ToQ4f0afDMvQk76loW8pNW2G8gP1/MoPKN9iSr5WLNs9M7lg9gPPIwKQGUVaR7jZe
	/dtRDjc/jaahBdRacwaMIaYNvdOkBdwOzBqIAvhz2OANjOlGX0GcA6oA2wH5fI2eB6D3
	nUIC/Mq/HlndRBNFZP93CK7S/D77pT7G8j8yOmvW9//nYu27uvggkCzMyWrIuTgSJ07A
	pcYA==
X-Gm-Message-State: AJcUuke4OzGCrzjffJXK8rc6BmMVIfBf+8aP4BjfUTh4706PFa/jQ59l
	os2OI7odXECEZX3AqL/VAN66Eg==
X-Google-Smtp-Source: ALg8bN5GsV13vFPXGSEaua789zu9kxgSukNEw5UDRHOAFr0y9pGWddcRhrEXloygkdx0wF7FfdaBog==
X-Received: by 2002:a9d:20c4:: with SMTP id x62mr22462635ota.202.1548870182624;
	Wed, 30 Jan 2019 09:43:02 -0800 (PST)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com.
	[209.85.210.44])
	by smtp.gmail.com with ESMTPSA id m2sm747896otp.34.2019.01.30.09.43.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jan 2019 09:43:01 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-ot1-f44.google.com with SMTP id 32so295665ota.12;
	Wed, 30 Jan 2019 09:43:01 -0800 (PST)
X-Received: by 2002:a9d:842:: with SMTP id 60mr22674574oty.22.1548870181140;
	Wed, 30 Jan 2019 09:43:01 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
In-Reply-To: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
Date: Wed, 30 Jan 2019 15:42:48 -0200
X-Gmail-Original-Message-ID: <CAP9ODKrE44Bi9k1Z49YVvcyOkSA4JYd=LEznZ_2d3K+2gF1NYA@mail.gmail.com>
Message-ID: <CAP9ODKrE44Bi9k1Z49YVvcyOkSA4JYd=LEznZ_2d3K+2gF1NYA@mail.gmail.com>
To: srinivasan <srinivasan.rns@gmail.com>
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, yocto <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	meta-intel@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [meta-freescale] Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
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
X-List-Received-Date: Wed, 30 Jan 2019 17:43:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

On Thu, Jan 17, 2019 at 3:03 AM srinivasan <srinivasan.rns@gmail.com> wrote:
> I am trying to customize my vendor specific Yocto BSP's to my custom
> OS.  I am facing the below error, could you please do the needful or
> provide me some pointers from your end for solving this issue
>
> Error:
> $ bitbake fsl-image-validation-imx
...
> | /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432:
> 176: /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432:
> Syntax error: Unterminated quoted string
> | WARNING: exit code 2 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.80432)
> ERROR: Task (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_install)
> failed with exit code '1'

There seems to be a syntax error on the do_install task, likely a bbappend file.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750

