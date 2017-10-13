Return-Path: <antonellotartamo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AC47E00D03; Fri, 13 Oct 2017 10:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonellotartamo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30EAAE00CFE
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 10:35:22 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id w197so15413868oif.6
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HOrpOlJ1n4QQkAVXr2T73VG9UMfw/uE2dGXjG2M5pjg=;
	b=oqlV0UaAFtZl+u6LojSFKV8DdT/A5DsjnUXhFhBJLHtruZtEoBgfatveKHQ3JJ4PV5
	VaeV0rLGEIGMU//GUzqpyADObeiAUA/v3NcbC01SjK4bmETa83ASiEkjUw24NcqxcgnK
	0KfxAIzq+PmU3waD3sX7h83LTbJNdrCvKtEbLAFSoGm/rraW0s2dajpC2FBq+27r5n72
	XKZ4cKXLwXWqi3bdK8xUEPr+YAbVrxNkxOQIZo8pjwPzN/5765yQIIc9mojNxbIoMquQ
	s39SM0yukNKhylapYTVqsQJzi7KSlu4Ylmzk2VkmMRgHTGL2ddbOcYcFNIpG3zceJ8es
	Bpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HOrpOlJ1n4QQkAVXr2T73VG9UMfw/uE2dGXjG2M5pjg=;
	b=gqlL+B0gMewnqTyS/iX/3U/timwNjG2SNRp2N/RIBHFV3tLow/mbDHmoD5KCJt2mvF
	EJllJxypv36YFxR6ekoyWkAg6ejHTyliMc6IV/gnKr9IHNF5b5veqH0W5LlfrudDBZt8
	mxZbNcJX70uW9kNspbRFGYmF8TPmOhT9FZKAtZ4EoolO4MQwmn05o3LeqGvyGy1O4JOA
	7IzVG14rFUqqE5r2cfm2FVZqZsXxcRhczlKvWALgYmJk3aGDYEj3oKrD5/gfzmWJXKoV
	x3xT1XbKadtBQoonSaBxac//ZRQ3nz1knqgvfTOI91dEexbD3r+Nil1QYK2qqx4/0EjQ
	SiEQ==
X-Gm-Message-State: AMCzsaUrmevWqqTm/eb3BMeoKFrWcBbPBpqIgYuAHCBtGECefVIV9BCf
	Ezkswb33A7LKMT73T+kwy4p984eQUv9lkHM6zmZnpg==
X-Google-Smtp-Source: ABhQp+RrLvtFcvC1bVQYJ8Trkd6r9opurbRcGxuRjFPzPC9nr0/VpizqcZ62j0F57HT+K98KlV7h5Bj6VAMzmn+5Wz4=
X-Received: by 10.157.43.132 with SMTP id u4mr1216811ota.17.1507916122223;
	Fri, 13 Oct 2017 10:35:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.168.55.12 with HTTP; Fri, 13 Oct 2017 10:35:21 -0700 (PDT)
From: Antonello Tartamo <antonellotartamo@gmail.com>
Date: Fri, 13 Oct 2017 19:35:21 +0200
Message-ID: <CAKns=mHT51aR2osFJDeEBOiopVxuLPxyq9EaM9E2hPmcRQ9oSw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: raspberrypi3 static library linking
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
X-List-Received-Date: Fri, 13 Oct 2017 17:35:23 -0000
Content-Type: multipart/alternative; boundary="001a113cfb40d0f881055b7114c5"

--001a113cfb40d0f881055b7114c5
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm using a raspberry pi 3 with meta-raspberrypi meta layer.

I have created a meta-layer (meta-kp) with two recipes directories:

   - *recipes-example*: an example taken from Embedded Linux Projects Using
   Yocto Project Cookbook with a static library recipe and the relative
   application.
   - *recipes-piface:* my recipes for an expansion board


   - libmcp23s17: a static library
      - exmcp23s17: an example just to use the previous static library
      - libpifacedigital: another static library which requires libmcp23s17
      - pifacedigital: the final application which requires both
      libmcp23s17 and libpifacedigital

