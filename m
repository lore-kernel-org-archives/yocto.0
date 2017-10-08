Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54CFAE00CCD; Sun,  8 Oct 2017 10:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A27FCE00CCD
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 10:28:42 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id k7so7134853pga.3
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 10:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=whP7RdMVzl0HFA3ydkfFn72HOR2HkBXspUcDZBP4XU8=;
	b=XA4sLH1GlsyHzCCMcJEvKFmWxKf0Pve8EyQG5LIi/h7C2OfDaGI038x742xjzL+D95
	ijxJdmATMf5x+1crAVbO0gpPz0ipn7cCIU+dBkzPz5U7XSgiT1FRUEIZF+GlDQjoOGJd
	cxnvqGWqLIyGRXLtA+wRe1SOFricVHDg+6QrUTSGa9zP8FloVBUVgK2wvwYw78E5KJAG
	PNKQfrvVkChwJGRSum6qLWNlKqZjlAGBIxTmixPsq3+Q8CC5zGggaS1S9dCq1seRE1Rz
	3X0qzCsG7LerTAACBDexSA75GSxG8Gixh6wyCUOPuw9knj4UpymdIRXvnL4olay3CAAs
	2TNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=whP7RdMVzl0HFA3ydkfFn72HOR2HkBXspUcDZBP4XU8=;
	b=jsR3/KJcx2TXJFpVfW/4zwpHohzZ0HbH3c4oZuePB3waOSV5TSyKjUsLHSGvEphC8/
	JUULzxGYv+9sGGoTf66+Zj9duLZlgMRX/epKZ26s2CIh70epNnx2XeE2TJuEMpN/w0JL
	iey/iB84mnwmUb9LEbTtRtW2RHoXqwsSghuN8i/zY8c5WalUN/k6/Iv+l+OXR7R5CG0X
	HsaTRpZHBfdDUH7rcifi8v1HuJIB5jZP5Yp5kEcnP/f+mFP5arpy8OP9TStISrp2F5sY
	aZaYaKUgqThT0J8OobQM9xJmgdDIA6kbIyiMRKxQUlEG8Ae6EeXZN8fyHyn4eVh7HOa+
	dKJw==
X-Gm-Message-State: AMCzsaWb8N3kkjRKYchnJxsVBh9GqmgJU6C0JZtvKSfQMuxF6K45/vuH
	llg6FS9xZTdAGD6TffYRI4wKQw==
X-Google-Smtp-Source: AOwi7QC9fSHNGmBNRtYGiXDaTcJFUYypczmiGX0uLTKE9Rv/HZe2kFLT+EUMcols7042wv25MndkNQ==
X-Received: by 10.98.99.7 with SMTP id x7mr7986226pfb.228.1507483721972;
	Sun, 08 Oct 2017 10:28:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	a81sm10563350pfe.32.2017.10.08.10.28.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 08 Oct 2017 10:28:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  8 Oct 2017 10:28:37 -0700
Message-Id: <1507483718-5452-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
References: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/4] tpm2-abrmd: add package
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
X-List-Received-Date: Sun, 08 Oct 2017 17:28:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/files/tpm2-abrmd-init.sh            | 65 ++++++++++++++++++++++
 .../tpm2-abrmd/files/tpm2-abrmd.default            |  1 +
 .../recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb     | 54 ++++++++++++++++++
 3 files changed, 120 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh
 create mode 100644 meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default
 create mode 100644 meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh b/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh
