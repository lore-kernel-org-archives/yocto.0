Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166A3E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:48:16 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id g10so6540224pdj.12
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version;
	bh=I52hiQJcxI+CaZ0nF/cIzxeQrlS5iFkXUL5Vtrq1X9c=;
	b=irWbHi3YY16RLeobsqf+c65k9mr52hAptW9bR3K1fiA/GFaZITXw3VyhWvr1+XALs6
	5fM15vZMph7W7S0IoW8WJkH4WnRYc2NKJG5O20WIfLOUr1PyERqsXdozAQAnNllM40oW
	ryO7ALcJrJOxtytqmwxeEurGIXgbHxXnzLD7NSeks72EaSSxLN3WK1WJG5N9WFhYWXRr
	vZ80wk0swC2rmL7H7D1G+939iA7WBL+PbCcDeCmKgL/iyjh8ne3KIF0RZrBgfAYAgypW
	RXLRWdJghLIyiBt30q7+5GpCXXMqV3C4AsAx46G/m6LQmS33r1MmLxTckdOIHDk3wy0A
	tqKw==
X-Received: by 10.68.143.199 with SMTP id sg7mr28860543pbb.13.1377708496154;
	Wed, 28 Aug 2013 09:48:16 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id xe9sm35013105pab.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 09:48:15 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 28 Aug 2013 20:48:09 +0400
Message-Id: <97D7BB3E-BAB9-4FD5-AD8C-EE57499ACBD9@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
X-Mailer: Apple Mail (2.1498)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Yocto reference manual missing entries for MACHINE_DEVICETREE and KERNEL_DEVICETREE
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
X-List-Received-Date: Wed, 28 Aug 2013 16:48:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Scott,
                I noticed that the yocto reference manual is missing =
entries for MACHINE_DEVICETREE and KERNEL_DEVICETREE variables.

I was trying to find out what the difference between the two were, and =
discovered that it's not described in the reference manual here:

http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html

Best regards,

Elvis Dowson=

