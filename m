Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5954.1623926938363140304
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 03:48:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: bootlin.com, ip: 198.145.29.25, mailfrom: alexandre.belloni@bootlin.com)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0B0B038C06E3
	for <yocto@yoctoproject.org>; Thu, 17 Jun 2021 10:48:56 +0000 (UTC)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0ED2E20008;
	Thu, 17 Jun 2021 10:48:54 +0000 (UTC)
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: yocto@yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder2][PATCH] reporters/swatbot: sanitize urls
Date: Thu, 17 Jun 2021 12:48:50 +0200
Message-Id: <20210617104850.409432-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

When the log name contains a space, the generated URL is not correct. Thi=
s
later also breaks parsing in swatbot. This was triggered by "property
changes" and the correct URL is indeed logs/property_changes.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---

This is untested because I don't have the setup handy but, I hope, it is
trivial enough to work properly


 reporters/swatbot.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/reporters/swatbot.py b/reporters/swatbot.py
index 4a5a04eb1809..41ae762359a0 100644
--- a/reporters/swatbot.py
+++ b/reporters/swatbot.py
@@ -202,7 +202,7 @@ class SwatBotURI(object):
             logs =3D list(logs)
             urls =3D []
             for l in logs:
-                urls.append('%s/steps/%s/logs/%s' % (build['url'], step_=
number, l['name']))
+                urls.append('%s/steps/%s/logs/%s' % (build['url'], step_=
number, l['name'].replace(" ", "_")))
             if urls:
                 urls =3D " ".join(urls)
             else:
--=20
2.31.1

