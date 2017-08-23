Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31F88E0090A; Wed, 23 Aug 2017 15:37:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72631E00349
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 15:37:23 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id s199so5078055vke.1
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 15:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JKU8iNwblr1OljvDfNtVGP9cRyFimzuptunCbKBsZao=;
	b=lsbGY0FZDb/mvYQMOXcVrcQonjvilDGUL3bwqk47lYgupT4bOnA8w34AFdWPNS9hrU
	W8bEdpdn5/hoGQqd7eR5Uxd3ZryTL5wMrAlK09sBwXcwz8e1OaKhqKy8/Sx4ikChMj6M
	OFnDfk1p3Abnuw3/oISP1uGb/DqMpU4UOSc7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JKU8iNwblr1OljvDfNtVGP9cRyFimzuptunCbKBsZao=;
	b=jVyS35q5/woasvel+tmFL4yFetB+saFKWNcVrSxC4XPIxXoG95lS12vkK43Uu1NHum
	NXNS1IXo2dcijo+OHKNXpkz07LDXBmRgG3w/8pMcUBgkpSVXhyXA9dIAp9JVA+qivMhK
	Ee4uXMiCpeohPnmFyJFSLP/k7dEVVoRk5OPUBJpUw95kdE4toToN2rig8aLrHhTW3BY3
	+ZV7OzCd+ICJJ6NPH5EaFlj4sHPbDvVY8kZTI0JM6pHDvYjNg00kseoOZipfhjjL/BVT
	aiZKV9DWmw/Ia1iNOENEqChxj6i+2GwjFpVpyB/eKWQ9FDgEvem/b1PxEU6DTGDLHS8u
	8ndg==
X-Gm-Message-State: AHYfb5g48KuhDbkzHHmnk5QClRSCn2GBore2iNOykLwlmiDPV9oAXHz8
	ROB6HapY3/72mXxGO1FVy1lxI/WzLJL0
X-Received: by 10.31.174.149 with SMTP id x143mr2271193vke.175.1503527843370; 
	Wed, 23 Aug 2017 15:37:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.62.18 with HTTP; Wed, 23 Aug 2017 15:37:03 -0700 (PDT)
In-Reply-To: <AM4PR08MB28993716E41C0DD068249D208E870@AM4PR08MB2899.eurprd08.prod.outlook.com>
References: <AM4PR08MB28993716E41C0DD068249D208E870@AM4PR08MB2899.eurprd08.prod.outlook.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Wed, 23 Aug 2017 17:37:03 -0500
Message-ID: <CAEsOVNeP3T8Thz=2EgR2Y7UNL77ZEpGJHNAQ4koGu+Ky+12s6w@mail.gmail.com>
To: Pieter Cardoen <pieter.cardoen@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi: u-boot serial console on rpi 3 b
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
X-List-Received-Date: Wed, 23 Aug 2017 22:37:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 21, 2017 at 4:50 AM, Pieter Cardoen
<pieter.cardoen@hotmail.com> wrote:
> Dear
>
>
> I noticed that the serial console is not working in u-boot on a raspberry pi
> 3 model B when I build an image using yocto morty branch.
>
>
> Can anyone give me advice to solve this?


You can add:

echo 'ENABLE_UART = "1"' >> conf/local.conf

To enable serial output.

-M

