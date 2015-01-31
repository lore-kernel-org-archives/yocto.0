Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF7B9E00873; Fri, 30 Jan 2015 16:35:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.8 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AEF4E00546
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 16:35:17 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id y19so29612395wgg.11
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 16:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=ZaHeMiZ0RwCBfzj8ce7RfkT9RLoXEH38ARZdclEMdjA=;
	b=O5L5x0B1EURkTqCVp7KQPAg//zhx0hv3ju2tHCN4WFK1OzDJ+IbaLSTFIiQ0g6VhpF
	+ZsEABhxlK1j7oDmsKkeqg/18l7FF0G7KFkBg9aNuSblqLYE0OZ5irbQaOXNWTb255xU
	swOhOyUXJU1n22iOiyIK1jmNREN+74JaVAKUBU4kNgQ0KkCfw9uk30I/DH2M1sbtQ0bq
	/WUxgx0rjlxCP9q7etCSPvp5BWCa7S+rGf88aMEn/hVan5BFPM9YwRQyy/aHWtyI9ECi
	dmBLHa9DkYaIjPBULDY395b8fpg/Xddcwrk2isEz/KwpRAG0qzQF3gWrlEI3bYU7arP3
	6VCA==
X-Gm-Message-State: ALoCoQnOPYy0QdY9aAuKk/GGqgT/JFILU3/Vy0sXHk9BOKuzVi0aT7TtkmvkptMDRMfiKEL2YJuz
X-Received: by 10.194.179.166 with SMTP id dh6mr17491553wjc.87.1422664516419; 
	Fri, 30 Jan 2015 16:35:16 -0800 (PST)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id l6sm17073192wjx.33.2015.01.30.16.35.15
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 30 Jan 2015 16:35:15 -0800 (PST)
Date: Sat, 31 Jan 2015 02:35:09 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Yen-Chin Lee <coldnew.tw@gmail.com>
Message-ID: <20150131003509.GA9471@gmail.com>
References: <1422340015-44159-1-git-send-email-coldnew.tw@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1422340015-44159-1-git-send-email-coldnew.tw@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [oe] [meta-raspberrypi][PATCH v2] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Sat, 31 Jan 2015 00:35:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Tue, Jan 27, 2015 at 02:26:55PM +0800, Yen-Chin Lee wrote:
> To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
> indicate device config.
>
> Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
> ---
>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>
> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> new file mode 100644
> index 0000000..384df9f
> --- /dev/null
> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +QT_CONFIG_FLAGS_append_raspberrypi = " \
> +    -device linux-rasp-pi-g++ \
> +    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
> +    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
> +"
> --
> 1.9.3 (Apple Git-50)
>
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

First of all please send patches to meta-raspberrypi mailing list (yocto).
Use README for additional information.

For whatever reason I can't bake qtbase:
pulse/pulseaudio.h: No such file or directory
|  #include <pulse/pulseaudio.h>
|                               ^
| compilation terminated.
| Makefile:206: recipe for target 'pulseaudio.o' failed
| make: *** [pulseaudio.o] Error 1
| PulseAudio disabled.
| PulseAudio support cannot be enabled due to functionality tests!

Any idea why? Didn't you encounter this issue?

--
Andrei Gherzan

