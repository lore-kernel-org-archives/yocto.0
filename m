Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C771AE00282
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 06:46:38 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id q10so1743481pdj.34
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 06:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=SnXfiqzRUGGEG8EF4pFUYzYfk2Z1I+xclEqa1IEdg4I=;
	b=rx8EMgX0GUeUStdlNMcr23K6ChiuJHoTk6o3garAVlHrpLR2uOWIFaTQ9bD2sI8OdX
	JXGq5P3uNCxqQLJIdixkRZq7JxYjiLQARMRz3EKK0UK+RVMogBk2EdRlHmR4msom1Bvn
	g3H/0U7R4zAAPw1q7shZnjCAL4TfWdMH6OijgsKUgR0AGmCgIwg4nGyuEONPNZQTr/Rp
	wP6e1INt1OVobvTwMbyPy37DU+xOcJZ6+BL1/t9S7n1RGdo2M5FtlSztUBR2SkBZruo0
	uj3t+YZ8sHDmWZHuX4jlZMeHh9CHi443He6yZ6oj7jfrwIDjr5/Tw2CwK0zocHaKYd9x
	u9QA==
X-Received: by 10.68.164.33 with SMTP id yn1mr5187711pbb.102.1377351998156;
	Sat, 24 Aug 2013 06:46:38 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id yg1sm6318949pbb.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 06:46:37 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <DCD241C1-D156-444B-834F-FCEA564E0B7D@gmail.com>
Date: Sat, 24 Aug 2013 17:46:32 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
X-Mailer: Apple Mail (2.1498)
Subject: QEMU with ARM Cortex A9 hard float with NEON
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
X-List-Received-Date: Sat, 24 Aug 2013 13:46:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I'm trying to build a QEMU machine configuration with support for =
ARM Cortex A9, with hard float and neon support.

What should I specify in my qemuarmhf.conf machine file to enable a =
specific tune configuration defined in tune-cortexa9.inc ?

Best regards,

Elvis Dowson