My layer can be downloaded here: meta-kp
<https://drive.google.com/file/d/0BwmDwJEEGKdzcjZMVENNM1QzdUU/view?usp=sharing>

I've added in IMAGE_INSTALL_append both the recipe pifacedigital and
helloworldstatic.

I'm able to compile the image rpi-basic-image, but after booting the image
if I try to execute the application pifacedigital_cmd it prompts out the
following error:
/usr/bin/pifacedigital_cmd: line 1: syntax error: unexpected word
(expecting ")")

Instead helloworldstatic (recipes-example) binary properly works.

Have you ever faced some similar issue ?

Thanks in advance for your help

--001a113cfb40d0f881055b7114c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-top:0px;margin-bo=
ttom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">H=
ello everyone,</p><p style=3D"box-sizing:border-box;margin-top:0px;margin-b=
ottom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont=
,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&qu=
ot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">=
I&#39;m using a raspberry pi 3 with meta-raspberrypi meta layer.</p><p styl=
e=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(36,4=
1,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Hel=
vetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">I have created a meta-lay=
er (meta-kp) with two recipes directories:<br style=3D"box-sizing:border-bo=
x"></p><ul><li><b>recipes-example</b>: an example taken from Embedded Linux=
 Projects Using Yocto Project Cookbook with a static library recipe and the=
 relative application.</li><li><b>recipes-piface:</b> my recipes for an exp=
ansion board<br></li></ul><p></p><ul style=3D"box-sizing:border-box;padding=
-left:2em;margin-top:0px;margin-bottom:16px;color:rgb(36,41,46);font-family=
:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans=
-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe=
 UI Symbol&quot;;font-size:14px"><ul><li style=3D"box-sizing:border-box;mar=
gin-left:0px">libmcp23s17: a static library</li><li style=3D"box-sizing:bor=
der-box;margin-top:0.25em;margin-left:0px">exmcp23s17: an example just to u=
se the previous static library</li><li style=3D"box-sizing:border-box;margi=
n-top:0.25em;margin-left:0px">libpifacedigital: another static library whic=
h requires libmcp23s17</li><li style=3D"box-sizing:border-box;margin-top:0.=
25em;margin-left:0px">pifacedigital: the final application which requires b=
oth libmcp23s17 and libpifacedigital</li></ul></ul><p style=3D"box-sizing:b=
order-box;margin-top:0px;margin-bottom:16px;color:rgb(36,41,46);font-family=
:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans=
-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe=
 UI Symbol&quot;;font-size:14px">My layer can be downloaded here:=C2=A0<a h=
ref=3D"https://drive.google.com/file/d/0BwmDwJEEGKdzcjZMVENNM1QzdUU/view?us=
p=3Dsharing">meta-kp</a></p><p style=3D"box-sizing:border-box;margin-top:0p=
x;margin-bottom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMac=
SystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-s=
ize:14px">I&#39;ve added in IMAGE_INSTALL_append both the recipe pifacedigi=
tal and helloworldstatic.</p><p style=3D"box-sizing:border-box;margin-top:0=
px;margin-bottom:16px;color:rgb(36,41,46);font-family:-apple-system,BlinkMa=
cSystemFont,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-=
size:14px">I&#39;m able to compile the image rpi-basic-image, but after boo=
ting the image if I try to execute the application pifacedigital_cmd it pro=
mpts out the following error:<br style=3D"box-sizing:border-box">/usr/bin/p=
ifacedigital_cmd: line 1: syntax error: unexpected word (expecting &quot;)&=
quot;)</p><p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16=
px;color:rgb(36,41,46);font-family:-apple-system,BlinkMacSystemFont,&quot;S=
egoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Instead =
helloworldstatic (recipes-example) binary properly works.</p><p style=3D"bo=
x-sizing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(36,41,46);f=
ont-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Helvetica,=
Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&=
quot;Segoe UI Symbol&quot;;font-size:14px">Have you ever faced some similar=
 issue ?</p><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(36,4=
1,46);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Hel=
vetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,&quot;Segoe UI Symbol&quot;;font-size:14px;margin-bottom:0px">Thanks =
in advance for your help</p></div>

--001a113cfb40d0f881055b7114c5--
