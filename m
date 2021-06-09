Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3918.1623216148924429760
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 22:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: ohnolab.org, ip: 198.145.29.25, mailfrom: kimoto@ohnolab.org)
Received: from tk2-229-24410.vs.sakura.ne.jp (tk2-229-24410.vs.sakura.ne.jp [160.16.107.164])
	by mail.yoctoproject.org (Postfix) with ESMTP id AACC638C08BF
	for <yocto@yoctoproject.org>; Wed,  9 Jun 2021 05:22:27 +0000 (UTC)
Received: from localhost (39.216.138.210.bn.2iij.net [210.138.216.39])
	by tk2-229-24410.vs.sakura.ne.jp (Postfix) with ESMTPA id 83B49181FD;
	Wed,  9 Jun 2021 14:22:26 +0900 (JST)
Date: Wed, 09 Jun 2021 14:22:26 +0900 (JST)
Message-Id: <20210609.142226.2253488984201240225.kimoto@ohnolab.org>
To: mauro@faresoftware.it
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Managing chinese text input
From: "Masahiko Kimoto" <kimoto@ohnolab.org>
In-Reply-To: <B5712FE8-0796-4209-924F-1EC873F82B9C@getmailspring.com>
References: <B5712FE8-0796-4209-924F-1EC873F82B9C@getmailspring.com>
X-fingerprint: DA 63 E3 AD 3F 30 98 05  EB CF 3C 06 2D FF 07 7F
X-PGP-Public-Key: http://www.ohnolab.org/~kimoto/kimoto.pubkey.asc
X-URL: http://www.ohnolab.org/~kimoto/
X-Mailer: Mew version 6.8 on Emacs 27.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit

Hi Maruo,

Fcitx recipes are provided as meta-inputmethod from Clear-Code Inc.

https://gitlab.com/clear-code/meta-inputmethod

In addition, we, Cybertrust Japan, have recipes of fcitx-chewing,
fcitx-hangul and fcitx-m17n.

However, we need several company internal processes to contribute them
to public.

Would you have time to wait for them?

From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: [yocto] Managing chinese text input
Date: Tue, 8 Jun 2021 15:17:43 +0200

  > Hi all.
  > I'm coding my own keyboard for a touch screen device based on Qt/Qml 5.6.
  > I'd like to implement a chinese input method.
  > The keyboard is embedded in the software and it is activated only inside the software.
  > 
  > The system is based on an old mix of Jethro/Krogoth
  > I know there ibus framework for this, but it is not included in yocto bsp.
  > Any idea about?
  > Best regards,
  > MZ
  > 
  > Sent from Mailspring (https://getmailspring.com/), the best free email app for work

----------------------------------------------------------------------
木本 雅彦 /  Masahiko Kimoto, Ph.D.
E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto
