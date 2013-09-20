Return-Path: <joe@deserted.net>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFD02E015EF
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 23:57:51 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id x13so71929ief.17
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 23:57:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=wIPnvyyOx36uTRhBr1qk7k+MCdxe51hw1XQnnTomKMM=;
	b=dwz075+krmqwGCTTTgJiSIOSMcUGMktz2h4BH4AvSm5RwHWhkx1lwvgzyj6LdFQId4
	T8OmPsFtbFMZf3pTA3jQBOASL/RVZlujL8CIeeWFlI4OlA1+z1s7GMI3aCcUZdZZVyve
	BfHUC78FE/JHAegcWudy4hkl65GLn6FqSiCLDsPY2fkOlj+iZgEXIOj96vuyORL+Xts8
	wlGahW1NlxcMoyxxTuKYU1urSA5OMuBhuBiennrw2ryNxCiXLj5LPZbVHJ0TjdU8J3Nt
	Cfb5B6fhItVECrloTvJugxqSG0cv3IK6CEuIKbO6uZkC+i/0Nht7oWTQeyfcUk3JUVMc
	CF7Q==
X-Gm-Message-State: ALoCoQmNwnlqnZx/IMe8mDuSkK0TPccay0mpyPUxHBtZuUAQ9LsuB5oXHVODWO3u5Cmq4C9VUt4r
X-Received: by 10.50.66.66 with SMTP id d2mr1135100igt.28.1379650820321;
	Thu, 19 Sep 2013 21:20:20 -0700 (PDT)
Received: from burninator.deserted.net (198-84-238-35.cpe.teksavvy.com.
	[198.84.238.35])
	by mx.google.com with ESMTPSA id y10sm1025512igl.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 21:20:19 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Fri, 20 Sep 2013 00:20:13 -0400
Message-Id: <1379650814-18256-2-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1379650814-18256-1-git-send-email-joe@deserted.net>
References: <1379650814-18256-1-git-send-email-joe@deserted.net>
Subject: [meta-security][PATCH 1/2] Bastille: make questions files writable
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
X-List-Received-Date: Fri, 20 Sep 2013 06:57:53 -0000

do_install would fail when trying to update the questions files during the
set_required_questions.py stage since the default permissions in the
Questions/ did not allow writing.  So the shutil.move() in
set_required_questions.py would raise and IOError:

Fatal error reading config file: [Errno 13] Permission denied: '[...]/bastille/3.2.1-r0/Bastille/Questions/AccountSecurity.txt'

for each Questions file.  The most direct approach seems to work
reasonably well here, jump in before set_required_questions.py gets run
and make sure we have write permission on the files we're going to write.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/bastille/bastille_3.2.1.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index ef697d7..d506399 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -143,6 +143,7 @@ do_install () {
 	install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
 	install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
 
+	chmod +w Questions/*.txt
 	${THISDIR}/files/set_required_questions.py ${WORKDIR}/config Questions
 
 	install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
-- 
1.7.10.4


