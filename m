Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86384C54F3E
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.5])
 by mx.groups.io with SMTP id smtpd.web09.26991.1650873647995482624
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=wpMvAbLN;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.5,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.2.51_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 707D9100022E1
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:46 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873626.373000
X-TM-MAIL-UUID: f3f5cc31-7339-428e-b8d6-c136d418ab96
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (unknown
 [104.47.2.51])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 5B5F510003741
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AR2FRaNdWUcez2lN6YhxOIo5o8hcw+o0IstIqs++K4e/TuwUqjpJL8oidfb6otZr/XJzmMvpH9mNAtabgvDPSXBUtMCu0jv/wK4yNbAzax9rWD2cEYFRWIY05eEWSM6tDMrvRS2+jjig7Y9jP3O8moJl0vO0wQFFyBW5vitPq9U9l5O93FzaEJGHiRQoxjw07Su5GIl07LsDb1BapbyfWMol54SZvuZL503is1Tp9Ubnqf0srsNQv3sPFJZqargDBuqLKSIsS15z8nMaaODqhwL3mCCocHR6Q3wzt8ShR7ijIRJlVZ0p/UED5VlgSlyXQLtDnzdwKNn/yvrpDO1kFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cw/pCck7whk3Si1UTHSKbyGbfs6yXnKUyvBcOuj0PMo=;
 b=VBm4L7tUakdEtR8n+P7jd5dgp+UkB65kbMdv+Xx+X87If7G77xpFuDFrVlQLJim23lQr0Zk1Qf8/RAQjIdVdD7Sc+95vZCwFFoeejhRrjhWpReKKbzkTaPeJQPhsXn9Yj8WPWjfuvOE+fS2Bpb/CjDm25kz1aj7lM8qsE2o51eEo7GsfHAfNjX0rzatG+rh5wTk/JLt59HLGcfsF9iUAfmuTqS4XcOfSHLztNOx48zKQ7imD4T/LnBIitBp8+sxP95kCqOWUe7vqFi7gGdMh8k2eCeGAWFELhH5YfZDU91K75eggjnj4tHZk5RD3JarYy+QqF2My3bjAf4W4baxgvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=temperror action=none
 header.from=opensynergy.com; dkim=none (message not signed); arc=none
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=temperror action=none header.from=opensynergy.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of opensynergy.com: DNS Timeout)
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 10/14] Import drm-howto modeset.c as
 psplash-drm.c
