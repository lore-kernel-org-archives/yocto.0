Return-Path: <prvs=979498b18=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EAD5E01684
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 05:50:46 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqAEAJTESlKsEApK/2dsb2JhbABahBHBAoFFdIInBTpRARUVFC8TJgEEEwjET44GAYEZg1eBAwOOTZAMjkSBaEI
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: [psplash][PATCH] Add option to read message from file
Thread-Index: Ac6+pHIymGSUvZ+1TVuSvsCdsMelrw==
Date: Tue, 1 Oct 2013 12:50:43 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064FAEF32@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.112.215]
MIME-Version: 1.0
Subject: [psplash][PATCH] Add option to read message from file
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
X-List-Received-Date: Tue, 01 Oct 2013 12:50:48 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Add an option to read the displayed message from a file.
Additionally the maximum length for the read string can be defined.
The string will then be cut after the given number of chars.
It is also possible to define a prefix which is displayed in front
of the read file content.

If no file is defined a hardcoded message (using MSG like before)
can be displayed.

For these changes the following defines were introduced:
MSG_FILE_PATH ...... path to the file
MSG_FILE_MAX_LEN ... number of chars read from file
MSG_FILE_PREFIX .... text displayed in front of the file content

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 psplash.c |   41 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/psplash.c b/psplash.c
index 09cf0d0..093a99a 100644
--- a/psplash.c
+++ b/psplash.c
@@ -23,6 +23,20 @@
 #include "psplash-bar-img.h"
 #include "radeon-font.h"
=20
+/* Here you can define a message which will be displayed above the
+ * progress bar.
+ * The message can be either read from a file:
+ *    Set MSG_FILE_PATH (and if needed MSG_FILE_{MAX_LEN,PREFIX})
+ *    to display the first MSG_FILE_MAX_LEN characters
+ *    of the first line from MSG_FILE_PATH as message.
+ *    Additionally the content of MSG_FILE_PREFIX will be displayed
+ *    before the read message. */
+#define MSG_FILE_PATH ""
+#define MSG_FILE_MAX_LEN 32
+#define MSG_FILE_PREFIX ""
+/* Or a fixed string can be used:
+ *    If MSG_FILE is not set or not readable
+ *    the content of MSG will be used as message. */
 #define MSG ""
=20
 void
@@ -204,6 +218,8 @@ main (int argc, char** argv)
   int        pipe_fd, i =3D 0, angle =3D 0, ret =3D 0;
   PSplashFB *fb;
   bool       disable_console_switch =3D FALSE;
+  FILE      *fd_msg;
+  char      *str_msg;
  =20
   signal(SIGHUP, psplash_exit);
   signal(SIGINT, psplash_exit);
@@ -287,7 +303,30 @@ main (int argc, char** argv)
=20
   psplash_draw_progress (fb, 0);
=20
-  psplash_draw_msg (fb, MSG);
+  /* Draw message from file or defined MSG */
+  fd_msg =3D fopen (MSG_FILE_PATH, "r");
+  if (fd_msg=3D=3DNULL) {
+    psplash_draw_msg (fb, MSG);
+  } else {
+    str_msg =3D (char*) malloc (
+              (MSG_FILE_MAX_LEN + strlen(MSG_FILE_PREFIX) + 1)*sizeof(char=
));
+    if (str_msg !=3D NULL && fgets (str_msg, MSG_FILE_MAX_LEN, fd_msg)!=3D=
NULL) {
+      if (strlen (MSG_FILE_PREFIX) > 0) {
+        /* if MSG_FILE_PREFIX is set, prepend it to str_msg */
+        memmove (str_msg + strlen(MSG_FILE_PREFIX) + 1, str_msg, strlen(st=
r_msg));
+        strcpy (str_msg, MSG_FILE_PREFIX);
+		/* replace \0 after MSG_FILE_PREFIX with a space */
+        str_msg[strlen(MSG_FILE_PREFIX)] =3D ' ';
+      }
+      psplash_draw_msg (fb, str_msg);
+      free (str_msg);
+    } else {
+      /* MSG_FILE_PATH is empty (or malloc failed)
+	   *    so display MSG_FILE_PREFIX only */
+      psplash_draw_msg (fb, MSG_FILE_PREFIX);
+    }
+    fclose (fd_msg);
+  }
=20
   psplash_main (fb, pipe_fd, 0);
=20
--=20
1.7.10.4


