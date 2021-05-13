Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web09.13768.1620914543381537390
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 07:02:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=EJLku2ct;
 spf=pass (domain: gherzan.com, ip: 66.111.4.26, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id B0AFA5C0134;
	Thu, 13 May 2021 10:02:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 13 May 2021 10:02:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=r2v1uRY8KhQaf
	gPyZej80uvt9+hVKq98wlwaZbLmqQQ=; b=EJLku2ct7CzhxqdApk7W1+bm33bdC
	B/R+iIUVIELQnstHifcvfRY41Ty8bg6fHjpfpgMm5GInbG5EzmJ+kQi4C7h0Oqw9
	Mcr+81Tleqe066lAxi22owOXRWvVPmSuapViEfYVlubTW/zJyoX21MYFKl4bbYo3
	d74ryPV1NeI42pC72WnOPkIcL8S+Ht5VOB29XFN54xepRNoywvAHxGy9B/3KM67/
	mtIiHJfCRRLMHHc7hdSMOI2I9l8AUK+hX2IfnVKv0/zQDiS1c0QxodzM4K1puAD9
	UE3FwJm3PzHEsfFhxz75ZDvc6uoAZuo6Yy9ogWxrHl5ioNhjiqp/Z9NkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=r2v1uRY8KhQafgPyZej80uvt9+hVKq98wlwaZbLmqQQ=; b=he5tf6+T
	YNhgvM4UrdfzY7LBPqvt9A9VUdI8fEBHslqSSDzlTGTxERWk0tphzUKjgvjdTWKZ
	U+itqFvp3sIskgR5MPl4ZzTxSpucbpNJFhVF4BC+MiAA9SsKO33NFJ7yF16zTB5y
	+2xft4X7iH9zXZfWyn6H9HmBGZd4sloVtOumNdsrKxn+9kAKLV+OBndAeg+Jtzcj
	4HrL4vLiOpztmuNcaoH3q+hjPOio1SC2sjpzpmZIFV8bvYZdn6keYSbAGYQLGJkk
	x5ARAI5UEvCOCT8AayHmen4bLnFDxGhyqE49LwewsNzAhneToWXoQeBbchxa+Fel
	uh1F2zacNSz51g==
X-ME-Sender: <xms:bjGdYGZ-AvdmYthCjZGFAH1uslf4FJgDul1-tX4Deu4Hzh5wEqmWjw>
    <xme:bjGdYJaRnaulHD9HnxnyarYX5QYF3OrxhGZbDjFazS6NI-9sezwfxPCqpXpTla0f5
    X6gSqWbpMvDhyylTPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdehgedgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
    dtredttdenucfhrhhomheptehnughrvghiucfihhgvrhiirghnuceorghnughrvghisehg
    hhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeettddvffefkeetveekteeive
    eggeevieeiudejfeeitedvkeelvdekheejlefffeenucfkphepvddrvdeirdduheeirddu
    jeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hnughrvghisehghhgvrhiirghnrdgtohhm
X-ME-Proxy: <xmx:bjGdYA8ZjORBDJr3FkjZK2BaF7IqmWz65Zhcf5S-PoYRnLWsWU1UcQ>
    <xmx:bjGdYIqR4Y7CzxszQscZBSlIrSsyooCnJl7Jpd3RY8jv7pKm9TUiXA>
    <xmx:bjGdYBq4SJI-jokTrrjNwWc6YEyqMYTQMhS0r6OvCteITvxCNC57Cw>
    <xmx:bjGdYASpF5JLwsuK4NNnBXRHHm23qSh_UvIVeXaETvZkp8u7ewXhAg>
Received: from qwirkle.internal (unknown [2.26.156.173])
	by mail.messagingengine.com (Postfix) with ESMTPA;
	Thu, 13 May 2021 10:02:21 -0400 (EDT)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: ross@burtonini.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-qemuboot.bbclass: Remove dependency on qemu-system-native
Date: Thu, 13 May 2021 15:02:08 +0100
Message-Id: <20210513140208.708092-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210513140208.708092-1-andrei@gherzan.com>
References: <20210513140208.708092-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

runqemu only really needs the sysroot for qemu-helper-native. Pulling
other qemu dependency would get into a racing issue with rm_work. That
can also be fixed by tweaking the do_addto_recipe_sysroot order in
oe-core for qemu-system-native but that is just not needed for this
specific dependency requirement.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-qemuboot.bbclass | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
index f508b45..c268e9e 100644
--- a/classes/zephyr-qemuboot.bbclass
+++ b/classes/zephyr-qemuboot.bbclass
@@ -36,19 +36,18 @@ python do_bootconf_write() {
 
 addtask do_bootconf_write before do_build after do_deploy
 
-# The runqemu script requires the native sysroot populated for the qemu
-# recipes. Usually, this is pulled in by a do_image dependency (see
-# baremetal-helloworld_git, for example), but in this case, there is no such
-# task, so we hook in the dependency to do_bootconf_write. This also ensures
-# that builds from sstate will also have this requirement satisfied.
+# The runqemu script requires the native sysroot populated for the
+# qemu-helper-native recipes. Usually, this is pulled in by a do_image
+# dependency (see baremetal-helloworld_git, for example), but in this case,
+# there is no such task, so we hook in the dependency to do_bootconf_write.
+# This also ensures that builds from sstate will also have this requirement
+# satisfied.
 python () {
-    # do_addto_recipe_sysroot doesnt exist for all recipes, but we need it to have
-    # /usr/bin on recipe-sysroot (qemu) populated
     def extraimage_getdepends(task):
         deps = ""
         for dep in (d.getVar('EXTRA_IMAGEDEPENDS') or "").split():
         # Make sure we only add it for qemu
-            if 'qemu' in dep:
+            if 'qemu-helper-native' in dep:
                 deps += " %s:%s" % (dep, task)
         return deps
     d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_addto_recipe_sysroot'))
-- 
2.31.1

