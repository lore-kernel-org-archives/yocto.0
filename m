Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1403EE012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 04:45:35 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id l6so5001641vcl.17
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 04:45:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=NAyNk/TiENy+x1y9mR6x9qIE07BM0DYoa5osHzgCbyM=;
	b=Qw8hIeLXohGvSGRekClNyKDXlbsBvP8uZk++tmUxwZpE6JxadTbYe2t6OKvezVqFib
	ocTxU62BlOMvHV2qLdmYc7n1PYSRKjIL+1rsE/FCDV7jvb8buNBaRTDeMoVQXEH6nzBa
	n14nizR+5ed654pRmeTTELuQ/0Ila5oV/9i9+EQW44E9jOQyu76QutdfcQF9xdsSTXX/
	JPvPdlg4QdIDDhW2i+mLphgaktVfJ8Y3qxnqB4YjXFulIrPGIPHF4Aw9FOsmiOdFYyB7
	kq3wn5Juo/1ZWqCdc8nhdgvKs6V6RgwTvdgxcT0Z3Or38Tc4QIH1MJOJmkIAyhD97YCe
	coWA==
X-Received: by 10.52.24.98 with SMTP id t2mr22306768vdf.69.1361364334964; Wed,
	20 Feb 2013 04:45:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.85.36 with HTTP; Wed, 20 Feb 2013 04:45:14 -0800 (PST)
In-Reply-To: <1361362051-13103-1-git-send-email-jukka.rissanen@linux.intel.com>
References: <1361362051-13103-1-git-send-email-jukka.rissanen@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Feb 2013 12:45:14 +0000
Message-ID: <CAJTo0LaQ20LU_qWN_CmnD6+Y9-oCuQq4ohmSR-ptZqD4wodqfA@mail.gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
X-Gm-Message-State: ALoCoQmBSpJhw9S1ioXJslKdTZb60Sbkds6bFgp9kdqvwlYZIpusj0fsr4k7bVpXLC5E8+JqmNJQ
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta: Search also FILESEXTRAPATHS for systemd service files
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
X-List-Received-Date: Wed, 20 Feb 2013 12:45:36 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

First, mails that patch oe-core should be sent to the oe-core list,
not yocto@ (which is more of a support channel).

Second this patch won't do what you expect - when you find a file in
FILESEXTRAPATHS it isn't being installed, so it won't be in the
package.

I intentionally removed code that did something similar from the
original systemd.bbclass as generally a service file will have to be
processed in some way to put the right paths in: hardcoding
/usr/sbin/some-daemon isn't sufficient when the distribution can
change the value of $sbindir.

Ross

