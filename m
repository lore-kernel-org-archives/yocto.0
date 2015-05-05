Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF6C4E009B4; Tue,  5 May 2015 12:07:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABBDE008DC
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 12:07:55 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so84510910igb.0
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 12:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=iDQSgHdq4X77d3kWq6FKkspY9bTtJITswWgoI7KVncQ=;
	b=oxl8Xb1RPP4fLOfh6dKajc5qpc2YaJpqbKhVva2SNozFHdQF9cv3PNkS8gHewzJFsP
	KjOhSLEO8E0reVp/gjxQp9df+++Cn93T0Q7JCjEu7GyjjIf5LfJy+itoShrSykC2rHJs
	1Cx6JSD1uy1NOhk83j3G9qXRaJr5oczXBGgVWK7tkpb0AL/mQFLBkbBUSCuV2zlCtGba
	B7h8vyGT5P6dAryKd8o2eCKEiViJ620n/vWXBqXkbbQ6wxJ6xrevs/FcTr0ebTOJo84X
	1wL3znuaZ3n3e9gVIsPMDkC7OOztWh8Nk+Lj73SfWz2kmGmYXVE7vQq3TOYJn2Jn5NX4
	DgCg==
X-Received: by 10.107.160.202 with SMTP id j193mr35901444ioe.43.1430852874851; 
	Tue, 05 May 2015 12:07:54 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id av6sm116991igc.17.2015.05.05.12.07.53
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 May 2015 12:07:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 May 2015 12:07:43 -0700
Message-Id: <1430852863-32418-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH v2] suricata: Fix QA warnings
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
X-List-Received-Date: Tue, 05 May 2015 19:07:58 -0000

WARNING: QA Issue: suricata rdepends on nspr, but it isn't a build dependency? [build-deps]
WARNING: QA Issue: suricata rdepends on nss, but it isn't a build dependency? [build-deps]

v2: redo depends fix per JaMa input

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/suricata_2.0.7.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/suricata/suricata_2.0.7.bb b/recipes-security/suricata/suricata_2.0.7.bb
index 7e99791..2b5d088 100644
--- a/recipes-security/suricata/suricata_2.0.7.bb
+++ b/recipes-security/suricata/suricata_2.0.7.bb
@@ -32,6 +32,8 @@ PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --wit
 
 PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
 PACKAGECONFIG[file] = ",,file, file"
+PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, , libnss," 
+PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, , libnspr," 
 
 export logdir = "${localstatedir}/log"
 
-- 
2.3.5


