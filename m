Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5711CC49EA5
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.7])
 by mx.groups.io with SMTP id smtpd.web10.26691.1650873625898490034
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=OfFClDbJ;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.7,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.17.107_.trendmicro.com (unknown [172.21.182.42])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 79AF2100022FB
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873624.090000
X-TM-MAIL-UUID: ab3c4cdb-7ea8-4038-8c36-72a7b494bcad
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (unknown
 [104.47.17.107])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 1619E10000E24
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0pW9csTZoC8G52TeCcmzPCwfwn+MwJvCOCHUjmtfhEusWImrdhSvgK+zcVxFNL/+VnDL3WQcuiVr2Wu1tnm+UUikpwYhc+sX8CXoIiunYOGok0+CX4Ny3bbfuVr1XdJSkO0EQ97pmw7gVBXJ8dwxJaXgiwKjLkux5ijzAhuBOtRrRgTh8bdrRWkKbcjYB52CcAMGSrPsPzMSX0ns9coC08eIkiNX+QxbKX9WOlpc2xMs84yUYx8uptWgBm27N+PUooYk8oZEOJS4X8NuOqred2XZ1BB//exNlHM5BKL9itM/+8ZI401HnnCBRW7S0WWyhVCyh6SFRBZ0SpBrdfPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uBD7leUTur9QpwLT2huL0YSS/Ul994dqEE3B19sOBdU=;
 b=gweLgY5CzGAmFzZ43qpv9EgBK2KQ8ACJLPZrH+IAV4TQl1DkKThGGqAx/FGXk92M/zNLgq2mBfBtX89Asd6P7kbj6peG0RG+jufWes+ryBFtDhiW0jCTR88e8oQK7udKJUtiM9FLAYGGDWYxA2l5WCxt4ZqPuA3R6AFu5fP76z84y4VNJbAffQNITqltIM4K9n7IMA0riwjmlo302xiHKN7Pvssrv/hGUFGpj9+8fLm1rf1SY8p/V46NH2f32F+M0rbedm7bhp3CTNwzYU8X+eKazIFUnnE/Sh4Xazysh+QN8yzglx1th/u/KA5j3AY3wOk64T+3rhYFrrOJ7JApaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=pass (p=none sp=none pct=100)
 action=none header.from=opensynergy.com; dkim=none (message not signed);
 arc=none
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=opensynergy.com;
Received-SPF: Pass (protection.outlook.com: domain of opensynergy.com
 designates 217.66.60.4 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.66.60.4; helo=SR-MAIL-03.open-synergy.com;
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 11/14] Implement drm backend
Date: Mon, 25 Apr 2022 10:59:51 +0300
Message-Id: <20220425075954.10427-12-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 471eadec-7a70-4d68-a881-08da2691a605
X-MS-TrafficTypeDiagnostic: AM6PR04MB6583:EE_
X-Microsoft-Antispam-PRVS: 
	<AM6PR04MB6583BC3C26D48FD8450DB17AECF89@AM6PR04MB6583.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AVjKxAri2TOT77v8Ktl7MPHIC4nWxftoouIQsFSMFvLOQsF6X1VFdZc7iFW9YyMwoG1I8hMeez8yWpRp82+K0g+6NusEXBfXfHr9GCKMvUrz8CzHgwqk6bWa/OmVI0YGukC2uTzaVrLGSVrs1NuhLu5q3VlEeTB+zOmKwuniFayu9oGn5oPASrARs7rKlPGPedbLruHIvBpouy70dJA2gGmKY1rgql4yiW47D7Ih8qV4vZQtAEDqLaUo/nrrGrtUtKEJm5iPdptsaukLbx4Nbp+Ep3ZZF7hFudeeL0qgIi6pqYba80XV1FdJvfmB+aBt6sgF7ErnNMeRv9v1UlN7In2MRH0eXg1a8Vo51hkMq+2nhzPXK6uNnQf1mhbb3LgaLmlr7JnIA2E1X3Ojgy9hO2si22+QiwS6ehfKFdjQIzFtYoUqiRIW7vd0OrXaGCbw4EE5p4F6U5gQya6Whd0I8fDygLMfsC7WQZeRHu9322Pa7OfhxBzwHWYAdr6ucby8shYIr/Z+tRE0zLDNrD4Bm+ZdwslCUBL88EUsptdtL7SvOMlIQ1BMB0Ecj/ywoEGYGRXa5bl2Ujq/+5FTNW7RnW4LxylqNQx6OXqzJedEsaGyQNFn9CpBTfzgP5AIHoJuMY5C5BgVCxlpn8dySKNNnKWkn7YAWY6+D3FZuW/8ZXVAuXlxnijfGF0nnulx08n7
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(376002)(39830400003)(346002)(136003)(396003)(36840700001)(46966006)(40480700001)(2906002)(36756003)(81166007)(82310400005)(5660300002)(508600001)(70586007)(6916009)(316002)(42186006)(70206006)(8676002)(36860700001)(26005)(83380400001)(86362001)(44832011)(8936002)(30864003)(4326008)(336012)(186003)(2616005)(47076005)(107886003)(1076003);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:22.3067
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 471eadec-7a70-4d68-a881-08da2691a605
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT003.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6583
X-TM-AS-ERS: 104.47.17.107-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--6.188900-4.000000
X-TMASE-MatchedRID: JQzBjI30y8cJZTtfNSpVibnHu4BcYSmtP8UQejhp29rAuQ0xDMaXkH4q
	tYI9sRE/KWDiOlctVrMsl4wNHv2V1qhcbBawps00yCvBIqsqjUfvG0/D/wjsdA3H/quqvfm40A4
	5IAXRxM17lDwo3ADxWZ+lLx92IzG5Z/BO1YTyvqbPtRnYhgu+5NhQO8CvZj/XxeXyNOAaNeKnoz
	pkCB2KZOizH5nuc4ffey+HceM/tEAgLGzZISHnAQUkbxmZfIp1joRIaAJe+CgiBHFGm3BvRMDlp
	28LM+NynVDT62eTguEHiBVKKaTKWTa7IBuOPthElTsGW3DmpUspA2ExuipmWrs3Yh2IOCYzFmWO
	XOcXhvP93kA1ImA+YDaRYhTCl/DReRo9SVpFyixntEdzQBf3IQT2OEnoCt48Br7dUnIrjPa6k6K
	y999wUGjgSQDPsC0c1/J/9lMmdnO52NE9L0fCNLxygpRxo469NUSduuqYHDuu9yzHHu0ZiT6A6/
	U7ZwHgULd14sEtBkGZjh1sP0xNhsGK+Foq9+Eo+GYt8f/VhTvEybY/hBC6uuX3QlUHePIKAG0zw
	X6Z64MP84WlxIC/C9kxcnCbMe2ylwV2iaAfSWdRGaeOJTnMWxnUJ0Ek6yhjxEHRux+uk8h+ICqu
	Ni0WJEZie4SGLCIT8Gzh4xxq0/if8QwZ94kF0EM2OIUy/z5sftwZ3X11IV0=
