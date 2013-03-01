Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0E056E014A6
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 15:56:52 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id p16so2342480vcq.15
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 15:56:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=twX5GX4Mk3bNStsOX7NNMqJqfvB2HSd8EJ6FXfu8Nro=;
	b=QuVz8RxascE9tw2k/s+AM9ZaVOV4BaeImA8KJYtrNdNpRQo/TMOzet4/lcmf9shJBa
	3VHPzqmsC0/mNQhBy93/pUWmcl0x004aNXETBejZH5VVq9/Xo4NwHbjJzOQt6KLJjcOd
	7kZX3Botd98swlTSyQ1h8uiAezvLhBWMVv91nJv63fpHTBIhv+IsKdVIuMoYDYUxF0n8
	YKmBmZ/40YoxB0kSlXr+ciXPLzTeeNsE/l8XECgpqY1RFMh77aPbm2YYbA0I4WMFm1M7
	yIBHKDqRE3u6qO+LKzblVnX63Hf87wd5J51HV7COarKBmmqnztN4AQ4zjFTnM3ddGrBQ
	2vfA==
X-Received: by 10.220.156.75 with SMTP id v11mr4741175vcw.1.1362182212153;
	Fri, 01 Mar 2013 15:56:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Fri, 1 Mar 2013 15:56:32 -0800 (PST)
In-Reply-To: <20130301233255.GW3279@jama>
References: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
	<20130301215324.GU3279@jama>
	<CAJTo0LZuw_va=yjLyRZ=mWCNMVDvwe0_fYB23ckbvuZ=irgqaA@mail.gmail.com>
	<20130301233255.GW3279@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Mar 2013 23:56:32 +0000
Message-ID: <CAJTo0LZYoqF++Sw+S1fbaeO-gAm6k9bXJ5gZr2CuTJb3sBvdYg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQnXbpvxjsjydvCVAUDGXwrqZE935/XVc+PtvsvYNTzGaoI9QCFOs1q8UTgF+QK4XV2LsmBh
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project 1.4 M4 release readiness discussion
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
X-List-Received-Date: Fri, 01 Mar 2013 23:56:53 -0000
Content-Type: text/plain; charset=UTF-8

On 1 March 2013 23:32, Martin Jansa <martin.jansa@gmail.com> wrote:
> Can you answer this
> http://lists.linuxtogo.org/pipermail/openembedded-core/2013-February/036223.html
> and how this solution helps with upgrade paths?

Having split packages can break the upgrade path - say your distro
goes from sysvinit to sysvinit rescue + systemd main.  How does your
foo-daemon package get the right init script package on upgrade?

I proposed a solution for distributions that care - inject the
migration path dependencies though meta-systemd.  I still maintain
that oe-core shouldn't have to bend over backwards to maintain
compatibility with every recipe that migrates.  Obviously we don't
want to deliberately break where we have a choice but equally so

> Coding was contributed to meta-systemd which was working fine for both
> use-cases. Maybe explaining hidden benefits of not splitted packages
> would motivate some people..

The advantage of having init scripts in the daemon package is
simplicity.  For the cost of two init scripts (what, 1K between them?)
you remove lots of complexity, including the upgrade path breakage I
described above.

Ross

