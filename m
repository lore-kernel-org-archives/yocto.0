Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCB0E01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 07:31:29 -0700 (PDT)
Received: by lagz14 with SMTP id z14so5296337lag.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 07:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mQcsOJVEQ/XFDv3KG9cj6d0A/xTMC6FVKcuo02XW+R0=;
	b=vXSam0N3Q2oQ4gTzW1DtBsnN6G05DpeAyUjgMLz2NSkO8BOlfBnDtN6W9sHD+k5eiH
	EC2h575MPDByVbVzb+ET+Gq8g7+WsfSZqLQ+TsYd1u2YtAsmJZH9BeHCIDPWj1/uX+Zn
	Ty1hzWaWx3jwwGwcSOcRnAqinMl+dwlK2m2AL1rWGegznfANSSPkYHFS9f/L5ZzoMoNm
	1u8MzJICiEqlLSD1jMD3TMAoiy7TK7BA/GXZlU9EE9h3x2PzPWdm0fTXBlqWfOTEICAp
	CeP1B/n+lk904cNgBzF/Ev6zKgfIBJfnHohn+2BM0V0niV5vW68VsRJbhBpy5DYg9Xe+
	aTAg==
MIME-Version: 1.0
Received: by 10.152.144.163 with SMTP id sn3mr10925243lab.37.1343831487176;
	Wed, 01 Aug 2012 07:31:27 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Wed, 1 Aug 2012 07:31:27 -0700 (PDT)
Date: Wed, 1 Aug 2012 16:31:27 +0200
Message-ID: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Scott Garman <scott.a.garman@intel.com>
Subject: [denzil-next BREAKAGE] Silent breakage in denzil-next --- uImage*.dts no longer generated
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
X-List-Received-Date: Wed, 01 Aug 2012 14:31:29 -0000
Content-Type: multipart/alternative; boundary=e89a8f2343a56e603204c635262e

--e89a8f2343a56e603204c635262e
Content-Type: text/plain; charset=ISO-8859-1

Hello Scott,

I tested your denzil-next branch but found breakage that will not fail the
(auto) build.

poky-contrib.git$ git branch
  master
* sgarman/denzil-next
poky-contrib.git$ git log -n1
commit 6a7d4c7dfc574669ea2eeacede1b74e2f55c4675

I'm hitting the "Warning: ${DTS_FILE} is not available!" case.

I'll follow-up later. This was just a heads up that even if the autobuilds
succeed, I would consider this failing.


This is the probable related diff between denzil and denzil-next, I think
fully from commit a40d795e (Zhenhua Luo).
meta/recipes-kernel/linux/linux-dtb.inc:


+++ poky-contrib.git/meta/recipes-kernel/linux/linux-dtb.inc    2012-08-01
12:03:42.502612844 +0200
@@ -15,13 +15,35 @@

 do_install_append() {
     if test -n "${KERNEL_DEVICETREE}"; then
-    dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o devicetree
${KERNEL_DEVICETREE}
-    install -m 0644 devicetree ${D}/boot/devicetree-${KERNEL_VERSION}
-    install -d ${DEPLOYDIR}
-    install -m 0644 devicetree ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.dtb
-    cd ${DEPLOYDIR}
-    rm -f ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
-    ln -sf ${KERNEL_IMAGE_BASE_NAME}.dtb ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
+        for DTS_FILE in ${KERNEL_DEVICETREE}; do
+            if [ ! -f ${DTS_FILE} ]; then
+                echo "Warning: ${DTS_FILE} is not available!"
+                continue
+            fi
+            DTS_BASE_NAME=`basename ${DTS_FILE} | awk -F "." '{print $1}'`
+            DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
+            DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
+            dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o
${DTS_BASE_NAME} ${DTS_FILE}
+            install -m 0644 ${DTS_BASE_NAME}
${D}/boot/devicetree-${DTB_SYMLINK_NAME}.dtb
+        done
     fi
 }

+do_deploy_append() {
+    if test -n "${KERNEL_DEVICETREE}"; then
+        for DTS_FILE in ${KERNEL_DEVICETREE}; do
+            if [ ! -f ${DTS_FILE} ]; then
+                echo "Warning: ${DTS_FILE} is not available!"
+                continue
+            fi
+            DTS_BASE_NAME=`basename ${DTS_FILE} | awk -F "." '{print $1}'`
+            DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
+            DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
+            install -d ${DEPLOYDIR}
+            install -m 0644 ${B}/${DTS_BASE_NAME}
${DEPLOYDIR}/${DTB_NAME}.dtb
+            cd ${DEPLOYDIR}
+            ln -sf ${DTB_NAME}.dtb ${DTB_SYMLINK_NAME}.dtb
+            cd -
+        done
+    fi
+}


Regards,

Leon.

