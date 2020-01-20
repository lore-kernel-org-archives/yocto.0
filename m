Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1440.1579557616851958460
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 14:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@agner.ch header.s=dkim header.b=QqAHG94f;
 spf=softfail (domain: agner.ch, ip: 140.211.169.56, mailfrom: stefan@agner.ch)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1C82E015C2; Mon, 20 Jan 2020 14:00:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0752FE01547
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 14:00:12 -0800 (PST)
Received: from trochilidae.toradex.int (unknown [IPv6:2a02:169:3df5::edf])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id AAE005C7F12;
	Mon, 20 Jan 2020 23:00:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1579557611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:
	 content-transfer-encoding:content-transfer-encoding:in-reply-to:
	 references; bh=eFuNBTw63duaZgSs490mRZOU9ooRIhNQLg3OpNMzS9w=;
	b=QqAHG94fpBgLDEXh3VSnpLUA/d6xxZYKjZjwzPvTrfY5FGlFfRIeBytO8BXYZzkvKCceR9
	HODp2ry5RmzshTG3OGbLa+Y6tW/XlhbQMC6TUcGjUTKLsEQ8u/JPfO+GupUQfN4uw5vfHW
	+c6eESdgNaMtNW1Z5BM/dOF7xkJ61ig=
From: "Stefan Agner" <stefan@agner.ch>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Cc: stefan@agner.ch,
	Stefan Agner <stefan.agner@toradex.com>
Subject: [psplash][PATCH] add systemd support
Date: Mon, 20 Jan 2020 23:00:04 +0100
Message-Id: <20200120220004.1321837-1-stefan@agner.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Stefan Agner <stefan.agner@toradex.com>

This adds optional systemd support. When enabled, an utility called
psplash-systemd is built. This tool will connect to systemd using the
system bus to obtain progress information and communicate that to
psplash. Once full boot progress is reported by systemd psplash
psplash is closed using the quit command.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 Makefile.am       |   6 +-
 configure.ac      |   2 +
 psplash-systemd.c | 168 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 175 insertions(+), 1 deletion(-)
 create mode 100644 psplash-systemd.c

diff --git a/Makefile.am b/Makefile.am
index a14152a..5f4b0b8 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -1,4 +1,4 @@
-bin_PROGRAMS=3Dpsplash psplash-write
+bin_PROGRAMS=3Dpsplash psplash-write psplash-systemd
=20
 AM_CFLAGS =3D $(GCC_FLAGS) -D_GNU_SOURCE
=20
@@ -9,6 +9,10 @@ psplash_SOURCES =3D psplash.c psplash.h psplash-fb.c psp=
lash-fb.h \
=20
 psplash_write_SOURCES =3D psplash-write.c psplash.h
=20
+psplash_systemd_CPPFLAGS =3D $(SYSTEMD_CFLAGS)
+psplash_systemd_LDFLAGS=3D $(SYSTEMD_LIBS)
+psplash_systemd_SOURCES =3D psplash-systemd.c psplash.h
+
 EXTRA_DIST =3D make-image-header.sh
 =20
 MAINTAINERCLEANFILES =3D aclocal.m4 compile config.guess config.sub conf=
igure depcomp install-sh ltmain.sh Makefile.in missing
diff --git a/configure.ac b/configure.ac
index 1c4d919..578fbb9 100644
--- a/configure.ac
+++ b/configure.ac
@@ -12,6 +12,8 @@ if test "x$GCC" =3D "xyes"; then
         GCC_FLAGS=3D"-g -Wall -Wextra"
 fi
=20
+PKG_CHECK_MODULES(SYSTEMD, libsystemd >=3D 221)
+
 AC_SUBST(GCC_FLAGS)
