Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36D35E00BCE; Sat, 13 Apr 2019 18:53:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB38BE00BAB
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 18:53:55 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id z16so15555733qtn.4
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 18:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=qcMjdvkLdkl4aHZmQf0Ng9JQF8Olp0XJHl3fVfCr0KE=;
	b=RmwEgxrbRiyzAGSDlyZ+IR6jVPkkOnwPMK48DsGSLsu4KqQwjHFbiEJ0Vvyr3YgP8e
	O4HfS0S5Bvn+lqNAnB405Vw7omsKFDYaPP7SzMHp7MdEWD0480JlHj6jSmIh1pRHhZ++
	O3Dn+09nHHImQveJESt/RTgOV86XSVUC6BYIq8C+TVWuJI7BPyqAHUfeFOMoX81i4Kpr
	toz6BGMw25GLsytym6MBwRU1sFUvmwKQp6c2lSNN17THXf+FOWXZBEPtLXCdRrW+UcBi
	E0pQd59P0c+s3BdQ35pj1sIOWguOu7e2xkdE0O4pE2klq1xMvIE0VOM2deYPDr7/F7qY
	wrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=qcMjdvkLdkl4aHZmQf0Ng9JQF8Olp0XJHl3fVfCr0KE=;
	b=bb3pIRmvYQdT5cW2Yyuhoa08O+A6ASa7pnfugkT6S0NZL3fqfHlXUgzE7T9AguE5k0
	dqXHyDkFxa+wxQCMNNSoyroO9onr5fuCj/uljzDJ8NQ2JP4b8SYWdZ6Iruy8VVnZM2yj
	VpbaiH/DvjjyQPamMynZYpx+v6t6Q2HfQJ+Fwk1+upMNQXmp6V8Xq49m01wx1kOp1/XY
	jKd/lBFs4jk7VLQvrtkunhslzw/TTvP/VP5l4H1qmD2hxkSOmVXrFx9rrBU+Ysn11jNr
	t5PS5lxrvbCCt00a4YdcSRV1saR3575Vhaa2XvPNfqFev1BrNRbt79HwYRUW92Wz97aW
	3D2g==
X-Gm-Message-State: APjAAAXUfIKtP+gC6jiDYQojNmVH8qUuoT/TznoO8mkHwHqfQecJvXnB
	VZTE8KH8S4E8WfxcOzzCvsoK7nvZ
X-Google-Smtp-Source: APXvYqyoUPyiD+QqlEc2qWu/62zkUtPIb9JbjEdy6JLjIIgtv35DVlpBV5CUf5deN8h28mBSvw4atw==
X-Received: by 2002:ac8:2be8:: with SMTP id n37mr56267849qtn.303.1555206834473;
	Sat, 13 Apr 2019 18:53:54 -0700 (PDT)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	o50sm30747034qtc.23.2019.04.13.18.53.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 13 Apr 2019 18:53:53 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <528f2b23-ca35-43a6-3568-9e8de7504198@gmail.com>
Date: Sat, 13 Apr 2019 21:53:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: Thud Kernel Configuration not Working
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
X-List-Received-Date: Sun, 14 Apr 2019 01:53:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings,
I was trying to build a kernel with these files in a new layer for no smp to be enabled but have no
idea why it doesn't work. This is after looking at the kernel manual and it's literally the same
files excluding the disabling of smp as the chosen option.

.cfg for kernel option is called smp.cfg and this the file's content:
#Disable SMP
CONFIG_SMP=n

This is my bbappend called linux-yocto-4.1.8.bbappend:
 # Include kernel configuration fragment
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 SRC_URL += "file://smp.cfg"

If anyone has ideas thanks in advance,

Nick


