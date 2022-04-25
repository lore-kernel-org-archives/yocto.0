Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1EC54F3F
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.25])
 by mx.groups.io with SMTP id smtpd.web12.26787.1650873656109728942
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=oufhHCY0;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.25,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.14.54_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id C43A4100004DB
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:54 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873625.276000
X-TM-MAIL-UUID: cd84c2d2-57cd-445d-9239-306cc861a885
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.14.54])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 43AA81000030B
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8dbu5o1p2boDZW4lSb1Dx3af4S9IfduTazhBkVThm/0Rp2G5vsW1PnNlPfLIEaJ7sfm/oYFKnuK2b0EXL0qivVo8dKE5umnBvI36klXPm5dkUusz4MNHF2npkJjmq+BYJLm2l6RxaszwzqNPUTizLitG+Fkl2k0TPn+MkIksGD3orqtexmru9UYt6YLpTdApJxTbDSBFraKV11X18NY9aI3phTD0jijKRZkgYyIp8oYnkL8BBEF0ZRIDhTQVE2Q2ZcMS36RTGoD008Tpj93sonJPy3uxtwBFvfawtwHv2sIU5N4ygAz6y/nDmLaO0nzSOSJCQ/QXT0XH+bjxcSu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Dc55vEstd5PDC/UCDmMhloxg+xKgIo6OSQ8L/2fdDk=;
 b=f/91UTYIR52VJcQXOMiwRo7CrbmFh8eZZxjhdNWEksT0yPS0W+W8y7Y7oU4Dnw+uypyMy8XbcVzit3j6CquGxC0ZJW1n2rGbmLo/m/vju8FvyfrAh2xWjUkwwgAlSGvek2EWbJWbHGzPzfsiLO1QfjziX2eyU1qC2EY4Fn4jh2HN82eqbLH7tSTk73bJ9Ef+1wSXLEKm04cPIB4WOcAK0h8VuX9gnsIGqWkNmcNnuxeON80zS8LRnpDoTdHjpPaIKTdcSOjSoTMew3wBvGKsCheTF811ntNdl2AzTxQWFFbifLRtCcxvKaAenrexKbil8ctNffQnDNxS7T97MEu0pg==
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
Subject: [psplash][RFC PATCH 14/14] psplash-drm.c: Implement double buffering
Date: Mon, 25 Apr 2022 10:59:54 +0300
Message-Id: <20220425075954.10427-15-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 8c3c4d2f-366f-4918-fd0b-08da2691a687
X-MS-TrafficTypeDiagnostic: DU2PR04MB9018:EE_
X-Microsoft-Antispam-PRVS: 
	<DU2PR04MB901814A46A3697FC9D8F2364ECF89@DU2PR04MB9018.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	809FLHsZe6qUSvSLjHVNoVouFLTK4ov9PYvNPxybAcB0ATJG08vDvq6nvjphfVALE5Z5hlc/11KjyV2gTRFRK/hM6kZcMqB/mVcl+JWY7uQCW6NwswnBumWj8qFKprbRtxiDZRw3gcWVX2hp8Nb03PdqJ35jtvgbw7sLuiLDhtEoKkeQM652G9uihTSVXreyfDDU83cnpq6BbQUp9api29jkWqM3uPaux32ufLzB6T51S34LQshmOyfElLEjFQaocCDQu/jJFm3w6Q13IiC1b8tVKmZoyBDgrG8jaM4WU9cu7jXg7R5HF9kXsdhhMUKxvQa+gDgpj52qmpR5VikHmtiTIiXcbetd+/+Zv+cXp3Dq5vb/qVzj8BlIzSeHiCh0bKvJIlCm3694dPgaJXnGejGuvmONueVkkGypUS1kc3DxokD9yC1/S8dOWh3nANjWmIe01fURQGImvwhgjG2o6Lzgbc5CvomBQjio/r5/hwEiPeEPFo7WwAzWsqtEriYbLmzsgzCnnm3IlATCbzB7g9HMU7njr9qnU4nxqsuZAmj3x7B1XfcLy4Yc50d7n/kEx2Y951kx1cCp2rhqnbLqPS808Q503jMdMQsBLzRUXsgBbP1zWtuCXarYJOnpEbntjeuZESGUQ2dP3Aowg3J6G9qaxjQFVb6zR3Ddkl1MDjKI0CvBJj3DeVBrp7SArbuTCJEWvstUS3bvub8ONSFpRYTNSO+wkJxGv6NLoj0hhvCnEFR2PFGNxqKXNFTE4d8R4Pkri+z1hQDS3pZuNKZKxg9CvHJaC3qG1y6yKhGrTZg=
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(396003)(39830400003)(346002)(136003)(376002)(46966006)(36840700001)(4326008)(1076003)(336012)(70586007)(186003)(508600001)(2616005)(107886003)(70206006)(8676002)(47076005)(26005)(966005)(316002)(36756003)(42186006)(81166007)(6916009)(36860700001)(2906002)(82310400005)(40480700001)(86362001)(8936002)(44832011)(30864003)(5660300002)(83380400001)(334744004);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:23.1452
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8c3c4d2f-366f-4918-fd0b-08da2691a687
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT008.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9018
X-TM-AS-ERS: 104.47.14.54-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--6.860500-4.000000
X-TMASE-MatchedRID: R7L2HT/hrj82UEKHDN0wzE7nLUqYrlslFIuBIWrdOePfUZT83lbkEB/a
	4gy0uyn1Zf0PKG4nSisaXFa2Hul38Aw8Nmue9wz3EVuC0eNRYvJ955Y1Xr69w57fzNec2D1D+/K
	qneiC8jbknJx2koMJ78gmG/32DThg+jikdSWVZvOGOUGPCmibU1kN0eJOT05wLEzDQUyQGVkQpB
	sX6bvecfG+qK1HFo4elnuvuutfYjRFqOm7OcUhtxIRh9wkXSlFlwT0XposETVr83Ad0EHF0RkdJ
	i18bDYpcVQBsXJUGz5pM4uQJ+eFBmptPhjDCRugPMcAlOC0qrCd2Wz0X3OaLf2KWAuA/s+whVit
	winLxPz9dU4/wVV+opEaMREJDt1RdR/G8OvKIg8LbigRnpKlKSPzRlrdFGDw2bMh+MiMuuS7bkR
	V0YmjBbJ3vuyiY7CXsn50u+gkSlbGZ5s4jRI67w==
