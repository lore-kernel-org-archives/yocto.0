Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A598E00994; Thu, 18 Oct 2018 14:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C3F9E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:09:59 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id l14-v6so20599491edq.0
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hca2IFBI0K1eMlGlotQwwFdYm92tdhmXHC1i9LzE4Y8=;
	b=P5H11p+Ca7qWZplVhKaWrkWc1gn8wBl2ZiBG3DdxtLvHT/DMGDrDizw2A5lB2retzB
	UIs4B3yUknasQGGlxQuMl1KUBU9nEzMVN28A253LwRozVzre69Ta0IH2tUdpre9nFr0E
	rpfxHsoJ9qCkDMhHYZk8V3yiIF0I3fRpG4J8t6j9fgCxSZnATYbHXhqiSEUN7rLIHKuz
	zrMgf3JXJ0Pu5RbF4JoJkfSHOJwFXadAgrzQVyiUwauBiH4Zzo/JLtV4W9Ru0mvLyYO4
	yfjjcn6SCl7JDdDWrxQtL8fm941ov8TU1jUrkI+4JJVU+qkp0zAhMuwVfO9YA5I9CuQ9
	qiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hca2IFBI0K1eMlGlotQwwFdYm92tdhmXHC1i9LzE4Y8=;
	b=I/qWR2WPY7pnw/1B7U7V/aUB1g9MJdQazvo/ExhDmg6QvFG02V6GzeKUeD4fyRVhxu
	6WB5r9K1pBV6fp6PCCXwuea3PI7RXUm/e02IhTzPlRIp+93BHDZQibFUet5dFhuC/jR9
	lUXAToGnk346aYJosrG5uilknJWNqLefp4tL3i8T0UQDaWgdylOiZhX1KJFwBos37BPe
	EQuPEIrb5KMI/ATfRPmWYQPuI0nB/lDLw6e0yBJkXay4yyBwsdOV+b6W3h1WuHyjQ3K7
	olKarZ6dQkhpPeh7ZkFWjXvyrtw2No8k75YtwHhYHMXWhPBAIoMcH6wazsY8acdvehba
	h6WQ==
X-Gm-Message-State: ABuFfoguuu3w0Bln1M1SDiDeFTj6Xv7duGsZ//6LhebowfFamC3bsWyW
	0BcXj1Qcqtwv2npsjeJMXLujsaG4RQKq5DsSKGCkUu4=
X-Google-Smtp-Source: ACcGV63nWoMZmufqsnRxJS44xwOXo6SpYk2zgjB7qlLyq5YXqPuoqpgRahcVtcOAe6w2x04vIstFxPxT4d2yL7uo6g0=
X-Received: by 2002:a17:906:64c:: with SMTP id
	t12-v6mr29853939ejb.113.1539896998736; 
	Thu, 18 Oct 2018 14:09:58 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Thu, 18 Oct 2018 23:09:47 +0200
Message-ID: <CAK4Yt2n4wcXKfFz4a5_3kD68B7OCsY1qOf5N5vMAsPa_P4CB0Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: modify a recipe file - proftpd
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
X-List-Received-Date: Thu, 18 Oct 2018 21:10:01 -0000
Content-Type: multipart/alternative; boundary="00000000000099b5c1057887358d"

--00000000000099b5c1057887358d
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm very new to the Yocto Project and I got a Barix module that is to be
developped with Yocto.
I managed to insert the desired programs into the linux image (nano, rsync,
mc, proftpd, vlc) by modifying a recipe file but now I'd like to make some
changes. I thought I would start with modifying the proftpd.conf file.

As I read the manuals it is clear to me that the best way to do this to
make .append files.

I created my own proftpd.conf file, modified it a bit, example I only
renamed the default server name. After that I modified the bb recipe file's
sources section this way:

SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${BPN}-${PV}.tar.gz \
file://proftpd.conf \
file://basic.conf.patch \
file://proftpd-basic.init \
file://default \
file://close-RequireValidShell-check.patch \
file://contrib.patch \
file://build_fixup.patch \
file://proftpd.service \
"
The red one is a new file among the other patch files however my slight
changes will not bitbake. The proftpd is going to be in the image, but with
a its default proftpd.conf file. It looks like my config file never gets
inserted in the target.

Could you please help me out how should I start with this proftpd
customisation?

Thanks,

Zoli

--00000000000099b5c1057887358d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-m_-1417666698072379304gmail-post_message_=
5915929" style=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helvetica,sans=
-serif;font-size:13.3333px">Hello,<br><br>I&#39;m very new to the Yocto Pro=
ject and I got a Barix module that is to be developped with Yocto.=C2=A0</d=
iv><div id=3D"gmail-m_-1417666698072379304gmail-post_message_5915929" style=
=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helvetica,sans-serif;font-si=
ze:13.3333px">I managed to insert the desired programs into the linux image=
 (nano, rsync, mc, proftpd, vlc) by modifying a recipe file but now I&#39;d=
 like to make some changes. I thought I would start with modifying the prof=
tpd.conf file.=C2=A0</div><div id=3D"gmail-m_-1417666698072379304gmail-post=
_message_5915929" style=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helve=
tica,sans-serif;font-size:13.3333px"><br></div><div id=3D"gmail-m_-14176666=
98072379304gmail-post_message_5915929" style=3D"color:rgb(0,0,0);font-famil=
y:Verdana,Arial,Helvetica,sans-serif;font-size:13.3333px">As I read the man=
uals it is clear to me that the best way to do this to make .append files.<=
br><br></div><div id=3D"gmail-m_-1417666698072379304gmail-post_message_5915=
929" style=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helvetica,sans-ser=
if;font-size:13.3333px">I created my own proftpd.conf file, modified it a b=
it, example I only renamed the default server name.=C2=A0After that I modif=
ied the bb recipe file&#39;s sources section this way:<br><br>SRC_URI =3D &=
quot;<a href=3D"ftp://ftp.proftpd.org/distrib/source/$%7BBPN%7D-$%7BPV%7D.t=
ar.gz" target=3D"_blank">ftp://ftp.proftpd.org/distrib/source/${BPN}-${PV}.=
tar.gz</a>=C2=A0\<br><font color=3D"Red">file://proftpd.conf \</font><br>fi=
le://basic.conf.patch \<br>file://proftpd-basic.init \<br>file://default \<=
br>file://close-RequireValidShell-check.patch \<br>file://contrib.patch \<b=
r>file://build_fixup.patch \<br>file://proftpd.service \<br>&quot;<br>The r=
ed one is a new file among the other patch files however my slight changes =
will not bitbake. The proftpd is going to be in the image, but with a its d=
efault proftpd.conf file. It looks like my config file never gets inserted =
in the target.<br><br>Could you please help me out how should I start with =
this proftpd customisation?</div><div id=3D"gmail-m_-1417666698072379304gma=
il-post_message_5915929" style=3D"color:rgb(0,0,0);font-family:Verdana,Aria=
l,Helvetica,sans-serif;font-size:13.3333px"><br></div><div id=3D"gmail-m_-1=
417666698072379304gmail-post_message_5915929" style=3D"color:rgb(0,0,0);fon=
t-family:Verdana,Arial,Helvetica,sans-serif;font-size:13.3333px">Thanks,</d=
iv><div id=3D"gmail-m_-1417666698072379304gmail-post_message_5915929" style=
=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helvetica,sans-serif;font-si=
ze:13.3333px"><br></div><div id=3D"gmail-m_-1417666698072379304gmail-post_m=
essage_5915929" style=3D"color:rgb(0,0,0);font-family:Verdana,Arial,Helveti=
ca,sans-serif;font-size:13.3333px">Zoli</div></div>

--00000000000099b5c1057887358d--
