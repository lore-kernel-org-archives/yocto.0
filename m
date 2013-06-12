Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89DA0E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 06:05:11 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id z10so1032382qcx.35
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 06:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iuDYRtfolGHve/jc04USb2xD0WL7f/jNxzpIRYZdW/U=;
	b=sP2bYxMrFzEDq6cJW4S0QZV9afd9gPkj+5+su2plso+FF3ZJjqckh/rwYHbYMoaJwJ
	ShIKrNMA7IljWX1zwc6hCdCBMGsbjpOHOiDqJvuR//bwreEXbPNkDLZQSQVU8S+5HK4N
	6PVFEltjPWQ+M8snNXIYAehNhy/8AuNOHwoZ1u0vFIZzaP7cTbfNORN/eacEBEcFtv1O
	SAelTR40r7mb6/bOcsyFmg5M+mPfwy95CtWor8BB3O/0Ws+MJelQ2Ed9B9AnewBOIC99
	YaQKwikYBumiQi2S2AlyWYTQ1BrR0SceQoBQKyoa45UNmxBNGyok5iKPbaCInapotNdK
	UUyA==
MIME-Version: 1.0
X-Received: by 10.229.62.193 with SMTP id y1mr2888897qch.78.1371042311293;
	Wed, 12 Jun 2013 06:05:11 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Wed, 12 Jun 2013 06:05:11 -0700 (PDT)
Date: Wed, 12 Jun 2013 15:05:11 +0200
Message-ID: <CAFyqS9qOXTV-8vRDuff0_JN=4ZobqbwqSbLm1MNQtTHNEPP3Qg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yet another LIC_FILES_CHKSUM question
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
X-List-Received-Date: Wed, 12 Jun 2013 13:05:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

In what way does LIC_FILES_CHKSUM correlate to what is specified in LICENSE?
LIC_FILES_CHKSUM *must* be specified unless LICENSE is set to CLOSED.
But, what if the package does not itself provide a license type file?
Is it then ok to simply leave LIC_FILES_CHKSUM = "" ?

Also, I could see that there was an Erlang Public License file
available in poky. But the file is named ErlPL-1.1 and there were no
maps attached to it, this patch will add that.

Hans

diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
index 3cb143c..ffed997 100644
--- a/meta/conf/licenses.conf
+++ b/meta/conf/licenses.conf
@@ -101,9 +101,14 @@ SPDXLICENSEMAP[AFL-1] = "AFL-1.2"
 SPDXLICENSEMAP[AFLv2] = "AFL-2.0"
 SPDXLICENSEMAP[AFLv1] = "AFL-1.2"

+#Erlang variations
+SPDXLICENSEMAP[ErlPLv1.1] = "ErlPL-1.1"
+SPDXLICENSEMAP[ErlPL1.1] = "ErlPL-1.1"
+
 #Other variations
 SPDXLICENSEMAP[EPLv1.0] = "EPL-1.0"

+
 # Additional license directories. Add your custom licenses
directories this path.
 # LICENSE_PATH += "${COREBASE}/custom-licenses"

