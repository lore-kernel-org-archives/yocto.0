Return-Path: <kurtmyles@gmail.com>
Received: from mail-gh0-f179.google.com (mail-gh0-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3889E01407
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 12:18:43 -0700 (PDT)
Received: by mail-gh0-f179.google.com with SMTP id f16so465199ghb.38
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 12:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:mime-version
	:content-type:content-transfer-encoding:x-priority:x-msmail-priority
	:x-mailer:importance:x-mimeole:thread-index:x-antivirus
	:x-antivirus-status;
	bh=XnJwLGh8aywgZL5rRKNY9Rpp30kI0R/ACb7hYPHGcNo=;
	b=PxsNnNJMbBDSQUuSpnIx/OXiIvNh5LTxrOUtqMkzLWqz8KHbg/mo6ZS8suGHJViSsR
	LRe0P7cH7KOXKDPKnXPWARTlbnuiYYMECMIT4bLLnEXn6E8M6MsjzPmP95T8JpEuLeI7
	E5KG4l0ZMSeFTElQ4VSnzl/P2fXnFUfGYVI4YNR2rLR+Qlg0AKO5HSjWYvO2gBo2Zn8y
	yY4hGEYBCN2xSmFZQa7wHNZfYzGiwoYDi+j+I9m0xNGSmCAtvvbdtbJ3itTxDO6Zno6u
	mfbRrhXV6tfRQJowk8NZsSqgWTIoFW2TeIpgjFB7qloEnxmH+AWgSjB7IfztKGy4R11r
	jiXA==
X-Received: by 10.236.161.102 with SMTP id v66mr7797577yhk.162.1368040722780; 
	Wed, 08 May 2013 12:18:42 -0700 (PDT)
Received: from toshp105 (24-196-194-18.static.hckr.nc.charter.com.
	[24.196.194.18])
	by mx.google.com with ESMTPSA id n15sm65625795yhi.2.2013.05.08.12.18.41
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 May 2013 12:18:42 -0700 (PDT)
From: "Kurt Stevens" <kurtmyles@gmail.com>
To: <yocto@yoctoproject.org>
Date: Wed, 8 May 2013 15:18:44 -0400
Message-ID: <A306BD0E4C7243658E42B1F5B50D9716@toshp105>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook, Build 10.0.6863
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
Thread-Index: Ac5MINsSiAMf39AdQU2/8DkEgk3pZw==
X-Antivirus: avast! (VPS 130508-0, 05/08/2013), Outbound message
X-Antivirus-Status: Clean
Subject: HOB Yocto 1.4 bzImage missing from ext3 image
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
X-List-Received-Date: Wed, 08 May 2013 19:18:43 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

	I included meta-openembedded in my poky folder (both git cloned from
dylan release) and built atom-pc, using core-image-basic for a start point,
and using the HOB interface.

	I added apache and mysql (and deselected lighttpd), and got no
errors in the log. 

	When I use the ext3 file system image, though, the /boot/bzImage is
missing. Manually copying the image into the boot folder allows boot, and
there are no other issues I can see.

Thanks,

Kurt Stevens



