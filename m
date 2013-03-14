Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91AEE01460
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 08:18:14 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m17so449624vca.25
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 08:18:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=HKmY6ftz1v+OqeKHQDWDkrsecnAcPxi1dW3muJEnqjE=;
	b=ojoktnzjAljn5/Z1F6jKnl0Wct+RFmT5ydHg4Lz9qZnU24opDt4ztC6qPScaaJR+d7
	UK+BuXreRRIoDWTmIlXSmNznnoun8ujsJgSwNjxOzSouyVM5ye2UQooduax4qpClX/7A
	yPnHk54qmNFsfagtiAG0MTKx+SDB39Xb6cGJq/v3IJkfWJpd4C6aJO/d8w3jtDwMgRGT
	PpxjB/lnqPWbfkSVH10axsCm6snBJad5MAJqtL8RXaTZmBlyNRoeyKnY9QbAF5VmA7hY
	Yt3IxHMb95LDRI/vY6B4PXN+CADFnu0WdlwpHjT3aNeLIpkzCU2WXa2GOt2Sw7DTt3ma
	kW9A==
X-Received: by 10.58.198.79 with SMTP id ja15mr2217049vec.15.1363274294037;
	Thu, 14 Mar 2013 08:18:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Thu, 14 Mar 2013 08:17:53 -0700 (PDT)
In-Reply-To: <khsp7a$p7f$1@ger.gmane.org>
References: <khsn0u$1gr$1@ger.gmane.org>
	<CAFyqS9pbxN3n7xKY+85gTyH=Q_VZMX3+buhw7xEK5DeXzopV6g@mail.gmail.com>
	<khsp7a$p7f$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Mar 2013 08:17:53 -0700
Message-ID: <CAJTo0LbmzHgstyKaFCiD0Wpr7Z2+Zu-vcw31qWXOJn_1qpd_yQ@mail.gmail.com>
To: Kurt Stevens <kurtmyles@gmail.com>
X-Gm-Message-State: ALoCoQl85kC+rca8QoFxwHkl3/HGjI+OFOM223kwW3opxE5Oc4yKOwifyawb3dzd3BjvXQepLjTK
Cc: yocto@yoctoproject.org
Subject: Re: Using meta-openembeded with yocto
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
X-List-Received-Date: Thu, 14 Mar 2013 15:18:15 -0000
Content-Type: text/plain; charset=UTF-8

On 14 March 2013 08:09, Kurt Stevens <kurtmyles@gmail.com> wrote:
> ERROR: ParseError at
> /home/kurt/yocto/poky-danny-8.0/meta-openembedded/meta-oe/recipes-support/maliit/maliit-framework_git.bb:7:
> Could not inherit file classes/gtk-immodules-cache.bbclass
> ERROR: Command execution failed: Exited with 1

You're running the master branch of meta-oe with the Danny release of
Poky - that's not going to work (because it's referring to files that
only exist in master oe-core/poky).  You'll need to checkout the
"danny" branch of meta-oe.

Ross

