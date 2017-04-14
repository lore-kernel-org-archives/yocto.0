Return-Path: <andreabenini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94387E00AF6; Fri, 14 Apr 2017 06:06:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreabenini[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61BB3E00939
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 06:06:45 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id b187so91951693oif.0
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 06:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WHi8JnT/G13n1KVaxgJI6J+ii3Kaff9ISQEl5dtoZ6s=;
	b=CQX2HAlS/GdbzUbkz+FnGyaQb9xE1Xm6s9WoXwayJOadBpiAL6uYZYGJgyrz781fu2
	KFlppDrLpk6bIg3ZvY6Mv3mgaYA5bAqLuO5UpBbFUTnA91JQnq6mcu8MAJKFZA60hrtm
	X4wBYg86V5OrngXVleO12cUxU6T2uxjpnT5GY8tcD1Er6aIs/CkjV/6J66493TmvAHww
	rtgOx+pUQnA0xX82YLnsFBItxC8YXY3QxybKv04iPKjTVbHRIAfm0G/7ngG7DhOb+2GR
	evnQe5+unBUoGB2TcylbYbF2oYzSU6jkFyQtliC7r52qpE9oitZanjXrb6SM0TL1WZTy
	3l0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WHi8JnT/G13n1KVaxgJI6J+ii3Kaff9ISQEl5dtoZ6s=;
	b=CoBdTWGcPaUMxsup6sCvKdYsHQY3534c1wccs0KcfZp2YgxpHwtlwVQZnOoRRWmHFQ
	EzN95i5cr7EQWPBjIK2GxkkzDiCRAdNIO4VByuMTPQKcpwr1RsjWefgyxgmGYZCWJWWN
	TONErTALdWUrBWpmDHNuWCCH7OnRXG7sleIh2ZoGrESmu0jNPW0/RUR7cOA84g8ZMQOL
	L2x0a94wOZYsvnYAOSQqIoP0RIndosjqnCTQO7PsmzQIYdhOjGuTfNglq5jjC4pDSe0K
	QxBjT766xKsCycTviDI/dAFN8wUHgocyL3W1qfRdV/tiV8CtSZ6zg0vULWgbTzIdsk9t
	4xaw==
X-Gm-Message-State: AN3rC/60fb0ph0RE/mb3DtUxUTH8isYpsSRYrzBejWiRxCITp7maijBz
	l1uWprX4NnRhqdTTaW9AjE8OdpMZfvhy
X-Received: by 10.157.48.148 with SMTP id s20mr5383310otc.106.1492175204330;
	Fri, 14 Apr 2017 06:06:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.145.149 with HTTP; Fri, 14 Apr 2017 06:06:44 -0700 (PDT)
From: Andrea Benini <andreabenini@gmail.com>
Date: Fri, 14 Apr 2017 15:06:44 +0200
Message-ID: <CAOrUntZghk1--33NFQ-0CS2JSSLxM9Bjg0d_ofqHzmR6VAzMYw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [raspberry] MACHINE var value and boards compatibilities
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
X-List-Received-Date: Fri, 14 Apr 2017 13:06:52 -0000
Content-Type: multipart/alternative; boundary=f4030435ab8cff3370054d201c36

--f4030435ab8cff3370054d201c36
Content-Type: text/plain; charset=UTF-8

Hi List,
As suggested from Andrei I'm posting my issue here to get some help.

I'm able to compile a basic yocto image (rpi-hwup-image.bb) for RaspberryPi
(1/2/3/0) boards just by changing the MACHINE var, but when I set it to
"raspberrypi" my image boots just only on v1 boards (B and B+), the same
happens for "raspberrypi3" boards (3 only) and so on. Boot partition for
each image is basically the same and has its kernel.img (or kernel7.img)
only.
Is there a way to create an universal image (P1, P2, P3 support) that goes
on each board just like what raspbian does ? I mean, I can compile with
MACHINE set to "raspberrypi" and generate various kernels (1,2,3,0) to
match the destination board, It's not heavily optimized but at least it
runs on each single machine
On a cleaned up installation I have left busybox and kernel configs
untouched because I'm doing just bare tests on them, each single image
works but I wish to combine them. I might be able to compile each single
kernel and with a dirty batch hack I can merge them, but, is there a Yocto
way to do it ?

Thanks in advance for your reply
Ben

--f4030435ab8cff3370054d201c36
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi List,<div>As suggested from Andrei I&#39;m posting my i=
ssue here to get some help.</div><div><p style=3D"box-sizing:border-box;mar=
gin-bottom:16px;color:rgb(36,41,46);font-family:-apple-system,blinkmacsyste=
mfont,&quot;segoe ui&quot;,helvetica,arial,sans-serif,&quot;apple color emo=
ji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:1=
4px;margin-top:0px">I&#39;m able to compile a basic yocto image (<a href=3D=
"http://rpi-hwup-image.bb">rpi-hwup-image.bb</a>) for RaspberryPi (1/2/3/0)=
 boards just by changing the MACHINE var, but when I set it to &quot;raspbe=
rrypi&quot; my image boots just only on v1 boards (B and B+), the same happ=
ens for &quot;raspberrypi3&quot; boards (3 only) and so on. Boot partition =
for each image is basically the same and has its kernel.img (or kernel7.img=
) only.<br style=3D"box-sizing:border-box">Is there a way to create an univ=
ersal image (P1, P2, P3 support) that goes on each board just like what ras=
pbian does ? I mean, I can compile with MACHINE set to &quot;raspberrypi&qu=
ot; and generate various kernels (1,2,3,0) to match the destination board, =
It&#39;s not heavily optimized but at least it runs on each single machine<=
br style=3D"box-sizing:border-box">On a cleaned up installation I have left=
 busybox and kernel configs untouched because I&#39;m doing just bare tests=
 on them, each single image works but I wish to combine them. I might be ab=
le to compile each single kernel and with a dirty batch hack I can merge th=
em, but, is there a Yocto way to do it ?</p><p style=3D"box-sizing:border-b=
ox;margin-top:0px;color:rgb(36,41,46);font-family:-apple-system,blinkmacsys=
temfont,&quot;segoe ui&quot;,helvetica,arial,sans-serif,&quot;apple color e=
moji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size=
:14px;margin-bottom:0px">Thanks in advance for your reply<br style=3D"box-s=
izing:border-box">Ben</p></div></div>

--f4030435ab8cff3370054d201c36--
