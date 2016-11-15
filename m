Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCDB1E0095F; Tue, 15 Nov 2016 04:13:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24F6E0093B
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 04:13:37 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id g23so163017451wme.1
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 04:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=kGkm9Aj1ype0Tq+ni+50YiuLhW+rhrLsSHzJtkwObw0=;
	b=tOUZp4YPdrUmGq3GCyryj+pw4ps0G//cARzfa930+W+/qr33MPSYLZzxRcslA0oJu1
	DGmNBSZaJSOONF6TtQnZdY7hUEMNk6n8gL37Q29muVIYS5c4XiyMT9i009M/G6r3AcVq
	6xeZhA8cNL3usF1GTRMiLh0IH0vxPC1UOlqbV1SAGToqDDWzzXyvaO/L6s73Ns09RKPw
	0P77ElQmg+u+1j9cumAIr1Tq5+VBvSd5f0lCu5SmHuZOp3IxfUY0mG8X5ss78M2kpoAN
	wRXhW/GrGxXL+fXPtt3Id9KrFKp4aD6O1IV8EkNg0awYkFXjpsIhiz78hddU4y0US8E8
	SBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=kGkm9Aj1ype0Tq+ni+50YiuLhW+rhrLsSHzJtkwObw0=;
	b=Qnjd1RhyeIfpES5GCzXPvWKx4SDUIH9YoX6nhK0AciGiQwks/rQm2R0f/mL1Zha528
	B1MIcaoh86eEv7richfjYs5HuoRNBCsIlsUNYaixCgu3VVP6yel3eGxf/kVJEpAhXJm2
	qIzXFrekbjIB0nyb/n+puMU7sq6wIWj6Ft3LHp/iakYz1OMvoVSp9eLJKqrfxEOyvkhP
	uzK5w4ZKvGfiD/cPB6GshupY0OwJQROGhfAMEwbbubIpeGbwnfPKFle2mIbKuTqL7apb
	g2IoiGr7HLXfJbVP8iNncQUvrivSVwtniPdfPpbs2WY83Sii1Ty2EoXlwvH0Df0ROscf
	QM1A==
X-Gm-Message-State: ABUngvesmvJ74qTnU+gQVUYjgySEEia8lA1oTP6+0n8g4Cn9ebewvrJ3BVLNkOsf0C+ikhdF
X-Received: by 10.194.126.38 with SMTP id mv6mr23458721wjb.142.1479212016780; 
	Tue, 15 Nov 2016 04:13:36 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	c133sm3961234wme.12.2016.11.15.04.13.35 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 15 Nov 2016 04:13:36 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Nov 2016 12:13:31 +0000
Message-Id: <1479212011-17223-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [PATCH][yocto-autobuilder] nightly-qa-extras: test the API documentation DISTRO_FEATURE
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
X-List-Received-Date: Tue, 15 Nov 2016 12:13:41 -0000

Build the core-image-sato SDK with API documentation enabled to verify that this
doesn't regress.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-qa-extras.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/buildset-config.controller/nightly-qa-extras.conf b/buildset-config.controller/nightly-qa-extras.conf
index f796bb1..9f56f3b 100644
--- a/buildset-config.controller/nightly-qa-extras.conf
+++ b/buildset-config.controller/nightly-qa-extras.conf
@@ -19,5 +19,9 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nROOT_HOME = "/root"\n'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
         {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686',
+                            'distro': 'poky', 'buildhistory' : False,
+                            'atextappend' : '\nDISTRO_FEATURES_append = " api-documentation"\n'}},
+        {'BuildImages': {'images': 'core-image-sato:do_populate_sdk'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
-- 
2.8.1


