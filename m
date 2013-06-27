Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4B6E014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 02:01:12 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id oz10so407838veb.5
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 02:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2Xlgd2hSA7eBbdL6Tyrr63YuLMvwLTCED7JvWzJQwuE=;
	b=xreBEUPmvq3tKh8CKqiDplIJ8HXOcvk9PbFpOTcEHdf/jYk3AzTwrPUcHYHKiijfP2
	M/aM9OCnpamfM4N1UVY31Gwf0K7Aw8WlwmiJMXaM0bCdB8AtLFxSFmq0PRTQ4+7SU/I5
	K+MAy/NoSwG/DMamaFmfili/vVUzDg2fqcw5UtEAksJYADtIGn4z3WXuBEHy0yVCOx6F
	BmsVgZaMUgUAMMazqrTbLKVNIq5buVIOfq0CeC37c5dQctnywt5xrw4ctV3X+OzSQGHc
	6IP1hm5J5GSiJf8r/OSxpkyYBQoyw2u650nhC77i278v8x39nMe9kfsISYeY14//My/X
	Ze+g==
MIME-Version: 1.0
X-Received: by 10.220.77.141 with SMTP id g13mr3033890vck.24.1372323671508;
	Thu, 27 Jun 2013 02:01:11 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Thu, 27 Jun 2013 02:01:11 -0700 (PDT)
Date: Thu, 27 Jun 2013 11:01:11 +0200
Message-ID: <CAFMfyzL4zn208FJUOsBq8ZqCU3RejEJ0F8-XzEDVf0xSrGGWrw@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Qt4 - qmake in toolchain for Qt/X11
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
X-List-Received-Date: Thu, 27 Jun 2013 09:01:13 -0000
Content-Type: multipart/alternative; boundary=047d7b344186f50c9204e01f009d

--047d7b344186f50c9204e01f009d
Content-Type: text/plain; charset=ISO-8859-1

Hello Guys,

I have a small confusion.... In my image, I have normal Qt4 packages
installed and they are working good. Now, when I wanted to develop a Qt
application for my image, I compiled a toolchain but unfortunately, I don't
find qmake installed.

After browsing the directories I found the following

damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packagegroups$ ls -la
total 40
drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .
drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..
-rw-rw-r-- 1 damarla damarla  104 Jun 17 13:50
nativesdk-packagegroup-qte-toolchain-host.bb
-rw-rw-r-- 1 damarla damarla   95 Jun 17 13:50
nativesdk-packagegroup-qt-toolchain-host.bb
-rw-rw-r-- 1 damarla damarla  178 Jun 17 13:50
nativesdk-packagegroup-qt-toolchain-host.inc
-rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 packagegroup-core-qt4e.bb
-rw-rw-r-- 1 damarla damarla  501 Jun 17 13:50 packagegroup-core-qt.bb
-rw-rw-r-- 1 damarla damarla  136 Jun 17 13:50
packagegroup-qte-toolchain-target.bb
-rw-rw-r-- 1 damarla damarla  335 Jun 17 13:50
packagegroup-qt-toolchain-target.bb
-rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50
packagegroup-qt-toolchain-target.inc

Now in order to get "qmake" for my toolchain I am not able to understand
which package group should I include from the above.

Cheers,
Sati

--047d7b344186f50c9204e01f009d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Guys,<div><br></div><div>I have a small confusion...=
. In my image, I have normal Qt4 packages installed and they are working go=
od. Now, when I wanted to develop a Qt application for my image, I compiled=
 a toolchain but unfortunately, I don&#39;t find qmake installed.</div>
<div><br></div><div>After browsing the directories I found the following</d=
iv><div><br></div><div><div>damarla@linuxbuildsrv:~/openYocto/poky/meta/rec=
ipes-qt/packagegroups$ ls -la</div><div>total 40</div><div>drwxrwxr-x 2 dam=
arla damarla 4096 Jun 17 13:50 .</div>
<div>drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..</div><div>-rw-rw-r--=
 1 damarla damarla =A0104 Jun 17 13:50 <a href=3D"http://nativesdk-packageg=
roup-qte-toolchain-host.bb">nativesdk-packagegroup-qte-toolchain-host.bb</a=
></div>
<div>-rw-rw-r-- 1 damarla damarla =A0 95 Jun 17 13:50 <a href=3D"http://nat=
ivesdk-packagegroup-qt-toolchain-host.bb">nativesdk-packagegroup-qt-toolcha=
in-host.bb</a></div><div>-rw-rw-r-- 1 damarla damarla =A0178 Jun 17 13:50 n=
ativesdk-packagegroup-qt-toolchain-host.inc</div>
<div>-rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 <a href=3D"http://packa=
gegroup-core-qt4e.bb">packagegroup-core-qt4e.bb</a></div><div>-rw-rw-r-- 1 =
damarla damarla =A0501 Jun 17 13:50 <a href=3D"http://packagegroup-core-qt.=
bb">packagegroup-core-qt.bb</a></div>
<div>-rw-rw-r-- 1 damarla damarla =A0136 Jun 17 13:50 <a href=3D"http://pac=
kagegroup-qte-toolchain-target.bb">packagegroup-qte-toolchain-target.bb</a>=
</div><div>-rw-rw-r-- 1 damarla damarla =A0335 Jun 17 13:50 <a href=3D"http=
://packagegroup-qt-toolchain-target.bb">packagegroup-qt-toolchain-target.bb=
</a></div>
<div>-rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50 packagegroup-qt-toolcha=
in-target.inc</div></div><div><br></div><div>Now in order to get &quot;qmak=
e&quot; for my toolchain I am not able to understand which package group sh=
ould I include from the above.</div>
<div><br></div><div>Cheers,</div><div>Sati</div></div>

--047d7b344186f50c9204e01f009d--
