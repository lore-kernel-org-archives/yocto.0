Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FA1AE00B6F; Sat, 27 Feb 2016 05:05:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15B7E009D7
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:05:33 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id g62so103230204wme.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 05:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=7Pz1kRyY7RgMvw81bSqMVUOMJzQZpmiSvlml5SEdxGM=;
	b=moAta6GDw5bXh8BRdmm2xl5IFUGGE6tjpdy4jvt2xJpxB6iFYar/4T5dxHyzYkBM+2
	jNCihE9EjzcfnzWGjvqxnnbU895li8yINMpS3k6ocISTOdeEMLXcKXYxokpEP1ZxDiMh
	j7tJePOdZwnlpeRYf9hhOSLMffDgCB4qUZXhW1k1zvyEFlHq0/uF4ihsJ8JXP0vU/4cM
	CY2sqM+dhlMbqAJwjcxvMW4nPMPeYbyEuEyYJ4fD+UPQnh2+XzyDgEc7QFjyYR3OhHTW
	ZmDDvfkiqBhnzEElcWBdElVEZItU0VRHC0b7d7LJOl78BUZSH8QizD4GklSOxJeJwmC/
	Pq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=7Pz1kRyY7RgMvw81bSqMVUOMJzQZpmiSvlml5SEdxGM=;
	b=RWwD1ZhbZSsQgd1Dtu0eJxF7mcEnBzaBuOEH5uhTecEe4G+xeZR3+mBMM7vWuqsddD
	eSdcbB29u1nr1ugWRxRGDTx9xjq5HTvhWAuWyKm91TvVKqZ7FVuf2Gze+EiW35q+rV2C
	b2kZvIelinl3OVoVAkSLoYFr5KbFZNWsxI1FiJvkvO2Z+qwXXUwLCydXraBzAOVA9Oir
	b4G5bV/FXZtMgJ+Iux2eK+bv/pXplkhob0OIVRgC/CqwMDTFyzCRktPNxJFYVz2OxZ7M
	iYRj6MU/9WMWTSowusYwi/ldxbMFcMR3IvepLDDKTK7/SzRbGg4NIkVDgfk+dwtaISUs
	pudA==
X-Gm-Message-State: AD7BkJI7I6iTM3AoQyQrFPX2NrASdUdG6elP2Ky7lvFVyWxS/IEUDfwoFSuwK7cqidjVDA==
X-Received: by 10.28.229.132 with SMTP id c126mr2711471wmh.72.1456578332342;
	Sat, 27 Feb 2016 05:05:32 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id b5sm7089828wmh.15.2016.02.27.05.05.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 27 Feb 2016 05:05:31 -0800 (PST)
Date: Sat, 27 Feb 2016 14:05:29 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160227130529.GD28071@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
	<CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
	<20160226212038.GA28071@resin.home>
	<CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
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
X-List-Received-Date: Sat, 27 Feb 2016 13:05:35 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sat, Feb 27, 2016 at 11:25:28PM +1100, Jonathan Liu wrote:
> On 27 February 2016 at 23:21, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Sat, Feb 27, 2016 at 08:03:10AM +1100, Jonathan Liu wrote:
> >> On 27 February 2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> > On Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote:
> >> >>    --
> >> >>    Andrei Gherzan
> >> >>    On Fri, Feb 26, 2016 at 6:48 PM, Petter Mabäcker
> >> >>    <[1]petter@technux.se> wrote:
> >> >>
> >> >>    2016-02-26 18:14 skrev Andrei Gherzan:
> >> >>
> >> >> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
> >> >>
> >> >>      The path had libexecdir hardcoded so it was no longer correct when
> >> >>      libexecdir was changed in meta/conf/bitbake.conf from
> >> >>      ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk recipes.
> >> >>      Fixes "No such file or directory" error when executing
> >> >>      do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
> >> >>      <[2]net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.inc
> >> >>      | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
> >> >>      a/recipes-kernel/linux/linux-raspberrypi.inc
> >> >>      b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c
> >> >>      100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
> >> >>      b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
> >> >>      do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" != "xuImage" ;
> >> >>      then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader
> >> >>      trailer to kernel image to enable DeviceTree support -
> >> >>      ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
> >> >>      ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
> >> >>      ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
> >> >>      ${KERNEL_OUTPUT} fi fi } -- 2.7.1
> >> >>
> >> >> Back alive. testing this.
> >> >>
> >> >> --
> >> >> Andrei Gherzan
> >> >>
> >> >>
> >> >>    Hi,
> >> >>    I think we should use the older patchset from Maciej Borzecki (that
> >> >>    solves this and some other minor stuffs) instead. It also keeps the
> >> >>    rpi-mkimage structure:
> >> >>    [3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271.
> >> >>    html
> >> >>    BR Petter
> >> >>
> >> >>    Very good catch Petter. I'll test that PR.
> >> >
> >> > Merged the patch set sent by Maciej. Which covers this patch too.
> >> > Thanks,
> >> >
> >> > --
> >> > Andrei Gherzan
> >>
> >> Note that Maciej's patch doesn't really preserve the path on older
> >> branches like you expect.
> >>
> >> On master branch:
> >> ${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage
> >>
> >> On daisy branch:
> >> ${libexecdir}/rpi-mkimage expands to /usr/lib/rpi-mkimage/rpi-mkimage
> >
> > This is a very good catch. But for now this patch is not in daisy it is only in
> > master which is supposed to work with poky master. I do understand your
> > concern. And I think it is the same thing on jethro too. So you propose relying
> > on STAGING_LIBEXECDIR_NATIVE and let it append or not BPN?
> >
> > --
> > Andrei Gherzan
>
> I propose my patch instead which has the following behavior and goes
> along with the libexecdir change rather than trying to go against it.
>
> My patch has the following paths for mkknlimg.
>
> daisy:
> [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
> which matches the previous hardcoded path before the patch so the path
> doesn't change with the patch for older branches
>
> master:
> [...]/sysroots/x86_64-linux/usr/libexec/mkknlimg
>
> You can then do something similar for U-Boot.

Indeed I agree and sounds good. One problem though - I merged the Maciej's
patches.  Would you be able to patch current master and adapt your patch on it?
If not I'll try to do it this weekend. Thanks a lot.

--
Andrei Gherzan

