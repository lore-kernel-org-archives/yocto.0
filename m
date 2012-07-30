Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF44E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:43:40 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11897800pbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=1FUjDNDRC0ND99FF37r761m+wOmKz9Njodg7gkOgYL8=;
	b=TvFJ9DvE/v2h5xxNf3C7xoezGZg3WyBf90XUqdcKqOUvUQlTu1lVELEZeVuVoROH/+
	OcWLp1c/vvZ0KDwsf4j04CfUf8cvDFYs/Ue1GlDe+SDXjwk/zd/NK+9L9jzhW9bmja1/
	/3V2RuncEwHEk7b0+7fXcX1u0Gk/0f2bIakY/mqXKsTqVfMdDytK9nodOx8WXfONJG82
	GtCtlFJRbY/0V36PgRAtNyTXQ5z9N3Gr58ZtUpnKWiCdrjXxAzT9di44HjsMF5tSU7KY
	6FwA1pSmo5deFQn4v4SOXC2mr3oVxIuVwJuGfm+1qA4zuW6+BPpN60KZCST9aIWLnEQ4
	UPSg==
Received: by 10.68.217.40 with SMTP id ov8mr36190924pbc.131.1343666619907;
	Mon, 30 Jul 2012 09:43:39 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id of1sm8230330pbb.15.2012.07.30.09.43.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 09:43:39 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 30 Jul 2012 20:43:33 +0400
Message-Id: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
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
X-List-Received-Date: Mon, 30 Jul 2012 16:43:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I just updated my yocto repositories and ran into the following =
error:

| ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.25279 for further information)
NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Failed
ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1878 tasks of which 236 didn't need to be =
rerun and 1 failed.
ERROR: An uncaught exception occured in runqueue, please see the failure =
below:

Summary: 1 task failed:
  /tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, =
do_populate_sdk
Summary: There were 3 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.

Is there a fix for this?=20

Elvis Dowson=

