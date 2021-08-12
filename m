Received: from esa14.hc324-48.eu.iphmx.com (esa14.hc324-48.eu.iphmx.com [207.54.69.24])
 by mx.groups.io with SMTP id smtpd.web12.19374.1628754595193234195
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 00:49:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=IEelxFMA;
 spf=pass (domain: bmw.de, ip: 207.54.69.24, mailfrom: prvs=8519e1404=maximilian.blenk@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1628754595; x=1660290595;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=CuqfpqUjpwO63pBGsYXWZSf3VipunVUzZWatR0/eKA8=;
  b=IEelxFMA7GBqvEiGUS1H41HqRn/VBf9Pg21v5lBQmSvQsw1cglda8BTs
   Q8Qxq5Pb284nZZyu7SNJFOfXITBo0X7wJLNOT4qODPkf6NGbrdEMeD/Eh
   28R4DZYQZaBtgIkQBUhoHKo3Xj+RJuEH/8MVBtB8hJCrI2sDHL+QlgT0m
   I=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa14.hc324-48.eu.iphmx.com with ESMTP/TLS; 12 Aug 2021 09:49:51 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw6.muc with ESMTP/TLS;
 12 Aug 2021 09:49:51 +0200
Received: from smucm23m.bmwgroup.net (HELO smucm23m.europe.bmw.corp) ([160.46.167.14])
 by esabb1.muc with ESMTP/TLS; 12 Aug 2021 09:49:51 +0200
Received: from smucm23m.europe.bmw.corp (160.46.167.14) by smucm23m.europe.bmw.corp
 (160.46.167.14) with Microsoft SMTP Server (TLS;
 Thu, 12 Aug 2021 09:49:51 +0200
Received: from smucm23m.europe.bmw.corp ([160.46.167.14]) by
 smucm23m.europe.bmw.corp ([160.46.167.14]) with mapi id 15.00.1497.018; Thu,
 12 Aug 2021 09:49:51 +0200
From: "Maximilian Blenk" <Maximilian.Blenk@bmw.de>
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH 2/2] image-with-hardened-binaries: Add selftest
Thread-Topic: [PATCH 2/2] image-with-hardened-binaries: Add selftest
Thread-Index: AQHXj05zWs0GUQJJC0SpeQf/iGllY6tvflr9
Date: Thu, 12 Aug 2021 07:49:51 +0000
Message-ID: <1628754743217.38512@bmw.de>
References: <20210811223620.1575212-1-Maximilian.Blenk@bmw.de>,<20210811223620.1575212-2-Maximilian.Blenk@bmw.de>
In-Reply-To: <20210811223620.1575212-2-Maximilian.Blenk@bmw.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi guys,=0A=
=0A=
we are currenlty working on adding automatically checking the binaries we p=
ut into an image for the presence of certain recommended compiler features.=
 To achieve this, we created a bbclass that wraps around the existing proje=
ct checksec.py (https://github.com/Wenzel/checksec.py). In particular, chec=
ksec.py is used to check if=0A=
* relro is enabled=0A=
* exectuables are compiled to be position independet code=0A=
* rpath and runpath are not set=0A=
* stack canaries are enabled=0A=
* foritfy source is enabled=0A=
I must however admit that the last two checks can suffer from false-positiv=
es which need manual analysis and whitelisting (check can also be completel=
y disabled). =0A=
=0A=
Motivation:=0A=
We've decided that such checks would be a nice thing to have because people=
 might overwrite important compiler flags in their local recipe. Additional=
ly there is always the possibility that components are shipped as binaries =
instead of code (so they are actually build outside the current build envir=
onment). Overall we've detected several cases where required compiler flags=
 have not been applied to shipped components. After internal discussion we =
came to the conclusion that you guys would maybe also be interested in this=
 kind of checks, so I'm offering this patch to you as well.=0A=
=0A=
I would really appreciate your feedback :-)=0A=
=0A=
BR Max=0A=
=0A=
--=0A=
=0A=
BMW Car IT GmbH=0A=
Maximilian Blenk=0A=
Security Engineer=0A=
=0A=
Lise-Meitner-Str. 14=0A=
89081 Ulm=0A=
Tel.:  +49 731 378041-11=0A=
=0A=
Mail: maximilian.blenk@bmw.de=0A=
Web: http://www.bmw-carit.de=0A=
------------------------------------------------------=0A=
BMW Car IT GmbH=0A=
Gesch=E4ftsf=FChrer: Kai-Uwe Balszuweit und Michael B=F6ttrich=0A=
Sitz und Registergericht: M=FCnchen HRB 134810=0A=
------------------------------------------------------=0A=
=0A=
________________________________________=0A=
Von: Blenk Maximilian, JC-4=0A=
Gesendet: Donnerstag, 12. August 2021 00:36=0A=
An: yocto@lists.yoctoproject.org=0A=
Cc: Blenk Maximilian, JC-4=0A=
Betreff: [PATCH 2/2] image-with-hardened-binaries: Add selftest=0A=
=0A=
Add selftest that executes binary analysis on small rootfs=0A=
=0A=
Signed-off-by: Maximilian Blenk <Maximilian.Blenk@bmw.de>=0A=
---=0A=
 .../cases/hardened_binaries_checker.py        | 42 +++++++++++++++++++=0A=
 1 file changed, 42 insertions(+)=0A=
 create mode 100644 lib/oeqa/selftest/cases/hardened_binaries_checker.py=0A=
=0A=
diff --git a/lib/oeqa/selftest/cases/hardened_binaries_checker.py b/lib/oeq=
a/selftest/cases/hardened_binaries_checker.py=0A=
new file mode 100644=0A=
index 0000000..6385757=0A=
--- /dev/null=0A=
+++ b/lib/oeqa/selftest/cases/hardened_binaries_checker.py=0A=
@@ -0,0 +1,42 @@=0A=
+import os=0A=
+import re=0A=
+=0A=
+from oeqa.selftest.case import OESelftestTestCase=0A=
+from oeqa.utils.commands import bitbake, get_bb_var=0A=
+=0A=
+class HardenTests(OESelftestTestCase):=0A=
+    def test_hardened_binaries(self):=0A=
+=0A=
+        self.write_recipeinc('emptytest', """=0A=
+SUMMARY =3D "A small image just capable of allowing a device to boot."=0A=
+=0A=
+IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"=0A=
+=0A=
+CORE_IMAGE_EXTRA_INSTALL ?=3D ""=0A=
+=0A=
+LICENSE =3D "MIT"=0A=
+=0A=
+inherit image=0A=
+=0A=
+IMAGE_ROOTFS_SIZE ?=3D "8192"=0A=
+=0A=
+inherit image-with-hardened-binaries=0A=
+=0A=
+HARDENED_BINARIES_CONFIG_FILE =3D "${WORKDIR}/check-config.toml"=0A=
+=0A=
+do_write_config_file() {=0A=
+    echo "[rpath]\nenabled =3D true\nwhitelist =3D []\n" > "${WORKDIR}/che=
ck-config.toml"=0A=
+    echo "[runpath]\nenabled =3D true\nwhitelist =3D []\n" >> "${WORKDIR}/=
check-config.toml"=0A=
+    echo "[relro]\nenabled =3D true\nwhitelist =3D []\n" >> "${WORKDIR}/ch=
eck-config.toml"=0A=
+    echo "[pie]\nenabled =3D true\nwhitelist =3D []\n" >> "${WORKDIR}/chec=
k-config.toml"=0A=
+    echo "[nx]\nenabled =3D true\nwhitelist =3D []\n" >> "${WORKDIR}/check=
-config.toml"=0A=
+}=0A=
+=0A=
+addtask do_write_config_file before do_image_qa=0A=
+=0A=
+        """)=0A=
+=0A=
+        result =3D bitbake("-c image_qa emptytest", ignore_status=3DTrue)=
=0A=
+        if result.status !=3D 0:=0A=
+            self.logger.warn(result.output)=0A=
+            raise self.failureException("build failed, something went wron=
g...")=0A=
--=0A=
2.31.1=0A=
=0A=
