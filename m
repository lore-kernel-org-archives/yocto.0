Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3055CE00D7B; Mon, 15 Jan 2018 03:18:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A29ABE00A75
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:18:37 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id l29so6757254qkj.8
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DofeI2t+6VGrrGD9pifCz1RmlVVOZt8C5SE/K2x4MQ8=;
	b=MpwmKgnQgN6e6liM3cNr3Sg9NyUZrWsjn3vKzGZ4x7XI/Xg7yy/mlHlNfmMbYmS8NU
	RcS92OxAno145oFVotQ5436eWX1i5HubUodVAQLNhJnXZzaTh0m36wtUecatOu/ncjNp
	cIK2SaTjBHWCGW9XCgSH+t6Pve+wmke4Y5ZwSTP5TqBf7uk6zC1zzwytPS38O2DN0eCg
	zF2oNWKMHuiXlSdC/0hES9FNW86FHRFc9cOfo6NgSztbmJ/c6GpAjC1POh3VxjM1InfD
	aJyIYjM/eEebd3tCmk0T9fdT/bzOviFpaJ9WW4xYKkTlzi9emJsOz7ds42dxos8rqC+c
	aCUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DofeI2t+6VGrrGD9pifCz1RmlVVOZt8C5SE/K2x4MQ8=;
	b=bAvOSEMJj0/59B+HsZ+9i15vlslbflx8F0VFsgz6ks+cFIp0wHnOmjGXZM4CaK3jN5
	cts7xhfvd+ESR4qdY756vMatY0hHwzRwhn0REYgstq7MYLXGDUYkN8a6pDewuALHzmO5
	5HZXQ0W3TiohHFZX4PiZc2veqvKNEib1S1uT9UMMhQOIaa1hGn90wCKtEsJqYdHdmODK
	YntnptHZE7lE6NWj+7Mxa/dv+bAhZFqhl2olvReprVpxQoqPpPdcUAzr8qufmNN5MEnJ
	xkXu4wClBLMrclLLsFJyrsB7DLjiC3dFyN9zc2DvBSIB0pSnfNt0eHeb38JJIVeqU4nQ
	72Fg==
X-Gm-Message-State: AKwxyte9gP6w5pzVKZy/my1ulzFUIGqulV5u/g6k0TA+trf65+qglWRb
	dc629zew0D0pMOjGqDEfG/FmQeMuVQ/LGwz8VTHl/CwG
X-Google-Smtp-Source: ACJfBosLjBLFpaaVLfFUVzt+SJe15jaGO1w4yTtau6VpCJY8SKBXv0VyrFaywM+sTXW9/G9L1hYtb8nLrWrw6QGJL6o=
X-Received: by 10.55.119.68 with SMTP id s65mr46375478qkc.357.1516015116694;
	Mon, 15 Jan 2018 03:18:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.214.82 with HTTP; Mon, 15 Jan 2018 03:18:06 -0800 (PST)
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Mon, 15 Jan 2018 14:48:06 +0330
Message-ID: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: conf/machine/<machine.conf> in my custom layer doesn't get parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 11:18:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I've created a custom meta layer over poky rocko and added it to
bblayer.conf. I've also set the appropriate MACHINE value in
conf/local.conf:

MACHINE = "colibri-imx6"

There is a machine specific conf file in this meta layer, but it
doesn't get parsed. This file is located at
"conf/machine/colibri-imx6.conf" inside the meta layer.

By checking the output of

bitbake -e

it seems that other machine-specific conf files like
"meta-freescale-3rdparty/conf/machine/colibri-imx6.conf" are
referenced and parsed. But there is not even a reference to my
machine-specific conf file.

Should I set some variables that hint the bitbake to parse machine
specific files in my layer?

Bests,
Isaac

