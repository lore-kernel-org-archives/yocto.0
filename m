Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web08.13820.1620914539524279651
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 07:02:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=BAhwLjUR;
 spf=pass (domain: gherzan.com, ip: 66.111.4.26, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.nyi.internal (Postfix) with ESMTP id D37DC5C0070;
	Thu, 13 May 2021 10:02:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 13 May 2021 10:02:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm1; bh=ij0kSJB85HDwOe5v8O76v4G6p4
	5o5gbdtOZwPirCbu8=; b=BAhwLjURL8eWBbxOm2zYs/2QoNudvctEYnULuwd3ns
	3hty7oKjlrkKKjEVFEh/HdGsV7wdFmsaVAxlwSj0bOPx+55sk2pVkDnGELZEQ6HN
	lB6udeXrveHD/UWcLWbaoNUHuRbulR0Smg32vc8MuEoglb5rzpQQ1BM6kkMh2Gml
	ZPBImCzXkrGrTb86WPHYuNQLvtcctOpnVIae8RFUijuPgCyjXBIUGKrBd+zoaxYo
	JRn8wJ90keqOGLl5605Q+OjqOU7ye+v/Z62V2k+7w2T4DUORR0G4vASIEI21DKvm
	nCXXxBLE9uEZhSMUNw4hCcsDaG5nx9VMvsZWzHF+0F9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ij0kSJB85HDwOe5v8
	O76v4G6p45o5gbdtOZwPirCbu8=; b=g2IWNLNU/ldU9NpDn3UnZJiFY4+lra4e/
	shK6Po2ZCkp+nZvPqOCLri0HtFR/+G9t8JuEjeqQM/NOHjobIojjByRFcbQrRKMH
	d34BgNAiRlmuTM6CDMIjGcrhU4Xyf7DwlqQoVGQ6DBR5CXLeuhLDG5IP5lj82975
	Jvd5yFltKF8IM9SUss0xzzP3Z9WMo1pa2ZyMrnY0JSDpcCwAQ/YVrHlaKv/+nb1Y
	SdyXLj/ntZwHdwGG/IS3Uj8ZYb1lxTjcrorT4P8t364jaYXgY9M7ZN5ppQM+DPWH
	2mh8BRkYFDljsSX576djaPRUmlzYYBeInTc6uRYMjYvfriPKx51XQ==
X-ME-Sender: <xms:aTGdYGVEURIzcJl3o57BwhVczMrk-lMJ2-CSRMHUkYmogUrJZRVz_w>
    <xme:aTGdYCn5HruTe_8jXcPXrX7X1ROTbya4pIWWWVcU4mANK2zzEpCd1h_z1NZIk4m3r
    SZYeZmzcSRjTm_ZAu0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdehgedgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehghhgv
    rhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpedvteeutdeutdfhvefggfeifeehve
    ethfeuffekgeeiiefgkefhheehjeeijeejudenucfkphepvddrvdeirdduheeirddujeef
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnug
    hrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:aTGdYKZEN7cxabkv9TGih_lxRTN1d_sSvSpDI1ymgtoT8TEem5vOjw>
    <xmx:aTGdYNXKICyOPrE9rSS7iax1WIYn6XsYb0JRIVRFEKWuKGxWdvAhxg>
    <xmx:aTGdYAl_0S7MV20Pr3bbhm_17w0Ga1w13SXXZIU7vZxjokoA13kQtA>
    <xmx:ajGdYHsQDiAxEpVWMB-o6mziUU1oJ8TKAJUvnB46rYlRP2OnbecdHg>
Received: from qwirkle.internal (unknown [2.26.156.173])
	by mail.messagingengine.com (Postfix) with ESMTPA;
	Thu, 13 May 2021 10:02:16 -0400 (EDT)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: ross@burtonini.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 1/2] zephyr-qemuboot.bbclass: Don't overwrite the entire elf dictionary key
Date: Thu, 13 May 2021 15:02:07 +0100
Message-Id: <20210513140208.708092-1-andrei@gherzan.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

The nios2_machdata_setfunc was overwriting the elf key in matchdata for
arc done in arc_machdata_setfunc which in turn was overwriting the one
from oe-core. This is making qemu-x86 builds (as an example)
unbuildable:

Exception: KeyError: 'i586'

This patch makes sure that the changes complement the machdata
dictionary as opposed to overwriting the entire "elf" key.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/siteinfo-zephyr.bbclass | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/classes/siteinfo-zephyr.bbclass b/classes/siteinfo-zephyr.bbclass
index d84fd3a..b84a9b2 100644
--- a/classes/siteinfo-zephyr.bbclass
+++ b/classes/siteinfo-zephyr.bbclass
@@ -1,4 +1,3 @@
-
 def arc_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
     archinfo['arc'] = "endian-little bit-32 "
     osinfo['linux'] = "common-linux common-glibc"
@@ -8,7 +7,7 @@ def arc_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
 SITEINFO_EXTRA_DATAFUNCS += "arc_siteinfo_setfunc"
 
 def arc_machdata_setfunc(machdata, d):
-    machdata["elf"] = { "arc" : (195, 0, 0, True, 32), }
+    machdata["elf"]["arc"] = (195, 0, 0, True, 32)
     return machdata
 
 PACKAGEQA_EXTRA_MACHDEFFUNCS += "arc_machdata_setfunc"
@@ -22,7 +21,7 @@ def iamcu_siteinfo_setfunc(archinfo, osinfo, targetinfo, d):
 SITEINFO_EXTRA_DATAFUNCS += "iamcu_siteinfo_setfunc"
 
 def nios2_machdata_setfunc(machdata, d):
-    machdata["elf"] = {"nios2":  (113, 0, 0, True, 32), }
+    machdata["elf"]["nios2"] = (113, 0, 0, True, 32)
     return machdata
 
-PACKAGEQA_EXTRA_MACHDEFFUNCS += "nios2_machdata_setfunc"
\ No newline at end of file
+PACKAGEQA_EXTRA_MACHDEFFUNCS += "nios2_machdata_setfunc"
-- 
2.31.1

