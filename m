Return-Path: <wutengss@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0267E00288
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 23:50:04 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id w5so4882382vbf.1
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 23:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ewLZgVRiowYydZPmy+xdsuS898evHJgl9umqX6uxb+s=;
	b=nC13ub0dKyJmsEkLQ34WQyG6mxUB3Owd3tr3Nvnf7pg4JZW7dgRiOMcTr/y3oo+M5B
	aLlxq1IroARmhZvBtq/I1vf72Y7acfkD0MzjSsEYdUFmWpHyMkXxy9p4rvL6Scg8Uss9
	9FQxGwiq4dlL3AYDcqShjia2SmIHzgTxzQlBXedfOS1KBOG8whmGcoYQbc9k2FpkQY2R
	0RoxnNjR8j6jt3eaHobmqaWYYo4xSFSIuM7/1/yEqBZ64fyuap6r4Yp/TPW72YnDk2aI
	wB8YbnSyYysQ6B5NLsPP6Pir33Pc3ZWZqqCbuyQSNcElXK++CiSimTr9oxaqIVc056mf
	if7w==
MIME-Version: 1.0
X-Received: by 10.52.162.74 with SMTP id xy10mr63124vdb.65.1387353003545; Tue,
	17 Dec 2013 23:50:03 -0800 (PST)
Received: by 10.52.72.137 with HTTP; Tue, 17 Dec 2013 23:50:03 -0800 (PST)
Date: Wed, 18 Dec 2013 09:50:03 +0200
Message-ID: <CAOJdAdUOjV56ZBDAp6YhKU2x4cVrmLz=7Ku76WHcu33Oc3g3Mw@mail.gmail.com>
From: wuteng wu <wutengss@gmail.com>
To: yocto@yoctoproject.org
Subject: libxml2 error
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
X-List-Received-Date: Wed, 18 Dec 2013 07:50:10 -0000
Content-Type: multipart/alternative; boundary=089e01538648f45aff04edca4a75

--089e01538648f45aff04edca4a75
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I built the Yocto 1.5 project for my SAMA5D34-EK board, i add the libxml2
by IMAGE_INSTALL_append = " libxml2", i got the image and programmed it
into NAND Flash of the board, but when i type *python -c "import libxml2" *from
the hyper Terminal , it gave out the message: *"*

*Traceback (most recent call last): File "", line 1, in ImportError: No
module named libxml2"*
 I can find libxml2.so.2.9 under the usr/lib dir, i'm wondering where does
the error comes from, could anyone help me to solve the problem ? Thx.

--089e01538648f45aff04edca4a75
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I built the Yocto 1.5 project f=
or my SAMA5D34-EK board, i add the libxml2 by IMAGE_INSTALL_append =3D &quo=
t; libxml2&quot;, i got the image and programmed it into NAND Flash of the =
board, but when i type <strong>python -c &quot;import libxml2&quot; </stron=
g>from the hyper Terminal ,<strong> </strong>it gave out the message: <stro=
ng>&quot;</strong><strong><strong>Traceback (most recent call last): File &=
quot;&quot;, line 1, in  ImportError: No module named libxml2</strong>&quot=
;<br>
<br></strong></div><strong></strong> I can find libxml2.so.2.9 under the us=
r/lib dir, i&#39;m wondering where does the error comes from, could anyone =
help me to solve the problem ? Thx.<br></div>

--089e01538648f45aff04edca4a75--
