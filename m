Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58864E0078E; Thu, 24 Jul 2014 00:17:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F77EE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:17:13 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id v10so2454054qac.40
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:17:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=P54OQB1iy0JRXrUe0rYgfS5HFRrXb/RZ1Sgu3sxv7JU=;
	b=bLAAYfL344WOHqkf/9V0fEJM2HeSbtahoIkBJ+eGpicwc5zS8ZUOc4je1RMw3s3QWy
	axUI6mZNPebLGtAnM7lkxDGGgcDL3BpWSUA+O48kOHtJyvZvyLD+FQ2w348Y79MhXNgN
	KH+PViYJpvZC4zbgthbYjvpLpz2B8lVXojG/VB7z24zZ8Xbby3p/JctKg12QXGZFwU29
	lQKKF33Et2AxBV5o74+sEWdKRIeO1cjl60OVXhl8dYzlt63KNm73BLv4PI2eFdnjadZW
	D7dDjlgaxHDaVTQF4EPoZjTUAJqpU2479jXqSLRvLDVsuQwn66b8UP/nITVCnGXU6eem
	Hk/g==
X-Gm-Message-State: ALoCoQkv7aITg/fuGhBo01FVLtg6VrTXdjeQr/gdIPnZ+QcxMhm34S8+ntwLkeqs5kdB8Anmh1eH
X-Received: by 10.224.43.77 with SMTP id v13mr11454009qae.34.1406186232080;
	Thu, 24 Jul 2014 00:17:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Thu, 24 Jul 2014 00:16:52 -0700 (PDT)
In-Reply-To: <loom.20140724T085712-749@post.gmane.org>
References: <loom.20140724T085712-749@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jul 2014 08:16:52 +0100
Message-ID: <CAJTo0La0Gt-WarVLGDrbE67KD23AK-U9eR4pG1vAGpjNc5CxQQ@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for elfutils-native
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
X-List-Received-Date: Thu, 24 Jul 2014 07:17:19 -0000
Content-Type: text/plain; charset=UTF-8

On 24 July 2014 08:05, Anoop <babu.anoop@gmail.com> wrote:
> Patch redhat-portability.diff does not apply (enforce with -f)

Please update your poky, this has been fixed already and the
meta-tizen fork of Poky has already integrated this fix.

(poky commit 52a6d20519870103134166d91e22d21fd736195d)

Ross

