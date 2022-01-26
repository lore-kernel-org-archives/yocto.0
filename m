Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA23C2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 17:30:39 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web08.15865.1643218237099308578
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 09:30:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=AOqU1ysv;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <3a5dfcda-87f6-9353-9eef-38c9fd8c2c36@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1643218225;
	bh=90/qj/M7qhuWWtYE+dXFR6eDYh6LmVnqUXChDVu6G0k=;
	h=Date:To:From:Subject;
	b=AOqU1ysvGf8gv8rjgSFwAPxtveEbeaV60HGYN8TY5PsxsubcxHXdqDB6anzjksg/1
	 s1M6lgiCpsyTMTdVn/j1ZcYp8Ptl5rnbmWlCBktyU7w9YJPHk9rLyuWCmYSEw95ma+
	 rgKUzIK+IkNMQOs4YFpV6p7YDzPTFNrIiR5mSa8A=
Date: Wed, 26 Jan 2022 18:30:29 +0100
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: Python3 app install best practice
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, TO_DN_NONE 0,
 RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0,
 __BODY_URI_ONLY 0, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, FROM_HAS_DN 0,
 TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 17:30:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55983

Hi all

I'd like to install my python3 application in a custom folder with all=20
local packages and data.


The source code folder has this tree


./myapp/__main__.py

./package/__init__.py

./package/pkg.py


I manage the application by myapp_1.0.bb recipe.

I'd like the myapp_1.0.ipk package contains


/home/apps/myapp/__main__.py

/home/apps/package/__init__.py

/home/apps/package/pkg.py


I try setup.py and=C2=A0 inherit setuptools3 in my myapp_git.bb but=20
'packages' is installed under python system folder.


There is a way to customize the path of python package installation?


MZ


