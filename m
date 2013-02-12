Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 916E7E00738
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 03:50:19 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id 15so5430529wgd.4
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 03:50:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:message-id:in-reply-to:references
	:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=yr8+oDCgARw1Gh6fUhCg84BDBgZz8zfvevVddLlARTM=;
	b=QzCGP8jvPgVENOGIkfF7OPSFT4u1ho955LPQYrkEeQRLHZoof3VFpmcw9IPCnfIliI
	qUp2mPkvcNmIG67S3xpjb+eGiKzXIMVz4j0C6jEPmchA0HHGv7hcE4V921d6XytVQ+I3
	P0Bc9uVnQnmaciQ3pROiMQRQzvXVfpYnDzZjvODBWWBbrqnx/d2D7rqurv/aLJFLgzXu
	kHgEpQ9CPCwJvWckrLzplEg98yiaoYkfNeh48XVuR6/AB0Ffpbjf/eKzMw1Gsh+v9Zqw
	sju11Iku+WsWmnYxWcLvjjFtQICQJqcdetsLh5OUAfA9TmfJ/MsvxtA0EOfgv31385sN
	BlbQ==
X-Received: by 10.194.109.41 with SMTP id hp9mr30217889wjb.32.1360669817517;
	Tue, 12 Feb 2013 03:50:17 -0800 (PST)
Received: from [192.168.1.11] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id n2sm36108608wiy.6.2013.02.12.03.50.15
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 03:50:16 -0800 (PST)
Date: Tue, 12 Feb 2013 11:50:14 +0000
From: Ross Burton <ross.burton@intel.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Message-ID: <8646FD9BE034499C9DBF00E03F139C65@intel.com>
In-Reply-To: <CAJTo0LYcFw_yg7_v24+VQTtHNiXzh6Uq_WEVzwfVoFzCXxNd2g@mail.gmail.com>
References: <511A0810.4080305@linux.intel.com>
	<F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
	<511A1617.7010403@linux.intel.com>
	<CAJTo0LYcFw_yg7_v24+VQTtHNiXzh6Uq_WEVzwfVoFzCXxNd2g@mail.gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnVEWqw+oBn+AjDyZsv7hB0/LtYvEFnx6p/iKPXaY2eN13duP8wIg3KKirZQLz0ovbYujIE
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 11:50:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 12 February 2013 at 10:30, Burton, Ross wrote:
> On 12 February 2013 10:14, Jukka Rissanen
> <jukka.rissanen@linux.intel.com (mailto:jukka.rissanen@linux.intel.com)> wrote:
> > At least the systemd version in initramfs is missing
> > 
> > /etc/udev/rules.d/automount.rules
> > /etc/udev/scripts/mount.sh (http://mount.sh)
> > 
> > that seem to be related to this issue.
> 
> Yeah, that would do it. :) That saved thirty minutes of debugging, thanks.
I can't test an image right now, but try adding a RRECOMMENDS to the udev in the systemd recipe to udev-extraconf, as that's the package which contains the mount script.

Ross

