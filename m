Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74D5BE0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 12:50:11 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so4186746ghb.35
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 12:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=SMbnHFi9HUYdA7qsH0WYF54ZPP2WzwvNjVbaMkCSgLY=;
	b=Z2RTH4L01YKm40w6pRua0A/NyhGCUSp3rN6AX/wxCx8hlIFGEI1myO6eDfKX9YXCjC
	XzUGYD7Tsie6Xy02o9b6ybMwQhjUVSZZ7II6AjXwp7KmI0Ckn7pORC7MHEkrlYfMtYQp
	bhsZl0nVrIqhzMDIh1Y3brGhmbVBOU9rBqppTEJccaHqlnHWclAslK0Gt3rJGcIZc7ks
	TTY7D+wLAcUp3NZQeFgMVfkVQSeDMNNeZdliKaHupc56uAuxhSqMu1MBROhnvawz0LGm
	QOQabvKapoVspM5Fa1+WM0pUOWQh8hTWe97UsA8dXetLkg5w7HjSTsa8cG++upO77aP0
	yuQg==
Received: by 10.66.73.98 with SMTP id k2mr7638400pav.73.1343418610072;
	Fri, 27 Jul 2012 12:50:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qp9sm2475097pbc.9.2012.07.27.12.50.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 Jul 2012 12:50:09 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 27 Jul 2012 23:50:04 +0400
Message-Id: <993F5528-427A-4642-B338-F990106111C4@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Generate a powerpc ramdisk file for the linux kernel
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
X-List-Received-Date: Fri, 27 Jul 2012 19:50:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       How can I generate a powerpc ramdisk file for the linux kernel =
using yocto?

Best regards,

Elvis Dowson=

