Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E34E01531
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 00:32:35 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id y10so2335916wgg.2
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2013 00:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:message-id:in-reply-to:references:subject
	:x-mailer:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=eb1MewFE2DewXItC7lVvzVaaA+CcnXzdHma46rrveWo=;
	b=PbHEmzVWg+kFuN1fztxbvPFKMjieisjv/XL2diLEpflBmp+7V95yYBWLOZAEaTIv7Y
	Jw9NCdXtfe10kcRSkmOCFBIQiS3egibXgJWg5gy1GMTPJgf3soetC/67k88GxYfNHjV0
	6h0n8Nw4kzxM5X5lactDCDHC6ApTADG9FWM0v8JCDUHAkLjY9tmGNTueV3Pl3leXV/Nm
	cKbgSWGpMYZLgdRPEQ/9obWoKXLX2pmJRoPmqlbH3EKR83gKMPOtfzO94LftnB5UAvDq
	CdgyqYL4WEix0r3CCGtjrFz/NkRhHllWhJywXhxvfEO9zDFde/CJBUFjE0a7lJQ6ThkX
	iC7w==
X-Received: by 10.180.90.41 with SMTP id bt9mr7355937wib.19.1365060754784;
	Thu, 04 Apr 2013 00:32:34 -0700 (PDT)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id du2sm29335270wib.0.2013.04.04.00.32.33
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 04 Apr 2013 00:32:33 -0700 (PDT)
Date: Thu, 4 Apr 2013 08:32:32 +0100
From: Ross Burton <ross.burton@intel.com>
To: Edward Vidal <vidal.develone@gmail.com>, Yocto Discussion Mailing
	List <yocto@yoctoproject.org>
Message-ID: <A0E0EE7AB60D45DA833F650A74769040@intel.com>
In-Reply-To: <CANwz6nz0XA6_h6TmfbHChStyO7U7DFic1gijPEaOboDtr9saeA@mail.gmail.com>
References: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
	<CAJTo0LbgxU7X7+bkEmMTLyRBGX+RQQYzgnzXQ2yk5o74cgogug@mail.gmail.com>
	<CANwz6nz0XA6_h6TmfbHChStyO7U7DFic1gijPEaOboDtr9saeA@mail.gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlSeuYKCgv7MdWUzgsSAixiNZ1ok9qM8DvOH5Wb8mLvgWJgJJvR6Hc6fXaBaJDa79YqkKdN
Subject: Re: boost & qt-mobility-x11 added to core-image-sato
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
X-List-Received-Date: Thu, 04 Apr 2013 07:32:36 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Please remember to ensure the list is included in your replies, i.e. reply to all not reply to sender. 

On Wednesday, 3 April 2013 at 23:47, Edward Vidal wrote: 
> Hello,
> I first want to thank Ross and Paul for pointing me in the direction of dev-manual. I was looking in the ref-manual this explains several things. 
> This is what I created.
> core-image-sato-sdk-ex.bb (http://core-image-sato-sdk-ex.bb)
> require core-image-sato.bb (http://core-image-sato.bb)
> 
> DESCRIPTION = "Image with Sato support that includes everything within \
> core-image-sato plus meta-toolchain, development headers and libraries to \
> form a standalone SDK."
> 
> IMAGE_FEATURES += "dev-pkgs tools-sdk qt4-pkgs \
> tools-debug eclipse-debug tools-profile tools-testapps debug-tweaks ssh-server-openssh "
> 
> IMAGE_INSTALL += "kernel-dev boost qt-mobility-x11"
> Currently running MACHINE=beaglebone bitbake core-image-sato-sdk-ex -vDD.
> It appears that boost and qt-mobility will be added.
> 
> If you want this in the meta-toolchain-sdk then you must create a custom image for this as well correct?
> Once again thanks

Using bitbake core-image-sato-sdk-ex -c populate_sdk should generate a standalone SDK based on your image, if I've understood correctly.

Ross