X-TMASE-XGENCLOUD: 1ff5cc26-e7ab-4a7c-9149-56a044749ac0-0-0-200-0
X-TM-Deliver-Signature: 550E055018927FF1F0E32AD3EE3C6652
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873624;
	bh=GPzH95uiD1lOQx3TOn6cTKDMCjLwYO1HztjXWLV7Vtk=; l=13885;
	h=From:To:Date;
	b=OfFClDbJH+gxbaV4tDl6uhOPuGLA+B+3YAEixXPYfGx5NbRcjdwSFWWqiXxZt1dAJ
	 W4YVfFI2nLTLtIKKVzw3OUDcEiSuWJIViYeEyiOw+ES82Mn1IcqTlOB2UfVg+6kHJp
	 Wfz9NZ3XfmejbL9VYiXQdHrejQfHcUN6cDGksVirfBg8HlVeJuOq2YN1cmEaeQgK2w
	 Y5mVqHHKSy5RZOqv7dHqimCFPZ171QhHjUO7eVeQXc//lViXytOXsGkaUjnB6q/pim
	 SYXInylZtSCnXzfg6CZp9yQvjvUTQRWmZrrdy9vlKhT8A1nQgqOgKeV/dkqftznXE0
	 wVDWWYM7H/ciw==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56862

Limitation is that splash screen is drawn only on the first connector.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 Makefile.am   |  12 +++-
 configure.ac  |   9 +++
 psplash-drm.c | 179 +++++++++++++++++---------------------------------
 psplash-drm.h |  17 +++++
 psplash.c     |  52 +++++++++++----
 5 files changed, 135 insertions(+), 134 deletions(-)
 create mode 100644 psplash-drm.h

