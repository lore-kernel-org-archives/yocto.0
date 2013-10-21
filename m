Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4CA2CE01724
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 02:21:21 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Mon, 21 Oct 2013 11:21:16 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id C861A28C6F4;
	Mon, 21 Oct 2013 11:21:16 +0200 (CEST)
From: <maxin.john@enea.com>
To: <scott.m.rifenbark@intel.com>
Date: Mon, 21 Oct 2013 11:21:15 +0200
Message-ID: <1382347275-39633-1-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: [PATCH] adt-manual: Added note for static binary build.
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
X-List-Received-Date: Mon, 21 Oct 2013 09:21:24 -0000
Content-Type: text/plain

From: "Maxin B. John" <maxin.john@enea.com>

Fixes [YOCTO #5347]

SDK created using the "-c populate_sdk" will not support static
binary build without proper staticdev library packages. I have
added a note to inform the user about this limitation.

Signed-off-by: Maxin B. John <maxin.john@enea.com>
---
 documentation/adt-manual/adt-prepare.xml |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 3c50cf9..3333cc4 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -573,6 +573,12 @@
          When the BitBake command completes, the toolchain installer will be in
          <filename>tmp/deploy/sdk</filename> in the Build Directory.
      </para>
+     <para>
+	Please note that we can't build static binaries with this toolchain.
+	To do that, include the suitable staticdev libraries to the image. eg:
+	<filename>IMAGE_INSTALL_append = " eglibc-staticdev"</filename>
+	in the <filename>local.conf</filename> file.
+     </para>
 </section>
 
 </chapter>
-- 
1.7.10.4


