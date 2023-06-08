Return-Path: <samantha.jalabert@syslinbit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6532C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 10:58:08 +0000 (UTC)
Received: from 7.mo575.mail-out.ovh.net (7.mo575.mail-out.ovh.net [46.105.63.230])
 by mx.groups.io with SMTP id smtpd.web11.6052.1686221879024183980
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 03:57:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: syslinbit.com, ip: 46.105.63.230, mailfrom: samantha.jalabert@syslinbit.com)
Received: from director9.ghost.mail-out.ovh.net (unknown [10.109.143.246])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id E262927550
	for <yocto@lists.yoctoproject.org>; Thu,  8 Jun 2023 10:57:56 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-tt6s2 (unknown [10.110.171.117])
	by director9.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 4D3611FE97;
	Thu,  8 Jun 2023 10:57:56 +0000 (UTC)
Received: from syslinbit.com ([37.59.142.109])
	by ghost-submission-6684bf9d7b-tt6s2 with ESMTPSA
	id uqDzAzS0gWQWyAAASKAe3g
	(envelope-from <samantha.jalabert@syslinbit.com>); Thu, 08 Jun 2023 10:57:56 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-109S003f3457e78-6f16-48f6-b390-9c5de82c6fbc,
                    3D1AEFEA67CC6A91AC596EF5FB2C5E0CDA175DD6) smtp.auth=samantha.jalabert@syslinbit.com
X-OVh-ClientIp: 141.94.99.231
From: Samantha Jalabert <samantha.jalabert@syslinbit.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	Samantha Jalabert <samantha.jalabert@syslinbit.com>
Subject: [meta-security][PATCH] buck-security: fix missing dependencies to perl modules
Date: Thu,  8 Jun 2023 10:57:18 +0000
Message-Id: <20230608105718.303181-1-samantha.jalabert@syslinbit.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Ovh-Tracer-Id: 12985003626879715593
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrgedtiedgfeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmrghnthhhrgculfgrlhgrsggvrhhtuceoshgrmhgrnhhthhgrrdhjrghlrggsvghrthesshihshhlihhnsghithdrtghomheqnecuggftrfgrthhtvghrnhepleefgeevieffieefuedvveeihfetteektdetkeehfefhhfelgeeludefhfdtjeeinecukfhppeduvdejrddtrddtrddupddugedurdelgedrleelrddvfedupdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeoshgrmhgrnhhthhgrrdhjrghlrggsvghrthesshihshhlihhnsghithdrtghomheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdfovfetjfhoshhtpehmohehjeehpdhmohguvgepshhmthhpohhuth
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 10:58:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60231

Dependencies to perl modules Cwd and Encode were missing.

Complete error on buck-security launch :

Can't locate Encode/Encoding.pm in @INC (you may need to install the Enco=
de::Encoding module) (@INC contains: /usr/lib/perl5/site_perl/5.36.0/arm-=
linux /usr/lib/perl5/site_perl/5.36.0 /usr/lib/perl5/vendor_perl/5.36.0/a=
rm-linux /usr/lib/perl5/vendor_perl/5.36.0 /usr/lib/perl5/5.36.0/arm-linu=
x /usr/lib/perl5/5.36.0) at /usr/lib/perl5/5.36.0/parent.pm line 16.
BEGIN failed--compilation aborted at /usr/lib/perl5/5.36.0/arm-linux/Enco=
de.pm line 178.
Compilation failed in require at /usr/lib/perl5/5.36.0/Pod/Text.pm line 2=
4.
BEGIN failed--compilation aborted at /usr/lib/perl5/5.36.0/Pod/Text.pm li=
ne 24.
Compilation failed in require at (eval 6) line 1.
BEGIN failed--compilation aborted at /usr/lib/perl5/5.36.0/Pod/Usage.pm l=
ine 30.
Compilation failed in require at /usr/bin/buck-security line 12.
BEGIN failed--compilation aborted at /usr/bin/buck-security line 12.

Signed-off-by: Samantha Jalabert <samantha.jalabert@syslinbit.com>
---
 recipes-scanners/buck-security/buck-security_0.7.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipe=
s-scanners/buck-security/buck-security_0.7.bb
index 881c2a3..85884a7 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -33,6 +33,7 @@ RDEPENDS:${PN} =3D "coreutils gnupg net-tools perl perl=
-module-data-dumper \
                   perl-module-lib perl-module-posix perl-module-term-ans=
icolor \
                   perl-module-time-localtime pinentry perl-module-pod-us=
age \
                   perl-module-pod-text perl-module-file-glob \
+                  perl-module-cwd perl-module-encode perl-module-encode-=
encoding \
                  "
=20
 RDEPENDS:${PN}:class-native =3D "coreutils net-tools perl perl-module-da=
ta-dumper \
--=20
2.34.1


