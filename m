Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD6BE008F6; Thu, 22 Jan 2015 00:41:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5482CE0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:41:07 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id va2so294498obc.2
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:41:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PVmPrRqO5rBS0oxIm+UWcljFRq8E/RpFzOdvGfOEF2c=;
	b=KZM4KwX3K3B6Dx10VCH8aw+gJ9s4O67o7/IpUY5z4teAsYdVqxuoCsjqtpJo3/wLZ6
	l4pc0JWpQQ79bbB2AOIlqR/Har/0IU8w3wiinbtjF+PTA2LycY3Q6OtdlEzO7QFoJ8q1
	yo19idfhds92D1Ib5bRBULTu4SloCjb+teaxXNht1tgEQr3cOuoCDamFjEU1wvtvt5jQ
	TMdM/48wKGX98+NTI1xe0eipI8DLe9W6tPrV1cVtp50LVG+bWZIJ2eSCWzVKbkG7wYeT
	5mFjGS/TXX1EGI/+7DAyafnPt/VDIGykLjopbIuiaJBO0otbV4PPxinSj6fMENuaGUxN
	YaBw==
X-Gm-Message-State: ALoCoQlq5ytqYIW81GZEJ2Mv/eqD+dwRoLpB2Pxok4uLjqYNS+mSU0KtlsmRuzC6Tmgd+vezZ/Fi
X-Received: by 10.60.145.167 with SMTP id sv7mr175450oeb.38.1421916067102;
	Thu, 22 Jan 2015 00:41:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.79.1 with HTTP; Thu, 22 Jan 2015 00:40:46 -0800 (PST)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522763E2A4@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
	<CAP71Wjw4VgvQH0rZt6q7BmG_Gs5MFO8+KeB87=VeTCt3E2xvGw@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E2A4@USSTLZ-PMSG012.emrsn.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 22 Jan 2015 09:40:46 +0100
Message-ID: <CAP71WjwcAye27jhr8KiE43PHf0_ZT5jbCBTdwJ3MhiFJikuv0w@mail.gmail.com>
To: Neil.Wu@emerson.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: The problem of do_rootfs_append
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
X-List-Received-Date: Thu, 22 Jan 2015 08:41:22 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 22, 2015 at 9:31 AM,  <Neil.Wu@emerson.com> wrote:
> Thank you for your reply.
> But I found that there are others use do_rootfs_append() when searching on the Internet.
> If I want to remove the directory in do_rootfs() task, how can I to do it ?

do_rootfs was a Shell function in the past, it was changed to Python
last year or so.

if you want to post process an image, you can use
IMAGE_POSTPROCESS_COMMAND variable and add your own functions there.

cheers

