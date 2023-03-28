Return-Path: <me@zygoon.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E15C76196
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 10:21:15 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web11.62751.1679998871740995031
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Mar 2023 03:21:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zygoon.pl header.s=fm1 header.b=A5bRJ7st;
 spf=pass (domain: zygoon.pl, ip: 66.111.4.27, mailfrom: me@zygoon.pl)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 0FF535C0190
	for <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 06:21:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 28 Mar 2023 06:21:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zygoon.pl; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1679998871; x=1680085271; bh=J5vrntrstL
	bqeW9SrrreX1QtLD9zDIjImmQvnb4rryk=; b=A5bRJ7stsN8zhYzvQLgVQhEUMW
	MJh/mml/jSJfTwYAevEHABsrnYMN2r4GIPNY1gpEkeEeq1gmZnLtM5LISnabqgrI
	JAjggNgdDzidwdMxVBgr5qtLkVhamaOhh7Ukh3eixvYlRaZADurGlmnmbbyDWAHy
	3pPveatt166ilriO5i5OwvhMK54Ew505wPSfEXM+oga1FL2NVxtzVXdDvOZ74hPE
	/68rla0Yo1Ep2fTBS9ZK9d/P4vDxx+3delHlIs1NhVDgo5zYLCL3OUdv6wyaoFsW
	nniBp5GuHcysA4OIJFdfYoUwyzEmcT+8PIj+zcYcDS2ch4ngIRYQKTKQP/rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1679998871; x=1680085271; bh=J5vrntrstLbqeW9SrrreX1QtLD9z
	DIjImmQvnb4rryk=; b=lOUKbNW4SBgJMKVqg6J8I3jp64JE3lylcKpCw1YLp06j
	y3PqU5PvbGgp936nSPFVZ7IcoPlstpr+yWaGq4zZNIlMtxF71EW868ZSk0gAeWdD
	cG1gZnh+g84lMs0VeFX9nQhEY7Ich6DmEpMOeL/JsfxsbCoPf1POTpg7HhjKOc6s
	LAcVaxT21/HxLpUrN6j4/KFpCY7DtRaH8OPTZ2D4dX4PxaPbqHKr/Arf1cGTRUqu
	qyzaCq+BsJ9xcUHLAqwVbl0Ewufrne6UhkvW7R71FLfEhxHKo08nci+77OwSjrzd
	8ORcwSiuZJJ2FqGH5daWMEFAcfy9oTlmyfty/tJjLg==
X-ME-Sender: <xms:lr8iZJTySacK7M1UsdccVrSTcGiACX-vLZzPXm5FCrwM6BqtzwgD2A>
    <xme:lr8iZCxd0-pm5He_cMJFUayJK0S77FmK6mt-7KieKXsBvtYKzSU0_V8E0vPj8Ahll
    SED2-C1s8Cv6YXOdw>
X-ME-Received: <xmr:lr8iZO2LpOWzHGez4WqmkCbS155zOc_UO0srxRjcvGdzuH5uZ3LQsHT7DCgORthecbAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehgedgvdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomhepkgihghhmuhhnthcumfhrhihnihgtkhhiuceomhgvseiihihgohho
    nhdrphhlqeenucggtffrrghtthgvrhhnpedviefgteelvdevgeeitdeftdfgkefftddtke
    ehfeehgeegueekfeevvdeftefhheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
    mhepmhgrihhlfhhrohhmpehmvgesiiihghhoohhnrdhplh
X-ME-Proxy: <xmx:lr8iZBDuJWY5n_9DCXrMXmzVYQ1SVwYbFbMgVpL0VZO4ixRmJvc8hQ>
    <xmx:lr8iZCiBDCWDtCxFqPf8m9p8BEy0_tumswO9GOvxTJhGp5Ws-VdXXg>
    <xmx:lr8iZFqKI0RoA4aIgnJ_9bagwABoa9ZtfLrhce5JQC_ONdDn_HB5PA>
    <xmx:l78iZIeJPccAXRcpvBG_pX6MAaVgWvb-4nI1K1TMeAQ9oIN5lu5ooQ>
Feedback-ID: i416c40e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 06:21:10 -0400 (EDT)
From: Zygmunt Krynicki <me@zygoon.pl>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] dm-verity-img.bbclass: detect veritysetup failure
Date: Tue, 28 Mar 2023 10:21:07 +0000
Message-Id: <20230328102107.347291-1-me@zygoon.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 10:21:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59538

Explicitly fail in process_verity if no KEY-VALUE lines are converted.

It seems that verity images are not building correctly with INHERIT +=
"rm_work". Some debugging later it was clear that veritysetup is silently
failing, as the output is piped to process_verity shell function, which masks
the exit code of veritysetup.

Signed-off-by: Zygmunt Krynicki <me@zygoon.pl>
---
 classes/dm-verity-img.bbclass | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index d809985..60e535b 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -43,12 +43,19 @@ process_verity() {
     # underscores to create correct shell variable names. For the value part:
     # just trim all white-spaces.
     IFS=":"
+    local N=0
     while read KEY VAL; do
         printf '%s=%s\n' \
             "$(echo "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g')" \
             "$(echo "$VAL" | tr -d ' \t')" >> $ENV
+        N=$(expr N + 1)
     done
 
+    if [ $N -eq 0 ]; then
+        echo "process_verity did not convert any values, something misbehaved, probably"
+        exit 1
+    fi
+
     # Add partition size
     echo "DATA_SIZE=$SIZE" >> $ENV
 }
-- 
2.37.2