=20
 AC_OUTPUT([
diff --git a/psplash-systemd.c b/psplash-systemd.c
new file mode 100644
index 0000000..f507205
--- /dev/null
+++ b/psplash-systemd.c
@@ -0,0 +1,168 @@
+#include <errno.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <fcntl.h>
+#include <unistd.h>
+#include <systemd/sd-bus.h>
+#include <systemd/sd-event.h>
+#include "psplash.h"
+
+#define PSPLASH_UPDATE_USEC 1000000
+
+typedef uint64_t usec_t;
+
+static int pipe_fd;
+
+int get_progress(void)
+{
+	sd_bus_error error =3D SD_BUS_ERROR_NULL;
+	static double current_progress =3D 0;
+	double progress =3D 0;
+        sd_bus *bus =3D NULL;
+        int r;
+	char buffer[20];
+	int len;
+
+        /* Connect to the system bus */
+	r =3D sd_bus_new(&bus);
+        if (r < 0)
+		goto finish;
+
+	r =3D sd_bus_set_address(bus, "unix:path=3D/run/systemd/private");
+        if (r < 0)
+		goto finish;
+
+	r =3D sd_bus_start(bus);
+        if (r < 0) {
+                fprintf(stderr, "Failed to connect to systemd private bu=
s: %s\n", strerror(-r));
+                goto finish;
+        }
+
+        /* Issue the method call and store the respons message in m */
+	r =3D sd_bus_get_property_trivial(bus,
+                               "org.freedesktop.systemd1",           /* =
service to contact */
+                               "/org/freedesktop/systemd1",          /* =
object path */
+                               "org.freedesktop.systemd1.Manager",   /* =
interface name */
+                               "Progress",                           /* =
method name */
+                               &error,                               /* =
object to return error in */
+                               'd',                                  /* =
return message on success */
+                               &progress);                           /* =
value */
+        if (r < 0) {
+                fprintf(stderr, "Failed to get progress: %s\n", error.me=
ssage);
+                goto finish;
+        }
+
+	/*
+	 * Systemd's progress seems go backwards at times. Prevent that
+	 * progress bar on psplash goes backward by just communicating the
+	 * highest observed progress so far.
+	 */
+	if (current_progress < progress)
+		current_progress =3D progress;
+
+	len =3D snprintf(buffer, 20, "PROGRESS %d", (int)(current_progress * 10=
0));
+	write(pipe_fd, buffer, len + 1);
+
+	if (progress =3D=3D 1.0) {
+		printf("Systemd reported progress of 1.0, quit psplash.\n");
+		write(pipe_fd, "QUIT", 5);
+		r =3D -1;
+	}
+finish:
+        sd_bus_error_free(&error);
+        sd_bus_unref(bus);
+
+	return r;
+}
+
+int psplash_handler(sd_event_source *s,
+			uint64_t usec,
+			void *userdata)
+{
+	sd_event *event =3D userdata;
+	int r;
+
+	r =3D get_progress();
+	if (r < 0)
+		goto err;
+
+	r =3D sd_event_source_set_time(s, usec + PSPLASH_UPDATE_USEC);
+	if (r < 0)
+		goto err;
+
+	return 0;
+err:
+	sd_event_exit(event, EXIT_FAILURE);
+
+	return r;
+}
+
+int main()
+{
+	sd_event *event;
+	sd_event_source *event_source =3D NULL;
+	int r;
+	sigset_t ss;
+	usec_t time_now;
+	char *rundir;
+
+	/* Open pipe for psplash */
+	rundir =3D getenv("PSPLASH_FIFO_DIR");
+
+	if (!rundir)
+		rundir =3D "/run";
+
+	chdir(rundir);
+
+	if ((pipe_fd =3D open (PSPLASH_FIFO,O_WRONLY|O_NONBLOCK)) =3D=3D -1) {
+		fprintf(stderr, "Error unable to open fifo");
+		exit(EXIT_FAILURE);
+	}
+
+	r =3D sd_event_default(&event);
+	if (r < 0)
+		goto finish;
+
+	if (sigemptyset(&ss) < 0 ||
+            sigaddset(&ss, SIGTERM) < 0 ||
+	    sigaddset(&ss, SIGINT) < 0) {
+		r =3D -errno;
+		goto finish;
+	}
+
+	/* Block SIGTERM first, so that the event loop can handle it */
+	if (sigprocmask(SIG_BLOCK, &ss, NULL) < 0) {
+		r =3D -errno;
+		goto finish;
+	}
+
+	/* Let's make use of the default handler and "floating" reference
+	 * features of sd_event_add_signal() */
+	r =3D sd_event_add_signal(event, NULL, SIGTERM, NULL, NULL);
+	if (r < 0)
+		goto finish;
+
+	r =3D sd_event_add_signal(event, NULL, SIGINT, NULL, NULL);
+	if (r < 0)
+		goto finish;
+
+	r =3D sd_event_now(event, CLOCK_MONOTONIC, &time_now);
+	if (r < 0)
+		goto finish;
+
+	r =3D sd_event_add_time(event, &event_source, CLOCK_MONOTONIC,
+			      time_now, 0, psplash_handler, event);
+	if (r < 0)
+		goto finish;
+
+	r =3D sd_event_source_set_enabled(event_source, SD_EVENT_ON);
+	if (r < 0)
+		goto finish;
+
+	r =3D sd_event_loop(event);
+finish:
+	event =3D sd_event_unref(event);
+	close(pipe_fd);
+
+        return r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
+}
--=20
2.24.1

