Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A0FE00A6B; Wed, 23 Nov 2016 05:26:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9EA0E00A0A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 05:26:21 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id 137so7774516vkl.0
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 05:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=8WV73GehDjiXCOxHiZtzdoLz6BssIW7mxoksSgp2XhU=;
	b=fSpMbrpBcI+CcDfOVAxAyiUbsmBqppxfdY8+8qR1BqkwbCI7Gar0PqrNShVgVp9pt2
	97XrwiP2TA2CA1jzJBN0ErK4OER14Zawz3dnLv0xmJKP+kxNR2SxKRz+GJoGJJ9u876+
	b67PFLOlNTG1KR0K//Gni+kjymUL1s1AVL6XpjUV4uTpdwtdeUD5xQ2lDmF5FgIiv5Ir
	9Cet8woBhO1sYb+vmTVp5SJP3DqNyEUMuD8eK/Rq2F3fnERuZPe08OIKondvlGtvlzLt
	WTFT9YIdN1oIwd1BX2LQXphSnT4rUcMfl3tr5BWJHq1Sl1Fmgdy22PojzufwhJNtf3oT
	zfcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8WV73GehDjiXCOxHiZtzdoLz6BssIW7mxoksSgp2XhU=;
	b=ZR2IVmX7Q/GeBYsOEbeOsO1oZa0OE1dL42jrpsvIHaS+nBVU9c5gxPwhelLsQ7Fb14
	QgaCchi52+Jh1tVrYZDqhI7myDf7UAZ3Ijk7/LKaRWfQDIYKDR0wMqLeO6djLkml3ou5
	wXjPg/tueWzIZxdLjZCWMvjRXy26K0xXyZ4ihT+jfc5e7ip7eA/2fFwLEgRiCve7wIqd
	3LwvdR86Oi9wOIs9R8bnIILTHsSTC9DnaAK0HwND0cqcAb89ZY9IRUuwJos9QDmVpeVA
	70gCExpCmd2H1PccJoKKvfzVA2+DSNxP5IbeaRcbAV6CrgDwnOa7Mds9bRXjOu5Eklow
	Xrsw==
X-Gm-Message-State: AKaTC035UwUGHhcyTJ9I8vG55bWFLexS7lSECeY2Yp6fUEy3CB9F/26+Ko2ulvr5ikk4Hh+BFxFyuqgQkoNDgw==
X-Received: by 10.31.220.4 with SMTP id t4mr1082519vkg.143.1479907580297; Wed,
	23 Nov 2016 05:26:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Wed, 23 Nov 2016 05:26:19 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 23 Nov 2016 11:26:19 -0200
Message-ID: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Wed, 23 Nov 2016 13:26:24 -0000
Content-Type: multipart/alternative; boundary=94eb2c07aaee9fc8850541f7d56c

--94eb2c07aaee9fc8850541f7d56c
Content-Type: text/plain; charset=UTF-8

Hi everybody!

I have a Makefile with this header

major = 1
minor = 0
patch = 10
release = -beta


Which compilates someting like libmylib.so.1.0.10-beta shared object.

On recipe I duplicate this information:
PV="1.0.10"
PR="-beta"

Is there anyway to grab that information from Makefile and setting PV & PR
according to it? At compilation time? So that I only have to change at one
place?

Regards,


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c07aaee9fc8850541f7d56c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi everybody!<br><br></div>I have a Makefil=
e with this header<br></div><br></div><div>major =3D 1<br></div><div>minor =
=3D 0<br></div><div>patch =3D 10<br></div><div>release =3D -beta<br><br><br=
></div><div>Which compilates someting like libmylib.so.1.0.10-beta shared o=
bject.<br><br></div><div>On recipe I duplicate this information:<br></div><=
div>PV=3D&quot;1.0.10&quot;<br></div><div>PR=3D&quot;-beta&quot;<br></div><=
div><br></div><div>Is there anyway to grab that information from Makefile a=
nd setting PV &amp; PR according to it? At compilation time? So that I only=
 have to change at one place?<br><br></div><div>Regards,<br></div><br clear=
=3D"all"><div><div><div><div><div><br>-- <br><div class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div style=3D"text-align:right"><i>&quo=
t;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Maste=
r</b></i><br></div></div>
</div></div></div></div></div></div>

--94eb2c07aaee9fc8850541f7d56c--
