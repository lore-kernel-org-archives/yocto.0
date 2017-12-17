Return-Path: <drew@moseleynet.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 384B2E00D26; Sun, 17 Dec 2017 10:36:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02618E00B99
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 10:36:11 -0800 (PST)
Received: by mail-ot0-f176.google.com with SMTP id d5so11721823oti.3
	for <yocto@yoctoproject.org>; Sun, 17 Dec 2017 10:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=moseleynet.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=WwSKdmebMABeZpzX5sNC3SVIDF4SUr2Gkrq+6v1H0uM=;
	b=ihX/PdLsRJvrVsy8U05GcRDpSLmQdadTwya/bGQAUBZn+f0BuKaAFB+b1eNt69hV2h
	GM1QAX4U27EWelZYBTlGoB08+nLe+ds0XPXrFeqD7DIRTH/jhzJErSbIozQJtSzYxd5v
	opSXBQqNf/Q3am61jC4GZq+wJT17nFNCXadmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=WwSKdmebMABeZpzX5sNC3SVIDF4SUr2Gkrq+6v1H0uM=;
	b=QsrUZJ1PUF8PBptGSNxUxRo7pJLzmMGBSSaRWUfFyFjGf83HcazxmH9P8GppUL+CP0
	5Bq8T85ET89LFYYTNWENZFgkLN7ThzhGXSAfBbpJ+pUCjMa0YFmkx9KRkkW+EpUBKJgx
	ncBGu+tvN6/THhtK2RPk2645terhJQdfpdJ+1P9FHRXCLWmXfIHTSXDMyjYxMdswbd0z
	B/2H74eLqsLkoidX3oDhQxqnENaToJisV657SN7QTfV3fDVofiFKYWHQiGFApWRHPZGH
	61YazXmJqkdTVgLLyaHri4rewM+w+YekzpFVh2rsjcd8kWdQ+rDB4EM3uU+G6bMHDOAY
	1/FA==
X-Gm-Message-State: AKGB3mJY0tbW/V4XBOLRXd1wbi09PLOM7F9SgHRHtErX5uw1Q6Z1HpdT
	igSnYqSeQiTi7/GQ4Wujw+e3G9iPap0=
X-Google-Smtp-Source: ACJfBosIrsORtaitwvOQC+lQ8hKCiOfhc4knfbLVKAGoaogdvN5e72VretiV22cCD9/kvlqxBJDVHg==
X-Received: by 10.157.31.122 with SMTP id x55mr12710745otx.5.1513535770557;
	Sun, 17 Dec 2017 10:36:10 -0800 (PST)
Received: from [192.168.1.37] ([173.168.237.167])
	by smtp.gmail.com with ESMTPSA id
	p66sm3275417oia.49.2017.12.17.10.36.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Dec 2017 10:36:09 -0800 (PST)
To: yocto@yoctoproject.org
From: Drew Moseley <drew@moseleynet.net>
Message-ID: <aefbfb07-78ea-4a73-ea08-1fd5b2b35fe0@moseleynet.net>
Date: Sun, 17 Dec 2017 13:36:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] How to modify KERNEL_DEVICETREE?
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
X-List-Received-Date: Sun, 17 Dec 2017 18:36:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I'm trying to figure out how to properly modify the KERNEL_DEVICETREE
variable.=C2=A0 It seems that the meta-raspberrypi layer uses that variab=
le
in the sdcard_image-rpi.bbclass and defines it in the machine conf
layer.=C2=A0 In poky, the variable is set and appended to in the various
linux-yocto recipes. If I make a similar change in a linux-raspberrypi
bbappend file, it works fine for the build of the linux-raspberrypi
recipe but when it is trying to package up the rpi-sdimg file, the
changes from the kernel recipe are not available and generally the build
will fail since the files expected during the image creation will not
have been created during the kernel build.

I can envision several different workarounds here but I'm struggling to
come up with a solid fix. Does anyone have any suggestions?

It also looks like the meta-freescale layer will have a similar issue.

Drew



