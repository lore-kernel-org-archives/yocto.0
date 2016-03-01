Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D71E00A27; Mon, 29 Feb 2016 16:49:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F63E008EE
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 16:49:15 -0800 (PST)
Received: by mail-io0-f171.google.com with SMTP id n190so2886087iof.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 16:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id;
	bh=mWXU6iM4/Wrpo3L7xfCmjmExLfQozL+gY5+km2nshkw=;
	b=rlV7jSDdHb47ERyYljQPvbNyUJCkbbbm9y+/6Vdiw1NdrSFn13BOWy3yfj+gE+OzxC
	0K/lokSmYNU/RUTpWQMgFGxqeJvmWhwV40xM8UrkXhyJg4cbKF9PQb7+Y7k6PPIFiFsj
	SzWiY6lCgQkkK9r7dS7AkWFqOMmtwuHvfqK2MThHnDLaQl9IJB6QW+Fb60gIx/N2sx8D
	UkiRw2mw83NSKz97cOUdlp/mugCCGaROFLeCcvbV64lYCGqraUCe5RkH+LjLIGuLQZwm
	pIcfDvwxGYq5nNmANA9uBV07IRvGYfOq3opwWmAvIxgU+Vxnxa2tF/8+CVmV+DgQAN75
	n/LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=mWXU6iM4/Wrpo3L7xfCmjmExLfQozL+gY5+km2nshkw=;
	b=exKd+osKP++Tm1/WFmgESI7DkOT4954oTc5ehNF4SbC/QWTY0XltF//vEXvMgtqqAn
	jTUWmnhAopxdadxlWdOLPFowly2jFkMq23tWjGg1tA9IMmDY9KAVOrKeSPTMMDlOoctm
	L3PFq2iUarfiv2jtYVLYXwJhosHfrTNXUy7g7W7Bozn6d7OaeEIeR+O6oWk6jNxpslNM
	/R6Or3nsEyZzq5UDop3hkVMHEHC8hNKEWqzf4paJCnAdxTdj0qFXeBP4b6aafeXGlZOE
	kd8KTe4qQOZaZLj+iqBA6q7F5ggY1b36BqwOe+WzCNUnwGLZUw/i7T9leVAEzOWJ2bxS
	V33w==
X-Gm-Message-State: AG10YOTnfZ55cwM+b4VBS8LgKIG7mjWoulnksnHCDpg5sbVWF6Jg7agakNdigb5CqGf/4g==
X-Received: by 10.107.16.17 with SMTP id y17mr26469343ioi.119.1456793354945;
	Mon, 29 Feb 2016 16:49:14 -0800 (PST)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id
	j10sm7794180igx.15.2016.02.29.16.49.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Feb 2016 16:49:13 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Feb 2016 19:49:43 -0500
Message-Id: <1456793383-2569-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [autobuilder][PATCH] CreateBBLayersConf: optionally exclude repos from default bblayers.conf
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
X-List-Received-Date: Tue, 01 Mar 2016 00:49:19 -0000

When a repo is listed in the autobuilder config file, it is automatically
included in the resulting bblayers.conf.  In most scenarios this is the
correct thing to do, however it results in a build error if a layer such
as meta-openembedded is one of the listed repos:

  IOError: [Errno 2] file [...]/build/meta-openembedded/conf/layer.conf not found

since meta-openembedded does not contain a top-level conf/ tree and is not
intended to be included as a meta-* layer itself.

Add an 'autoinclude' flag to the 'repo:' stanza of the config file with
the default being 'True' (ie. the current behaviour) but when set to
'False' the layer will still be checked out (making this behaviour
distinct from the 'checkout' flag) but not included in the bblayer.conf by
default, only layers specifically referenced in the CreateBBLayersConf
section of the 'steps:' stanza will be included.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .../site-packages/autobuilder/buildsteps/CreateBBLayersConf.py         | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
index 03cb2a1..ace9fbb 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
@@ -95,7 +95,8 @@ class CreateBBLayersConf(ShellCommand):
                         elif layer.iterkeys().next()=="meta-qt4":
                             if layerversioncore is not None and int(layerversioncore) > 6:
                                 fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
-                        else:
+                        elif (layer[layer.iterkeys().next()].has_key('autoinclude') and layer[layer.iterkeys().next()]['autoinclude'] is not False) or \
+                             layer[layer.iterkeys().next()].has_key('autoinclude') is False:
                             fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
                         ldirs.append(layer.iterkeys().next())
 
-- 
1.9.1


