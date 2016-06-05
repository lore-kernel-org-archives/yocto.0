Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC6EFE00C62; Sun,  5 Jun 2016 05:58:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE73E00C62
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 05:57:58 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id k76so3655422ita.1
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 05:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QLOtF+4G+IfoggWrtLngKabADisN8X2PM74xDFp6cO4=;
	b=iP7Vh14bzwpPdvsKGzMJZlDXxL8OD1xwgVRC0REWOZgGm/n3+qM1wlNAMqmJwYSuO1
	kPuwiG/55amUOYrvchbKpzhq65YVBncmZXfBSorTS0TUhxKPKAqmlhM8u1ge6qWO+yRz
	w3Ga9XLX8k4ef8MxrUZJP+XXsy6XmxJoSXm2X1OuVtmCYcbBnSW8BwXruDTE8rmQ8h0+
	MFcRv6b7/UOiLvrQu004dQJ/aRMWw86Fuj8iNISNKhfGNPxz/0nP49PqqwPJvroUJ7NM
	vltpn24Ckxh34hpFgNxj9w4++8OaS1wUjM7G+bPyi7gLCQI+Wb8UUnvTX1lpStOUmAO7
	GjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QLOtF+4G+IfoggWrtLngKabADisN8X2PM74xDFp6cO4=;
	b=I0AjrxEbgThxOf6QYfxZErs58kxtESRcdcoQA9hrtc9Zxk4s1nSff3I80qylSxe0YY
	6PhjEQWVPOT/bMYOlpjfC2LTQxPbU46WgqHGexa8jANggokQG4FufnRYLShCnfwQXFr/
	d6DCSQ/92WOok3RB8Grciqrf4XFh+D6HMGeSCK1NLzwG4Jn3koquYSJzaEV3nohoQ4mP
	+he0jIOcYBO+vaDcM72FoZEfwL3MVsLD3+tMvPKu+b8Ufouu3H2kVf81x9OjMeNIp/yn
	Mz0jDZDAdsPSDUrOhHn7USQbBrPw7jInnGDrg2XT1bMDxZWmAdJHdMxRCqVUCYF5JlOU
	fjIQ==
X-Gm-Message-State: ALyK8tKSwBQ6lZ8mDucPHs56DZWVG9TlwFQO6kqeA3fgeC43cataFJF48J8UevJmT1hoAQ==
X-Received: by 10.36.20.196 with SMTP id 187mr9678936itg.83.1465131478178;
	Sun, 05 Jun 2016 05:57:58 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	m71sm3947893ita.5.2016.06.05.05.57.56 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 05 Jun 2016 05:57:57 -0700 (PDT)
Date: Sun, 5 Jun 2016 08:58:00 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: 'Yocto Project' <yocto@yoctoproject.org>
Message-ID: <20160605125800.GA5652@openSUSE-i7.site>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
	<013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 12:58:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2016-06-05 @ 02:14:29 PM, Herve Jourdain wrote:
> I'm using kernel 4.4, and it does build properly with gcc 6.1.
> But the build does fail on other packages later on, so I ended up reverting
> to 5.3 for now.

Both the official meta-raspberrypi and Khem Raj's meta-raspberrypi layers have
recipes for the 4.4% kernel. I tried them but I keep getting:

	ERROR: linux-raspberrypi-1_4.1.21+gitAUTOINC+ff45bc0e89-r0 do_rpiboot_mkimage: Function failed: do_rpiboot_mkimage
	Log data follows:
	| DEBUG: Executing shell function do_rpiboot_mkimage
	| Usage: mkknlimg [--dtok] [--283x] <vmlinux|zImage|bzImage> <outfile>
	| WARNING: /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.1.21+gitAUTOINC+ff45bc0e89-r0/temp/run.do_rpiboot_mkimage.1254:1 exit 1 from '/z/layerindex-master/raspi2/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}'
	| ERROR: Function failed: do_rpiboot_mkimage (log file is located at /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.1.21+gitAUTOINC+ff45bc0e89-r0/temp/log.do_rpiboot_mkimage.1254)

So I'm not sure what's going on there.

