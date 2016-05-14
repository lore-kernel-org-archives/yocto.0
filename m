Return-Path: <sanzi.voicu@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA737E00D83; Sat, 14 May 2016 05:05:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sanzi.voicu[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [72.30.239.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm34-vm5.bullet.mail.bf1.yahoo.com
	(nm34-vm5.bullet.mail.bf1.yahoo.com [72.30.239.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 332B9E00D63
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 05:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1463227412; bh=lb0JTDo2iV4IeT7+iosrO13AU2efkkdTNadU8nUd+3w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
	b=aS6CMFym9MEW52VTeJluGkm0DdHrqMFcPPOuAbkit6CX4eKT4GUP3e0LbGoGwjF/DGYQyWfh7VOO+jEmXhMF93RasWDOJ7Ij1mxTcDPMY9OB8YIGvnDtvnZ7KryLSPK+7gPm55BuLYjKamRz0puf2U+1c9LvIPZsHL8Lx54zFGIIec9er7ApDXBGhtkvcGfCILw2VEXtxVFcgdVxL7seTSx+x0/GWGuakzb/mbVMHGkQpUwsoz7GjGR9GyZoU38UjjRZ5TMhqm0L5qrWkuanZfI+suX6nc02RuT4U0ZC27RGeBYEWht0L9R972S2JfqPGCAOIme239kPRx0t4fSH/w==
Received: from [98.139.215.141] by nm34.bullet.mail.bf1.yahoo.com with NNFMP;
	14 May 2016 12:03:32 -0000
Received: from [68.142.230.65] by tm12.bullet.mail.bf1.yahoo.com with NNFMP;
	14 May 2016 12:03:32 -0000
Received: from [127.0.0.1] by smtp222.mail.bf1.yahoo.com with NNFMP;
	14 May 2016 12:03:32 -0000
X-Yahoo-Newman-Id: 843011.68469.bm@smtp222.mail.bf1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: H1gPcuMVM1lQvBLt6diSqc52gpDTWpAUDEA6MtKxw0m2R.v
	JmjaeH9eaJ6CxhhnHk44dtLSMt1_GDbYGnHtD8CjShZ1mtgB4iXNjSwNlSuO
	mTszxTSetWVouoK4CAP16EIeBt29Au_KuhBt_cy9mm65JpftKQek.E7vfkdK
	cWqLCuclAVhlPHiYRWb_FDwOOlwHXBayaLDLKJa5nxpKWN8GeW0hPRYra3sR
	P4Kef0Ua5OhRUbsEzEJQ_0V2BCnRYUxp7Qqb8NEQxYw1LZO3BWckh4iIR4Wf
	5jmk7_Pp_XBKMPoyd_Xes2hQNxkU16.agoXdeyVKJQNViuIPlaEXcP1Y3nOZ
	W4HJj56lOuhA5lGh35FFtkVcCfRQU6qVgREX8GgK69utJuZ8J4W41Hck2hQl
	3Nf_NNODe8Klnl3nRcuS4ITohowyyQqHLLJyyQf_035Uusnt6s3_ARWQDbtl
	F470E6cUhMiWoffkOlK0naIKRK.r58Z_kT5dvFSQooEWM6E7rY0Vi9HjgtIf
	w1lpluZkH5dZfQ6m_gSsl27HXhDlH6V92aTx5PF_I7zrdlsw3lbTu_2NHkJo -
X-Yahoo-SMTP: I18nf8WswBCbDnbjxFg1KGYs2dWSvlUt
From: "Sanziana.Voicu" <sanzi.voicu@yahoo.com>
To: yocto@yoctoproject.org
Date: Sat, 14 May 2016 15:03:26 +0300
Message-Id: <1463227406-4269-2-git-send-email-sanzi.voicu@yahoo.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1463227406-4269-1-git-send-email-sanzi.voicu@yahoo.com>
References: <1463227406-4269-1-git-send-email-sanzi.voicu@yahoo.com>
Subject: [meta-cgl][PATCH] CGL recipes compliance calculator first draft
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
X-List-Received-Date: Sat, 14 May 2016 12:05:45 -0000

From: Sanziana Voicu <sanzi.voicu@yahoo.com>

Signed-off-by: Sanziana Voicu <sanzi.voicu@yahoo.com>
---
 meta-cgl-common/classes/cgl-calc.bbclass           |  21 ++++
 .../recipes-cgl/corosync/corosync_1.4.7.bb         |   7 +-
 .../recipes-cgl/pacemaker/pacemaker_1.1.13.bb      |   7 +-
 scripts/script.py                                  | 117 +++++++++++++++++++++
 4 files changed, 150 insertions(+), 2 deletions(-)
 create mode 100644 meta-cgl-common/classes/cgl-calc.bbclass
 create mode 100755 scripts/script.py

diff --git a/meta-cgl-common/classes/cgl-calc.bbclass b/meta-cgl-common/classes/cgl-calc.bbclass
new file mode 100644
index 0000000..81660d6
--- /dev/null
+++ b/meta-cgl-common/classes/cgl-calc.bbclass
@@ -0,0 +1,21 @@
+
+do_cgl_calc() {
+	NO_COMPLY="NO"
+	if [ -z "${CGL_ID}" ]; then
+		echo "${NO_COMPLY}" > calculator.txt	
+	else
+		echo "${CGL_ID}" > calculator.txt
+	fi
+	if [ -z "${PRIORITY}" ]; then
+		echo "${NO_COMPLY}" >> calculator.txt	
+	else
+		echo "${PRIORITY}" >> calculator.txt
+	fi
+	if [ -z "${DISCLOSURE}" ]; then
+		echo "${NO_COMPLY}" >> calculator.txt	
+	else
+		echo "${DISCLOSURE}" >> calculator.txt
+	fi
+}
+
+addtask cgl_calc after do_fetch before do_build
diff --git a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
index 019a2f4..98b75e6 100644
--- a/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
+++ b/meta-cgl-common/recipes-cgl/corosync/corosync_1.4.7.bb
@@ -4,7 +4,7 @@ several default APIs and libraries, default configuration files, and an init \
 script."
 HOMEPAGE = "http://corosync.github.io/corosync/"
 
-inherit autotools pkgconfig update-rc.d useradd
+inherit autotools pkgconfig update-rc.d useradd cgl-calc
 
 SRC_URI = "http://build.clusterlabs.org/corosync/releases/${BPN}-${PV}.tar.gz \
            file://groff-desc-path.patch \
@@ -58,3 +58,8 @@ USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "haclient"
 USERADD_PARAM_${PN} = "-M --home  ${localstatedir}/lib/heartbeat -g haclient hacluster"
 
+CGL_ID="CFH.2.0,CCM.2.2"
+PRIORITY="P1,P1"
+DISCLOSURE="${PN},${PN}"
+
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
index d2e2395..84c8c84 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
@@ -26,7 +26,7 @@ SRC_URI = "https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
 SRC_URI[md5sum] = "d84a5173306727a981a4f87e36007595"
 SRC_URI[sha256sum] = "e963bc59a5d98a3e3441ea5cccb42aa67f9d7934b80c8818e19ae91c5da48331"
 
-inherit autotools-brokensep pkgconfig systemd python-dir useradd
+inherit autotools-brokensep pkgconfig systemd python-dir useradd cgl-calc
 
 S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
 
@@ -90,3 +90,8 @@ SYSTEMD_SERVICE_${PN}-remote += "pacemaker_remote.service"
 USERADD_PACKAGES = "${PN}"
 USERADD_PARAM_${PN} = "-r -g haclient -s ${base_sbindir}/nologin hacluster"
 GROUPADD_PARAM_${PN} = "-r haclient"
+
+CGL_ID="AVL.25.0,CAF.2.1,CAF.2.2"
+PRIORITY="P1,P1,P1"
+DISCLOSURE="${PN},${PN},${PN}"
+
diff --git a/scripts/script.py b/scripts/script.py
new file mode 100755
index 0000000..e033fa4
--- /dev/null
+++ b/scripts/script.py
@@ -0,0 +1,117 @@
+#!/usr/bin/python
+
+import os, sys
+
+# The value represents the total number of P! requirements available 
+# inside the CGL 5.0 template
+p1_reqs = 113
+files_no = 0
+cnt = 0
+nr = 0
+
+def compliance_calc(reqs_len):
+	number_p1=0;
+	for i in range(0,reqs_len):
+			number_p1=number_p1+1
+	procent=float(number_p1)/p1_reqs*100.
+	print "CGL compliance: %.2f%%" % procent
+
+build_dir = os.environ.get('BUILDDIR')
+if not build_dir:
+	print "Source the build environment before executing this script!"
+	sys.exit(1)
+director = build_dir + "/tmp/work"
+
+def populate_compl(content, files):
+	temp = content.split('\n')
+	global cnt
+
+	for j in range(0, len(temp[0].split(",")) ):
+		ID[cnt] = temp[0].split(",")[j]
+		P[cnt] = temp[1].split(",")[j]
+		D[cnt] = temp[2].split(",")[j]
+
+		if ID[cnt].split('.')[0] == "AVL":
+			shadow[cnt]=1
+		if ID[cnt].split('.')[0] == "CFH":
+			shadow[cnt]=2
+		if ID[cnt].split('.')[0] == "CSM":
+			shadow[cnt]=3
+		if ID[cnt].split('.')[0] == "CCM":
+			shadow[cnt]=4
+		if ID[cnt].split('.')[0] == "CAF":
+			shadow[cnt]=5
+		if ID[cnt].split('.')[0] == "CDIAG":
+			shadow[cnt]=6
+		if ID[cnt].split('.')[0] == "SMM":
+			shadow[cnt]=7
+		if ID[cnt].split('.')[0] == "SPM":
+			shadow[cnt]=8
+		if ID[cnt].split('.')[0] == "SFA":
+			shadow[cnt]=9
+		if ID[cnt].split('.')[0] == "PRF":
+			shadow[cnt]=10
+		if ID[cnt].split('.')[0] == "STD":
+			shadow[cnt]=12
+		if ID[cnt].split('.')[0] == "SEC":
+			shadow[cnt]=13
+		if ID[cnt].split('.')[0] == "PMS":
+			shadow[cnt]=14		
+		cnt=cnt+1
+
+def sort_reqs():
+	for i in range(0, nr-1):
+		for j in range(i+1, nr):
+			if shadow[i] > shadow[j]:
+				aux=shadow[i]
+				shadow[i]=shadow[j]
+				shadow[j]=aux
+				aux=ID[i]
+				ID[i]=ID[j]
+				ID[j]=aux
+				aux=P[i]
+				P[i]=P[j]
+				P[j]=aux
+				aux=D[i]
+				D[i]=D[j]
+				D[j]=aux;
+			else:
+				if shadow[i]==shadow[j]:
+					if ID[i]>ID[j]:
+						aux=shadow[i]
+						shadow[i]=shadow[j]
+						shadow[j]=aux
+						aux=ID[i]
+						ID[i]=ID[j]
+						ID[j]=aux
+						aux=P[i]
+						P[i]=P[j]
+						P[j]=aux
+						aux=D[i]
+						D[i]=D[j]
+						D[j]=aux		
+
+for root, dirs, files in os.walk(director):
+    for file in files:
+    	if  file == "calculator.txt" :
+    		files_no = files_no + 1
+
+    		f = open(os.path.join(root, file))
+    		temp = f.read().split('\n')
+    		nr=nr+len(temp[1].split(","))
+
+ID = [None] * nr
+P = [None] * nr
+D = [None] * nr
+shadow = [0] * nr
+
+for root, dirs, files in os.walk(director):
+    for file in files:
+    	if  file == "calculator.txt" :
+			f = open(os.path.join(root, file))
+			content=f.read()
+			populate_compl(content, files_no)
+			f.close()
+
+sort_reqs()
+compliance_calc(nr)
-- 
2.5.0


