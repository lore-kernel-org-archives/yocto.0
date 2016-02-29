Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BA3AE00D52; Mon, 29 Feb 2016 13:17:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ED1BE0090E
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:17:33 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id l68so9231110wml.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=MwkIIyv6Pkr3EfIDTTyjqTl4QcXu3X0eVAwMO4rBlIk=;
	b=kj1QsEVJeY5U74qxGHp7kduN95DgXxkMTPVoggZOSe890Cnhb+FEGgEoM3LnvPS1r6
	KEzeBop6ewvSsRvMQDyPniLsauhYuLzIrHVbIihgFajLHAnz7MBsrbQiHC7wBaDGUHMP
	i2XzcW8ChKYBCo2esPAx/Gy09s/CJZEgVWhaU+vlHwOHW6s8RaxSSSWcajuJUf2ivK0N
	V1CwtcvcBQw7/l4FPo9L4lZmonr1VRycPyF53pIktM2owzC2L/y0PcBi89hdkCenZkEK
	aYzDBDQMfzaC2Tf5VzCgbfb35slgGf56CFJmAIA11MvESdppsUT3bghKmH8eQNsyz1ga
	uFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=MwkIIyv6Pkr3EfIDTTyjqTl4QcXu3X0eVAwMO4rBlIk=;
	b=j3pmbgzduhhBUEisD/dXzG27fo4L5TYd/ibngvvmErUbScQZ3+IQGV8Dt92TaX76+y
	HwSQSe3iITG/tg6J21WwL7kA5ra2raRUe1C67x/Qfg6O7yfFXRc1nPDsQueMLQAcUjp6
	WA8bW4ut+4xscETXKS9E827wMEvOwXt087yzyC57dYhxrueppbjbtTAiGRDzZjR+Jukx
	w11vIpbls/rPaOLAiTsnJT7qLnT12/Il5arWxgNzLcRTDo+wfYfphKNzt65/HVatgXvk
	8tsRBna8e4nBNZjx+pQ/XmnWt7wjyLHwY36hGQ1wsQHTbAsHikkVAsxtwfTNJHml08Tj
	R81g==
X-Gm-Message-State: AD7BkJI67IMvK5RogeN69MOqBIyJ6sMh4ltZiIsQpEKf6Bb/BIu22kAgH0FThkpzz7lC0Q==
X-Received: by 10.28.20.145 with SMTP id 139mr72557wmu.76.1456780653163;
	Mon, 29 Feb 2016 13:17:33 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	73sm18166279wmy.22.2016.02.29.13.17.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:17:32 -0800 (PST)
Date: Mon, 29 Feb 2016 22:17:30 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160229211730.GC2087@resin.home>
References: <1452789643-17903-1-git-send-email-petter@technux.se>
	<1452789643-17903-4-git-send-email-petter@technux.se>
	<decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
	<20160228105158.GF12618@resin.home>
	<20160228110222.GA2087@resin.home>
	<0ed4c3bfa9af685cd6f51bcb4b0d3e57@technux.se>
MIME-Version: 1.0
In-Reply-To: <0ed4c3bfa9af685cd6f51bcb4b0d3e57@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/7] linux-raspberrypi: Update 4.1 recipe to 4.1.15
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
X-List-Received-Date: Mon, 29 Feb 2016 21:17:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:44:36PM +0100, Petter MabÃ¤cker wrote:
>    2016-02-28 12:02 skrev Andrei Gherzan:
>
> On Sun, Feb 28, 2016 at 11:51:58AM +0100, Andrei Gherzan wrote:
>
>      On Sun, Feb 28, 2016 at 08:56:33AM +0100, Petter Mabäcker wrote:
>
>      2016-01-14 17:40 skrev Petter Mab?cker: [Support #69] Signed-off-by:
>      Petter Mab?cker <[1][1]petter@technux.se> ---
>      recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++-- 1 file
>      changed, 2 insertions(+), 2 deletions(-) diff --git
>      a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
>      b/recipes-kernel/linu x/linux-raspberrypi_4.1.bb index
>      3a3cf40..cae459a 100644 ---
>      a/recipes-kernel/linux/linux-raspberrypi_4.1.bb +++
>      b/recipes-kernel/linux/linux-raspberrypi_4.1.bb @@ -1,6 +1,6 @@
>      -LINUX_VERSION ?= "4.1.10" +LINUX_VERSION ?= "4.1.15" -SRCREV =
>      "b74df9228c27f55361c065bc5dbfba88861cc771" +SRCREV =
>      "02a8ee530e32b08e5df44f10e24d5fd82bb960e3" SRC_URI =
>      "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.
>      y " require linux-raspberrypi.inc Hi Andrei, This commit can be
>      skipped, since Khem have done an even newer update of the 4.1 kernel
>      (4.1.10 --> 4.1.17) in the large series of commits from yesterday
>      ([2]https://lists.yoctoproject.org/pipermail/yocto/2016-February/028
>      754.ht ml). Do you want me to send an updated version of this series
>      of commit without it or not? BR Petter References 1.
>      mailto:[3]petter@technux.se
>
>      Thanks Peter. No need to bother. I'll keep in mind not to pull this
>      patch.
>
> Petter,
>
> Actually I do have a request. Could you please send the v2 again (or a v3)
> cause even if they are on the ml archive I don't have it in my mailbox (this
> kinda worries me). Sorry for this and thank you in advance.
>
> --
> Andrei Gherzan
>
>    I will send up a v3 with the kernel bump commit removed (and also a fix
>    for a minor typo in the README..).
>
>    BR Petter

Thank you Peter. This is the next one in line for testing and merging.

--
Andrei Gherzan

