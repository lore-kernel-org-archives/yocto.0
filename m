Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C729CE00A04; Thu, 21 Jun 2018 06:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5B6E009CA
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 06:00:04 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id k18-v6so1102894ywm.11
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 06:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WGZeWV3b4IxAli5qwAhenxwopdwjaK/Lqy7zcfAcTWE=;
	b=e0YmA/DOcXOz7I/bKv/CxjQA84dAZjnO98qaoeIE39rfHosVpqnTqn5kKBStuCKOjm
	WX5ynN0sGoS5R0R55kGXU6s9wkTBWG1BKvaZpAXmR0OnG1UAZ6pHH6+AlORG7A3uYVXs
	KNqgJLKELoGBCI5O+8UszwIBSfBXV1huay4a1uSb34Xsd4hlt+xResdHI3YPQQhVq2HZ
	46b6mo3moI9jjV07eZoUgTZUwN4i2BYVR3Q4X/tIbPDUrWfV+/SdbzYTpBs0+0Wc7xFG
	dVp5TbpUE3kNhnjzoXAdY1vs7U+Ig4ny48dYk0OSu1011vYkK9lKi810nBQOLSEEblu8
	kLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WGZeWV3b4IxAli5qwAhenxwopdwjaK/Lqy7zcfAcTWE=;
	b=KkZNDuVRVVQ4+zLJSrh0P02tlxU6sBiwuW2TJUYGJBqfHfWHCeGvK0gvrtvNT32+pP
	gPQQa4Vm5uQvw90NHH15gMo4kfjymMZ+pRkGBuOopxBt260Ql2jybd5xcl++VWJ/raIL
	5cVocULJLiyDomLKOzg48nSIkPu6GgewkcFJfnzUEAzZpllMUFffcddhiHnpnYv7xOoP
	3O+AJN1N/IUopfJmnIKf5FbP2g15puuZgdkjh1wZZxToc9i2hvmzBlYPjHlVQ0BsJDnN
	G9sQSffWC67LVMggSehDcJRZGYjRURr2JYKs/nKQBq2MzeFQLKlOyv42vRy4euqufeXE
	qFZw==
X-Gm-Message-State: APt69E004j5w7NDSUgdWdBdyxV35JeD+8GOjH8oM1xxK71KyblViwqGM
	CtCMxhJ6EdQfGWhUTdph4Z5wanTAometWGzxi813d2Na7nw=
X-Google-Smtp-Source: ADUXVKJAdtBC0kDw7d/z6fBhtlgsRWXTBUi4MiO2bqFBNvtb4YtUQIhUt8UC/WZVX28RXWtjtQWWjpXfdQLnprR3WaM=
X-Received: by 2002:a81:81c1:: with SMTP id
	r184-v6mr12161198ywf.203.1529586003553; 
	Thu, 21 Jun 2018 06:00:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:3d0c:0:0:0:0:0 with HTTP; Thu, 21 Jun 2018 06:00:03
	-0700 (PDT)
From: techi eth <techieth@gmail.com>
Date: Thu, 21 Jun 2018 18:30:03 +0530
Message-ID: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Basehash value changed issue
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
X-List-Received-Date: Thu, 21 Jun 2018 13:00:06 -0000
Content-Type: multipart/alternative; boundary="000000000000653334056f267ea4"

--000000000000653334056f267ea4
Content-Type: text/plain; charset="UTF-8"

Hi,

I am facing issue with basehash value changed while building image on one
of my test board (Ref of beagle bone) on morty branch.

Error :
gateway.bb.do_rootfs, the basehash value changed from
e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f. The
metadata is not deterministic and this needs to be fixed

When i run bitbake-diffsigs -t gateway do_rootfs
I found below O/P.
basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to
3f98a102f48ea8722835ad0d65bfbc1f
Variable TIME value changed from '112854' to '115745'

After googling I found that TIME need's to be added in vardepsexclude list.
I added below in conf/distro/machine.conf but error persist.
do_rootfs[vardepsexclude] = "TIME DATE DATETIME"

Please suggest me where & what has to be added to come out of issue.

--000000000000653334056f267ea4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I am facing=
 issue with basehash value changed while building image on one of my test b=
oard (Ref of beagle bone) on morty branch.<br><br>Error :<br>gateway.bb.do_=
rootfs, the basehash value changed from e685a429b8df6dcff60063f087d425ee to=
 3f98a102f48ea8722835ad0d65bfbc1f. The metadata is not deterministic and th=
is needs to be fixed<br><br></div>When i run bitbake-diffsigs -t gateway do=
_rootfs<br>I found below O/P.<br>basehash changed from 8e6b9498c9704590bd01=
6491efcbf9f9 to 3f98a102f48ea8722835ad0d65bfbc1f<br>Variable TIME value cha=
nged from &#39;112854&#39; to &#39;115745&#39;<br><br></div>After googling =
I found that TIME need&#39;s to be added in vardepsexclude list.<br></div>I=
 added below in conf/distro/machine.conf but error persist.<br>do_rootfs[va=
rdepsexclude] =3D &quot;TIME DATE DATETIME&quot;<br><br></div>Please sugges=
t me where &amp; what has to be added to come out of issue.<br></div></div>

--000000000000653334056f267ea4--
