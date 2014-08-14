Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F9F3E007A1; Wed, 13 Aug 2014 22:36:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA0BE0079A
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:35:57 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id u20so537260oif.2
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 22:35:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AUaURfPRBVPmp9uzNll2bunHZPVbVbr+EJl2T6i4yLk=;
	b=F/aYtbyi0i4M0pyIED4wBX5aaS8vyCJ1Uk39p6+qdJX8Vco557YmX2252Zo2AstEnP
	kS2ywwMXYqJkZYzixtZ0zwlmdhRVR+PF426oPfaOyjKcf6hCeEXxIOD9ZPXJEz8B2kSI
	v6D2PF95ZnqbURMXTix6O4QMJo4nRdWlj27+Tc8BIrvH2jibgHCkAu64D/42WOEEXXPr
	eZx9LHzAWWAAsHUDYFFdJEaqvD+es1Htviyp5Ah9wSGgh4rCUWMUzUjTKRFp4l8JnNra
	oxI/lyCDYx0RGlDeqAbRkB81+RRx33xjKIwIfoZG9wQY3a4K0lzOA+BkjS32CPpWV1Bk
	GqDg==
X-Gm-Message-State: ALoCoQkUGxOibtsxc7BCU+jwHB4Ke9gLopacl3yjCEOhku1O9rWxv2/IJ8aNBuzM0HQtaSyvL/lE
X-Received: by 10.182.80.33 with SMTP id o1mr465776obx.78.1407994556031; Wed,
	13 Aug 2014 22:35:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.194 with HTTP; Wed, 13 Aug 2014 22:35:35 -0700 (PDT)
In-Reply-To: <CAPTvksAckaeBWfuEvj0SJbzSX0BgCJfGy8FZyn9ycTtrdz7jEg@mail.gmail.com>
References: <CAPTvksAckaeBWfuEvj0SJbzSX0BgCJfGy8FZyn9ycTtrdz7jEg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 14 Aug 2014 07:35:35 +0200
Message-ID: <CAP71Wjyyz0VJEMPXfF6juP0q6H7uaPPYnO6Wh3BMDorpGyeCzw@mail.gmail.com>
To: Rich Wilson <richaw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to modify busybox
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
X-List-Received-Date: Thu, 14 Aug 2014 05:36:06 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 14, 2014 at 7:19 AM, Rich Wilson <richaw@gmail.com> wrote:
> In order to modify busybox, my googling seems to indicate this
> can be done with
> bitbake -c menuconfig busybox
> When I do so, a window pops up and some compiling seems to
> happen, but I am never presented with the menuconfig app.

well, that should not be like this... however, see below.

> How do I modify busybox?
>
> What I really want is the httpd app in busybox. There is a bunch of code in
> busybox.inc that I don't understand. My naive attempt at using it was adding
> IMAGE_INSTALL_append = " busybox-httpd"
> to local.conf, but that yielded
>
> Error: busybox-httpd not found in the base feeds (zedboard_zynq7 zynq
> armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e
> armv5-vfp armv5 armv4 arm noarch any all).

to modify busybox config file, you can either create your own
(menuconfig or even do it independently of bitbake) and add it to your
layer with a bbappend, *or* for most simple change you can use a
configuration fragments (like for the kernel, see [1]). httpd is not
enabled in the default config in oe-core, so the busybox-httpd is not
created by default, as you've seen.

you can find a example of a config frament that enabled httpd in [2],
you just need to use a .bbappend that adds this file in SRC_URI.

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creating-config-fragments
[2] https://git.linaro.org/openembedded/meta-linaro.git/blob/HEAD:/meta-linaro-integration/recipes-core/busybox/files/linaro.cfg

