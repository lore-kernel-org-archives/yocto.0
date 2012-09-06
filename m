Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFD8E01351
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 02:04:58 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9001340044;
	Thu,  6 Sep 2012 10:35:55 +0200 (CEST)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:04:33 +0200
Message-Id: <cover.1346922110.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 0/6][yocto-docs] Add eclipse help generation to build system.
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
X-List-Received-Date: Thu, 06 Sep 2012 09:04:59 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

before my vacation I've submitted a patch to the eclipse-poky project
integrating the documentation into the eclipse IDE. To enable the integration
into eclipse I've manually generated eclipse help from the documentation
using the eclipse stylesheet provided by docbook.

I've added the target 'eclipse' to the documentation's build system to
automate the process of eclipse help generation. This can help to
facilitate the process of keeping the integrated documentation in sync
with the yocto documentation.

In this first RFC I've only integrated the adt-manual as a PoC,
because I'm also proposing some changes to the existing html
generation. These changes add a separation of the options used for the
different output formats. They also help to keep the Makefile clean and
concise.

Cheers,
	Timo

Timo Mueller (6):
  documentation/adt-manual: Moved stylesheet parameters to
    customization file
  documentation/adt-manual/adt-manual-eclipse-customization.xsl: Added
    stylesheet for eclipse help
  documentation/Makefile: Added eclipse target for generating eclipse
    help
  documentation/template/titlepage.templates.xml: Remove title from pdf
    template
  documentation/adt-manual/adt-manual.xml: Added title to bookinfo
  documentation/Makefile: Added eclipse target to adt-manual
    documentation

 documentation/Makefile                             |   36 ++++++++++++++-----
 .../adt-manual/adt-manual-customization.xsl        |    7 +++-
 .../adt-manual-eclipse-customization.xsl           |   22 ++++++++++++
 documentation/adt-manual/adt-manual.xml            |    5 ++-
 documentation/template/titlepage.templates.xml     |   13 -------
 5 files changed, 57 insertions(+), 26 deletions(-)
 create mode 100644 documentation/adt-manual/adt-manual-eclipse-customization.xsl

-- 
1.7.7.6


