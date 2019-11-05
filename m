Return-Path: <christophe.priouzeau@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 989C2E00DB6; Tue,  5 Nov 2019 06:47:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B2DEE006D2
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 06:47:11 -0800 (PST)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	xA5Eg9uK026729
	for <yocto@yoctoproject.org>; Tue, 5 Nov 2019 15:47:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
	h=from : to : cc : subject
	: date : message-id : content-type : content-transfer-encoding :
	mime-version; s=STMicroelectronics;
	bh=+ZBrZ0Us2E6NAOSheFLw4Ln5LbP/3MPoL4+kM8cL01I=;
	b=oTmPIf+LIr6+WJYGBIUk52aotPxwiEuVXuGbXJZqRtd0cj/DgVJ1NxsEC80plJ285j8d
	FStIrGAyA4NSOpHrERFuJQdv4uJP28LhjcLvMASOtKKhmNDeyVMHxzlGQqNP8QPuSZX0
	hsOE+HYxo/0+jGKpeXYWYMRs5vubHXJbRL19D0hI/NREXM/o/AfvamvOCxziJwDQY+wz
	X/sp8Ki5hVtUEwQKCYq/uNDm/QzepiuP1f/tUiIDHYFxVDzA2rl6FPBkgNVpvIXiZCDL
	uBzIbhEmqS5+EMJRoGH4NPYVmsPECK68A5wBVwvtBgSg0HAAOGSSCJaDA6JCASb3mxr9
	qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 2w1054qypn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2019 15:47:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5BD0F10002A
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 15:47:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 48F0F2C38C9
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 15:47:10 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE2.st.com
	(10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2;
	Tue, 5 Nov 2019 15:47:09 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
	SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
	15.00.1347.000; Tue, 5 Nov 2019 15:47:09 +0100
From: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-selinux][PATCH] autorelabel: only selinux-autorelabel need
	autorelabel file
Thread-Index: AQHVk+fmOdEMvaYaT0GWQzFx0tdQDw==
Date: Tue, 5 Nov 2019 14:47:09 +0000
Message-ID: <20191105144708.12922-1-christophe.priouzeau@st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-11-05_05:2019-11-05,2019-11-05 signatures=0
Cc: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
Subject: [meta-selinux][PATCH] autorelabel: only selinux-autorelabel need autorelabel file
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
X-List-Received-Date: Tue, 05 Nov 2019 14:47:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

With previous implementation, several packages provided
 .autorelabel file while only selinux-autorelabel manage it.
If there is several packages which try to install .autorelabel
file, an issue occur during installation of packagegroup-core-selinux.

Signed-off-by: Christophe Priouzeau <christophe.priouzeau@st.com>
---
 recipes-security/selinux/selinux-autorelabel_0.1.bb | 9 +++++++++
 recipes-security/selinux/selinux-initsh.inc         | 7 -------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-=
security/selinux/selinux-autorelabel_0.1.bb
index 4eb2b4e..7e7d08c 100644
--- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -18,3 +18,12 @@ SRC_URI =3D "file://${BPN}.sh \
 INITSCRIPT_PARAMS =3D "start 01 S ."
=20
 require selinux-initsh.inc
+
+do_install_append() {
+	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)=
}; then
+		install -d ${D}${bindir}
+		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
+		sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
+		echo "# first boot relabelling" > ${D}/.autorelabel
+	fi
+}
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security=
/selinux/selinux-initsh.inc
index 8e31cda..6084762 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -29,13 +29,6 @@ do_install () {
=20
 	install -d ${D}${systemd_unitdir}/system
 	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service ${D}${systemd_un=
itdir}/system
-
-	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)=
}; then
-		install -d ${D}${bindir}
-		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${bindir}
-		sed -i -e '/.*HERE$/d' ${D}${bindir}/${SELINUX_SCRIPT_SRC}.sh
-		echo "# first boot relabelling" > ${D}/.autorelabel
-	fi
 }
=20
 sysroot_stage_all_append () {
--=20
2.17.1