diff --git a/Makefile.am b/Makefile.am
index 375b926..c3d4f03 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -8,12 +8,20 @@ psplash_SOURCES =3D psplash.c psplash.h psplash-fb.c ps=
plash-fb.h \
 		  psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h \
 		  psplash-draw.c psplash-draw.h
 BUILT_SOURCES =3D psplash-poky-img.h psplash-bar-img.h
+psplash_CPPFLAGS =3D
+psplash_LDFLAGS =3D
=20
 psplash_write_SOURCES =3D psplash-write.c psplash.h
=20
+if ENABLE_DRM
+psplash_SOURCES +=3D psplash-drm.c psplash-drm.h
+psplash_CPPFLAGS +=3D $(LIBDRM_CFLAGS) -DENABLE_DRM
+psplash_LDFLAGS +=3D $(LIBDRM_LIBS)
+endif
+
 if HAVE_SYSTEMD
-psplash_CPPFLAGS =3D $(SYSTEMD_CFLAGS) -DHAVE_SYSTEMD
-psplash_LDFLAGS=3D $(SYSTEMD_LIBS)
+psplash_CPPFLAGS +=3D $(SYSTEMD_CFLAGS) -DHAVE_SYSTEMD
+psplash_LDFLAGS +=3D $(SYSTEMD_LIBS)
 bin_PROGRAMS +=3D psplash-systemd
 psplash_systemd_CPPFLAGS =3D $(SYSTEMD_CFLAGS)
 psplash_systemd_LDFLAGS=3D $(SYSTEMD_LIBS)
diff --git a/configure.ac b/configure.ac
index 2a7da91..2e5c4f5 100644
--- a/configure.ac
+++ b/configure.ac
@@ -12,6 +12,15 @@ if test "x$GCC" =3D "xyes"; then
         GCC_FLAGS=3D"-g -Wall -Wextra"
 fi
=20
+AC_ARG_ENABLE(drm,
+    AS_HELP_STRING([--enable-drm], [enable drm backend (default is 'no')=
]))
+
+AS_IF([test "x$enable_drm" =3D "xyes"], [
+    PKG_CHECK_MODULES(LIBDRM, libdrm)
+])
+
+AM_CONDITIONAL([ENABLE_DRM], [test "x$enable_drm" =3D "xyes"])
+
 AC_ARG_WITH([systemd], AS_HELP_STRING([--with-systemd], [Build with syst=
emd
 	     support]))
=20
diff --git a/psplash-drm.c b/psplash-drm.c
index c9a9f5c..30850ed 100644
--- a/psplash-drm.c
+++ b/psplash-drm.c
@@ -26,10 +26,8 @@
  * provided by some external library.
  */
=20
-#define _GNU_SOURCE
 #include <errno.h>
 #include <fcntl.h>
-#include <stdbool.h>
 #include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -39,6 +37,7 @@
 #include <unistd.h>
 #include <xf86drm.h>
 #include <xf86drmMode.h>
