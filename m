Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F418E00D93; Fri, 11 Sep 2015 05:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0F9E00BB3
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 05:45:07 -0700 (PDT)
Received: by lamp12 with SMTP id p12so46385989lam.0
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 05:45:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=s8kFlny5rFXitgFIKF9bPcM2tgh5H6fmPnbMHlu5yIY=;
	b=eQEDbNRutaTj7GnHjSgKkKFZC/EQRTBQCUdS8hIoke640vcGOAOfEVTsHZYtYKXoK5
	vkop6YuykX6tKVo0SBbGlVGY9hwFqW6CZ8xYmw8fIk/ZssmUAeg4CelfwRuFhfA0HdMK
	2GxTkDzbRaLq0uhfngyzeHPPxPsFGtdOiVgqaXUpk1B4hwu9MJniRtSHNNKvyfIKnEul
	eKZEbvcQjNINcSXZWSNffOB3wSVmPX6xOrfOmXkRXcd38Uvex+SdtEB/CQUZy1hsO3g5
	Fdj4ka7hmL1AO5oh+IupLLo8n5aKaV9jl97nZoh36XfEfL3WcQZAIIw6ynNGZpo4oD4X
	OwKg==
X-Gm-Message-State: ALoCoQleqy2ABF1HIKX74UUBpwrVUbqcCV7Y4l8WV69kEtUPYVy5Tsc+J/0J3G6azcQAiPVlup/7
X-Received: by 10.112.138.37 with SMTP id qn5mr35579940lbb.52.1441975505889;
	Fri, 11 Sep 2015 05:45:05 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by smtp.gmail.com with ESMTPSA id w5sm32612laa.17.2015.09.11.05.45.04
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Sep 2015 05:45:05 -0700 (PDT)
Date: Fri, 11 Sep 2015 14:45:03 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20150911124503.GB22497@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CALLyC8QMNEAfwAuvTb88mjP7La2P4eYo5xw9CaFCqzR9NFxH_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALLyC8QMNEAfwAuvTb88mjP7La2P4eYo5xw9CaFCqzR9NFxH_Q@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: How can i modify the dropbear.service file in ssh-server-dropbear IMAGE_FEATURE
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
X-List-Received-Date: Fri, 11 Sep 2015 12:45:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Vivek Per <pervivek@gmail.com> [150911 11:18]:
>      I want to modify changes to the dropbear.service and
> dropbearkey.service files before yocto  creating the final image (This
> resides in /lib/systemd/system/*******.services). This dropbear is added
> through *IMAGE_FEATURES =+ "ssh-server-dropbear" *in image recipe*.*
> Can i able to change dropbear.service file before creating final image.

Sure, add a bbappend-file in your layer, and add your own versions of
those two service-files in your layer.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

