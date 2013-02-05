Return-Path: <cazfi74@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2830E0146B
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 04:36:44 -0800 (PST)
Received: by mail-bk0-f50.google.com with SMTP id jg9so45635bkc.9
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2013 04:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer;
	bh=Qk1sjujELgZiQt30UtCUMOuwsnLUdGHZzmXFgHD/A40=;
	b=cjv+TOlx04RXiVqwKDUBXx6zpiFkRNUhMjTQtoNTIOeySo36xjE6S4nqndScf6zlJd
	6SZZVVZPbI1dMz5s73/uyL/N575GjLTBdwOfawMV6zxJ/lkfyYk2dafaOm7GSdJeZYKx
	QhfbiySgV3vPn/7wTJcs1T6FylRNVMJnGpvTNJfQanLKBcP0sBa7whqPvZAg3kIGh/U8
	1zZCSZUN4aMpoEckMFo6Z/JXMstofl5ZcA/AQNbhzRim5kZ7e7Q/dGBZOGIaeBuSq4yd
	CQJl3D+9An4VYCkKbTQvPSlM1BOvWRU0+yJZbZZ+USHdlrBFh63U1ClvELMpWSucZRAV
	j3cg==
X-Received: by 10.204.149.87 with SMTP id s23mr6658762bkv.33.1360067803509;
	Tue, 05 Feb 2013 04:36:43 -0800 (PST)
Received: from prime (a91-153-5-47.elisa-laajakaista.fi. [91.153.5.47])
	by mx.google.com with ESMTPS id hc16sm6437234bkc.2.2013.02.05.04.36.34
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 05 Feb 2013 04:36:42 -0800 (PST)
Received: from cazfi by prime with local (Exim 4.80)
	(envelope-from <cazfi74@gmail.com>) id 1U2hlJ-0007Oo-Ek
	for yocto@yoctoproject.org; Tue, 05 Feb 2013 14:36:33 +0200
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Feb 2013 14:36:28 +0200
Message-Id: <1360067789-28404-1-git-send-email-cazfi74@gmail.com>
X-Mailer: git-send-email 1.7.10.4
Subject: matchbox-terminal automake-1.13 fix (retry)
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
X-List-Received-Date: Tue, 05 Feb 2013 12:36:45 -0000

[PATCH 1/2] configure.ac: fix autoreconf with automake-1.13

Seems that this bounced.
(2/2 was INSTALL removal already committed)


 - ML

