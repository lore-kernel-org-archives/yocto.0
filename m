Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 298E2E004EB; Wed, 30 Apr 2014 01:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D54E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 01:15:07 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id rd18so1535582iec.1
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 01:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=KpI9zY6Wqt9nMJVIEmGt0OjUjPTzFLjGBwYsDaquamE=;
	b=R+k8EeWgpGWOaECtyzes4p34hF9ffbjUKdMbA/if0tcdM+QZz3T8OArTSIGSPGX/zb
	HtsmSQxxygV+XRgWIZr8t/td3MQfpkZaEWFPcgeE3Tdc0/s01L0l9JefzBLwI2p9/jSO
	Yc+KPuYdqbWisZBpeW4pKJ+QD0PvYS9xLqdE4mfHu/aJWlmgbRee+urZ5eJSliKyutQ9
	iyCS2xVxbMREIqHsTGIf8FY6GHJoE4koTn4W/Hp2dR1yqVQZrUMGaLfoQ6mCb6ZB3Xkc
	umjXhwSr0lbHmb2rnFfwPk6PKt/UG2DErxubE4aYYfbsj8VISNHIkO8JpwAYPy2NRBmm
	hM9w==
X-Received: by 10.50.60.72 with SMTP id f8mr36327249igr.20.1398845700065; Wed,
	30 Apr 2014 01:15:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Wed, 30 Apr 2014 01:14:29 -0700 (PDT)
In-Reply-To: <OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Apr 2014 01:14:29 -0700
Message-ID: <CAMKF1soDsZyB1mUg7pJ89XYowMQeNvvtRtcyDuFBmEumfY9E3A@mail.gmail.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Wed, 30 Apr 2014 08:15:10 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 29, 2014 at 4:37 AM, Felix01 Fischer <felix01.fischer@iav.de> wrote:
> But still I haven't figured out how to get this build correctly so qtbase
> can find and use it.

I am assuming you need to select this user land recipe to provide
virtual/libgles2 virtual/egl

PREFERRED_PROVIDER_virtual/egl = "userland"
PREFERRED_PROVIDER_virtual/libgres2 = "user land"

in config metadata

