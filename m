Return-Path: <amittomer25@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54198E015D1
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 03:00:18 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hj3so2030036wib.7
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 03:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=e0vD9WGNZLMs4twjBRgN8ymtAjj9nltyyewP/8eEQOc=;
	b=RfGvt4F5Fl0/qK6n1Ne3MnGZuteqUU2LiTS0r/zpz3aQIfVAbgoKQdJO9E1X5QqHYX
	d6z9pZmIhROMtsAfADh32EcuDOsCgFRpE/vEM8FEM89yEY5O0lRW+gA9g/8zpVBLqI1f
	UCYJ++i7sqHunYnwuGo0tCJNvUC+2n152CjEx+0zoRgddlxYMYEzfRzTHizt1e8fsUDQ
	i4Nms1XzmxSzFpmOO1Bz0wawQOWbin/2R0WaMoJOnop8R40F3BTxGIT/CcImIOftrzc+
	mTQGoajqNyw4Ijyu6Fj8xMBfBC7JRPD12uw654qZB1PPf48N+o/qgLQJ8z63cp4Sd7Aq
	bb8A==
MIME-Version: 1.0
X-Received: by 10.180.187.51 with SMTP id fp19mr12505599wic.1.1379930413748;
	Mon, 23 Sep 2013 03:00:13 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Mon, 23 Sep 2013 03:00:13 -0700 (PDT)
Date: Mon, 23 Sep 2013 15:30:13 +0530
Message-ID: <CABHD4K8VcQHZSzO2Ch1mEeMNMzHXNTVw7DxqDYdO5VriOtxrWg@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to pack non striped valgrind image into squashfs image
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
X-List-Received-Date: Mon, 23 Sep 2013 10:00:21 -0000
Content-Type: multipart/alternative; boundary=001a11c37ba22058c004e70a163a

--001a11c37ba22058c004e70a163a
Content-Type: text/plain; charset=ISO-8859-1

I am new to OpenEmbedded and facing an issue where our valgrind is not
working,
Valgrind bin comes as non striped image after compilation but while packing
it to squashfs image ,it become striped one and fails to run on target.

So how do we pack it as non striped one ??

One more thing I noticed in our local.conf

EXTRA_IMAGE_FEATURES = "debug-tweaks"

Do It need to have EXTRA_IMAGE_FEATURES = "debug-tweaks tools-profile"??

Please correct me if I am asking something wrong.

--001a11c37ba22058c004e70a163a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am new to OpenEmbedded and facing an issue where our val=
grind is not working,<div style>Valgrind bin comes as non striped image aft=
er compilation but while packing it to squashfs image ,it become striped on=
e and fails to run on target.</div>
<div style><br></div><div style>So how do we pack it as non striped one ??<=
/div><div style><br></div><div style>One more thing I noticed in our local.=
conf=A0</div><div style><br></div><div style>EXTRA_IMAGE_FEATURES =3D &quot=
;debug-tweaks&quot;<br>
</div><div style><br></div><div style>Do It need to have=A0EXTRA_IMAGE_FEAT=
URES =3D &quot;debug-tweaks tools-profile&quot;??</div><div style><br></div=
><div style>Please correct me if I am asking something wrong.=A0</div></div=
>

--001a11c37ba22058c004e70a163a--
