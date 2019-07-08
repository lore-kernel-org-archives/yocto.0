Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B9EE00C56; Mon,  8 Jul 2019 08:47:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4096CE00C02
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 08:47:25 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id o13so7882946pgp.12
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 08:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=xm4+smk2hq6bqyLSSuQGh9jBQun79rUbzWDNAxBJAAk=;
	b=qwkOEhT/YtCXz0MXVUWS4OjbFmydSFbfA7Z6veuIqK9l4Qsr+cqen2dDwMmDBK5q3F
	AnhDPbxlnv9/Kaazb5Gb0Bz8w43KQIbUF3vFlvhreILH9b26fav6DWne2Afa05xbnmlb
	gi9SAAb2l82o0dOPByQ3OoeaP7SxhzffvYJMKy22xw4BZenzWQV2B75b2QeCG4yTFf4n
	LeDeZgAVIXnPp9L8tRcYz3cU+F7Wpf7zcZT9DSp5xlvGrza9XOrzvBerVBDfArY4uCkN
	gMNve9/sKWBcZz7I8JtUh5RyvyeA02tcemaYqCxAInam1Osc3Ex7f4zvEV5/qejKpqaZ
	a6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=xm4+smk2hq6bqyLSSuQGh9jBQun79rUbzWDNAxBJAAk=;
	b=Y6DCimZBfuzJP8kn4XofOmbquc4boNQN6x56e3C2SpAjNLmZ8g1ZSJcXsrWwj1nRhu
	KSWFXL/n6dkeZYQnoMOaeOUzax01lXMzd2dI5vM96n1z+0f+maqWbxbi4H86/9SqrqGW
	+bGseaKKkZX09x7WSxYKr0JHsmbm2FARIYN7nr06Q21uPQr9pre7H54fLi5vuNLt7tE/
	P7ic2tdh5P6to0oQBu46jlrfRmRwdG3MQ3dgL4tqHVGwzVGdw7Xw65m29LWIe/ogJgVz
	6z3VNwaTZWqHQYRVVeLbfU9bx4vHyl8wKx/3KIy2G9CuJzTylSRT5eTHvA6fIP4BSzBi
	MlZg==
X-Gm-Message-State: APjAAAWXVkjxgBkWw2f2pzC4mg316xgjHz9avPaO0mBg2pa3mgCUqMUd
	WecMIu+Djl2aCmcc0jOAQwsvp37+TB8=
X-Google-Smtp-Source: APXvYqwoEGTY6mYlFxyLqWa5qRXTrFZR6oNRMvfsG3uIFYFB33q/hHXFht+FrKJvGTVcmSCxAtOlPg==
X-Received: by 2002:a63:c84d:: with SMTP id l13mr24916497pgi.154.1562600839961;
	Mon, 08 Jul 2019 08:47:19 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:693b:41d3:261b:3345])
	by smtp.gmail.com with ESMTPSA id
	c69sm18950994pje.6.2019.07.08.08.47.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 Jul 2019 08:47:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Jul 2019 08:47:16 -0700
Message-Id: <1562600836-17458-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562600836-17458-1-git-send-email-akuster808@gmail.com>
References: <1562600836-17458-1-git-send-email-akuster808@gmail.com>
Cc: Andrew Donnellan <ajd@linux.ibm.com>, Daniel Axtens <dja@axtens.net>
Subject: [patchwork][PATCH] filters: Escape State names when generating selector HTML
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
X-List-Received-Date: Mon, 08 Jul 2019 15:47:28 -0000

From: Andrew Donnellan <ajd@linux.ibm.com>

States with names containing special characters are not correctly escaped
when generating the select list. Use escape() to fix this.

Signed-off-by: Andrew Donnellan <ajd@linux.ibm.com>
(cherry picked from commit b3fa0c402e060622a5ed539a465d2fa98b1d2e13)
Signed-off-by: Daniel Axtens <dja@axtens.net>
[Fixup for 1.16 context, CVE-2019-13122 ]
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 patchwork/filters.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/patchwork/filters.py b/patchwork/filters.py
index 87c904f..b734207 100644
--- a/patchwork/filters.py
+++ b/patchwork/filters.py
@@ -212,7 +212,7 @@ class StateFilter(Filter):
                 selected = ' selected="true"'
 
             str += '<option value="%d" %s>%s</option>' % (
-                state.id, selected, state.name)
+                state.id, selected, escape(state.name))
         str += '</select>'
         return mark_safe(str)
 
-- 
2.7.4


