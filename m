Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5389.1594190291453311249
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 23:38:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: ohnolab.org, ip: 140.211.169.56, mailfrom: kimoto@ohnolab.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C98CE01E22; Tue,  7 Jul 2020 23:38:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 549 seconds by postgrey-1.32 at yocto-www; Tue, 07 Jul 2020 23:38:10 PDT
Received: from tk2-229-24410.vs.sakura.ne.jp (tk2-229-24410.vs.sakura.ne.jp [160.16.107.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627E3E01DE2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 23:38:10 -0700 (PDT)
Received: from localhost (39.216.138.210.bn.2iij.net [210.138.216.39])
	by tk2-229-24410.vs.sakura.ne.jp (Postfix) with ESMTPA id 58A831820D;
	Wed,  8 Jul 2020 15:29:00 +0900 (JST)
Date: Wed, 08 Jul 2020 15:29:00 +0900 (JST)
Message-Id: <20200708.152900.299486392906640557.kimoto@ohnolab.org>
To: michael@amarulasolutions.com
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] iso-codes project
From: "Masahiko Kimoto" <kimoto@ohnolab.org>
In-Reply-To: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
References: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
X-fingerprint: DA 63 E3 AD 3F 30 98 05  EB CF 3C 06 2D FF 07 7F
X-PGP-Public-Key: http://www.ohnolab.org/~kimoto/kimoto.pubkey.asc
X-URL: http://www.ohnolab.org/~kimoto/
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit

The project seems to change master branch name to 'main'.

Please try to add ';branch=main' into SRC_URI.

Regards,

From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Subject: [yocto] iso-codes project
Date: Wed, 8 Jul 2020 07:56:44 +0200

  > Hi all
  > 
  > anyone has problem on iso-codes in thud. Seems that project was
  > changed and not possible to download with the actual configuration
  > 
  > Michael
  > 
  > -- 
  > | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
  > | COO  -  Founder                                      Cruquiuskade 47 |
  > | +31(0)851119172                                 Amsterdam 1018 AM NL |
  > |                  [`as] http://www.amarulasolutions.com               |

----------------------------------------------------------------------
木本 雅彦 /  Masahiko Kimoto, Ph.D.
E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto
