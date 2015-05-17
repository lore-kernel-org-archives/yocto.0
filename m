Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC127E00988; Sun, 17 May 2015 15:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.3 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F261E007B6
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:53:12 -0700 (PDT)
Received: by labbd9 with SMTP id bd9so194407698lab.2
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=n52ovmSZuuT8hT/EnKSbZ4Fzw+/TBLMIabdMTRe3XCo=;
	b=QP7vjYqrw6ru0FxZ4AH0tU5KPaXxbC9h4Qv8sKg4gv6NHlMFUGHe5KflCofkhxJRMu
	kyX4ijIj0e7HXdMciZLIy8gVUKNmQYael4sV6XoRoro/2V/IG/KvlE5mwvT5wBreSPqx
	tW1E5pHcS2AytC9GlHTmdGGgtbwESeEn9pPu3pd5bYEKLgFxLq7TZrihy16/3c8fY/Le
	oxQ3E2ySCmd6W4wvoUllejO0S7S26pTKG6aLweg51kjPnx275q7bfUWz9Iy/2aZnk/8W
	jXZ/JLGfSSSg//q+GPG3X+4gWHq2tR7rmEA2JAFL8vV1zxei22HlOBKH401ytkV0H/TQ
	JNAg==
X-Gm-Message-State: ALoCoQnXI65NeXucumRTQTvSigy+VE11xm1ZDPZrRhhFyEOmRxMXsO2Tq2c+DN6chn5I8QlU34Am
X-Received: by 10.112.47.73 with SMTP id b9mr15011241lbn.46.1431903191824;
	Sun, 17 May 2015 15:53:11 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id ap8sm2208931lac.30.2015.05.17.15.53.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 May 2015 15:53:10 -0700 (PDT)
Date: Mon, 18 May 2015 00:53:08 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150517225308.GC3772@gmail.com>
References: <cover.1431121258.git.petter@technux.se>
	<26d58c7539ad03e0c63a72faa927d570bd853a88.1431121258.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <26d58c7539ad03e0c63a72faa927d570bd853a88.1431121258.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/5] linux-raspberrypi: Add 3.14 support
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
X-List-Received-Date: Sun, 17 May 2015 22:53:16 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, May 08, 2015 at 11:49:03PM +0200, Petter Mabäcker wrote:
> Add basic support for Linux 3.14, cherry-pick changes from 3.18.y in
> order to solve some debugfs warnings and get better support
> for i2s for BCM2708.
>
> - 3.14 lacks BCM2709 support and will not by default be able to use for
> raspberry pi 2.
>
> Below warnings still exists they are harmless and exists due to that
> snd_soc_pcm512x is triggered to be loaded twice. The problem is solved
> after device tree support for the driver was introduced in 3.18.y and no
> easy solution exists to solve this problem on older kernel versions (see
> https://github.com/raspberrypi/linux/issues/662 for more info).
>
>    pcm512x 1-004c: Failed to reset device: -5
>    pcm512x: probe of 1-004c failed with error
>
> Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
> and its content seems to be obsolite after cherry-picking
> '558d0bf Fix grabbing lock from atomic context in i2c driver'.
>
> [Support #57]

Patch merged to master. Thanks.

--
Andrei Gherzan

