Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825D2E007A9
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 08:53:49 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id k10so2632559eaj.15
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 08:53:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=NJsHFrFEex4nKJch5blWQC+aCW6Z1NUbi4Zaj6K5FiA=;
	b=FqLICbfPvoQaaHqxU7jyg6Ru491ItJpjzYm9MJgkjDVUctgDJl85K3lnlqPpjZX/B8
	lmZmbyHtfRNBkf/uLUuqwIknfJKzGWZw0laPF7a89XOf4LzC46CVN3ilqpVu/eY+jaVk
	Eou51UoLeFoT98o/Lhp9fasjmQtQkjxIox+2LBkwYzgW95FcCtqMTr3a5D9fcYUxUvhd
	WDgLzPh/xwTODl7MGhricxanWzLUfpE5A6541o9bCu+2/k6OEOVyGWEl+Ii/AdgKs9If
	vQmte+ExwwyTLVkpxeqH6eEsRJvrvwMJFUhGQsxsiZkkCoo8LqeU0SCOLdjmabDvZduL
	FD/Q==
X-Gm-Message-State: ALoCoQlzrUEkrd/wKCVKFdO57FUxz+lyExTuBg3ZF5+veK7c16n4kepHbW49zhJkoxnAFcnA5NVp
X-Received: by 10.14.218.69 with SMTP id j45mr13534320eep.22.1390150427792;
	Sun, 19 Jan 2014 08:53:47 -0800 (PST)
Received: from gmail.com ([79.116.111.233])
	by mx.google.com with ESMTPSA id u7sm45060145eep.11.2014.01.19.08.53.47
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 19 Jan 2014 08:53:47 -0800 (PST)
Date: Sun, 19 Jan 2014 18:53:42 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140119165330.GA4680@gmail.com>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Update v3.12.4 to v3.12.7
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
X-List-Received-Date: Sun, 19 Jan 2014 16:53:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 17, 2014 at 05:16:37PM +0200, Andrei Gherzan wrote:
> Change-Id: Id721163e3e69946e3c82710bf12851211b493dee
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.12.4.bb | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.12.7.bb | 6 ++++++
>  2 files changed, 6 insertions(+), 6 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
> deleted file mode 100644
> index 17025f2..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.12.4.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "9fbb114990c409406ae20c56871727ff8d4fa6ca"
> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
> new file mode 100644
> index 0000000..b71363c
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.7.bb
> @@ -0,0 +1,6 @@
> +SRCREV = "7b3d6227aa8285f7cbd5b8ec767a840b6ac42477"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> --
> 1.8.1.4
>

Merged all updates (fixing the typo Paul pointed me out - thanks).

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

