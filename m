Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B3AFE01469
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 13:18:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Apr 2013 13:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,495,1363158000"; d="scan'208";a="287689269"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 17 Apr 2013 13:17:59 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.39]) with mapi id
	14.01.0355.002; Wed, 17 Apr 2013 13:17:59 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky][master]Capture error output of
	crosstap command
Thread-Index: AQHOOql25FenPCBzq028JRY8bMf4BJja291Q
Date: Wed, 17 Apr 2013 20:17:59 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDCA3BF@ORSMSX104.amr.corp.intel.com>
References: <1366119137-3830-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1366119137-3830-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky][master]Capture error output of	crosstap command
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
X-List-Received-Date: Wed, 17 Apr 2013 20:18:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master and dylan.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, April 16, 2013 6:32 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky][master]Capture error output of cros=
stap command

- when running a command using system tap plugin make sure to read all outp=
ut from standard and error output and display it accordingly

[Yocto #4270]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org/yocto/sdk/remotetools/ShellSession.java    |   79 ++++++++++++----=
----
 1 file changed, 48 insertions(+), 31 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/ShellSession.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/r=
emotetools/ShellSession.java
index bf41d3f..bd1cb38 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Shell=
Session.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/Sh
+++ ellSession.java
@@ -18,6 +18,7 @@ import java.io.InputStream;  import java.io.InputStreamRe=
ader;  import java.io.OutputStream;  import java.io.OutputStreamWriter;
+import java.lang.reflect.InvocationTargetException;

 public class ShellSession {
        /**
@@ -149,43 +150,59 @@ public class ShellSession {
                }
                return sb.toString();
        }
-
+
        synchronized
        public void execute(String command) throws IOException {
                interrupt =3D false;
                String errorMessage =3D null;

-               InputStream errIs =3D process.getErrorStream();
-               if (errIs.available() > 0) {
-                       clearErrorStream(errIs);
-               }
                sendToProcessAndTerminate(command);
-
-               BufferedReader br =3D new BufferedReader(new InputStreamRea=
der(process.getInputStream()));
-               String std =3D null;
-
-               do {
-                       if (errIs.available() > 0) {
-                               byte[] msg =3D new byte[errIs.available()];
-
-                               errIs.read(msg, 0, msg.length);
-                               String msg_str =3D new String(msg);
-
-                               out.write(msg_str);
-                               out.write(LT);
-                               if (!msg_str.contains("WARNING"))
-                                       errorMessage =3D msg_str;
-                       }
-
-                       std =3D br.readLine();
-
-                       if (std !=3D null && !std.endsWith(TERMINATOR)) {
-                               out.write(std);
-                               out.write(LT);
-                       }
-
-               } while (!std.endsWith(TERMINATOR) && !interrupt);
-
+               boolean cancel =3D false;
+               try {
+                       InputStream is =3D process.getInputStream();
+                       InputStream es =3D process.getErrorStream();
+                       String info;
+                       while (!cancel) {
+                               info =3D null;
+                               StringBuffer buffer =3D new StringBuffer();
+                               int c;
+                               while (is.available() > 0) {
+                                       c =3D is.read();
+                                       char ch =3D (char) c;
+                                       buffer.append(ch);
+                                       if (ch =3D=3D '\n') {
+                                               info =3D buffer.toString();
+                                               if (!info.trim().endsWith(T=
ERMINATOR)) {
+                                                       out.write(info);
+                                                       out.write(LT);
+                                                       buffer.delete(0, bu=
ffer.length());
+                                               } else {
+                                                       cancel =3D true;
+                                                       break;
+                                               }
+                                       }
+                               }
+                               while (es.available() > 0) {
+                                       c =3D es.read();
+                                       char ch =3D (char) c;
+                                       buffer.append(ch);
+                                       if (ch =3D=3D '\n') {
+                                               info =3D buffer.toString();
+                                               if (!info.contains("WARNING=
"))
+                                                       errorMessage +=3D i=
nfo;
+                                               out.write(info);
+                                               out.write(LT);
+                                               buffer.delete(0, buffer.len=
gth());
+                                       }
+                               }
+                       }
+               } catch (IOException e) {
+                       try {
+                               throw new InvocationTargetException(e);
+                       } catch (InvocationTargetException e1) {
+                               e1.printStackTrace();
+                       }
+               }
                out.flush();
                if (errorMessage !=3D null) {
                        throw new IOException(errorMessage);
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

