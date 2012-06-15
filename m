Return-Path: <fanbsb90@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E385BE013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 19:29:45 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3181803lbo.35
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 19:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cA9tm+t82sFZEFDTqYx4vN4AkEFPXa1zmk97M+09sRc=;
	b=qwc0zMLsuvpoiZIUqLd6IOOGnBdHqnD9st9OlN7UZAkp4t8DrW5Dhv/qWVn7Z8u/fV
	9sbaHEMHh2QJtJ7Y6vzbDYXu/8RI1WPOWqf3WLgVCDFP0hegY2ws9zaz+uZogxVFhSUM
	T/zcsPQDwv3qbEE3Ytupz4QrvWdjrKmNOvAE/zu2sAzTbzke8qp4gCZ+td+Ghlzek5ib
	cHHFk3H+VBPFQLcY0VWeRm7CQAfYfOqCuZywMoxKXbNLpSf/P5Jz/1prYHPQ5YtmUd6y
	RmK0QGvlH4FdSOD38Pw0qZc+3Zr6+B+bAZiuLxIjRHGAmfHEmEj1XHPa3wmJWbtfb2MO
	GDqQ==
MIME-Version: 1.0
Received: by 10.152.105.235 with SMTP id gp11mr3876198lab.44.1339727384639;
	Thu, 14 Jun 2012 19:29:44 -0700 (PDT)
Received: by 10.112.110.67 with HTTP; Thu, 14 Jun 2012 19:29:44 -0700 (PDT)
Date: Fri, 15 Jun 2012 09:29:44 +0700
Message-ID: <CAPMNMW=BoiUChTbc3+BKsiV0Bf+EOQwGGan0E7n9-06UBqAn8Q@mail.gmail.com>
From: Kha <fanbsb90@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to build an Qt demo application in Yocto (qt4-demo-image)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jun 2012 02:29:46 -0000
Content-Type: multipart/alternative; boundary=f46d0407143bdb782804c2799685

--f46d0407143bdb782804c2799685
Content-Type: text/plain; charset=ISO-8859-1

1. cd to a /usr/bin/qtopia/demos/mainwindow  (for example)
2. (qmake -project)
3. qmake -o Makefile mainwindow.pro
3'. (uic ui files)
4. make

I do 4 steps above and build successfully a Qt demo program on PC, but in
qt4-demo-image, there are a lot of errors

Can anyone solve this problem

http://imageshack.us/photo/my-images/16/20120613234840.jpg/

-- 
Kha - 0905779933

--f46d0407143bdb782804c2799685
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

1. cd to a /usr/bin/qtopia/demos/mainwindow=A0 (for example)<br>2. (qmake -=
project)<br>3. qmake -o Makefile <a href=3D"http://mainwindow.pro">mainwind=
ow.pro</a><br>3&#39;. (uic ui files) <br>4. make <br clear=3D"all"><br>I do=
 4 steps above and build successfully a Qt demo program on PC, but in qt4-d=
emo-image, there are a lot of errors <br>
<br>Can anyone solve this problem<br><br><a href=3D"http://imageshack.us/ph=
oto/my-images/16/20120613234840.jpg/">http://imageshack.us/photo/my-images/=
16/20120613234840.jpg/</a><br><br>-- <br>Kha - 0905779933<br><br>

--f46d0407143bdb782804c2799685--
