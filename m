Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EDE4E00F1E; Wed, 30 Sep 2015 14:31:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06961E00BC2
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 14:31:31 -0700 (PDT)
Received: by pablk4 with SMTP id lk4so51110784pab.3
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 14:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-type:content-transfer-encoding;
	bh=uu6ASeaau+g46mlSc4GJ4Kb1G/ptuEAHgY4Sz8N5pvg=;
	b=kT/q1LQRcBwfLYlWvsP42Y3vOmPSDs6R7aq104RGViGzxRIGUD78jA6nDHWnhoRIhu
	NBbj2H0LmZCEK2fCP0FsFXCsoQ+kl0g478Dv+ekoyThZEUu1aZ7hs3+OGVoIua7lZRx1
	Zo/tIx9OHufNYPXwJeXatzKKwn0+ImEXWO6uiBCpMMgGjsw8F3SnJKFk4+/FHYrA/S1x
	5EK0G/fIZCH/krtO5BIEmyg9mqwkel2ETiN0BoNRuQPYjELG0piUOPrpAU73uq1j6BVb
	foCojD0K/oIEFTK90yz4qKVcDN3yikjdhxVC7LQi5jNQ4KHxK9OepuCPMtqwtG5Uprcl
	8Spw==
X-Gm-Message-State: ALoCoQnfTjdmzUyNPVQBWFWkEZJIQWKIlioSskt8N4VV0glop73aR+tEFawYTC5prcXRGXzq2plO
X-Received: by 10.68.190.170 with SMTP id gr10mr7320788pbc.91.1443648690970;
	Wed, 30 Sep 2015 14:31:30 -0700 (PDT)
Received: from [10.10.13.206] ([184.23.178.130])
	by smtp.gmail.com with ESMTPSA id
	jd9sm2462849pbd.53.2015.09.30.14.31.30 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Sep 2015 14:31:30 -0700 (PDT)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
X-Enigmail-Draft-Status: N1110
Message-ID: <560C54B1.20307@mender.io>
Date: Wed, 30 Sep 2015 14:31:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: Run-time discovery of machine for image compatibility check
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
X-List-Received-Date: Wed, 30 Sep 2015 21:31:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Before starting a bitbake build, we input the MACHINE variable in
local.conf (e.g. MACHINE ?= beaglebone).

Is there a way to detect this variable at run-time? I.e. if I have built
the image, written it to a device, and I'm now logged in to it.

The reason I want this is that I'm working on a project to deploy image
updates (remotely), and I only want to write the image if the device is
compatible with the image file. So I need to know both the
hardware/board type and what the image target is (assuming this is the
MACHINE variable alone). Then I will only write the image if they are
the same.

Also, do you think using the MACHINE variable is the right approach for
this problem? Maybe someone has had a similar problem?

I'm new to Yocto, sorry if I'm asking something obvious (but I could not
find an answer in the docs).

Thanks!

--

Eystein