X-TMASE-XGENCLOUD: 41888092-cea1-4b86-a564-c71377ebe712-0-0-200-0
X-TM-Deliver-Signature: 3161BD8F64FAA02ED5B05E072C4B367D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873654;
	bh=vwYcJ5+LhgT74pAb/maziCXwr9PyXRAIm8859PEOx7U=; l=10852;
	h=From:To:Date;
	b=oufhHCY0hf5/Kv76QF+UxsvhfxmoM9nIJ1jaO2UzVS/ct1dQUBzscexT6nWK3Km+9
	 nPm4GehyZF9fx+qcI/9Ot702Tow3pJ3lYGEwvl1dX0wIzRKNkEviq3fHCMpMwVQ32q
	 NMtyNdiWiq9lyQw1qbeu7lWnX+HhQs3WaoSCELcyJhABax/zjM9gvPp7mxM0rvzkSP
	 rrJ+kEbrpLKnNsoKZ8YT6Z3T6NDDu1rRFh+7hh5G7NhjcJxspxGiFlIWDzgnikXpyu
	 zUh451nQ/J4aLJJErae1f8csAcw+i9+6BjU6MJDhNarQQdawf0JhBBwMQstp4Gupcr
	 V+ZQVedTiUCxw==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56873

Based on
https://github.com/dvdhrm/docs/blob/master/drm-howto/modeset-double-buffe=
red.c

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-drm.c | 176 +++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 140 insertions(+), 36 deletions(-)

diff --git a/psplash-drm.c b/psplash-drm.c
index 5e56286..fcb7507 100644
--- a/psplash-drm.c
+++ b/psplash-drm.c
@@ -29,6 +29,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <stdint.h>
+#include <inttypes.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -41,10 +42,12 @@
=20
 #define MIN(a,b) ((a) < (b) ? (a) : (b))
=20
+struct modeset_buf;
 struct modeset_dev;
 static int modeset_find_crtc(int fd, drmModeRes *res, drmModeConnector *=
conn,
 			     struct modeset_dev *dev);
-static int modeset_create_fb(int fd, struct modeset_dev *dev);
+static int modeset_create_fb(int fd, struct modeset_buf *buf);
+static void modeset_destroy_fb(int fd, struct modeset_buf *buf);
 static int modeset_setup_dev(int fd, drmModeRes *res, drmModeConnector *=
conn,
 			     struct modeset_dev *dev);
 static int modeset_open(int *out, const char *node);