Date: Mon, 25 Apr 2022 10:59:50 +0300
Message-Id: <20220425075954.10427-11-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a810c750-14c4-432c-3515-08da2691a5d2
X-MS-TrafficTypeDiagnostic: AM7PR04MB7144:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR04MB7144AC71E5B511AFE8602CE0ECF89@AM7PR04MB7144.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yzYm+Q9XNn/knjd1okBOimo8gclQF+8T3IU/JrkXUVBzL2EemYv44mxBDPdMutppfZB+20UtK42qdGS8gAWSumKt+xRiPrDSaIdpW0aroGQcoJfB2r+zDWUPLAdUup5vo+iyxhK/Ylr413mwiq045NAwWMQhBNR3qp8J8Xe7lMtLOoPqY4T28fRhbOxXTEFnQx9xwXrjrt7NgVY+cZ/R1KqDg1sqtCku53Tx8eREQH3iUmss2Dx7xKnbF0ziRp3rQLZMPWYZgyiX3Sw/sl147CJZzoyYBWVV4wDEVMFwItU7GuSpGgh2EpmKnQzyJNfmyok0M+35riSAWBnrMc7fh3AdoMM1tiECmIWa76bCOTmViN6S4HTgFL/+4RbR9IYdpc8PddhjASyPteXfMUHOet1vrNj2re4D5E6sXOIWylASpJ7ghbtG/z3/V6sXepTdpj/HwxMj6W9k1Nt8uN+/Lqe5nt48t/uz7yqA4aNHyXsod3hGB82AYH/4OQfeb5VnjJNTKBeaG4rhUDDPUoKmdKKWJc26GmqlTCX8zZkvJv3v0nlAOmcn4qG7F/QkNP7d8tuoI3sj1Rz07bb+qQ1yjqHSq+WEWp2oYUPdC+vGd+bHGre87lS1qgQHkk8Ny5JRYAJCHOtT+SJHajbYE/N1pj7ncREVCQ+s+u+LwUFNj89s/Air2Bf5Go+qmPdDE42z8ChhyCyQY0e6mzjzH0be1VhGJqaKCNEpk6G8QazRjaNADtFLZJWkgSCUgHO9jZPlxKIWo6z24qSbA72OCq9qdWQtMDnz+UpdEq2MCY4e+dMhyFkQSJdDFhXSwFPGNclBxcq4u+yN0LGtPVY1pCJYPA==
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(346002)(136003)(396003)(376002)(39830400003)(36840700001)(46966006)(508600001)(86362001)(2616005)(8676002)(26005)(4326008)(966005)(316002)(42186006)(40480700001)(6916009)(70206006)(81166007)(70586007)(82310400005)(47076005)(19273905006)(336012)(30864003)(5660300002)(8936002)(63370400001)(63350400001)(36756003)(83380400001)(107886003)(1076003)(186003)(2906002)(44832011)(36860700001)(563064011);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:21.9695
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a810c750-14c4-432c-3515-08da2691a5d2
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT047.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7144
X-TM-AS-ERS: 104.47.2.51-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--25.997900-4.000000
X-TMASE-MatchedRID: IgNyDWy1nLJhaj10i6TXQMYv//yaWh0DP8UQejhp29q8j0eQ+IUAHQSD
	CUdk18Wif146W0iUu2tMCgkc3/BmTUwYXRRr2ymn2Sa33ZGXWdaBiLDUCsch28fASe7knCtthjs
	M6fjcAyn1YRrloPf+Jo3gkRYeMdM+O4lAcKQRwo3wlvzzUUaf2aIazKtJxIUHRLQWlsj7XhPHee
	xQAHDXfEZrarpjLj2L7ySOi2zbTPwK011Ivs0zFBqkhv3OdF4DSLyuC617NWmcpGufbGiAqCdBl
	ANff8yfkD7dBt4dE2nbhCyicp/JyBkdCXR28QKxcCpWIzs12NWn9jE2Rk+acqkUwB3MABAny7d+
	7uYYRNm+zvmBxjl7LpifsYTYhe3oVZsjdPpr5NiYh7QjWI3JDPUORLBtNVve33Nl3elSfso6WzX
	m6eJNYNg76o9q9XdftqD63GOAwvtVlMCAFPVZHi0x8J2DopENgesVjcAB/Vvl90JVB3jyCuPhs1
	7991vR3yKJ3jqLmA9YQP62QpRT7Iu21C7tun2gxrDvUMltogTnpmIrKZRxTrEoPl3jAkZdNE6mR
	LCupPicvGVeHmdfY5g8Up3LLwc2VPVUF2N3LyNv+ggm5QAi4ReK/B+WKxKsS3LxyJ8YfRQHjCTI
	F43I/czZXLR+atz9IBNGx6D5dgIOiGVwjkjOUIdlc1JaOB1TCCo+lsDuynXW2YYHslT0I1XKp+s
	scaSS1eKt+ktDRM90oU8EHuLaxh2FWI13Ey90kYD8wAZKsSDjLrHqvAiSy5F2kRRKjUQ9en4hsi
	SLu62smEouX0eLAkXHf81qWGNmzK+5MIDvDOV+yskgwrfsCyH5xd1Wn9PCmyiLZetSf8lRN1j+Z
	19Ne0kpbiYOUmwx33fj+sMArfMaMUyeC0staEkVAPr0TXS8
X-TMASE-XGENCLOUD: 5a135cd8-d730-4972-b9ba-d86a34aab610-0-0-200-0
X-TM-Deliver-Signature: 5F80333085747B7FB573FCA63FD99CE6
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873646;
	bh=9DRlDJ+eByMajORjoIDK2K/A22pTID7xPiFm+0ddhfs=; l=26714;
	h=From:To:Date;
	b=wpMvAbLNuM+aVhlFE3GFpmW6RD9Zp3Y47yKxmANMMVUYep0VynqDg6pE3FyD6sHtx
	 8L6jmP90WmQ6mgVmsDXc8lHhTZtbMfXFdI5lxRORyPBCigGIX7DdHl02ThxYfxiEhI
	 32qA9WfQtSY11wiR0MLW2v9paPLs66IFFGy7CZJF7g11KVVaKijSjW/D0Y4OyM2mBR
	 CA0+wRD8w8meTsxgaKsC3WyfTCTIhCvF/Yw1ojVtmhsFyXDcK6tdypGP1PcIQL0MUq
	 5H4LpyiTL8BRrVM287q+X5Lt6WeUHt7gHxhfgVZOYN1SLfPi3Zv/TYYL8Tm4GJtifM
	 dBBgCQ1K3ffDg==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56870

Imported as is from
repo: https://github.com/dvdhrm/docs.git
branch: master
commit: fc5c63f
path: drm-howto/modeset.c

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-drm.c | 735 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 735 insertions(+)
 create mode 100644 psplash-drm.c

