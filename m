Return-Path: <ashish.dalela@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6487E0081B
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 11:46:44 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id er20so3911790lab.21
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 11:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+6sInBqidwMj+Ep7GPtTNnLaiN2qi5l8BxmA6doPo7A=;
	b=RQCREdF5a5Eq8q6fDP6UqK0jBh9jp5JU7nDUjxahmhxYJA9iLv8ljWql3ADtP1H+jt
	/BSyA2JJ6e+qteOrUe/uEzV+7+UrhwH5iydsa9/cXK+IOOk5hL8BAduOg/6P5mZ1stdZ
	1kaPKHkLDf/rMEuVS2u8/64arDlU2dWhmDq1wYmKZNhFdZd1g+PawAuEqFxZ6KpGP804
	jQgopxO+JfrvtNQK7dD2AavGDi1UAjzf7Yy8wYaXT/jBiArtExB4sB8kgW+wCHdzRkL9
	RJVVbVkBJLLBhgcmKsRrIjEA/UuDpy9GsOuXCBHf3hwkwMHP2eyBfdoCnq4GUCzpHwzn
	uy9g==
MIME-Version: 1.0
X-Received: by 10.112.198.36 with SMTP id iz4mr1925270lbc.14.1389988002300;
	Fri, 17 Jan 2014 11:46:42 -0800 (PST)
Received: by 10.112.96.198 with HTTP; Fri, 17 Jan 2014 11:46:42 -0800 (PST)
Date: Sat, 18 Jan 2014 01:16:42 +0530
Message-ID: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: meta-oracle-java fails
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
X-List-Received-Date: Fri, 17 Jan 2014 19:46:47 -0000
Content-Type: multipart/alternative; boundary=001a11c233ee1e872104f02fcd5a

--001a11c233ee1e872104f02fcd5a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to build JDK and JRE using the meta-oracle-java recipes. The
recipes build fine, but during do_rootfs (core-image-basic) I see the
following errors:

FOR JRE:
| Computing transaction...error: Can't install
oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides libavcodec.so.52

FOR JDK:
| Computing transaction...error: Can't install
oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides
libavcodec.so.52(LIBAVCODEC_52)

meta/recipes-multimedia/libav/libav_0.7.4.bb builds libavcodec.so.53.

Does anyone know how to fix this issue?

I already tried manually copying libavcodec.so.53 to libavcodec.so.52 but
it does not help.

Thanks
-Ashish

--001a11c233ee1e872104f02fcd5a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Hi,<div><br></div><div>I&#39;m trying to bu=
ild JDK and JRE using the meta-oracle-java recipes. The recipes build fine,=
 but during do_rootfs (core-image-basic) I see the following errors:</div>
<div><br><div>FOR JRE:</div><div><div>| Computing transaction...error: Can&=
#39;t install oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides lib=
avcodec.so.52</div></div><div><br></div><div>FOR JDK:</div><div><div>| Comp=
uting transaction...error: Can&#39;t install oracle-jse-jdk-i586-1.7.0-u51r=
0@i586: no package provides libavcodec.so.52(LIBAVCODEC_52)</div>
</div><div><br></div></div><div>meta/recipes-multimedia/libav/<a href=3D"ht=
tp://libav_0.7.4.bb">libav_0.7.4.bb</a> builds libavcodec.so.53.=A0</div><d=
iv><br></div><div>Does anyone know how to fix this issue?</div><div><br></d=
iv>
<div>I already tried manually copying libavcodec.so.53 to libavcodec.so.52 =
but it does not help.</div><div><br></div><div>Thanks</div><div>-Ashish</di=
v></div>

--001a11c233ee1e872104f02fcd5a--