@@ -144,18 +147,45 @@ static int modeset_open(int *out, const char *node)
  * }
  */
=20
-struct modeset_dev {
-	struct modeset_dev *next;
+/*
+ * Previously, we used the modeset_dev objects to hold buffer informatio=
ns, too.
+ * Technically, we could have split them but avoided this to make the
+ * example simpler.
+ * However, in this example we need 2 buffers. One back buffer and one f=
ront
+ * buffer. So we introduce a new structure modeset_buf which contains ev=
erything
+ * related to a single buffer. Each device now gets an array of two of t=
hese
+ * buffers.
+ * Each buffer consists of width, height, stride, size, handle, map and =
fb-id.
+ * They have the same meaning as before.
+ *
+ * Each device also gets a new integer field: front_buf. This field cont=
ains the
+ * index of the buffer that is currently used as front buffer / scanout =
buffer.
+ * In our example it can be 0 or 1. We flip it by using XOR:
+ *   dev->front_buf ^=3D dev->front_buf
+ *
+ * Everything else stays the same.
+ */
=20
+struct modeset_buf {
 	uint32_t width;
 	uint32_t height;
 	uint32_t stride;
 	uint32_t size;
 	uint32_t handle;
 	void *map;
+	uint32_t fb;
+};
+
+struct modeset_dev {
+	struct modeset_dev *next;
+
+	uint32_t width;
+	uint32_t height;
+
+	unsigned int front_buf;
+	struct modeset_buf bufs[2];
=20
 	drmModeModeInfo mode;
-	uint32_t fb;
 	uint32_t conn;
 	uint32_t crtc;
 	drmModeCrtc *saved_crtc;
@@ -292,10 +322,15 @@ static int modeset_setup_dev(int fd, drmModeRes *re=
s, drmModeConnector *conn,
 		return -EFAULT;
 	}
=20
-	/* copy the mode information into our device structure */
+	/* copy the mode information into our device structure and into both
+	 * buffers */
 	memcpy(&dev->mode, &conn->modes[0], sizeof(dev->mode));
 	dev->width =3D conn->modes[0].hdisplay;
 	dev->height =3D conn->modes[0].vdisplay;
+	dev->bufs[0].width =3D dev->width;
+	dev->bufs[0].height =3D dev->height;
+	dev->bufs[1].width =3D dev->width;
+	dev->bufs[1].height =3D dev->height;
 	fprintf(stderr, "mode for connector %u is %ux%u\n",
 		conn->connector_id, dev->width, dev->height);
=20
@@ -307,14 +342,30 @@ static int modeset_setup_dev(int fd, drmModeRes *re=
s, drmModeConnector *conn,
 		return ret;
 	}
=20
-	/* create a framebuffer for this CRTC */
-	ret =3D modeset_create_fb(fd, dev);
+	/* create framebuffer #1 for this CRTC */
+	ret =3D modeset_create_fb(fd, &dev->bufs[0]);
 	if (ret) {
 		fprintf(stderr, "cannot create framebuffer for connector %u\n",
 			conn->connector_id);
 		return ret;
 	}
=20
+	/* create framebuffer #2 for this CRTC */
+	ret =3D modeset_create_fb(fd, &dev->bufs[1]);
+	if (ret) {
+		fprintf(stderr, "cannot create framebuffer for connector %u\n",
+			conn->connector_id);
+		modeset_destroy_fb(fd, &dev->bufs[0]);
+		return ret;
+	}
+
+	if (dev->bufs[0].size !=3D dev->bufs[1].size) {
+		fprintf(stderr, "front buffer size %" PRIu32 " does not match "
+				"back buffer size %" PRIu32 "\n",
+				dev->bufs[0].size, dev->bufs[1].size);
+		return -1;
+	}
+
 	return 0;
 }
=20
@@ -441,7 +492,7 @@ static int modeset_find_crtc(int fd, drmModeRes *res,=
 drmModeConnector *conn,
  * memory directly via the dev->map memory map.
  */
=20
-static int modeset_create_fb(int fd, struct modeset_dev *dev)
+static int modeset_create_fb(int fd, struct modeset_buf *buf)
 {
 	struct drm_mode_create_dumb creq;
 	struct drm_mode_destroy_dumb dreq;
@@ -450,8 +501,8 @@ static int modeset_create_fb(int fd, struct modeset_d=
ev *dev)
=20
 	/* create dumb buffer */
 	memset(&creq, 0, sizeof(creq));
-	creq.width =3D dev->width;
-	creq.height =3D dev->height;
+	creq.width =3D buf->width;
+	creq.height =3D buf->height;
 	creq.bpp =3D 32;
 	ret =3D drmIoctl(fd, DRM_IOCTL_MODE_CREATE_DUMB, &creq);
 	if (ret < 0) {
@@ -459,13 +510,13 @@ static int modeset_create_fb(int fd, struct modeset=
_dev *dev)
 			errno);
 		return -errno;
 	}
-	dev->stride =3D creq.pitch;
-	dev->size =3D creq.size;
-	dev->handle =3D creq.handle;
+	buf->stride =3D creq.pitch;
+	buf->size =3D creq.size;
+	buf->handle =3D creq.handle;
=20
 	/* create framebuffer object for the dumb-buffer */
-	ret =3D drmModeAddFB(fd, dev->width, dev->height, 24, 32, dev->stride,
-			   dev->handle, &dev->fb);
+	ret =3D drmModeAddFB(fd, buf->width, buf->height, 24, 32, buf->stride,
+			   buf->handle, &buf->fb);
 	if (ret) {
 		fprintf(stderr, "cannot create framebuffer (%d): %m\n",
 			errno);
@@ -475,7 +526,7 @@ static int modeset_create_fb(int fd, struct modeset_d=
ev *dev)
=20
 	/* prepare buffer for memory mapping */
 	memset(&mreq, 0, sizeof(mreq));
-	mreq.handle =3D dev->handle;
+	mreq.handle =3D buf->handle;
 	ret =3D drmIoctl(fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq);
 	if (ret) {
 		fprintf(stderr, "cannot map dumb buffer (%d): %m\n",
@@ -485,9 +536,9 @@ static int modeset_create_fb(int fd, struct modeset_d=
ev *dev)
 	}
=20
 	/* perform actual memory mapping */
-	dev->map =3D mmap(0, dev->size, PROT_READ | PROT_WRITE, MAP_SHARED,
+	buf->map =3D mmap(0, buf->size, PROT_READ | PROT_WRITE, MAP_SHARED,
 		        fd, mreq.offset);
-	if (dev->map =3D=3D MAP_FAILED) {
+	if (buf->map =3D=3D MAP_FAILED) {
 		fprintf(stderr, "cannot mmap dumb buffer (%d): %m\n",
 			errno);
 		ret =3D -errno;
@@ -495,23 +546,73 @@ static int modeset_create_fb(int fd, struct modeset=
_dev *dev)
 	}
=20
 	/* clear the framebuffer to 0 */
-	memset(dev->map, 0, dev->size);
+	memset(buf->map, 0, buf->size);
=20
 	return 0;
=20
 err_fb:
-	drmModeRmFB(fd, dev->fb);
+	drmModeRmFB(fd, buf->fb);
 err_destroy:
 	memset(&dreq, 0, sizeof(dreq));
-	dreq.handle =3D dev->handle;
+	dreq.handle =3D buf->handle;
 	drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
 	return ret;
 }
=20
+/*
+ * modeset_destroy_fb() is a new function. It does exactly the reverse o=
f
+ * modeset_create_fb() and destroys a single framebuffer. The modeset.c =
example
+ * used to do this directly in modeset_cleanup().
+ * We simply unmap the buffer, remove the drm-FB and destroy the memory =
buffer.
+ */
+
+static void modeset_destroy_fb(int fd, struct modeset_buf *buf)
+{
+	struct drm_mode_destroy_dumb dreq;
+
+	/* unmap buffer */
+	munmap(buf->map, buf->size);
+
+	/* delete framebuffer */
+	drmModeRmFB(fd, buf->fb);
+
+	/* delete dumb buffer */
+	memset(&dreq, 0, sizeof(dreq));
+	dreq.handle =3D buf->handle;
+	drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
+}
+
 static void psplash_drm_flip(PSplashCanvas *canvas, int sync)
 {
-	(void)canvas;
+	PSplashDRM *drm =3D canvas->priv;
+	struct modeset_buf *buf;
+	int ret;
+
 	(void)sync;
+
+	/* pick a back buffer */
+	buf =3D &modeset_list->bufs[modeset_list->front_buf ^ 1];
+
+	/* set back buffer as a front buffer */
+	ret =3D drmModeSetCrtc(drm->fd, modeset_list->crtc, buf->fb, 0, 0,
+			&modeset_list->conn, 1, &modeset_list->mode);
+	if (ret) {
+		fprintf(stderr, "cannot flip CRTC for connector %u (%d): %m\n",
+			modeset_list->conn, errno);
+		return;
+	}
+
+	/* update front buffer index */
+	modeset_list->front_buf ^=3D 1;
+
+	/* update back buffer pointer */
+	drm->canvas.data =3D modeset_list->bufs[modeset_list->front_buf ^ 1].ma=
p;
+
+	/* Sync new front to new back when requested */
+	if (sync)
+		memcpy(modeset_list->bufs[modeset_list->front_buf ^ 1].map,
+			modeset_list->bufs[modeset_list->front_buf].map,
+			modeset_list->bufs[0].size);
 }
=20
 /*
@@ -555,6 +656,7 @@ PSplashDRM* psplash_drm_new(int angle, int dev_id)
 	int ret;
 	char card[] =3D "/dev/dri/card0";
 	struct modeset_dev *iter;
+	struct modeset_buf *buf;
=20
 	if ((drm =3D malloc(sizeof(*drm))) =3D=3D NULL) {
 		perror("malloc");
@@ -583,18 +685,28 @@ PSplashDRM* psplash_drm_new(int angle, int dev_id)
 	/* perform actual modesetting on each found connector+CRTC */
 	for (iter =3D modeset_list; iter; iter =3D iter->next) {
 		iter->saved_crtc =3D drmModeGetCrtc(drm->fd, iter->crtc);
-		ret =3D drmModeSetCrtc(drm->fd, iter->crtc, iter->fb, 0, 0,
+		buf =3D &iter->bufs[iter->front_buf];
+		ret =3D drmModeSetCrtc(drm->fd, iter->crtc, buf->fb, 0, 0,
 				     &iter->conn, 1, &iter->mode);
 		if (ret)
 			fprintf(stderr, "cannot set CRTC for connector %u (%d): %m\n",
 				iter->conn, errno);
 	}
=20
-	drm->canvas.data =3D modeset_list->map;
+	drm->canvas.data =3D modeset_list->bufs[modeset_list->front_buf ^ 1].ma=
p;
 	drm->canvas.width =3D modeset_list->width;
 	drm->canvas.height =3D modeset_list->height;
 	drm->canvas.bpp =3D 32;
-	drm->canvas.stride =3D modeset_list->stride;
+
+	if (modeset_list->bufs[0].stride !=3D modeset_list->bufs[1].stride) {
+		fprintf(stderr, "front buffer stride %" PRIu32 " does not match"
+				" back buffer stride %" PRIu32 "\n",
+				modeset_list->bufs[0].stride,
+				modeset_list->bufs[1].stride);
+		goto error;
+	}
+	drm->canvas.stride =3D modeset_list->bufs[0].stride;
+
 	drm->canvas.angle =3D angle;
 	drm->canvas.rgbmode =3D RGB888;
=20
@@ -614,7 +726,6 @@ error:
 void psplash_drm_destroy(PSplashDRM *drm)
 {
 	struct modeset_dev *iter;
-	struct drm_mode_destroy_dumb dreq;
=20
 	if (!drm)
 		return;
@@ -635,16 +746,9 @@ void psplash_drm_destroy(PSplashDRM *drm)
 			       &iter->saved_crtc->mode);
 		drmModeFreeCrtc(iter->saved_crtc);
=20
-		/* unmap buffer */
-		munmap(iter->map, iter->size);
-
-		/* delete framebuffer */
-		drmModeRmFB(drm->fd, iter->fb);
-
-		/* delete dumb buffer */
-		memset(&dreq, 0, sizeof(dreq));
-		dreq.handle =3D iter->handle;
-		drmIoctl(drm->fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
+		/* destroy framebuffers */
+		modeset_destroy_fb(drm->fd, &iter->bufs[1]);
+		modeset_destroy_fb(drm->fd, &iter->bufs[0]);
=20
 		/* free allocated memory */
 		free(iter);
--=20
2.30.2