diff --git a/psplash-drm.c b/psplash-drm.c
new file mode 100644
index 0000000..c9a9f5c
--- /dev/null
+++ b/psplash-drm.c
@@ -0,0 +1,735 @@
+/*
+ * modeset - DRM Modesetting Example
+ *
+ * Written 2012 by David Rheinsberg <david.rheinsberg@gmail.com>
+ * Dedicated to the Public Domain.
+ */
+
+/*
+ * DRM Modesetting Howto
+ * This document describes the DRM modesetting API. Before we can use th=
e DRM
+ * API, we have to include xf86drm.h and xf86drmMode.h. Both are provide=
d by
+ * libdrm which every major distribution ships by default. It has no oth=
er
+ * dependencies and is pretty small.
+ *
+ * Please ignore all forward-declarations of functions which are used la=
ter. I
+ * reordered the functions so you can read this document from top to bot=
tom. If
+ * you reimplement it, you would probably reorder the functions to avoid=
 all the
+ * nasty forward declarations.
+ *
+ * For easier reading, we ignore all memory-allocation errors of malloc(=
) and
+ * friends here. However, we try to correctly handle all other kinds of =
errors
+ * that may occur.
+ *
+ * All functions and global variables are prefixed with "modeset_*" in t=
his
+ * file. So it should be clear whether a function is a local helper or i=
f it is
+ * provided by some external library.
+ */
+
+#define _GNU_SOURCE
+#include <errno.h>
+#include <fcntl.h>
+#include <stdbool.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/mman.h>
+#include <time.h>
+#include <unistd.h>
+#include <xf86drm.h>
+#include <xf86drmMode.h>
+
+struct modeset_dev;
+static int modeset_find_crtc(int fd, drmModeRes *res, drmModeConnector *=
conn,
+			     struct modeset_dev *dev);
+static int modeset_create_fb(int fd, struct modeset_dev *dev);
+static int modeset_setup_dev(int fd, drmModeRes *res, drmModeConnector *=
conn,
+			     struct modeset_dev *dev);
+static int modeset_open(int *out, const char *node);
+static int modeset_prepare(int fd);
+static void modeset_draw(void);
+static void modeset_cleanup(int fd);
+
+/*
+ * When the linux kernel detects a graphics-card on your machine, it loa=
ds the
+ * correct device driver (located in kernel-tree at ./drivers/gpu/drm/<x=
y>) and
+ * provides two character-devices to control it. Udev (or whatever hotpl=
ugging
+ * application you use) will create them as:
+ *     /dev/dri/card0
+ *     /dev/dri/controlID64
+ * We only need the first one. You can hard-code this path into your app=
lication
+ * like we do here, but it is recommended to use libudev with real hotpl=
ugging
+ * and multi-seat support. However, this is beyond the scope of this doc=
ument.
+ * Also note that if you have multiple graphics-cards, there may also be
+ * /dev/dri/card1, /dev/dri/card2, ...
+ *
+ * We simply use /dev/dri/card0 here but the user can specify another pa=
th on
+ * the command line.
+ *
+ * modeset_open(out, node): This small helper function opens the DRM dev=
ice
+ * which is given as @node. The new fd is stored in @out on success. On =
failure,
+ * a negative error code is returned.
+ * After opening the file, we also check for the DRM_CAP_DUMB_BUFFER cap=
ability.
+ * If the driver supports this capability, we can create simple memory-m=
apped
+ * buffers without any driver-dependent code. As we want to avoid any ra=
deon,
+ * nvidia, intel, etc. specific code, we depend on DUMB_BUFFERs here.
+ */
+
+static int modeset_open(int *out, const char *node)
+{
+	int fd, ret;
+	uint64_t has_dumb;
+
+	fd =3D open(node, O_RDWR | O_CLOEXEC);
+	if (fd < 0) {
+		ret =3D -errno;
+		fprintf(stderr, "cannot open '%s': %m\n", node);
+		return ret;
+	}
+
+	if (drmGetCap(fd, DRM_CAP_DUMB_BUFFER, &has_dumb) < 0 ||
+	    !has_dumb) {
+		fprintf(stderr, "drm device '%s' does not support dumb buffers\n",
+			node);
+		close(fd);
+		return -EOPNOTSUPP;
+	}
+
+	*out =3D fd;
+	return 0;
+}
+
+/*
+ * As a next step we need to find our available display devices. libdrm =
provides
+ * a drmModeRes structure that contains all the needed information. We c=
an
+ * retrieve it via drmModeGetResources(fd) and free it via
+ * drmModeFreeResources(res) again.
+ *
+ * A physical connector on your graphics card is called a "connector". Y=
ou can
+ * plug a monitor into it and control what is displayed. We are definite=
ly
+ * interested in what connectors are currently used, so we simply iterat=
e
+ * through the list of connectors and try to display a test-picture on e=
ach
+ * available monitor.
+ * However, this isn't as easy as it sounds. First, we need to check whe=
ther the
+ * connector is actually used (a monitor is plugged in and turned on). T=
hen we
+ * need to find a CRTC that can control this connector. CRTCs are descri=
bed
+ * later on. After that we create a framebuffer object. If we have all t=
his, we
+ * can mmap() the framebuffer and draw a test-picture into it. Then we c=
an tell
+ * the DRM device to show the framebuffer on the given CRTC with the sel=
ected
+ * connector.
+ *
+ * As we want to draw moving pictures on the framebuffer, we actually ha=
ve to
+ * remember all these settings. Therefore, we create one "struct modeset=
_dev"
+ * object for each connector+crtc+framebuffer pair that we successfully
+ * initialized and push it into the global device-list.
+ *
+ * Each field of this structure is described when it is first used. But =
as a
+ * summary:
+ * "struct modeset_dev" contains: {
+ *  - @next: points to the next device in the single-linked list
+ *
+ *  - @width: width of our buffer object
+ *  - @height: height of our buffer object
+ *  - @stride: stride value of our buffer object
+ *  - @size: size of the memory mapped buffer
+ *  - @handle: a DRM handle to the buffer object that we can draw into
+ *  - @map: pointer to the memory mapped buffer
+ *
+ *  - @mode: the display mode that we want to use
+ *  - @fb: a framebuffer handle with our buffer object as scanout buffer
+ *  - @conn: the connector ID that we want to use with this buffer
+ *  - @crtc: the crtc ID that we want to use with this connector
+ *  - @saved_crtc: the configuration of the crtc before we changed it. W=
e use it
+ *                 so we can restore the same mode when we exit.
+ * }
+ */
+
+struct modeset_dev {
+	struct modeset_dev *next;
+
+	uint32_t width;
+	uint32_t height;
+	uint32_t stride;
+	uint32_t size;
+	uint32_t handle;
+	uint8_t *map;
+
+	drmModeModeInfo mode;
+	uint32_t fb;
+	uint32_t conn;
+	uint32_t crtc;
+	drmModeCrtc *saved_crtc;
+};
+
+static struct modeset_dev *modeset_list =3D NULL;
+
+/*
+ * So as next step we need to actually prepare all connectors that we fi=
nd. We
+ * do this in this little helper function:
+ *
+ * modeset_prepare(fd): This helper function takes the DRM fd as argumen=
t and
+ * then simply retrieves the resource-info from the device. It then iter=
ates
+ * through all connectors and calls other helper functions to initialize=
 this
+ * connector (described later on).
+ * If the initialization was successful, we simply add this object as ne=
w device
+ * into the global modeset device list.
+ *
+ * The resource-structure contains a list of all connector-IDs. We use t=
he
+ * helper function drmModeGetConnector() to retrieve more information on=
 each
+ * connector. After we are done with it, we free it again with
+ * drmModeFreeConnector().
+ * Our helper modeset_setup_dev() returns -ENOENT if the connector is cu=
rrently
+ * unused and no monitor is plugged in. So we can ignore this connector.
+ */
+
+static int modeset_prepare(int fd)
+{
+	drmModeRes *res;
+	drmModeConnector *conn;
+	unsigned int i;
+	struct modeset_dev *dev;
+	int ret;
+
+	/* retrieve resources */
+	res =3D drmModeGetResources(fd);
+	if (!res) {
+		fprintf(stderr, "cannot retrieve DRM resources (%d): %m\n",
+			errno);
+		return -errno;
+	}
+
+	/* iterate all connectors */
+	for (i =3D 0; i < res->count_connectors; ++i) {
+		/* get information for each connector */
+		conn =3D drmModeGetConnector(fd, res->connectors[i]);
+		if (!conn) {
+			fprintf(stderr, "cannot retrieve DRM connector %u:%u (%d): %m\n",
+				i, res->connectors[i], errno);
+			continue;
+		}
+
+		/* create a device structure */
+		dev =3D malloc(sizeof(*dev));
+		memset(dev, 0, sizeof(*dev));
+		dev->conn =3D conn->connector_id;
+
+		/* call helper function to prepare this connector */
+		ret =3D modeset_setup_dev(fd, res, conn, dev);
+		if (ret) {
+			if (ret !=3D -ENOENT) {
+				errno =3D -ret;
+				fprintf(stderr, "cannot setup device for connector %u:%u (%d): %m\n"=
,
+					i, res->connectors[i], errno);
+			}
+			free(dev);
+			drmModeFreeConnector(conn);
+			continue;
+		}
+
+		/* free connector data and link device into global list */
+		drmModeFreeConnector(conn);
+		dev->next =3D modeset_list;
+		modeset_list =3D dev;
+	}
+
+	/* free resources again */
+	drmModeFreeResources(res);
+	return 0;
+}
+
+/*
+ * Now we dig deeper into setting up a single connector. As described ea=
rlier,
+ * we need to check several things first:
+ *   * If the connector is currently unused, that is, no monitor is plug=
ged in,
+ *     then we can ignore it.
+ *   * We have to find a suitable resolution and refresh-rate. All this =
is
+ *     available in drmModeModeInfo structures saved for each crtc. We s=
imply
+ *     use the first mode that is available. This is always the mode wit=
h the
+ *     highest resolution.
+ *     A more sophisticated mode-selection should be done in real applic=
ations,
+ *     though.
+ *   * Then we need to find an CRTC that can drive this connector. A CRT=
C is an
+ *     internal resource of each graphics-card. The number of CRTCs cont=
rols how
+ *     many connectors can be controlled indepedently. That is, a graphi=
cs-cards
+ *     may have more connectors than CRTCs, which means, not all monitor=
s can be
+ *     controlled independently.
+ *     There is actually the possibility to control multiple connectors =
via a
+ *     single CRTC if the monitors should display the same content. Howe=
ver, we
+ *     do not make use of this here.
+ *     So think of connectors as pipelines to the connected monitors and=
 the
+ *     CRTCs are the controllers that manage which data goes to which pi=
peline.
+ *     If there are more pipelines than CRTCs, then we cannot control al=
l of
+ *     them at the same time.
+ *   * We need to create a framebuffer for this connector. A framebuffer=
 is a
+ *     memory buffer that we can write XRGB32 data into. So we use this =
to
+ *     render our graphics and then the CRTC can scan-out this data from=
 the
+ *     framebuffer onto the monitor.
+ */
+
+static int modeset_setup_dev(int fd, drmModeRes *res, drmModeConnector *=
conn,
+			     struct modeset_dev *dev)
+{
+	int ret;
+
+	/* check if a monitor is connected */
+	if (conn->connection !=3D DRM_MODE_CONNECTED) {
+		fprintf(stderr, "ignoring unused connector %u\n",
+			conn->connector_id);
+		return -ENOENT;
+	}
+
+	/* check if there is at least one valid mode */
+	if (conn->count_modes =3D=3D 0) {
+		fprintf(stderr, "no valid mode for connector %u\n",
+			conn->connector_id);
+		return -EFAULT;
+	}
+
+	/* copy the mode information into our device structure */
+	memcpy(&dev->mode, &conn->modes[0], sizeof(dev->mode));
+	dev->width =3D conn->modes[0].hdisplay;
+	dev->height =3D conn->modes[0].vdisplay;
+	fprintf(stderr, "mode for connector %u is %ux%u\n",
+		conn->connector_id, dev->width, dev->height);
+
+	/* find a crtc for this connector */
+	ret =3D modeset_find_crtc(fd, res, conn, dev);
+	if (ret) {
+		fprintf(stderr, "no valid crtc for connector %u\n",
+			conn->connector_id);
+		return ret;
+	}
+
+	/* create a framebuffer for this CRTC */
+	ret =3D modeset_create_fb(fd, dev);
+	if (ret) {
+		fprintf(stderr, "cannot create framebuffer for connector %u\n",
+			conn->connector_id);
+		return ret;
+	}
+
+	return 0;
+}
+
+/*
+ * modeset_find_crtc(fd, res, conn, dev): This small helper tries to fin=
d a
+ * suitable CRTC for the given connector. We have actually have to intro=
duce one
+ * more DRM object to make this more clear: Encoders.
+ * Encoders help the CRTC to convert data from a framebuffer into the ri=
ght
+ * format that can be used for the chosen connector. We do not have to
+ * understand any more of these conversions to make use of it. However, =
you must
+ * know that each connector has a limited list of encoders that it can u=
se. And
+ * each encoder can only work with a limited list of CRTCs. So what we d=
o is
+ * trying each encoder that is available and looking for a CRTC that thi=
s
+ * encoder can work with. If we find the first working combination, we a=
re happy
+ * and write it into the @dev structure.
+ * But before iterating all available encoders, we first try the current=
ly
+ * active encoder+crtc on a connector to avoid a full modeset.
+ *
+ * However, before we can use a CRTC we must make sure that no other dev=
ice,
+ * that we setup previously, is already using this CRTC. Remember, we ca=
n only
+ * drive one connector per CRTC! So we simply iterate through the "modes=
et_list"
+ * of previously setup devices and check that this CRTC wasn't used befo=
re.
+ * Otherwise, we continue with the next CRTC/Encoder combination.
+ */
+
+static int modeset_find_crtc(int fd, drmModeRes *res, drmModeConnector *=
conn,
+			     struct modeset_dev *dev)
+{
+	drmModeEncoder *enc;
+	unsigned int i, j;
+	int32_t crtc;
+	struct modeset_dev *iter;
+
+	/* first try the currently conected encoder+crtc */
+	if (conn->encoder_id)
+		enc =3D drmModeGetEncoder(fd, conn->encoder_id);
+	else
+		enc =3D NULL;
+
+	if (enc) {
+		if (enc->crtc_id) {
+			crtc =3D enc->crtc_id;
+			for (iter =3D modeset_list; iter; iter =3D iter->next) {
+				if (iter->crtc =3D=3D crtc) {
+					crtc =3D -1;
+					break;
+				}
+			}
+
+			if (crtc >=3D 0) {
+				drmModeFreeEncoder(enc);
+				dev->crtc =3D crtc;
+				return 0;
+			}
+		}
+
+		drmModeFreeEncoder(enc);
+	}
+
+	/* If the connector is not currently bound to an encoder or if the
+	 * encoder+crtc is already used by another connector (actually unlikely
+	 * but lets be safe), iterate all other available encoders to find a
+	 * matching CRTC. */
+	for (i =3D 0; i < conn->count_encoders; ++i) {
+		enc =3D drmModeGetEncoder(fd, conn->encoders[i]);
+		if (!enc) {
+			fprintf(stderr, "cannot retrieve encoder %u:%u (%d): %m\n",
+				i, conn->encoders[i], errno);
+			continue;
+		}
+
+		/* iterate all global CRTCs */
+		for (j =3D 0; j < res->count_crtcs; ++j) {
+			/* check whether this CRTC works with the encoder */
+			if (!(enc->possible_crtcs & (1 << j)))
+				continue;
+
+			/* check that no other device already uses this CRTC */
+			crtc =3D res->crtcs[j];
+			for (iter =3D modeset_list; iter; iter =3D iter->next) {
+				if (iter->crtc =3D=3D crtc) {
+					crtc =3D -1;
+					break;
+				}
+			}
+
+			/* we have found a CRTC, so save it and return */
+			if (crtc >=3D 0) {
+				drmModeFreeEncoder(enc);
+				dev->crtc =3D crtc;
+				return 0;
+			}
+		}
+
+		drmModeFreeEncoder(enc);
+	}
+
+	fprintf(stderr, "cannot find suitable CRTC for connector %u\n",
+		conn->connector_id);
+	return -ENOENT;
+}
+
+/*
+ * modeset_create_fb(fd, dev): After we have found a crtc+connector+mode
+ * combination, we need to actually create a suitable framebuffer that w=
e can
+ * use with it. There are actually two ways to do that:
+ *   * We can create a so called "dumb buffer". This is a buffer that we=
 can
+ *     memory-map via mmap() and every driver supports this. We can use =
it for
+ *     unaccelerated software rendering on the CPU.
+ *   * We can use libgbm to create buffers available for hardware-accele=
ration.
+ *     libgbm is an abstraction layer that creates these buffers for eac=
h
+ *     available DRM driver. As there is no generic API for this, each d=
river
+ *     provides its own way to create these buffers.
+ *     We can then use such buffers to create OpenGL contexts with the m=
esa3D
+ *     library.
+ * We use the first solution here as it is much simpler and doesn't requ=
ire any
+ * external libraries. However, if you want to use hardware-acceleration=
 via
+ * OpenGL, it is actually pretty easy to create such buffers with libgbm=
 and
+ * libEGL. But this is beyond the scope of this document.
+ *
+ * So what we do is requesting a new dumb-buffer from the driver. We spe=
cify the
+ * same size as the current mode that we selected for the connector.
+ * Then we request the driver to prepare this buffer for memory mapping.=
 After
+ * that we perform the actual mmap() call. So we can now access the fram=
ebuffer
+ * memory directly via the dev->map memory map.
+ */
+
+static int modeset_create_fb(int fd, struct modeset_dev *dev)
+{
+	struct drm_mode_create_dumb creq;
+	struct drm_mode_destroy_dumb dreq;
+	struct drm_mode_map_dumb mreq;
+	int ret;
+
+	/* create dumb buffer */
+	memset(&creq, 0, sizeof(creq));
+	creq.width =3D dev->width;
+	creq.height =3D dev->height;
+	creq.bpp =3D 32;
+	ret =3D drmIoctl(fd, DRM_IOCTL_MODE_CREATE_DUMB, &creq);
+	if (ret < 0) {
+		fprintf(stderr, "cannot create dumb buffer (%d): %m\n",
+			errno);
+		return -errno;
+	}
+	dev->stride =3D creq.pitch;
+	dev->size =3D creq.size;
+	dev->handle =3D creq.handle;
+
+	/* create framebuffer object for the dumb-buffer */
+	ret =3D drmModeAddFB(fd, dev->width, dev->height, 24, 32, dev->stride,
+			   dev->handle, &dev->fb);
+	if (ret) {
+		fprintf(stderr, "cannot create framebuffer (%d): %m\n",
+			errno);
+		ret =3D -errno;
+		goto err_destroy;
+	}
+
+	/* prepare buffer for memory mapping */
+	memset(&mreq, 0, sizeof(mreq));
+	mreq.handle =3D dev->handle;
+	ret =3D drmIoctl(fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq);
+	if (ret) {
+		fprintf(stderr, "cannot map dumb buffer (%d): %m\n",
+			errno);
+		ret =3D -errno;
+		goto err_fb;
+	}
+
+	/* perform actual memory mapping */
+	dev->map =3D mmap(0, dev->size, PROT_READ | PROT_WRITE, MAP_SHARED,
+		        fd, mreq.offset);
+	if (dev->map =3D=3D MAP_FAILED) {
+		fprintf(stderr, "cannot mmap dumb buffer (%d): %m\n",
+			errno);
+		ret =3D -errno;
+		goto err_fb;
+	}
+
+	/* clear the framebuffer to 0 */
+	memset(dev->map, 0, dev->size);
+
+	return 0;
+
+err_fb:
+	drmModeRmFB(fd, dev->fb);
+err_destroy:
+	memset(&dreq, 0, sizeof(dreq));
+	dreq.handle =3D dev->handle;
+	drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
+	return ret;
+}
+
+/*
+ * Finally! We have a connector with a suitable CRTC. We know which mode=
 we want
+ * to use and we have a framebuffer of the correct size that we can writ=
e to.
+ * There is nothing special left to do. We only have to program the CRTC=
 to
+ * connect each new framebuffer to each selected connector for each comb=
ination
+ * that we saved in the global modeset_list.
+ * This is done with a call to drmModeSetCrtc().
+ *
+ * So we are ready for our main() function. First we check whether the u=
ser
+ * specified a DRM device on the command line, otherwise we use the defa=
ult
+ * /dev/dri/card0. Then we open the device via modeset_open(). modeset_p=
repare()
+ * prepares all connectors and we can loop over "modeset_list" and call
+ * drmModeSetCrtc() on every CRTC/connector combination.
+ *
+ * But printing empty black pages is boring so we have another helper fu=
nction
+ * modeset_draw() that draws some colors into the framebuffer for 5 seco=
nds and
+ * then returns. And then we have all the cleanup functions which correc=
tly free
+ * all devices again after we used them. All these functions are describ=
ed below
+ * the main() function.
+ *
+ * As a side note: drmModeSetCrtc() actually takes a list of connectors =
that we
+ * want to control with this CRTC. We pass only one connector, though. A=
s
+ * explained earlier, if we used multiple connectors, then all connector=
s would
+ * have the same controlling framebuffer so the output would be cloned. =
This is
+ * most often not what you want so we avoid explaining this feature here=
.
+ * Furthermore, all connectors will have to run with the same mode, whic=
h is
+ * also often not guaranteed. So instead, we only use one connector per =
CRTC.
+ *
+ * Before calling drmModeSetCrtc() we also save the current CRTC configu=
ration.
+ * This is used in modeset_cleanup() to restore the CRTC to the same mod=
e as was
+ * before we changed it.
+ * If we don't do this, the screen will stay blank after we exit until a=
nother
+ * application performs modesetting itself.
+ */
+
+int main(int argc, char **argv)
+{
+	int ret, fd;
+	const char *card;
+	struct modeset_dev *iter;
+
+	/* check which DRM device to open */
+	if (argc > 1)
+		card =3D argv[1];
+	else
+		card =3D "/dev/dri/card0";
+
+	fprintf(stderr, "using card '%s'\n", card);
+
+	/* open the DRM device */
+	ret =3D modeset_open(&fd, card);
+	if (ret)
+		goto out_return;
+
+	/* prepare all connectors and CRTCs */
+	ret =3D modeset_prepare(fd);
+	if (ret)
+		goto out_close;
+
+	/* perform actual modesetting on each found connector+CRTC */
+	for (iter =3D modeset_list; iter; iter =3D iter->next) {
+		iter->saved_crtc =3D drmModeGetCrtc(fd, iter->crtc);
+		ret =3D drmModeSetCrtc(fd, iter->crtc, iter->fb, 0, 0,
+				     &iter->conn, 1, &iter->mode);
+		if (ret)
+			fprintf(stderr, "cannot set CRTC for connector %u (%d): %m\n",
+				iter->conn, errno);
+	}
+
+	/* draw some colors for 5seconds */
+	modeset_draw();
+
+	/* cleanup everything */
+	modeset_cleanup(fd);
+
+	ret =3D 0;
+
+out_close:
+	close(fd);
+out_return:
+	if (ret) {
+		errno =3D -ret;
+		fprintf(stderr, "modeset failed with error %d: %m\n", errno);
+	} else {
+		fprintf(stderr, "exiting\n");
+	}
+	return ret;
+}
+
+/*
+ * A short helper function to compute a changing color value. No need to
+ * understand it.
+ */
+
+static uint8_t next_color(bool *up, uint8_t cur, unsigned int mod)
+{
+	uint8_t next;
+
+	next =3D cur + (*up ? 1 : -1) * (rand() % mod);
+	if ((*up && next < cur) || (!*up && next > cur)) {
+		*up =3D !*up;
+		next =3D cur;
+	}
+
+	return next;
+}
+
+/*
+ * modeset_draw(): This draws a solid color into all configured framebuf=
fers.
+ * Every 100ms the color changes to a slightly different color so we get=
 some
+ * kind of smoothly changing color-gradient.
+ *
+ * The color calculation can be ignored as it is pretty boring. So the
+ * interesting stuff is iterating over "modeset_list" and then through a=
ll lines
+ * and width. We then set each pixel individually to the current color.
+ *
+ * We do this 50 times as we sleep 100ms after each redraw round. This m=
akes
+ * 50*100ms =3D 5000ms =3D 5s so it takes about 5seconds to finish this =
loop.
+ *
+ * Please note that we draw directly into the framebuffer. This means th=
at you
+ * will see flickering as the monitor might refresh while we redraw the =
screen.
+ * To avoid this you would need to use two framebuffers and a call to
+ * drmModeSetCrtc() to switch between both buffers.
+ * You can also use drmModePageFlip() to do a vsync'ed pageflip. But thi=
s is
+ * beyond the scope of this document.
+ */
+
+static void modeset_draw(void)
+{
+	uint8_t r, g, b;
+	bool r_up, g_up, b_up;
+	unsigned int i, j, k, off;
+	struct modeset_dev *iter;
+
+	srand(time(NULL));
+	r =3D rand() % 0xff;
+	g =3D rand() % 0xff;
+	b =3D rand() % 0xff;
+	r_up =3D g_up =3D b_up =3D true;
+
+	for (i =3D 0; i < 50; ++i) {
+		r =3D next_color(&r_up, r, 20);
+		g =3D next_color(&g_up, g, 10);
+		b =3D next_color(&b_up, b, 5);
+
+		for (iter =3D modeset_list; iter; iter =3D iter->next) {
+			for (j =3D 0; j < iter->height; ++j) {
+				for (k =3D 0; k < iter->width; ++k) {
+					off =3D iter->stride * j + k * 4;
+					*(uint32_t*)&iter->map[off] =3D
+						     (r << 16) | (g << 8) | b;
+				}
+			}
+		}
+
+		usleep(100000);
+	}
+}
+
+/*
+ * modeset_cleanup(fd): This cleans up all the devices we created during
+ * modeset_prepare(). It resets the CRTCs to their saved states and deal=
locates
+ * all memory.
+ * It should be pretty obvious how all of this works.
+ */
+
+static void modeset_cleanup(int fd)
+{
+	struct modeset_dev *iter;
+	struct drm_mode_destroy_dumb dreq;
+
+	while (modeset_list) {
+		/* remove from global list */
+		iter =3D modeset_list;
+		modeset_list =3D iter->next;
+
+		/* restore saved CRTC configuration */
+		drmModeSetCrtc(fd,
+			       iter->saved_crtc->crtc_id,
+			       iter->saved_crtc->buffer_id,
+			       iter->saved_crtc->x,
+			       iter->saved_crtc->y,
+			       &iter->conn,
+			       1,
+			       &iter->saved_crtc->mode);
+		drmModeFreeCrtc(iter->saved_crtc);
+
+		/* unmap buffer */
+		munmap(iter->map, iter->size);
+
+		/* delete framebuffer */
+		drmModeRmFB(fd, iter->fb);
+
+		/* delete dumb buffer */
+		memset(&dreq, 0, sizeof(dreq));
+		dreq.handle =3D iter->handle;
+		drmIoctl(fd, DRM_IOCTL_MODE_DESTROY_DUMB, &dreq);
+
+		/* free allocated memory */
+		free(iter);
+	}
+}
+
+/*
+ * I hope this was a short but easy overview of the DRM modesetting API.=
 The DRM
+ * API offers much more capabilities including:
+ *  - double-buffering or tripple-buffering (or whatever you want)
+ *  - vsync'ed page-flips
+ *  - hardware-accelerated rendering (for example via OpenGL)
+ *  - output cloning
+ *  - graphics-clients plus authentication
+ *  - DRM planes/overlays/sprites
+ *  - ...
+ * If you are interested in these topics, I can currently only redirect =
you to
+ * existing implementations, including:
+ *  - plymouth (which uses dumb-buffers like this example; very easy to =
understand)
+ *  - kmscon (which uses libuterm to do this)
+ *  - wayland (very sophisticated DRM renderer; hard to understand fully=
 as it
+ *             uses more complicated techniques like DRM planes)
+ *  - xserver (very hard to understand as it is split across many files/=
projects)
+ *
+ * But understanding how modesetting (as described in this document) wor=
ks, is
+ * essential to understand all further DRM topics.
+ *
+ * Any feedback is welcome. Feel free to use this code freely for your o=
wn
+ * documentation or projects.
+ *
+ *  - Hosted on http://github.com/dvdhrm/docs
+ *  - Written by David Rheinsberg <david.rheinsberg@gmail.com>
+ */
--=20
2.30.2


