Return-Path: <kurtmyles@gmail.com>
Received: from mail-yh0-f45.google.com (mail-yh0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70A08E013DE
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 12:26:18 -0700 (PDT)
Received: by mail-yh0-f45.google.com with SMTP id b20so1381255yha.18
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 12:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding:x-priority:x-msmail-priority:x-mailer
	:importance:thread-index:in-reply-to:x-mimeole:x-antivirus
	:x-antivirus-status;
	bh=6ve4QHyF4l7vPC+S5qXLiUbHtnXz2/EbQJqv6KbBEuM=;
	b=njrJXYGLdvkYptbWdmpvrXy0c1WpxiMJl08VxnGmKSlNbWjHtDMG0X6KJKGZ5drN7h
	tlWFiHsTwwBv0UOCxdLzXK0xx5RLqxMRQ+8jWvdCQep+LH+PNKdgCue5Rr+33S2yEdLt
	srwu9iJ8DMJid4HxHXh3meCWyiVJJTN5McEIlxZsASXYetwz5RkLr2mXhKiNC2a3v+Fm
	3sYqDT/xsmThuxyZeo5NHtJeaDrdf8JYYOD+HME2a++J0TY8puN7affquXtMyLVu+kdO
	tcEAwt2jDx/Ekjg6G0UPXoO3rLj/mrOWigIrhRufciCWaqd6Phk5PXMvjSKP4kw2LG24
	yGFw==
X-Received: by 10.236.70.9 with SMTP id o9mr1638806yhd.35.1371151577952;
	Thu, 13 Jun 2013 12:26:17 -0700 (PDT)
Received: from toshp105 (24-196-194-18.static.hckr.nc.charter.com.
	[24.196.194.18])
	by mx.google.com with ESMTPSA id x22sm36131504yhd.2.2013.06.13.12.26.16
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Jun 2013 12:26:17 -0700 (PDT)
From: "Kurt Stevens" <kurtmyles@gmail.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Jun 2013 15:26:29 -0400
Message-ID: <E26A4E088CC341B49A35A61D9C9232F5@toshp105>
MIME-Version: 1.0
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook, Build 10.0.6863
Importance: Normal
Thread-Index: Ac5Lrjg5TFFkUXzcR5u+xi1IVv/xCQcvLm/Q
In-Reply-To: <mailman.1430.1367991395.19864.yocto@yoctoproject.org>
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
X-Antivirus: avast! (VPS 130613-0, 06/13/2013), Outbound message
X-Antivirus-Status: Clean
Subject: Building perl with perl-modules
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
X-List-Received-Date: Thu, 13 Jun 2013 19:26:19 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

	I am using the dylan version of poky, and including perl. This
builds fine with perl selected in hob, but if I also select the =
perl-modules
item, I get the error message 'nothing rprovides ncurses-libncurses' and =
the
build fails.

	Thanks,

Kurt Stevens



