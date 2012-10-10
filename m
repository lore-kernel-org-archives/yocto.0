Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC506E011DB
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:54:42 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8ACA640086;
	Wed, 10 Oct 2012 11:23:17 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Wed, 10 Oct 2012 11:53:54 +0200
Message-Id: <8f13498e19681bb4922e3094fb165b4cf93d87e1.1349444489.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1349444489.git.timo.mueller@bmw-carit.de>
References: <cover.1349444489.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 01/35] documentation/template/titlepage.templates.xml: Remove title info
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2012 09:54:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The title of a pdf document is part of the image used on the title
page. Thus the title defined (e.g. bookinfo.title) in a document
should never be used when creating title pages for pdf documents. As
other output formats may use the title information to create metadata
the title has been removed from the template.
---
 documentation/template/titlepage.templates.xml |   13 -------------
 1 files changed, 0 insertions(+), 13 deletions(-)

diff --git a/documentation/template/titlepage.templates.xml b/documentation/template/titlepage.templates.xml
index ff640fa..f53f147 100644
--- a/documentation/template/titlepage.templates.xml
+++ b/documentation/template/titlepage.templates.xml
@@ -140,14 +140,6 @@
 
       <mediaobject/>	     
 
-      <title
-	     t:named-template="division.title"
-	     param:node="ancestor-or-self::book[1]"
-	     text-align="center"
-	     font-size="&hsize5;"
-	     space-before="&hsize5space;"
-	     font-weight="bold"
-	     font-family="{$title.fontset}"/>
       <subtitle
 		text-align="center"
 		font-size="&hsize4;"
@@ -163,11 +155,6 @@
     </t:titlepage-content>
 
   <t:titlepage-content t:side="verso">
-      <title
-	     t:named-template="book.verso.title"
-	     font-size="&hsize2;"
-	     font-weight="bold"
-	     font-family="{$title.fontset}"/>
       <corpauthor/>
       <authorgroup t:named-template="verso.authorgroup"/>
       <author/>
-- 
1.7.7.6


