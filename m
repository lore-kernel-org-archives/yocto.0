Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D2FBE00DFB; Thu,  1 Aug 2019 11:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C521E00DF0
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:38:27 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id z4so71352125qtc.3
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=f5ubK9720eeO/pBP/jlQBXDrDK5zo8aFVNSRMpWLlzk=;
	b=vEafqaLy9+ShEVLl1RazziN3jZgwPfEvqvePA2K6TlMo3b7a2XUiBX/1dwSYDQpsF+
	pawdoDkIKlBYh4UYlpWoFNCX82iF2U48ImulCQRu68CkABzPvcQd67A2OzAAoIKtnzYs
	MgnOYWB41YqRejzVxdAy5f7HsBFnHK8Kf4obuX+NkcTDWat2MAM89oF1SxTi1umEzGhv
	5S1I3NmGxuitbfdW7pFMZas4JqQAap4J5Hje0q2cpPp6DHd+mU/TUCp7e1RBYRXZGIWs
	5FdCSKsw0DUUX5XY3cMVtoaJRS4NXU1QaebjXH2s6y+c7eIAtx7BAIsRSOVhkwRkOHix
	dPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=f5ubK9720eeO/pBP/jlQBXDrDK5zo8aFVNSRMpWLlzk=;
	b=klz1Ysj7Zz9fMmJZulKasiFM1r77aPCzFeJdY1fJ9H380Ltmn5NbRfVfVuvP2zHsb6
	5YRik4E39Bnac7ULMg7iVa3S6R1KajX8X5qgzyUPVWhrK78pVVxu7maMX/PDQrFxUEa7
	Gh7hOxEOiF3UwiQ6yr6tO4vhxWAFs8kpLSNlqnRUoB9HCCbO4/LAhVnBP/OR73B90laH
	tQvznV53QZNQl3UG5AGVv0XKuVbaBnoWvhhkhHhQn3Dv7n7J0foRUj/KUzp95Q6rXZtZ
	OMF/MoBATwt/jEkNf20VaIZfaGOw5a13Vec1es+PIu6xNawm86k/uFf5asN5tgq6x6f4
	lHlA==
X-Gm-Message-State: APjAAAVL09vKmDwvlFNF1Bgh//b4QCbNabYXBOYAJ3CQx256+ImS3n5g
	M5o4l7MBV+JL0DnwYpDFVnA2AwF35DE=
X-Google-Smtp-Source: APXvYqz+3HmspO0AGpr+Yd8qG6cvcTrIUraPkGQdPL6odnhEZeK5QNZtZHwqSSyUgDrSlCyX71FtMg==
X-Received: by 2002:a0c:928b:: with SMTP id b11mr94774147qvb.209.1564684706334;
	Thu, 01 Aug 2019 11:38:26 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	v28sm29195708qkj.11.2019.08.01.11.38.25
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 11:38:26 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Aug 2019 14:37:33 -0400
Message-Id: <20190801183734.9597-3-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190801183734.9597-1-btgoodwin@geontech.com>
References: <20190801183734.9597-1-btgoodwin@geontech.com>
Subject: [yocto-autobuilder-helper][PATCH 3/4] shared-repo-unpack: suppressing exception, returning exit code
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
X-List-Received-Date: Thu, 01 Aug 2019 18:38:27 -0000

The preceeding errors that would be shown should be enough to
identify the problem since it would have been a problem
running bitbake-layers add-layer, indicating a misconfiguration
of config.json.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 scripts/shared-repo-unpack | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index a9e8678..65ac7cb 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -58,4 +58,7 @@ for repo in sorted(repos.keys()):
         if args.publish_dir:
             utils.publishrepo(targetsubdir, repo, args.publish_dir)
 
-subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+try:
+    subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+except subprocess.CalledProcessError as e:
+    sys.exit(e.returncode)
-- 
2.17.1