+#include "psplash-drm.h"
=20
 struct modeset_dev;
 static int modeset_find_crtc(int fd, drmModeRes *res, drmModeConnector *=
conn,
@@ -48,8 +47,6 @@ static int modeset_setup_dev(int fd, drmModeRes *res, d=
rmModeConnector *conn,
 			     struct modeset_dev *dev);
 static int modeset_open(int *out, const char *node);
 static int modeset_prepare(int fd);
-static void modeset_draw(void);
-static void modeset_cleanup(int fd);
=20
 /*
  * When the linux kernel detects a graphics-card on your machine, it loa=
ds the
@@ -153,7 +150,7 @@ struct modeset_dev {
 	uint32_t stride;
 	uint32_t size;
 	uint32_t handle;
-	uint8_t *map;
+	void *map;
=20
 	drmModeModeInfo mode;
 	uint32_t fb;
@@ -187,7 +184,7 @@ static int modeset_prepare(int fd)
 {
 	drmModeRes *res;
 	drmModeConnector *conn;
-	unsigned int i;
+	int i;
 	struct modeset_dev *dev;
 	int ret;
=20
@@ -338,11 +335,10 @@ static int modeset_find_crtc(int fd, drmModeRes *re=
s, drmModeConnector *conn,
 			     struct modeset_dev *dev)
 {
 	drmModeEncoder *enc;
-	unsigned int i, j;
-	int32_t crtc;
+	int i, j, crtc;
 	struct modeset_dev *iter;
=20
-	/* first try the currently conected encoder+crtc */
+	/* first try the currently connected encoder+crtc */
 	if (conn->encoder_id)
 		enc =3D drmModeGetEncoder(fd, conn->encoder_id);
 	else
@@ -352,7 +348,7 @@ static int modeset_find_crtc(int fd, drmModeRes *res,=
 drmModeConnector *conn,
 		if (enc->crtc_id) {
 			crtc =3D enc->crtc_id;
 			for (iter =3D modeset_list; iter; iter =3D iter->next) {
-				if (iter->crtc =3D=3D crtc) {
+				if (iter->crtc =3D=3D (uint32_t)crtc) {
 					crtc =3D -1;
 					break;
 				}
@@ -389,7 +385,7 @@ static int modeset_find_crtc(int fd, drmModeRes *res,=
 drmModeConnector *conn,
 			/* check that no other device already uses this CRTC */
 			crtc =3D res->crtcs[j];
 			for (iter =3D modeset_list; iter; iter =3D iter->next) {
-				if (iter->crtc =3D=3D crtc) {
+				if (iter->crtc =3D=3D (uint32_t)crtc) {
 					crtc =3D -1;
 					break;
 				}
@@ -503,6 +499,12 @@ err_destroy:
 	return ret;
 }
=20
+static void psplash_drm_flip(PSplashCanvas *canvas, int sync)
+{
+	(void)canvas;
+	(void)sync;
+}
+
 /*
  * Finally! We have a connector with a suitable CRTC. We know which mode=
 we want
  * to use and we have a framebuffer of the correct size that we can writ=
e to.
@@ -532,155 +534,89 @@ err_destroy:
  * also often not guaranteed. So instead, we only use one connector per =
CRTC.
  *
  * Before calling drmModeSetCrtc() we also save the current CRTC configu=
ration.
- * This is used in modeset_cleanup() to restore the CRTC to the same mod=
e as was
- * before we changed it.
+ * This is used in psplash_drm_destroy() to restore the CRTC to the same=
 mode as
+ * was before we changed it.
  * If we don't do this, the screen will stay blank after we exit until a=
nother
  * application performs modesetting itself.
  */
=20
-int main(int argc, char **argv)
+PSplashDRM* psplash_drm_new(int angle, int dev_id)
 {
-	int ret, fd;
-	const char *card;
+	PSplashDRM *drm =3D NULL;
+	int ret;
+	char card[] =3D "/dev/dri/card0";
 	struct modeset_dev *iter;
=20
-	/* check which DRM device to open */
-	if (argc > 1)
-		card =3D argv[1];
-	else
-		card =3D "/dev/dri/card0";
+	if ((drm =3D malloc(sizeof(*drm))) =3D=3D NULL) {
+		perror("malloc");
+		goto error;
+	}
+	drm->canvas.priv =3D drm;
+	drm->canvas.flip =3D psplash_drm_flip;
+
+	if (dev_id > 0 && dev_id < 10) {
+		// Conversion from integer to ascii.
+		card[13] =3D dev_id + 48;
+	}
=20
 	fprintf(stderr, "using card '%s'\n", card);
=20
 	/* open the DRM device */
-	ret =3D modeset_open(&fd, card);
+	ret =3D modeset_open(&drm->fd, card);
 	if (ret)
-		goto out_return;
+		goto error;
=20
 	/* prepare all connectors and CRTCs */
-	ret =3D modeset_prepare(fd);
+	ret =3D modeset_prepare(drm->fd);
 	if (ret)
-		goto out_close;
+		goto error;
=20
 	/* perform actual modesetting on each found connector+CRTC */
 	for (iter =3D modeset_list; iter; iter =3D iter->next) {
-		iter->saved_crtc =3D drmModeGetCrtc(fd, iter->crtc);
-		ret =3D drmModeSetCrtc(fd, iter->crtc, iter->fb, 0, 0,
+		iter->saved_crtc =3D drmModeGetCrtc(drm->fd, iter->crtc);
+		ret =3D drmModeSetCrtc(drm->fd, iter->crtc, iter->fb, 0, 0,
 				     &iter->conn, 1, &iter->mode);
 		if (ret)
 			fprintf(stderr, "cannot set CRTC for connector %u (%d): %m\n",
 				iter->conn, errno);
 	}
=20
-	/* draw some colors for 5seconds */
-	modeset_draw();
-
-	/* cleanup everything */
-	modeset_cleanup(fd);
-
-	ret =3D 0;
-
-out_close:
-	close(fd);
-out_return:
-	if (ret) {
-		errno =3D -ret;
-		fprintf(stderr, "modeset failed with error %d: %m\n", errno);
-	} else {
-		fprintf(stderr, "exiting\n");
-	}
-	return ret;
+	drm->canvas.data =3D modeset_list->map;
+	drm->canvas.width =3D modeset_list->width;
+	drm->canvas.height =3D modeset_list->height;
+	drm->canvas.bpp =3D 32;
+	drm->canvas.stride =3D modeset_list->stride;
+	drm->canvas.angle =3D angle;
+	drm->canvas.rgbmode =3D RGB888;
+
+	return drm;
+error:
+	psplash_drm_destroy(drm);
+	return NULL;
 }
=20
 /*
- * A short helper function to compute a changing color value. No need to
- * understand it.
- */
-
-static uint8_t next_color(bool *up, uint8_t cur, unsigned int mod)
-{
-	uint8_t next;
-
-	next =3D cur + (*up ? 1 : -1) * (rand() % mod);
-	if ((*up && next < cur) || (!*up && next > cur)) {
-		*up =3D !*up;
-		next =3D cur;
-	}
-
-	return next;
-}
-
-/*
- * modeset_draw(): This draws a solid color into all configured framebuf=
fers.
- * Every 100ms the color changes to a slightly different color so we get=
 some
- * kind of smoothly changing color-gradient.
- *
- * The color calculation can be ignored as it is pretty boring. So the
- * interesting stuff is iterating over "modeset_list" and then through a=
ll lines
- * and width. We then set each pixel individually to the current color.
- *
- * We do this 50 times as we sleep 100ms after each redraw round. This m=
akes
- * 50*100ms =3D 5000ms =3D 5s so it takes about 5seconds to finish this =
loop.
- *
- * Please note that we draw directly into the framebuffer. This means th=
at you
- * will see flickering as the monitor might refresh while we redraw the =
screen.
- * To avoid this you would need to use two framebuffers and a call to
- * drmModeSetCrtc() to switch between both buffers.
- * You can also use drmModePageFlip() to do a vsync'ed pageflip. But thi=
s is
- * beyond the scope of this document.
- */
-
-static void modeset_draw(void)
-{
-	uint8_t r, g, b;
-	bool r_up, g_up, b_up;
-	unsigned int i, j, k, off;
-	struct modeset_dev *iter;
-
-	srand(time(NULL));
-	r =3D rand() % 0xff;
-	g =3D rand() % 0xff;
-	b =3D rand() % 0xff;
-	r_up =3D g_up =3D b_up =3D true;
-
-	for (i =3D 0; i < 50; ++i) {
-		r =3D next_color(&r_up, r, 20);
-		g =3D next_color(&g_up, g, 10);
-		b =3D next_color(&b_up, b, 5);
-
-		for (iter =3D modeset_list; iter; iter =3D iter->next) {
-			for (j =3D 0; j < iter->height; ++j) {
-				for (k =3D 0; k < iter->width; ++k) {
-					off =3D iter->stride * j + k * 4;
-					*(uint32_t*)&iter->map[off] =3D
-						     (r << 16) | (g << 8) | b;
-				}
-			}
-		}
-
-		usleep(100000);
-	}
-}
-
-/*
- * modeset_cleanup(fd): This cleans up all the devices we created during
+ * psplash_drm_destroy(drm): This cleans up all the devices we created d=
uring
  * modeset_prepare(). It resets the CRTCs to their saved states and deal=
locates
  * all memory.
  * It should be pretty obvious how all of this works.
  */
=20
-static void modeset_cleanup(int fd)
+void psplash_drm_destroy(PSplashDRM *drm)
 {
 	struct modeset_dev *iter;
 	struct drm_mode_destroy_dumb dreq;
=20
+	if (!drm)
+		return;
+
 	while (modeset_list) {
 		/* remove from global list */
 		iter =3D modeset_list;
 		modeset_list =3D iter->next;
=20
 		/* restore saved CRTC configuration */
-		drmModeSetCrtc(fd,
+		drmModeSetCrtc(drm->fd,
 			       iter->saved_crtc->crtc_id,
 			       iter->saved_crtc->buffer_id,
 			       iter->saved_crtc->x,
@@ -694,16 +630,19 @@ static void modeset_cleanup(int fd)
 		munmap(iter->map, iter->size);
=20
 		/* delete framebuffer */
-		drmModeRmFB(fd, iter->fb);
+		drmModeRmFB(drm->fd, iter->fb);
=20
 		/* delete dumb buffer */
 		memset(&dreq, 0, sizeof(dreq));
 		dreq.handle =3D iter->handle;
-		drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
+		drmIoctl(drm->fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
=20
 		/* free allocated memory */
 		free(iter);
 	}
+
+	close(drm->fd);
+	free(drm);
 }
=20
 /*
diff --git a/psplash-drm.h b/psplash-drm.h
new file mode 100644
index 0000000..e987fd6
--- /dev/null
+++ b/psplash-drm.h
@@ -0,0 +1,17 @@
+#ifndef _HAVE_PSPLASH_DRM_H
+#define _HAVE_PSPLASH_DRM_H
+
+#include "psplash-draw.h"
+
+typedef struct PSplashDRM
+{
+  PSplashCanvas canvas;
+  int fd;
+}
+PSplashDRM;
+
+void psplash_drm_destroy(PSplashDRM *drm);
+
+PSplashDRM* psplash_drm_new(int angle, int dev_id);
+
+#endif
diff --git a/psplash.c b/psplash.c
index 036dfb1..ebf8d7a 100644
--- a/psplash.c
+++ b/psplash.c
@@ -12,6 +12,9 @@
=20
 #include "psplash.h"
 #include "psplash-fb.h"
+#ifdef ENABLE_DRM
+#include "psplash-drm.h"
+#endif
 #include "psplash-config.h"
 #include "psplash-colors.h"
 #include "psplash-poky-img.h"
@@ -224,8 +227,11 @@ int
 main (int argc, char** argv)
 {
   char      *rundir;
-  int        pipe_fd, i =3D 0, angle =3D 0, fbdev_id =3D 0, ret =3D 0;
-  PSplashFB *fb;
+  int        pipe_fd, i =3D 0, angle =3D 0, dev_id =3D 0, use_drm =3D 0,=
 ret =3D 0;
+  PSplashFB *fb =3D NULL;
+#ifdef ENABLE_DRM
+  PSplashDRM *drm =3D NULL;
+#endif
   PSplashCanvas *canvas;
   bool       disable_console_switch =3D FALSE;
=20
@@ -247,16 +253,24 @@ main (int argc, char** argv)
         continue;
       }
=20
-    if (!strcmp(argv[i],"-f") || !strcmp(argv[i],"--fbdev"))
+    if (!strcmp(argv[i], "-f") || !strcmp(argv[i], "--fbdev") ||
+        !strcmp(argv[i], "-d") || !strcmp(argv[i], "--dev"))
       {
         if (++i >=3D argc) goto fail;
-        fbdev_id =3D atoi(argv[i]);
+        dev_id =3D atoi(argv[i]);
         continue;
       }
=20
+#ifdef ENABLE_DRM
+    if (!strcmp(argv[i], "--drm")) {
+        use_drm =3D 1;
+        continue;
+    }
+#endif
+
     fail:
       fprintf(stderr,
-              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|2=
70>][-f|--fbdev <0..9>]\n",
+              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|2=
70>][-f|--fbdev|-d|--dev <0..9>][--drm]\n",
               argv[0]);
       exit(-1);
   }
@@ -291,12 +305,21 @@ main (int argc, char** argv)
   if (!disable_console_switch)
     psplash_console_switch ();
=20
-  if ((fb =3D psplash_fb_new(angle,fbdev_id)) =3D=3D NULL)
-    {
-	  ret =3D -1;
-	  goto fb_fail;
+  if (use_drm) {
+#ifdef ENABLE_DRM
+    if ((drm =3D psplash_drm_new(angle, dev_id)) =3D=3D NULL) {
+      ret =3D -1;
+      goto error;
+    }
+    canvas =3D &drm->canvas;
+#endif
+  } else {
+    if ((fb =3D psplash_fb_new(angle, dev_id)) =3D=3D NULL) {
+      ret =3D -1;
+      goto error;
     }
-  canvas =3D &fb->canvas;
+    canvas =3D &fb->canvas;
+  }
=20
 #ifdef HAVE_SYSTEMD
   sd_notify(0, "READY=3D1");
@@ -349,9 +372,14 @@ main (int argc, char** argv)
=20
   psplash_main(canvas, pipe_fd, 0);
=20
-  psplash_fb_destroy (fb);
+  if (fb)
+    psplash_fb_destroy(fb);
+#ifdef ENABLE_DRM
+  if (drm)
+    psplash_drm_destroy(drm);
+#endif
=20
- fb_fail:
+ error:
   unlink(PSPLASH_FIFO);
=20
   if (!disable_console_switch)
--=20
2.30.2


