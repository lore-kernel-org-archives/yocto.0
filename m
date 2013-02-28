Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D1DACE002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:46:55 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id fl17so1346318vcb.13
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:46:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type:x-gm-message-state;
	bh=cwTIsOTIojaOYXiWletiLbfWjpXd3+dYjGwgdqbZlA4=;
	b=L0RLaP6nF0C543rcIxArj1t8CUsnv7+adLct553kwpT3i1Ujgbf/nHcyfNK4sseI/t
	5gxCjJvEaHw77/UOfIJdSQKBhSg5Nt484Cd5JsTAWenQnbXzg41bV7cmAsasKB4oZz+u
	ikpLzAGysdfdKG9lUFqsuA8MGmZZ9G7civ+FyHJgfFlmDt6IVHqU7sfv65v1f5rDkRHE
	BYFb7G+WrDWG+nx+Rqb7OhvWPTnyIEJztALuZqw58rHmOIkwS+OOhDU7xNcUmUih/tuE
	D2AS7oqnFp1nIHrrhGIxzoZoP+TzxaKT78N6A3zdqyxNzWUQf6IDO72HoQt6ZfxR+Wo5
	gDYg==
X-Received: by 10.58.132.170 with SMTP id ov10mr2771502veb.57.1362070014739;
	Thu, 28 Feb 2013 08:46:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Thu, 28 Feb 2013 08:46:34 -0800 (PST)
In-Reply-To: <20130228163505.GA31421@sakrah.homelinux.org>
References: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
	<20130228163505.GA31421@sakrah.homelinux.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Feb 2013 16:46:34 +0000
Message-ID: <CAJTo0LafLjCqsGsZVe-_vBcfx2fyp+x24Kp+Ezy7NqZ3SSK+ig@mail.gmail.com>
To: "Tim O'Callaghan" <tocallaghan@meyn.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmSItPnmn96MY2wFBEVr9kXjd+UtRQt4P9rax2J9iOsTfQbAuMfvq0ub5z6zPUv8p6dzXIW
Subject: Re: Build Flavors help.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Feb 2013 16:46:56 -0000
Content-Type: text/plain; charset=UTF-8

On 28 February 2013 16:35, Khem Raj <raj.khem@gmail.com> wrote:
> there is ROOTFS_POSTPROCESS_COMMAND for tweaking images after the fact.
> Take a look at core-image.bbclass you still would need 30 image recipes
> though, another thing you could try is bundle all splash images into
> one package and _somehow_ use the right one when booting the image on
> a given device.

Or eg one splash recipe that generates 30 packages, assuming you can
identify which one you want at image construction time in some way.

Ross

