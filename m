Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DDC6E009F8; Sun, 19 Jul 2015 10:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4988E006EE
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 10:04:26 -0700 (PDT)
Received: by wibud3 with SMTP id ud3so71763587wib.1
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 10:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=BlhS0c9M8RP9IH3D+01UGJsJg3aXBjtCPTD+Hg/+pj8=;
	b=Bjp8m8eWzim3jQFDpVUTgudhaYmigPpRg9XQQo1S4wCpPwqvP+5wEKlti6i9dzDZJz
	DS4k2atx7ULrWhmoo8TGzPloeEVnu4Ahjm5f91okMuxLl4NRjaM0xQXw5aW6o8bQjz9B
	VQFGu67ELVuV3SNoF/kvGJl5/wx+D47jkaMbxSjtp9zPFOaVlLj/6KlKf6iB76USRJYH
	m+stbZXYz67MWuKkCgKwmoICdRDvd17BCGzIk3esByWjU6q/XYpLUFAWJlRvk0iXL5Vg
	+kUyaUJIinwLdh2M5womZe4fCPYsiROEt099v7i1TEiu+Mtbg1ckqT5rEcyrUy8fxiUe
	f6rQ==
X-Gm-Message-State: ALoCoQnIPwVwb5EvMgNvgDyeHArzcI5pbL0xG4OFADALYDxCOTRR1w9RTMgHr25ko2ovKcGsb8P0
X-Received: by 10.194.249.100 with SMTP id yt4mr51513471wjc.0.1437325465111;
	Sun, 19 Jul 2015 10:04:25 -0700 (PDT)
Received: from gmail.com ([2a02:8108:9b40:1710:3602:86ff:fe43:7ba5])
	by smtp.gmail.com with ESMTPSA id eu2sm7750821wic.8.2015.07.19.10.04.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jul 2015 10:04:24 -0700 (PDT)
Date: Sun, 19 Jul 2015 19:04:18 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150719170418.GA2725@gmail.com>
References: <cover.1437296854.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1437296854.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/2] More package updates
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
X-List-Received-Date: Sun, 19 Jul 2015 17:04:29 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Jul 19, 2015 at 11:11:24AM +0200, Petter Mabäcker wrote:
> The following changes since commit c8532df1c2e4812b3520d32ed49be943bea2edd9:
>
>   If SERIAL_CONSOLE is already define by another layer, this value may not be good. (2015-06-05 16:38:14 +0200)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi_redmine_60_more_updates
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_redmine_60_more_updates
>
> Petter Mabäcker (2):
>   omxplayer: Bump SRCREV
>   wiringpi: Bump SRCREV
>
>  .../0001-Add-initial-cross-compile-support.patch   | 429 +++++++++++++++++++++
>  .../wiringPi/files/Makefiles-install.patch         | 202 ----------
>  recipes-devtools/wiringPi/wiringpi_git.bb          |  10 +-
>  recipes-multimedia/omxplayer/omxplayer_git.bb      |   4 +-
>  4 files changed, 437 insertions(+), 208 deletions(-)
>  create mode 100644 recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
>  delete mode 100644 recipes-devtools/wiringPi/files/Makefiles-install.patch

Series tested and merged to master. Thanks.

--
Andrei Gherzan

