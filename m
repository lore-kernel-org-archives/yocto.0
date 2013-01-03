Return-Path: <cazfi74@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A83E00527
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 23:52:18 -0800 (PST)
Received: by mail-la0-f45.google.com with SMTP id ep20so7469619lab.32
	for <yocto@yoctoproject.org>; Wed, 02 Jan 2013 23:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer;
	bh=Dr5U443Ntydc9pLD6YofP2CUzncGg9ZG/GBSZvYUTqo=;
	b=s5iwSvXh99M23x2FkvBvPypZpsA+Pud61SzY5aaZAOa8G/JsMRtKHoCf8+4EjM1zaG
	lleUG4WrlqNquMgkpuqFdjJwhICiHKCzXOE/WKZEPDZ4rbBkniGDekTxsMJdWLTFLh2C
	6hBwwUXzA3l2MrQMELLrWmQoKGrccqdMGH8N8TfebsHVU1N/46XqQo/iUuN9l02yFUcS
	h7BD4gXQPn8UeA37R93HgUACaNH6gGG1RFm9hvgOCL4PsuxBsA1UXgMk788QJOt8eOGX
	VFJafCuwIx212p+oCAFmKmdyQ453SwqP+xhnQbo/EqW+bTYjat3EPZ9iTQ4iiDvAEB02
	fqeQ==
X-Received: by 10.112.13.133 with SMTP id h5mr18956041lbc.99.1357199537527;
	Wed, 02 Jan 2013 23:52:17 -0800 (PST)
Received: from prime (a91-153-5-18.elisa-laajakaista.fi. [91.153.5.18])
	by mx.google.com with ESMTPS id fb1sm16725741lbb.15.2013.01.02.23.52.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Jan 2013 23:52:16 -0800 (PST)
Received: from cazfi by prime with local (Exim 4.80)
	(envelope-from <cazfi74@gmail.com>)
	id 1Tqfb4-0005ZF-CP; Thu, 03 Jan 2013 09:52:14 +0200
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org,
	mark.hatle@windriver.com
Date: Thu,  3 Jan 2013 09:52:11 +0200
Message-Id: <1357199532-22977-1-git-send-email-cazfi74@gmail.com>
X-Mailer: git-send-email 1.7.10.4
X-Mailman-Approved-At: Fri, 04 Jan 2013 09:33:47 -0800
Subject: Fix prelink build with automake-1.13
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
X-List-Received-Date: Thu, 03 Jan 2013 07:52:19 -0000

[PATCH] fix build with automake-1.13.

Long obsolete AM_CONFIG_HEADER is completely removed from automake-1.13,
which errors out upon seeing it.
configure.in -> configure.ac rename is not strictly necessary yet,
use of deprecated name still gives only warning.

Problem in dropping obsolete constructs is that support for autotools
versions so ancient that now-obsolete way is the only way to do things.
configure.in seems to have AC_PREREQ(2.13), but with these changes
(if not earlier) such an ancient autoconf will not do.


 - ML

