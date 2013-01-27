Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04110E00743
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 05:29:51 -0800 (PST)
Received: by mail-ea0-f178.google.com with SMTP id a14so810702eaa.37
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 05:29:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=Th8H1r0G++zDdN+T5IJzUg3w7NHpZ4KYXdbMJrMS5yk=;
	b=Ne2oOVhGZfm3OfPmlkEYZ+t+O7L861MTC39rouSGkvBIv9qXfqxbIU/k108Gn4Oq2C
	tGEMY6sSedpAM17amsHeSd9vHvrr0PyN+bkjuTfbVSBAF+RETFxYtLMT8Wp/YCJZB8cT
	CL+hxrM4H4/7XVB3xrs2E3UU6HNZquGZr0LSNgBcg3JUHUcu5O2gIMj6God7e2LF6LBR
	ro7O/NpxjZ1YdC1VXL1HWaw0qe7c7CSlBbngP9ajaX289nXmBf221bT+AFaLKB/qgWFJ
	0uzXFzfiTIgkdLgZPQAWrAdbFRh+maEg1jBEgvrjWmXfBshqkxPjMiBFszhfL7NRK6Oh
	Q/qQ==
X-Received: by 10.14.215.6 with SMTP id d6mr40710852eep.40.1359293390757;
	Sun, 27 Jan 2013 05:29:50 -0800 (PST)
Received: from gmail.com (5-13-203-15.residential.rdsnet.ro. [5.13.203.15])
	by mx.google.com with ESMTPS id e2sm11334124eeo.8.2013.01.27.05.29.48
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sun, 27 Jan 2013 05:29:49 -0800 (PST)
Date: Sun, 27 Jan 2013 15:29:54 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jan Schmidt <thaytan@noraisin.net>
Message-ID: <20130127132954.GA5781@gmail.com>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
MIME-Version: 1.0
In-Reply-To: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkCEhOv504mpBfe4MX5vzq3W/Lt5HxxaS93psKAlsVaLxZpw53jUH7kvUvJTmbwgk5YC1BS
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux: Add a Linux 3.6 kernel recipe
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
X-List-Received-Date: Sun, 27 Jan 2013 13:29:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jan 26, 2013 at 12:33:23AM +1100, Jan Schmidt wrote:
> * Add a recipe to build the linux kernel from the rpi-3.6.y branch at
>   https://github.com/raspberrypi/linux
> * Since this has a higher version, it will be the preferred linux kernel
>   by default.
>
> Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |   34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb

Merged.

Thank you,

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12


