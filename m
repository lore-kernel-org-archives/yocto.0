Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26DAEE00F40; Wed, 23 Sep 2015 15:30:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 965A6E0055C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:30:48 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so89471143wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=apiJzyYTv9T1bhMZWY806Rzpq/MbD+EN506LGMNeTxs=;
	b=UZkTNhpk4kgmqRSW5fgl7FMpCotzJOYLR9KDSu5418Qvuvot5zu+8PM/8GMFSCuoSm
	1F230vWDCGBPWVRO/fW70T5dxzXSRmvdtqgIyzHHWCMPsJTD2ufNYxbAQOPoWmId4mGj
	xRrekhcVlo6ClyddugcTJs2ZFXan143+Tu+6JFB0Wrvg3eeKW7KoutFGl+prYo3ePfPG
	Wjd498ofquMJo5KwJ170OkQ4KfhzHC1I+q2PZUPpDKxwEMaWgA0r/1Ld67Gq/sBbmW8n
	Km2oTQz6BHF7hMqt+3/g3EER1oXekG8RTGNxJ6P1BOqnsBIQtNpBPL9E7BeSZ0W4XeZy
	ij0A==
X-Gm-Message-State: ALoCoQm/OCAMaHOkO8nie2HX7j/6+sxornSoY6zb90acSGzrQz6oClg1PZHOYi4Q+4wvSI+P3F+w
X-Received: by 10.194.9.42 with SMTP id w10mr36638084wja.146.1443047448059;
	Wed, 23 Sep 2015 15:30:48 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139])
	by smtp.gmail.com with ESMTPSA id hk5sm9380386wjb.6.2015.09.23.15.30.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 15:30:47 -0700 (PDT)
Date: Thu, 24 Sep 2015 01:30:45 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150923223045.GD23493@resin>
References: <cover.1440742765.git.petter@technux.se>
	<f2a71b6959484f9a6d4c60bb28b7b47b13f57607.1440742765.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <f2a71b6959484f9a6d4c60bb28b7b47b13f57607.1440742765.git.petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] pi-blaster: Bump SRCREV
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
X-List-Received-Date: Wed, 23 Sep 2015 22:30:53 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Fri, Aug 28, 2015 at 08:27:16AM +0200, Petter Mabäcker wrote:
> Update to latest revision in order to get rid of the integration patch
> '0001-handle-install-data-hook-when-cross-compile.patch' that has been
> submitted upstream.
>
> Changes since cd318cd63031a30249a4c08435b97263fa76d7b7:
>   bce7c1b Merge pull request #45 from Technux/dev/technux
>   74510ff Display an error message if unable to open mbox
>   53197ca handle install-data-hook when cross compile
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>

Merged to master. Thank you.

--
Andrei Gherzan

