Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2901E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:00:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLGxpTv011458;
	Wed, 21 Dec 2011 16:59:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10835-08; Wed, 21 Dec 2011 16:59:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLGxhSQ011452
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 21 Dec 2011 16:59:44 GMT
Message-ID: <1324486785.18348.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 21 Dec 2011 16:59:45 +0000
In-Reply-To: <3df5dff75aa30bfc19324795dc8496b8dbb0291a.1324458376.git.dvhart@linux.intel.com>
References: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
	<3df5dff75aa30bfc19324795dc8496b8dbb0291a.1324458376.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] fri2: Add linux-yocto-tiny bbappend
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
X-List-Received-Date: Wed, 21 Dec 2011 17:00:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-12-21 at 01:09 -0800, Darren Hart wrote:
> Provide a bbappend for linux-yocto-tiny with support EFI, SATA, and the EG20T.
> This includes EFI framebuffer and USB HID support which normally would be
> omitted from a tiny kernel, but it is our only functional console as the serial
> port is still non-functional.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  .../linux/linux-yocto-tiny/defconfig               |  613 ++++++++++++++++++++
>  .../linux/linux-yocto-tiny/eg20t.cfg               |   40 ++
>  .../linux/linux-yocto-tiny/inforce.cfg             |   21 +
>  .../recipes-kernel/linux/linux-yocto-tiny/sata.cfg |    7 +
>  .../linux/linux-yocto-tiny/usbhid.cfg              |    9 +
>  .../linux/linux-yocto-tiny_3.0.bbappend            |   13 +
>  6 files changed, 703 insertions(+), 0 deletions(-)
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/defconfig
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/eg20t.cfg
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/inforce.cfg
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/sata.cfg
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/usbhid.cfg
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.0.bbappend

I'd just note that if merged, this would make meta-fri2 depend on
meta-tiny since we'd throw parsing errors if the .bbappend is present
without the file its appending to.

We might want to consider this as an example in the tiny layer itself
for that reason.

Cheers,

Richard


