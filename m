Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF9D1E0086D; Thu, 12 Mar 2015 15:24:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.7 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7D3E00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 15:24:45 -0700 (PDT)
Received: by wghl18 with SMTP id l18so19421265wgh.11
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 15:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=Nzb6CRqluXnngNJtDudHBrmg5GhN444NDtQNvYUq9eo=;
	b=bQhnHb9VE5hyMFH9iuTugAKE4uyZ34ce+rTHeUPjW5tmAiDHfIIy/bVo5GesylRtAT
	KYfm0MTiFOSHy8ueAB7161z95DyfpUYfUMDl9H+dpEam8jIvH+KqTzYbbjAQwmYVSTm8
	r64oz5ORFyu+u5hgngjfLF8OIGzObC46KQMGYn9A8gzQ5CxI5OjtJMgjHJQs8+A8Tnw9
	WIg4dTKdHQIxG2kG4VrxNXeFxCSxOFBi4D7nbNyxH5GDPfr8OB4ezW4S+s3i0qi0vHu+
	zoI/TDldCiQSdedkgieZKgapAIgN2dtIXoo+q5k4GCmO4LXVWEHibn2uRTDl59gbD4rf
	43Uw==
X-Gm-Message-State: ALoCoQmRsCMZZ7BV6kE/Pjlf1mf3QAY86j6uU/pG47PFsAcx2fNqKbEPug+qER51aIR4Dhfh3wXS
X-Received: by 10.180.73.9 with SMTP id h9mr27721277wiv.63.1426199084391;
	Thu, 12 Mar 2015 15:24:44 -0700 (PDT)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id nd15sm245533wic.8.2015.03.12.15.24.43
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 15:24:43 -0700 (PDT)
Date: Thu, 12 Mar 2015 23:24:36 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150312222436.GA23855@gmail.com>
References: <cover.1426101237.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1426101237.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] xserver-xf86-config: add rpi2 awareness
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
X-List-Received-Date: Thu, 12 Mar 2015 22:24:51 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Mar 11, 2015 at 08:20:43PM +0100, Petter Mabäcker wrote:
> The following changes since commit 57c8e6bffbbef9b2331551093c3436303eb18386:
>
>   rpi-base.inc: Include the RPI2 DTB (2015-03-01 22:43:40 +0100)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi2_xserver_fix
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi2_xserver_fix
>
> Petter Mabäcker (1):
>   xserver-xf86-config: add rpi2 awareness
>
>  .../xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf       | 0
>  .../xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf    | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf (100%)
>  rename recipes-graphics/xorg-xserver/xserver-xf86-config/{raspberrypi => rpi}/xorg.conf.d/10-evdev.conf (100%)

Merged. Thanks Petter.

--
Andrei Gherzan

