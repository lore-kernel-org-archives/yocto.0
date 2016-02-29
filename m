Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B60E0090E; Mon, 29 Feb 2016 13:16:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B45E00872
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:16:15 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id l68so8167384wml.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=imy09wzHDV0kQssraMJRGW74JgP7C5Dt3MBxxG8QQs8=;
	b=tmhD9IcETqLKZUrxQJMBohJddEAeO/NN5zt7l7n2wM0lbwnmHn7SDrLSviH6auzcI1
	IWkJ/MtgLl3UCLHPL2kcAWMwtQ63HbnUDQ/c9lYsNE5/4nrZPV0csR4OUH+Iqcd14PVo
	OhMqkbvzM6ua4UIybXcP2/D0xgGzfndj2YaeHCGtgVdD2Gw9WoE6x5a53dB8ddzlcwao
	kk8FKfdjUZjtvDPCwZQXNi6A8KsgiJI9avBiqZqk7s2vctuqS11TrvOiAsx4CIr2FalM
	QsWmysAUMowIpSdK7YD2r08qqQEwSYGNr0ysyDzsVcjGb2QDEDtwWXhce7eZSDAYyqFX
	0T+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=imy09wzHDV0kQssraMJRGW74JgP7C5Dt3MBxxG8QQs8=;
	b=G4hTTeNGzxZ81mG37l3wXG5fHPunh8+uRVLcclrsmNMRzFhVEdfq4B0qlsW6Lcv3Oy
	LAyqPhFoogAXIPJv/wPH28fOzvDGCvZ/PgqCH6vmzZ3JeQ9XQjpW75I5FwSIt0tBP7T1
	y5mqCLn7u0MYJ+PE6Ay5vjKFWzYgxtFejVsiXA9vwyxiuo9y6Lc9o9M2fY0MDK9PG7fj
	LkQ7byjxJlGynE8tJ16euvqe2DeWYB9rduarqq/kNdRvEYeza5khCWk943ELc5u0ObWg
	+X1NlW10XSJSCGVCicyd5QFQGC50UW3PkBk1LoSYSYfu8ySZAWsW4/L7MIYJ5INnJbl4
	k4ug==
X-Gm-Message-State: AD7BkJJHwMq2xUQT/jq1RgCDaDUUjygQpYT305z4M7Wb2fOR1Hah92kQRBJ962PYAlUDQg==
X-Received: by 10.194.61.209 with SMTP id s17mr16626541wjr.35.1456780574326;
	Mon, 29 Feb 2016 13:16:14 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	p125sm18196288wmd.16.2016.02.29.13.16.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:16:12 -0800 (PST)
Date: Mon, 29 Feb 2016 22:16:10 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160229211610.GB2087@resin.home>
References: <1456660116-15810-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1456660116-15810-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: =?iso-8859-1?Q?St=E9phane?= Cerveau <voxtok@voxtok.com>,
	=?iso-8859-1?Q?St=E9phane?= Cerveau <scerveau@voxtok.com>
Subject: Re: [meta-raspberrypi][PATCH v4 1/2] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Mon, 29 Feb 2016 21:16:18 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 12:48:35PM +0100, Andrei Gherzan wrote:
> From: Stéphane Cerveau <scerveau@voxtok.com>
>
> append initramfs creation to install RPi bootloader trailer
>
> Signed-off-by: Stéphane Cerveau <voxtok@voxtok.com>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 8c7c46c..1befee4 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -64,4 +64,14 @@ do_rpiboot_mkimage() {
>          fi
>      fi
>  }
> +
> +do_bundle_initramfs_append() {
> +    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
> +        if test -n "${KERNEL_DEVICETREE}"; then
> +            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> +            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
> +        fi
> +    fi
> +}
> +
>  addtask rpiboot_mkimage before do_install after do_compile
> --
> 2.7.0
>

Merged both patches to master.

--
Andrei Gherzan

