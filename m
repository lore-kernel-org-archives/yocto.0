Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 686A2E009AC
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 08:00:14 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id hw13so1167509qab.18
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 08:00:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=TPXFT0BAslSPZbLXHSrjBqublEmiZcCfN7K+h9Yn1YM=;
	b=G7zC7ycM9U8WgZnFxt59s1U3F71BP0OGL/qjmbmSOqcEtt4R5ATsfD7FZVrkPOOchk
	P6hORJTYPsJ0vnaCtDcfvhXMG8QbM9U6Deqlcfbm17BYfsJGLd8u+e5QV2tkea1MA9CQ
	yiq/oHK38KjC187IH/zZMtFyKYxU+TC1u5/+EgqYR0DAD6OtV0y3jjX4gumrEhFPJekD
	pUYyGC0b/zP/5ub4jdAuA1z9/3Dl36OmqQV6uEHLzw20l9J6+TnMwqXbZpZK0+XN4QY2
	xYzDs5AYJtl0xomPK3OEK1xUn/KHg/W9WgyK2iN3YcLyV9TjO24Y+zHXtKTvDoIPBx2O
	t4AQ==
X-Gm-Message-State: ALoCoQmuUCgo2cGWC0nP8llReZOWcpxxbD92iclJBz4k5MUNXxY8kVPaSWzz9tM/M+qgioiECbB1
X-Received: by 10.224.131.135 with SMTP id x7mr7598973qas.15.1394035210481;
	Wed, 05 Mar 2014 08:00:10 -0800 (PST)
Received: from gmail.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p8sm3613045qga.9.2014.03.05.08.00.08
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Mar 2014 08:00:09 -0800 (PST)
Date: Wed, 5 Mar 2014 18:00:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20140305160004.GB2222@gmail.com>
References: <1394026396-22961-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1394026396-22961-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi: make rpi-sdimg image dependent on rootfs type
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
X-List-Received-Date: Wed, 05 Mar 2014 16:00:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 06, 2014 at 12:33:16AM +1100, Jonathan Liu wrote:
> The rootfs may be using a filesystem type other than ext3 so it should
> not be hardcoded.
>
> Change-Id: I71c1a96831ce4617b24de7743fe3b70ec5822a33
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Merged. Thank you.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

