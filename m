Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5394E00D79; Wed, 27 Dec 2017 04:44:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f42.google.com (mail-pl0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B253E00CEF
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 04:44:19 -0800 (PST)
Received: by mail-pl0-f42.google.com with SMTP id s10so19377163plj.5
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 04:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uWUe95bjS0+08M2/WsFwZwuzE3KIPtarlOhJOPjs8XM=;
	b=MTHtAaEgsijqqzaP/NT/hWsiIrKZiYj2jsIWIfBEZV3YsT49/aF6aWhyVhmF162pyk
	YM8hzuaqWmmVaZBuIF+Uku/zFpP2YKW5l4swVm9tHLu9Y0Jke9wgATfZd7lgrA3G1VPo
	YwFT6OrmVUPSmXmDRYN9vn1TGWwu7P8gok/KJLBp2TFoQCHcnKlmCJixT90QcmFrX30q
	j0XmpmVE3a93csBhevSjmQtILxMJKuSm3q+h36/6L0za1FQi0ITLQFLRsJ1fmJN64veb
	8JiLA8wMy1xGCcTBllmgVL/a/U4PGzpJGvxFMD38CHufUE1lCD4vz7HH5elpD0iXwsMK
	7UTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uWUe95bjS0+08M2/WsFwZwuzE3KIPtarlOhJOPjs8XM=;
	b=l/KJy4cS5VYYuLsVLZyXShX3ru/JdAXqGhsLl/7PWbouBK82dSFvTIh5V/+4A0rw3D
	TEzs98XOnWOkvSHuvSLFkuyVBdgVZ7gDuVbnxi0IcI82nWZbBs6AQCeSR7kRnA/Jzjn4
	M7XmRmSMwfu8IXqpm2Hxs8B8Pgb2x5faYip5Jh25H7/LJ9dIec+xYD3YqmMlEjhvNF3c
	thEauxH6PLl5Hlz8LfZy7kUD/LoBFfoLhtBiNZX5wk3zDx182E+P06hJAXBjHLyX/C31
	g7OVGRyYgqhkTx9zxNoz0lP91REWuTDJiu7EsjUkHvzUrPrYlXK7tSM+rkI2TqwcCCKa
	Osng==
X-Gm-Message-State: AKGB3mLjD5K8udw92ueKL1276aQSUL0mfiPkMHvJi2ARodoBk5DKFpCF
	sY3FL4yzRVdg4+V2IHffW48EzrIt1ZmEstiOZ/klUg==
X-Google-Smtp-Source: ACJfBotWYS22exJPDQQTaq/IKJwU4kWiKuXJ6zD5JAcZ6ULSHeI3l4qhzixxoTAbzQGNxIht7mkqPH44p21lNpEpkwg=
X-Received: by 10.84.247.148 with SMTP id o20mr28749666pll.137.1514378658660; 
	Wed, 27 Dec 2017 04:44:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.189.74 with HTTP; Wed, 27 Dec 2017 04:44:18 -0800 (PST)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Wed, 27 Dec 2017 13:44:18 +0100
Message-ID: <CAFq4t4gqdfuqNRkmzGU_=VWZMDBDgegCUYK=3s8HKGhBUyg7Mg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Issue populate_sdk_ext
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
X-List-Received-Date: Wed, 27 Dec 2017 12:44:20 -0000
Content-Type: multipart/alternative; boundary="089e082c175801466b056151c297"

--089e082c175801466b056151c297
Content-Type: text/plain; charset="UTF-8"

Hello,

I follow recommendation to build and populate extensible SDK per Yocto
manual.

https://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#sdk-building-an-sdk-installer

I am got stuck what's the problem to build?

pokyuser@7ca01572e73f:/workdir/poky/build$ bitbake core-image-minimal -c
populate_sdk_ext
L

getting this

ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Failed to generate
filtered task list for extensible SDK:

ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed:
copy_buildsystem
ERROR: Logfile of failure stored in:
/workdir/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.151
ERROR: Task (/workdir/poky/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext)
failed with exit code '1'


what's the issue to do a clean build?

--089e082c175801466b056151c297
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I follow recommendation=
 to build and populate extensible SDK per Yocto manual. <br></div><div><br>=
</div><div><a href=3D"https://www.yoctoproject.org/docs/current/adt-manual/=
adt-manual.html#sdk-building-an-sdk-installer">https://www.yoctoproject.org=
/docs/current/adt-manual/adt-manual.html#sdk-building-an-sdk-installer</a><=
br><br></div>I am got stuck what&#39;s the problem to build?<br><br>pokyuse=
r@7ca01572e73f:/workdir/poky/build$ bitbake core-image-minimal -c populate_=
sdk_ext<br>L<br><br>getting this<br><br>ERROR: core-image-minimal-1.0-r0 do=
_populate_sdk_ext: Failed to generate filtered task list for extensible SDK=
:<br><br>ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function fai=
led: copy_buildsystem<br>ERROR: Logfile of failure stored in: /workdir/poky=
/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_po=
pulate_sdk_ext.151<br>ERROR: Task (/workdir/poky/meta/recipes-core/images/c=
ore-image-minimal.bb:do_populate_sdk_ext) failed with exit code &#39;1&#39;=
<br><br><br></div>what&#39;s the issue to do a clean build?<br><br><br></di=
v>

--089e082c175801466b056151c297--
