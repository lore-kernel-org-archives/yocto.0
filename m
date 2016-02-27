Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 717B3E00B46; Sat, 27 Feb 2016 04:22:05 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F43E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:22:01 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id l68so5147085wml.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 04:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=MpZUVRlxygOFWoFmTFZ6lZNAEowT/cIbL/gGClpaVuc=;
	b=vHKpPwKkocPXZNt67r3BYktIhF3qYSEly9Xy2IXjUZGKQzB9m7uTK9PA0gLakhDYnx
	6sccj4E0GXvUciLrUU+TtatdYYM6TShVLpWGeFiLl7YYYwYC4BY1lhO8SGs8QEdK9K6x
	Qdzfq7a+y9vhpHZnT7X5G7852zpY9hVw+cfaJfBwHsbX84RlWSYPHJo1wXYZ2D7dBWcv
	B9gvAhGkgB0NKDr+TLFWQ8cZ09GeZdA+i6bCB7ZAQttS44Te85AP8iiJEXdK4VBKsqFl
	IA7khBjGYMaJ8z7KsX8D4FSoXBlFGnKVuIfNgSRdAC13X1p0e9AS7ZcjUW/lhB04lEkZ
	zqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=MpZUVRlxygOFWoFmTFZ6lZNAEowT/cIbL/gGClpaVuc=;
	b=bcv8sd99Dh5IP6mLDJgFhp7EqDVefCKkxpfiF7+VAwRP6MFmSY/cpIH/XOXQNvucmI
	3pG52Quoip6n7Nz4N6yXiZS3bXxjHNYxA7fBzugVAO1STpSrEl1kOk6ZBvPOTPvKbUpY
	MrAPKXMmfUkEcZcBo8vcl6F8k1i2DTFdOGjm3Ywgajr1QaaPSxiM3XgvNfaZGgt1aVIO
	YYT0+9H/3DKRhiF6dvhS696x3Mer6YNfVDT5M51Mgp4DXX7jkiHddI6KVqcOCYUE8An3
	HHj67flDaTy7kF9YSpBkAlehLYx6mK3FarPAa165N0lDpYp3bXGwft/+t6YmoTZcEtW2
	akYQ==
X-Gm-Message-State: AD7BkJKtQ3GtTa4Qj73u8kZaL/VmvvzloAzfLwtLauzAt4qrOD5nMm+ypPiWJtGbWKpKzg==
X-Received: by 10.28.148.68 with SMTP id w65mr2783316wmd.66.1456575720319;
	Sat, 27 Feb 2016 04:22:00 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	x66sm6974667wmb.20.2016.02.27.04.21.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 04:21:59 -0800 (PST)
Date: Sat, 27 Feb 2016 13:21:53 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160226212038.GA28071@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
	<CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Sat, 27 Feb 2016 12:22:05 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Feb 27, 2016 at 08:03:10AM +1100, Jonathan Liu wrote:
> On 27 February 2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
> >>    --
> >>    Andrei Gherzan
> >>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mabäcker
> >>    <[1]petter@technux.se> wrote:
> >>
> >>    2016-02-26 18:14 skrev Andrei Gherzan:
> >>
> >> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
> >>
> >>      The path had libexecdir hardcoded so it was no longer correct when
> >>      libexecdir was changed in meta/conf/bitbake.conf from
> >>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk recipes.
> >>      Fixes "No such file or directory" error when executing
> >>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
> >>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.inc
> >>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
> >>      a/recipes-kernel/linux/linux-raspberrypi.inc
> >>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c
> >>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
> >>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
> >>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" != "xuImage" ;
> >>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader
> >>      trailer to kernel image to enable DeviceTree support -
> >>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
> >>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
> >>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
> >>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
> >>
> >> Back alive. testing this.
> >>
> >> --
> >> Andrei Gherzan
> >>
> >>
> >>    Hi,
> >>    I think we should use the older patchset from Maciej Borzecki (that
> >>    solves this and some other minor stuffs) instead. It also keeps the
> >>    rpi-mkimage structure:
> >>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271.
> >>    html
> >>    BR Petter
> >>
> >>    Very good catch Petter. I'll test that PR.
> >
> > Merged the patch set sent by Maciej. Which covers this patch too.
> > Thanks,
> >
> > --
> > Andrei Gherzan
>
> Note that Maciej's patch doesn't really preserve the path on older
> branches like you expect.
>
> On master branch:
> ${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage
>
> On daisy branch:
> ${libexecdir}/rpi-mkimage expands to /usr/lib/rpi-mkimage/rpi-mkimage

This is a very good catch. But for now this patch is not in daisy it is only in
master which is supposed to work with poky master. I do understand your
concern. And I think it is the same thing on jethro too. So you propose relying
on STAGING_LIBEXECDIR_NATIVE and let it append or not BPN?

--
Andrei Gherzan

