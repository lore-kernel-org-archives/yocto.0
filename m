Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7270FE00D95; Sun,  5 Jun 2016 16:36:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9D67E00D88
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 16:36:21 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id u203so4320044itc.0
	for <yocto@yoctoproject.org>; Sun, 05 Jun 2016 16:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ITYAituEdt5jp1jsQnGRoMZY1LegqRgSuG6Fbipo868=;
	b=mn0HcTrY8TjR1fldAbe6UV6+qwELkqqNKddBsPWndQTM9TNgQWVxnWeNe5yKNvq/rP
	7tRMTMMl3QE1pTU7oLXeSP9kTFiTNI/S9e91G9/YJNnQGgwIB1TUVOUflQTku1Dor4dM
	UAVfgMThZZYLc+AWN7PpjFMM5DJom8wuF+PBn3oV2OtN0uFCiSMyUnOgDeVpATv7DbpX
	2jrtnhAzVZTleXwAVUdyXxVcMNNmhTFZ7GaYlCZajbWNjgr//Yrj1jaEg/0Pf+Nz+2il
	VBDhm8QWrP0N714lMcaAoJTYEdfyBPGYtTb9Fpy0RJGO8aEDVgJ0afPKce0Vd8gLSsK0
	KouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ITYAituEdt5jp1jsQnGRoMZY1LegqRgSuG6Fbipo868=;
	b=C9NYwQTTJLTlMLu/rJBVY9YPMheO5eW5o6wkaLSEQ3vYodC+Wz3IU10ALm66Wj+9nn
	Bkk5V7T0hm2cudGePYlHq8cMWSbKbX90b1rsbTvsqLGPH/63M6d7sgqvt1zW9ad1bxuo
	rx8biPRw54dZSzajYNMRYTmuKSW4RHA+92OSHFSDbFqesofR0RKdYwbU4lqjzrEpWL/L
	Zy7yF4PWRSn/QOJJaXviWoOmrCEpd6EmHgij6vOXcmkXpg6pI1Y9OHtc5mfymy3AviE5
	Bwz/TbMZ1v8moDt1XPpKaqtDLuyM9be+SJxEW/iXpaMcINw1K1qoI3kT9kFBM+SNRT3D
	bSeA==
X-Gm-Message-State: ALyK8tI5bwc6CxkBRgsPEbbtLAw4sFf4YSR8siQaRlmRKevYNCKil+5E7iwjivK5zmXuuQ==
X-Received: by 10.36.37.73 with SMTP id g70mr12000570itg.51.1465169780537;
	Sun, 05 Jun 2016 16:36:20 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	w18sm7843954iow.43.2016.06.05.16.36.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 05 Jun 2016 16:36:19 -0700 (PDT)
Date: Sun, 5 Jun 2016 19:36:20 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160605233620.GB14930@openSUSE-i7.site>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
	<013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
	<20160605125800.GA5652@openSUSE-i7.site>
	<013801d1bf3a$5bb10030$13130090$@neuf.fr>
	<20160605200854.GA14930@openSUSE-i7.site>
	<9F045CFD-18FB-4C5A-A39E-0B5CEAF87395@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <9F045CFD-18FB-4C5A-A39E-0B5CEAF87395@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 05 Jun 2016 23:36:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-06-06 @ 05:38:00 AM, Herve Jourdain wrote:
> Hi,
> 
> This one is a different issue, that was caused by a patch in oe 1 week ago.
> I did send a patch to solve it last wednesday, I believe.
> The root cause is KERNEL_OUTPUT has been removed from kernel.bbclass, but meta-raspberrypi uses it.
> This is the link to the patch:
> http://article.gmane.org/gmane.linux.embedded.yocto.general/30093/

Thanks, the patch works great :-)

> 
> Herve
> 
> > On 6 juin 2016, at 04:08, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> >> On Sun 2016-06-05 @ 04:55:47 PM, Herve Jourdain wrote:
> >> It seems like you are building the 4.1.21 kernel.
> >> Did you set PREFERRED_VERSION_linux-raspberrypi = "4.4.%" in your
> >> distro.conf or local.conf?
> > 
> > I was trying to save myself the time required to rebuild with the 4.4 kernel.
> > I knew from my experiments that the result was the same for both, but here it
> > is anyway:
> > 
> >    ERROR: linux-raspberrypi-1_4.4.9+gitAUTOINC+3b440738b5-r0 do_rpiboot_mkimage: Function failed: do_rpiboot_mkimage
> >    Log data follows:
> >    | DEBUG: Executing shell function do_rpiboot_mkimage
> >    | Usage: mkknlimg [--dtok] [--283x] <vmlinux|zImage|bzImage> <outfile>
> >    | WARNING: /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/run.do_rpiboot_mkimage.18615:1 exit 1 from '/z/layerindex-master/raspi2/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}'
> >    | ERROR: Function failed: do_rpiboot_mkimage (log file is located at /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/log.do_rpiboot_mkimage.18615)

