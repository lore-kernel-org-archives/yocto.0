Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9667E00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 14:02:29 -0700 (PDT)
Received: from mail-we0-f180.google.com ([74.125.82.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 16 Jul 2012 14:02:28 -0700
Received: by weyt11 with SMTP id t11so2995840wey.25
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 14:02:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=2rmhH+I2Md1D4CxDtmTv5kS1GKILgVu+QUwg3D4l+GA=;
	b=g3pVyj/5bXARXib3CFsWcmlAwKPg0qhHxBsRKDQGx2b+HzqcN+1P9ExbI4lCI1D64S
	tgcQGGN7q5lq3P24SKoNIPN8hb0E4bEKHYSKzqa2yas0YIWPhwebWc0548yXX3IJS/1d
	gwDyiwQK+pmKE442p6dcKbN6u7TjjTSslPt+lRWknqfuQ1IP58Z6CRukj/sKNUQ6pgK6
	As1hge33nM7RBFYgy+FGdLJuoeZOBhOYltD1gHlG0P2Xj3700VPeyrTxgvzm3LS3qAUD
	SrRGC+UUqa73zx6iVyf9PIYzQz2X0PlGNBc9YVwWmQLLEikYInSnO0UavyJhg/VIUUiP
	u1TQ==
Received: by 10.217.3.209 with SMTP id r59mr6297158wes.108.1342472547209;
	Mon, 16 Jul 2012 14:02:27 -0700 (PDT)
Received: from [192.168.1.12] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fr4sm34453392wib.8.2012.07.16.14.02.25
	(version=SSLv3 cipher=OTHER); Mon, 16 Jul 2012 14:02:26 -0700 (PDT)
Date: Mon, 16 Jul 2012 22:02:23 +0100
From: Ross Burton <ross.burton@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <2B3B77214A4B4B52B5556E9ED70FA3F7@intel.com>
In-Reply-To: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
References: <4C00373C-A571-4194-A3CF-28B349430E53@keylevel.com>
X-Mailer: sparrow 1.6.2 (build 1143.6)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnl3oRWEyJYnbt1kYI36mqeoVyiDrmKc0quDsZFt8nnZdT66eDUQg6iz7slYcWw5UoKI+Ch
Cc: "=?utf-8?Q?yocto=40yoctoproject.org_Project?=" <yocto@yoctoproject.org>
Subject: Re: Is it just me? Can't get 'Atom-PC' to boot.
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
X-List-Received-Date: Mon, 16 Jul 2012 21:02:29 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Monday, 16 July 2012 at 21:25, Chris Tapp wrote:
> I've built the 'atom-pc' kernel as follows:
> 
> 1) git clone git://git.yoctoproject.org/poky.git (http://git.yoctoproject.org/poky.git)
> 2) git checkout denzil
> 3) source poky/oe-init-build-env work-area
> 4) Edit local.conf so that threads/parallel make are both 16 and MACHINE is 'atom-pc'
> 8) bitbake virtual/kernel.
> 
> However, the kernel that gets produced fails to boot. All I get is a screen full of random characters and nothing comes out of the serial port (configured for kernel messages). I don't get any 'Loading...' or 'Uncompressing...' messages either. Using a kernel image from else where (e.g. Voyage Linux) works as expected.
> 
> What do I need to do differently to get the above to build a bootable image? I'm assuming that 'atom-pc' works for others?
How are you actually booting the kernel?  I frequently boot the generated hddimg when written to a USB stick on my Zotac box, but it's well known that PC hardware is a nightmare to boot reliably... 

Ross

