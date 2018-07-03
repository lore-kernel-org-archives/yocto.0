Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8677FE013C4; Tue,  3 Jul 2018 15:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4AECE00D20
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 15:29:49 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id z24-v6so1657173pfe.7
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 15:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=vRtCS5YxmhsfhFLbb4EhIKfCYONAgK+OfpmhAEi5Dqc=;
	b=WWiFg30UOHQoejHWDVzak+LPrv8CqdbAWO4o8i+6Va+NmaZ6fX70e9798wGZE221eH
	qJIzEhVBRacjin6VwRPQ7zi5FuUCcu/iwhD/CopIxB4LQ3xUhQgvz9oTPQCmsrw/Ntza
	j6Ms3mQNPKAQ2DBXyYvSRthqOVXZyJTD1CKD562qTA8AHbBQYBsIKfWD/1sumTjrK/K4
	cEgzjtZ+ULVDT5SxocQr5RtZK8V0ak/XfMeUMhWVKzMZpgEgmGDTY2BI/dWUBEBjl4nG
	xxBKcqezbEu9mdu38AIAV3vLsYc9eS/E6S3r16A+xN0yw6JYZO87hGIiPD0DTp7iq0Zn
	CPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=vRtCS5YxmhsfhFLbb4EhIKfCYONAgK+OfpmhAEi5Dqc=;
	b=GuHdVhNKgQdnUS5OmR7/0E4b25teKm4lcxE32k5oaID+BSjX2UdqMztc04jWltuJkq
	xc4wpV+yQSw+aq54JNv0rutXihanPj/vyUjRj+QLz0tJYG++oZDwDMVKwzjz/T/MbQnj
	Up5YJMJYAzUwgKc/EHGdGqgqd/AewtYo8PsccZ4R3uONKxzR4ZOetcJNHfCsDDqH/kLw
	hEt6UFEF899ukki7wpzHfW/cy2/+y8dP3epDd3KSE1p93+Crezfhw0K512xB82Q/hMwd
	hTMej2RpAH2oVgNES6ochuQEuU7xyoJrxgy7fIBW0j3PfnTzfuI6NqJthCa2Bte7jv0L
	ZFPw==
X-Gm-Message-State: APt69E3c0KYrL4+xtMR/vZuugYdU4QW/m80mMnJBjnM6jTGp0BD1ln/r
	tbhqeJtN3nuaD6my0qlfar+NoQ==
X-Google-Smtp-Source: ADUXVKKm8S9k9BItcZS/tx1AxXXoL3cyr5nJhIDv9ChgFJPwTGvwcKIZnBlCSzWCxJoaXXZuKneK5Q==
X-Received: by 2002:a65:6047:: with SMTP id
	b7-v6mr27236641pgv.241.1530656989330; 
	Tue, 03 Jul 2018 15:29:49 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:5de9:b95:d152:7b55])
	by smtp.gmail.com with ESMTPSA id
	l15-v6sm4490975pgr.45.2018.07.03.15.29.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 03 Jul 2018 15:29:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 15:29:46 -0700
Message-Id: <1530656986-24071-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1530656986-24071-1-git-send-email-akuster808@gmail.com>
References: <1530656986-24071-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] clamav: update postinit
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
X-List-Received-Date: Tue, 03 Jul 2018 22:29:51 -0000

log_check] WARNING: Intentionally failing postinstall scriptlets of ['suricata', 'clamav'] to defer them to first boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ()

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.3.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.3.bb b/recipes-security/clamav/clamav_0.99.3.bb
index 043fa21..688250d 100644
--- a/recipes-security/clamav/clamav_0.99.3.bb
+++ b/recipes-security/clamav/clamav_0.99.3.bb
@@ -93,8 +93,8 @@ do_install_append() {
     fi
 }
 
-pkg_postinst_${PN} () {
-    if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
+pkg_postinst_ontarget_${PN} () {
+    if [ -e /etc/init.d/populate-volatile.sh ] ; then
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
     chown ${UID}:${GID} ${localstatedir}/lib/clamav
-- 
2.7.4


