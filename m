Return-Path: <dan.florincristian@gmail.com>
Received: from mail-ia0-f181.google.com (mail-ia0-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA44E014AA
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 02:22:14 -0700 (PDT)
Received: by mail-ia0-f181.google.com with SMTP id o25so4960510iad.26
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 02:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=gE6Cj2iZ7l8Vgj1JYTyjTxTy09NC3EpvgREJo2467MQ=;
	b=YxYs6XAbl9S6Bv8kPu7VXdh36lQTLN9+iUIXpl3Sq/EsVeoi+UUyTcKp1YolOUMaXC
	nfK2csF5hRBRyUGB20XNdUr3kjcK8l5WPPZNgH7/EV+bD1dLgNdsN/zwNkvyLxAHz/US
	Mdi7c388S3KNWXUtidLPwBuwI9wbD0xQw220dWKqupEPJcfp+C3fiYYJxw/rau901xuF
	Ig35m/wNxdVCsJw/7UPpny9jFW7aVa7jUIt99VvJyItjE7w3c+4ambffLuXLx6Cvy51W
	RIm4KCnERNcyXGto/ws1a5OXvvVCdrrqJC8yWFFM/60n6UD9G6iL6eDnzgfmkXVfUxJx
	lsEg==
MIME-Version: 1.0
X-Received: by 10.50.114.37 with SMTP id jd5mr6531016igb.2.1365412934469; Mon,
	08 Apr 2013 02:22:14 -0700 (PDT)
Received: by 10.64.20.6 with HTTP; Mon, 8 Apr 2013 02:22:14 -0700 (PDT)
Date: Mon, 8 Apr 2013 12:22:14 +0300
Message-ID: <CABzOdpQmx0juTDrS29xBHsrL-+uSPN3ONBk9stMhCNt6+f-QUg@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Serial communication problem!
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
X-List-Received-Date: Mon, 08 Apr 2013 09:22:15 -0000
Content-Type: multipart/alternative; boundary=047d7b3a98acee52aa04d9d5f880

--047d7b3a98acee52aa04d9d5f880
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I have a little problem in finding out how does serial communication works
within yocto-project.
I've build a sato image with meta-emenlow bsp and qt4 support, i've done
some qt apps and succeded in making them work on the target machine.
Now i want my qt applicaion to recive some data via serial port, my target
machine has a single serial DB9 father connector. I've found a class and
build a program wich opens a specified port and listens it.
i also have a Explorer 16 development board wich i use to send data trough
serial. I tested whis with my ubuntu PC(sent data from devel. board, and
opend a port with the qt program) and it worked i was able to see exactly
what i've expected.
Then i connected the devl board with my target machine, ran the serial
listener on the target machine,  with "ttyS0" as the name for serial port,
but nothing happend, no errors occured, but it just sitts there and dosen't
do anything, i've also tried ttyS1 ttyS2 ttyS3 for the port name, but the
same thing happend.
Any advice?
Is there some line that needs to be written before i burn my sato image in
order to enable serial ports?
Thank you

--047d7b3a98acee52aa04d9d5f880
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div style>I have a little problem in finding out ho=
w does serial communication works within yocto-project.</div><div style>I&#=
39;ve build a sato image with meta-emenlow bsp and qt4 support, i&#39;ve do=
ne some qt apps and succeded in making them work on the target machine.=A0<=
/div>
<div style>Now i want my qt applicaion to recive some data via serial port,=
 my target machine has a single serial DB9 father connector. I&#39;ve found=
 a class and build a program wich opens a specified port and listens it.=A0=
</div>
<div style>i also have a Explorer 16 development board wich i use to send d=
ata trough serial. I tested whis with my ubuntu PC(sent data from devel. bo=
ard, and opend a port with the qt program) and it worked i was able to see =
exactly what i&#39;ve expected.=A0</div>
<div style>Then i connected the devl board with my target machine, ran the =
serial listener on the target machine, =A0with &quot;ttyS0&quot; as the nam=
e for serial port, but nothing happend, no errors occured, but it just sitt=
s there and dosen&#39;t do anything, i&#39;ve also tried ttyS1 ttyS2 ttyS3 =
for the port name, but the same thing happend.</div>
<div style>Any advice?</div><div style>Is there some line that needs to be =
written before i burn my sato image in order to enable serial ports?</div><=
div style>Thank you</div></div>

--047d7b3a98acee52aa04d9d5f880--
