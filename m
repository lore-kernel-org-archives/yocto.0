Return-Path: <isak.lichtenstein@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04204E00A00; Thu,  6 Jun 2019 23:17:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (isak.lichtenstein[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
	[209.85.222.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78FF8E0049C
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 23:17:32 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id j2so249167uaq.5
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 23:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/7JFIkrQhzvrxl95LlCsqlSjEL2kIIINNAs3f0ZLqtI=;
	b=gokBeRSqvp8hoWqIsNuu3Q2UWnYdN0MO5Kn+WBl9FSpymqWz5d9XXFXbRiq+srN1NM
	uvI5sF8qpn/6/RmUGuQZMPMe9DJh8bwKF9AzwDvb659Hf2rcSgYJO3b/o1JG0xU5kvi/
	8FGsEKU+g3fRHDs4KBHnOMP4F0FQ/J5wk6+cmd1LtdcfWbS5osrgWIIwCuCGOhbsBwQR
	CqNEIFzMXwSzufNjtlLtewrBvT32HHswYjQ0nl1wlf3AZ0gK3tI8EHbQg068OjKLkXZV
	PS5dST3uDTXXcvsAkq7HxsEBtBe6Al+LcobQoPX/+Mud/QRsTjc3h5DcscHYsjQCuk+1
	mnPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/7JFIkrQhzvrxl95LlCsqlSjEL2kIIINNAs3f0ZLqtI=;
	b=rFcUkhZgs/hpoagCv1anxdJ3oxXG5vVbr40b5v2nIlpvVjgIzNtB3O2Jkur4CvFAaq
	2W1OzfnEXf1q0B9DsABXWxM5Pyfjq7e8r+i8udSz4U72WEHHZb6xEf2IhRxq2CN3J1YT
	Rf7h6lSzsfAi5X6w1Ah/Qq5WizWUhbltsqG+2WGo5kbGfF+FUGUze1gwqFiSY51unr1R
	7mEgU/JQzLluUXwh/c5LbrbYttg1ImyIueaIA8yahi7H6mF3L/NsVWj6eriaUXPdzEBs
	Wu6Plxj5ADpPzQ6Fo7m0BGD0ON4fH34u5B7+Aw2brF83fbIzKyVNOQMIOsYsSoLyg2tL
	TEmw==
X-Gm-Message-State: APjAAAU2PLvaBZ2e729f4fe+I/N0rZEjKk01G7m+v9yLLlZZzv9tcOEi
	WRAEmo3RiyAclRu6n7YmDhsykT6FznjEihm1OlZiwIFJ
X-Google-Smtp-Source: APXvYqygBbxx+2ruC9lklaQ/0XvbzRWtSagPAOUj2JgE2IkaskcZYJdajf4orAEk6x4x3+ZKRkLuKljPRVGYrRTIWUU=
X-Received: by 2002:ab0:6988:: with SMTP id t8mr21044280uaq.49.1559888251522; 
	Thu, 06 Jun 2019 23:17:31 -0700 (PDT)
MIME-Version: 1.0
From: Isak Lichtenstein <isak.lichtenstein@gmail.com>
Date: Fri, 7 Jun 2019 08:17:20 +0200
Message-ID: <CAHSgvvtugt4h7eJ9u5DKjfqCOx9qK=v1s0TNES3fxKT=F6izfw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 09 Jun 2019 12:57:50 -0700
Subject: Necessary changes between SDK and eSDK builds
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
X-List-Received-Date: Fri, 07 Jun 2019 06:17:33 -0000
Content-Type: multipart/alternative; boundary="0000000000001f128a058ab5c9e0"

--0000000000001f128a058ab5c9e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi



I=E2=80=99m using yocto thud 2.6.1 and always build & provide sdk=E2=80=99s=
 to our
customers without problem.

Now a customer requested an eSDK instead.



According to the manual (
https://www.yoctoproject.org/docs/2.6/sdk-manual/sdk-manual.html#sdk-buildi=
ng-an-sdk-installer
<https://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#sdk-build=
ing-an-sdk-installer>),
this should work identically by simply using =E2=80=9C-c populate_sdk_ext=
=E2=80=9D.



Unfortunately the tasks do_populate_sdk_ext fails with the following error
message:



=E2=80=A6.

Exception: FileNotFoundError: [Errno 2] No such file or directory:
'/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboar=
d/1.0-r0/sdk-ext/image//opt/myboard/2.6.1/conf/local.conf.bak'
->
'/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboar=
d/1.0-r0/sdk-ext/image//opt/myboard/2.6.1/conf/local.conf'



ERROR: core-image-myboard-1.0-r0 do_populate_sdk_ext: Function failed:
copy_buildsystem

ERROR: Logfile of failure stored in:
/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboard=
/1.0-r0/temp/log.do_populate_sdk_ext.17712

ERROR: Task
(/home/root/yocto/meta-evalboard/recipes-core/images/core-image-myboard.bb:=
do_populate_sdk_ext)
failed with exit code '1'



What do I need to change in order to build the extensible SDK?



Best regards

Isak

--0000000000001f128a058ab5c9e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.=
0001pt;font-size:11pt;font-family:Calibri,sans-serif">Hi</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">I=E2=80=99m using yocto thud 2.6.1 and=
 always build &amp; provide
sdk=E2=80=99s to our customers without problem.</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">Now a customer requested an eSDK inste=
ad.</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">According to the manual (<a href=3D"ht=
tps://www.yoctoproject.org/docs/2.1/sdk-manual/sdk-manual.html#sdk-building=
-an-sdk-installer" style=3D"color:rgb(5,99,193)">https://www.yoctoproject.o=
rg/docs/2.6/sdk-manual/sdk-manual.html#sdk-building-an-sdk-installer</a>),
this should work identically by simply using =E2=80=9C-c populate_sdk_ext=
=E2=80=9D.</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">Unfortunately the tasks do_populate_sd=
k_ext fails with
the following error message:</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=E2=80=A6.</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">Exception: FileNotFoundError: [Errno 2=
] No such file or
directory:
&#39;/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-my=
board/1.0-r0/sdk-ext/image//opt/myboard/2.6.1/conf/local.conf.bak&#39;
-&gt;
&#39;/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-my=
board/1.0-r0/sdk-ext/image//opt/myboard/2.6.1/conf/local.conf&#39;</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">ERROR: core-image-myboard-1.0-r0 do_po=
pulate_sdk_ext:
Function failed: copy_buildsystem</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">ERROR: Logfile of failure stored in:
/home/root/build/dev/tmp/work/myboard-poky-linux-gnueabi/core-image-myboard=
/1.0-r0/temp/log.do_populate_sdk_ext.17712</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">ERROR: Task
(/home/root/yocto/meta-evalboard/recipes-core/images/core-image-myboard.bb:=
do_populate_sdk_ext)
failed with exit code &#39;1&#39;</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">What do I need to change in order to b=
uild the extensible
SDK?</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">Best regards</p>

<p class=3D"gmail-MsoPlainText" style=3D"margin:0cm 0cm 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif">Isak</p></div>

--0000000000001f128a058ab5c9e0--
