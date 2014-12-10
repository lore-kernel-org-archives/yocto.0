Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DDBE0087C; Wed, 10 Dec 2014 13:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41BA3E0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 13:34:18 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so4804786wgh.20
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 13:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=f7VaLnDLOEm3OWG0cjRVA+OCCwIcsSDwmF3s1FTNHAg=;
	b=sITr2PrzTC8BG7/w0i6D2jPwlf0hH02Ig2Vt6aVSqcIvt+/0mUrwjgBx0Er8SA5jkL
	OKJQ39HWwYc8EpOnFkbRWSCxRpaZSDTtsmb2cUZWEatJT/sEl3OCE529lKstx1Hv53EM
	QH1RuXp9fWUTDGO3Q1z4fnW+Ab0H4dvY2Cxwu+9pVydJzoeiy1L38gNnHpnqaXunTAjD
	od3ix0QtqllEOzG29PFtY9C2MDxOY2NzFsWwrxDBj3bngF092viQY+NFmQaSKac1FlP+
	iwo8SbqQYU2LMtvPt+eRMOnzq81E8fT95K3b73gu/NXZVBC+A4lOPKs0xlPT1dLR09qz
	Fycw==
X-Received: by 10.194.82.97 with SMTP id h1mr10499035wjy.116.1418247257511;
	Wed, 10 Dec 2014 13:34:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.7.99 with HTTP; Wed, 10 Dec 2014 13:33:57 -0800 (PST)
From: Insop Song <insop.song@gmail.com>
Date: Wed, 10 Dec 2014 13:33:57 -0800
Message-ID: <CACzyEJ9bhV0iZWR7Tdis_n+oDB8yKzjM=J0M7e+YY+ZPz0ZufQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Cc: P@draigbrady.com
Subject: add a process memory check utility (ps_mem)
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
X-List-Received-Date: Wed, 10 Dec 2014 21:34:27 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

I've been using this memory check utility (ps_mem) and wrote a bb file
to include it in our yocto image.

I thought it'd nice to include this in yocto upstream as well.

- It's called ps_mem, "A utility to accurately report the in core
memory usage for a program"
- https://github.com/pixelb

Could you consider to include ps_mem in upstream? and let me know what
and where to put if is okay? I can follow up.


Thank you,

Insop


- this is my bb file as an example

diff --git a/recipes-gs/ps_mem/psmem.bb b/recipes-gs/ps_mem/psmem.bb
new file mode 100644
index 0000000..d408298
--- /dev/null
+++ b/recipes-gs/ps_mem/psmem.bb
@@ -0,0 +1,26 @@
+#
+# ps_mem
+#
+SUMMARY = "A utility to accurately report the in core memory usage
for a program"
+HOMEPAGE = "https://github.com/pixelb/ps_mem"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=c05fdef0c0d05f619748e9bb0fb41b21"
+
+PR = "r0"
+
+SRC_URI = "git://github.com/pixelb/ps_mem.git;branch=master;protocol=git"
+SRCREV = "702b461d16062f14a9f4191bc731adcf48b51489"
+
+S = "${WORKDIR}/git"
+
+do_compile () {
+ echo "No compile needed"
+}
+
+do_install () {
+ install -d ${D}${bindir}
+ install -m 0755 ${S}/ps_mem.py ${D}${bindir}/ps_mem
+}
+
+FILES_${PN} += "/*"
+FILES_${PN}-dbg += "/www/pages/.debug"
-- 
1.7.9.5