--e89a8f2343a56e603204c635262e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Scott,<br><br>I tested your denzil-next branch but found breakage tha=
t will not fail the (auto) build.<br><br>poky-contrib.git$ git branch <br>=
=A0 master<br>* sgarman/denzil-next<br>poky-contrib.git$ git log -n1<br>com=
mit 6a7d4c7dfc574669ea2eeacede1b74e2f55c4675<br>
<br>I&#39;m hitting the  &quot;Warning: ${DTS_FILE} is not available!&quot;=
 case.<br><br>I&#39;ll follow-up later. This was just a heads up that even =
if the autobuilds succeed, I would consider this failing.<br><br><br>This i=
s the probable related diff between denzil and denzil-next, I think fully f=
rom commit a40d795e (Zhenhua Luo).<br>

meta/recipes-kernel/linux/linux-dtb.inc:<br><br><br>+++ poky-contrib.git/me=
ta/recipes-kernel/linux/linux-dtb.inc=A0=A0=A0 2012-08-01 12:03:42.50261284=
4 +0200<br>@@ -15,13 +15,35 @@<br>=A0<br>=A0do_install_append() {<br>=A0=A0=
=A0=A0 if test -n &quot;${KERNEL_DEVICETREE}&quot;; then<br>
-=A0=A0=A0 dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o devicetree ${KER=
NEL_DEVICETREE}<br>-=A0=A0=A0 install -m 0644 devicetree ${D}/boot/devicetr=
ee-${KERNEL_VERSION}<br>-=A0=A0=A0 install -d ${DEPLOYDIR}<br>-=A0=A0=A0 in=
stall -m 0644 devicetree ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.dtb<br>
-=A0=A0=A0 cd ${DEPLOYDIR}<br>-=A0=A0=A0 rm -f ${KERNEL_IMAGE_SYMLINK_NAME}=
.dtb<br>-=A0=A0=A0 ln -sf ${KERNEL_IMAGE_BASE_NAME}.dtb ${KERNEL_IMAGE_SYML=
INK_NAME}.dtb<br>+=A0=A0=A0=A0=A0=A0=A0 for DTS_FILE in ${KERNEL_DEVICETREE=
}; do<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ ! -f ${DTS_FILE} ]; then<b=
r>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 echo &quot;Warning: ${DTS_FI=
LE} is not available!&quot;<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 continue<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fi<br>+=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 DTS_BASE_NAME=3D`basename ${DTS_FILE} | awk -F &quot;.&q=
uot; &#39;{print $1}&#39;`<br>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DTB_NAME=3D`echo ${KERNEL_IMAGE_BASE_NAM=
E} | sed &quot;s/${MACHINE}/${DTS_BASE_NAME}/g&quot;`<br>+=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_SYMLINK_NAME} | =
sed &quot;s/${MACHINE}/${DTS_BASE_NAME}/g&quot;`<br>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dtc -I dts -O dtb ${KERNEL_DEVICETREE_FL=
AGS} -o ${DTS_BASE_NAME} ${DTS_FILE}<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
install -m 0644 ${DTS_BASE_NAME} ${D}/boot/devicetree-${DTB_SYMLINK_NAME}.d=
tb<br>+=A0=A0=A0=A0=A0=A0=A0 done<br>=A0=A0=A0=A0 fi<br>=A0}<br>
=A0<br>+do_deploy_append() {<br>+=A0=A0=A0 if test -n &quot;${KERNEL_DEVICE=
TREE}&quot;; then<br>+=A0=A0=A0=A0=A0=A0=A0 for DTS_FILE in ${KERNEL_DEVICE=
TREE}; do<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ ! -f ${DTS_FILE} ]; th=
en<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 echo &quot;Warning: ${=
DTS_FILE} is not available!&quot;<br>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 continue<br>+=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 fi<br>+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DTS_BASE_NAME=
=3D`basename ${DTS_FILE} | awk -F &quot;.&quot; &#39;{print $1}&#39;`<br>+=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DTB_NAME=3D`echo ${KERNEL_IMAGE_BASE_NAME=
} | sed &quot;s/${MACHINE}/${DTS_BASE_NAME}/g&quot;`<br>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 DTB_SYMLINK_NAME=3D`echo ${KERNEL_IMAGE_=
SYMLINK_NAME} | sed &quot;s/${MACHINE}/${DTS_BASE_NAME}/g&quot;`<br>+=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 install -d ${DEPLOYDIR}<br>+=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 install -m 0644 ${B}/${DTS_BASE_NAME} ${DEPLOYDIR}/${DTB_NA=
ME}.dtb<br>
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cd ${DEPLOYDIR}<br>+=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 ln -sf ${DTB_NAME}.dtb ${DTB_SYMLINK_NAME}.dtb<br>+=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 cd -<br>+=A0=A0=A0=A0=A0=A0=A0 done<br>+=A0=A0=
=A0 fi<br>+}<br><br><br>Regards,<br><br>Leon.<br>

--e89a8f2343a56e603204c635262e--
