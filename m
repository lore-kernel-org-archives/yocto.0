Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1B3D7E0146C
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 01:20:35 -0700 (PDT)
Received: from bignysan (172.16.140.132) by mx-3.enea.com (172.21.1.205) with
	Microsoft SMTP Server id 14.2.298.4; Tue, 4 Sep 2012 10:20:34 +0200
Received: by bignysan (Postfix, from userid 1000)	id B63272201E3; Tue,  4 Sep
	2012 10:20:51 +0200 (CEST)
From: =?UTF-8?q?David=20Nystr=C3=B6m?= <david.nystrom@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Sep 2012 10:20:48 +0200
Message-ID: <1346746848-18847-1-git-send-email-david.nystrom@enea.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: david.nystrom@enea.com does not
	designate permitted sender hosts)
Cc: =?UTF-8?q?Bj=C3=B6rn=20Arnelid?= <bjorn.arnelid@enea.com>
Subject: [eclipse-poky][PATCH] Fix NullPointerException
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Sep 2012 08:20:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: Bj=C3=B6rn Arnelid <bjorn.arnelid@enea.com>

[Yocto Bugzilla] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D301=
9

When using a Toolchain where sysroot is not named <arch>-pokysdk-linux a Nu=
llPointerException is thrown when trying to apply changes in Yocto Preferen=
ces.
It should be possible to use Toolchains with a sysroot named <arch>-<organi=
zationName>sdk-linux with the plugin.

static private String findHostArch(File sysroot_dir) now accept folders nam=
ed *sdk-linux instead of *-pokysdk-linux. checkYoctoSDK will also return SD=
KCheckResults.TOOLCHAIN_NO_SYSROOT if findHostArch returns null.

Author:    Bj=C3=B6rn Arnelid <bjorn.arnelid@enea.com>
Signed-off-by: David Nystr=C3=B6m <david.nystrom@enea.com>
---
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |   20 +++++++++++++++-=
----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.=
java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 6be90be..749fac7 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -100,7 +100,17 @@ public class YoctoSDKUtils {
 			File sysroot_dir =3D new File(sysroot_dir_str);
 			if (!sysroot_dir.exists())
 				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
-			String toolchain_host_arch =3D findHostArch(sysroot_dir);
+		=09
+			String toolchain_host_arch =3D null;
+		=09
+			try=20
+			{
+				toolchain_host_arch =3D findHostArch(sysroot_dir);
+			}
+			catch(NullPointerException e)=20
+			{
+				return SDKCheckResults.TOOLCHAIN_NO_SYSROOT;
+			}
 		=09
 			if (!toolchain_host_arch.equalsIgnoreCase(platform)) {
 				if (!platform.matches("i\\d86") || !toolchain_host_arch.matches("i\\d8=
6"))
@@ -576,7 +586,7 @@ public class YoctoSDKUtils {
 	static private String findHostArch(File sysroot_dir) {
 		FilenameFilter nativeFilter =3D new FilenameFilter() {
 			public boolean accept(File dir, String name) {
-				if (name.endsWith("-pokysdk-linux")) {
+				if (name.endsWith("sdk-linux")) {
 					return true;
 				} else {
 					return false;
@@ -590,11 +600,11 @@ public class YoctoSDKUtils {
 		for (File file : files) {
 			if (file.isDirectory()) {
 				String path =3D file.getName();
-				arch =3D path.substring(0, path.indexOf("-pokysdk-linux"));
+				String[] subPath =3D path.split("-");
+				arch =3D subPath[0];
 			} else=20
 				continue;
         }
 		return arch;
 	}
-}
-
+}
\ No newline at end of file
--=20
1.7.9.5


