Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B52E008C9; Thu, 20 Nov 2014 03:58:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14DFBE0087D
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 03:58:27 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so8414205wiv.12
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 03:58:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=7F6PdmBO+5/RN/7zlIet9OhvS6/EYHAXy1nk27wQdnk=;
	b=BHdzM1ZqURs5GPrRlmCD+gdtvmtAe5Pnq9wZVzd9nvSIAbBCGkdtmpC3NdDDOZxSLf
	bIZJ64jH9TKB9XyXaQ8Ks5j2L1EidTFn61rFxBOJDuFrwCZTrFQIpuEvgiiTgLwbooaw
	sNmYuGurNmediBIqilPm+B5dVeFjkPo41qp3P/NvzDsh6v+m6Ar7fAaeZCTB0pYquMpI
	3voIpP6P9+iDrDRqd0LCyQhxVFgmeCNKkfGjEV/xWsbWbfYXuS3zo6aOj1GjolwNOxUH
	cXMYKl8PaZvatSaCos1FtDp96uAfxjU4U63PyYoUMWbZqTbH/ZHW5m4O4+LbxGCnlV63
	XKPg==
X-Gm-Message-State: ALoCoQnReAagP2R1NJ6X8KqLsmtDRP3yd0/QtNRPuEM/ubEwIAtmHpqI+2NPJWTNPJjmwmS1ZBMV
X-Received: by 10.180.11.65 with SMTP id o1mr15024115wib.22.1416484706901;
	Thu, 20 Nov 2014 03:58:26 -0800 (PST)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id pu3sm3070583wjc.14.2014.11.20.03.58.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Nov 2014 03:58:26 -0800 (PST)
Date: Thu, 20 Nov 2014 12:58:17 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Yen-Chin Lee <coldnew.tw@gmail.com>
Message-ID: <20141120115817.GA24610@gmail.com>
References: <1414203707-21296-1-git-send-email-coldnew.tw@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1414203707-21296-1-git-send-email-coldnew.tw@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Thu, 20 Nov 2014 11:58:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Yen,

On Sat, Oct 25, 2014 at 10:21:47AM +0800, Yen-Chin Lee wrote:
> To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
> indicate device config.
>
> Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
> ---
>  recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>
> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
> new file mode 100644
> index 0000000..c994cf5
> --- /dev/null
> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +QT_CONFIG_FLAGS += " \
> +    -device linux-rasp-pi-g++ \
> +    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
> +    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
> +"

If we add this append we need to change the layer dependencies and probably add
this package to the test image too. But maybe we can avoid this by using a
separate layer specific directory as meta-fsl-arm does with qt5-layer.

Check https://github.com/Freescale/meta-fsl-arm and
https://github.com/Freescale/meta-fsl-arm/blob/master/conf/layer.conf

P.S.: Sorry for this very late reply but I had a very busy period lately.
Thanks for understanding.
--
Andrei Gherzan