new file mode 100644
index 0000000..c8dfb7d
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd-init.sh
@@ -0,0 +1,65 @@
+#!/bin/sh
+
+### BEGIN INIT INFO
+# Provides:		tpm2-abrmd
+# Required-Start:	$local_fs $remote_fs $network
+# Required-Stop:	$local_fs $remote_fs $network
+# Should-Start:
+# Should-Stop:
+# Default-Start:	2 3 4 5
+# Default-Stop:		0 1 6
+# Short-Description:	starts tpm2-abrmd
+# Description:		tpm2-abrmd implements the TCG resource manager
+### END INIT INFO
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+DAEMON=/usr/sbin/tpm2-abrmd
+NAME=tpm2-abrmd
+DESC="TCG TSS2 Access Broker and Resource Management daemon"
+USER="tss"
+
+test -x "${DAEMON}" || exit 0
+
+# Read configuration variable file if it is present
+[ -r /etc/default/$NAME ] && . /etc/default/$NAME
+
+case "${1}" in
+	start)
+		echo -n "Starting $DESC: "
+
+		if [ ! -e /dev/tpm* ]
+		then
+			echo "device driver not loaded, skipping."
+			exit 0
+		fi
+
+		start-stop-daemon --start --quiet --oknodo --background --pidfile /var/run/${NAME}.pid --user ${USER} --chuid ${USER} --exec ${DAEMON} -- ${DAEMON_OPTS}
+		RETVAL="$?"
+		echo "$NAME."
+		[ "$RETVAL" = 0 ] && pidof $DAEMON > /var/run/${NAME}.pid
+		exit $RETVAL
+		;;
+
+	stop)
+		echo -n "Stopping $DESC: "
+
+		start-stop-daemon --stop --quiet --oknodo --pidfile /var/run/${NAME}.pid --user ${USER} --exec ${DAEMON}
+		RETVAL="$?"
+                echo  "$NAME."
+		rm -f /var/run/${NAME}.pid
+		exit $RETVAL
+		;;
+
+	restart|force-reload)
+		"${0}" stop
+		sleep 1
+		"${0}" start
+		exit $?
+		;;
+	*)
+		echo "Usage: ${NAME} {start|stop|restart|force-reload|status}" >&2
+		exit 3
+		;;
+esac
+
+exit 0
diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default b/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default
new file mode 100644
index 0000000..987978a
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/files/tpm2-abrmd.default
@@ -0,0 +1 @@
+DAEMON_OPTS="--tcti=device --logger=syslog --max-connections=20 --max-transient-objects=20 --fail-on-loaded-trans"
diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb
new file mode 100644
index 0000000..27e2408
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_1.1.1.bb
@@ -0,0 +1,54 @@
+SUMMARY = "TPM2 Access Broker & Resource Manager"
+DESCRIPTION = "This is a system daemon implementing the TPM2 access \
+broker (TAB) & Resource Manager (RM) spec from the TCG. The daemon (tpm2-abrmd) \
+is implemented using Glib and the GObject system. In this documentation and \
+in the code we use `tpm2-abrmd` and `tabrmd` interchangeably. \
+"
+SECTION = "security/tpm"
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
+
+DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss glib-2.0-native"
+
+SRC_URI = "\
+    git://github.com/01org/tpm2-abrmd.git \
+    file://tpm2-abrmd-init.sh \
+    file://tpm2-abrmd.default \
+"
+SRCREV = "c2ccda956bf15165770682dd5c578c58ee5fa6e2"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig systemd update-rc.d useradd
+
+SYSTEMD_PACKAGES += "${PN}"
+SYSTEMD_SERVICE_${PN} = "tpm2-abrmd.service"
+SYSTEMD_AUTO_ENABLE_${PN} = "disable"
+
+INITSCRIPT_NAME = "${PN}"
+INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "tss"
+USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
+
+PACKAGECONFIG ?="udev"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
+
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --with-systemdsystemunitdir=no"
+PACKAGECONFIG[udev] = "--with-udevrulesdir=${sysconfdir}/udev/rules.d, --without-udevrulesdir"
+
+do_install_append() {
+    install -d "${D}${sysconfdir}/init.d"
+    install -m 0755 "${WORKDIR}/tpm2-abrmd-init.sh" "${D}${sysconfdir}/init.d/tpm2-abrmd"
+
+    install -d "${D}${sysconfdir}/default"
+    install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/default/tpm2-abrmd"
+}
+
+FILES_${PN} += "${libdir}/systemd/system-preset"
+
+RDEPENDS_${PN} += "libgcc dbus-glib libtss2 libtctidevice libtctisocket"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


