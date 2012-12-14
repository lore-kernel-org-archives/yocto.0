Return-Path: <lukas.bulwahn@bmw-carit.de>
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14BCAE01404
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 05:28:11 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:20875
	helo=dc01.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128) (Exim 4.76)
	(envelope-from <Lukas.Bulwahn@bmw-carit.de>)
	id 1TjVJ7-0004Xu-2F; Fri, 14 Dec 2012 14:28:05 +0100
Received: from EXCHANGE2010.bmw-carit.intra ([fe80::f196:9f8b:c87f:e44]) by
	Exchange2010.bmw-carit.intra ([fe80::f196:9f8b:c87f:e44%14]) with mapi
	id 14.01.0218.012; Fri, 14 Dec 2012 14:28:05 +0100
X-CTCH-RefID: str=0001.0A0C020A.50CB2965.0125,ss=1,re=0.000,fgs=0
From: Lukas Bulwahn <Lukas.Bulwahn@bmw-carit.de>
To: Stefan Herbrechtsmeier <sherbrec@cit-ec.uni-bielefeld.de>
Thread-Topic: [yocto] Packaging ROS for Yocto-Linux
Thread-Index: Ac3SMKrNlfMWCiokRk63kRXF0U/yKQG2mTywADWaZYAABymnwA==
Date: Fri, 14 Dec 2012 13:28:04 +0000
Message-ID: <F672537F6568FE49AF3065326904F744206DEF@Exchange2010.bmw-carit.intra>
References: <000501cdd231$1c134db0$5439e910$@oss.bmw-carit.de>
	<F672537F6568FE49AF3065326904F744206D10@Exchange2010.bmw-carit.intra>
	<50CB062D.3010601@cit-ec.uni-bielefeld.de>
In-Reply-To: <50CB062D.3010601@cit-ec.uni-bielefeld.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.101.67]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Packaging ROS for Yocto-Linux
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
X-List-Received-Date: Fri, 14 Dec 2012 13:28:12 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

the packaging of ROS is quite tricky and we have not solved all issues yet.=
 We are in the process of preparing to publish our current achievements pub=
licly and I would be very happy if you would join our effort. I suggest we =
discuss further details off-list.


Lukas


-----Urspr=FCngliche Nachricht-----
Von: Stefan Herbrechtsmeier [mailto:sherbrec@cit-ec.uni-bielefeld.de]=20
Gesendet: Freitag, 14. Dezember 2012 11:58
An: Lukas Bulwahn
Cc: yocto@yoctoproject.org
Betreff: Re: [yocto] Packaging ROS for Yocto-Linux

Hi Lukas,

I have interest in a ROS layer for Yocto. We are already using Yocto for yo=
ur mini robot platforms but with the older player framework and our own fra=
mework. Last time I checked ROS they only support cross compiling via a nat=
ive ROS installation and hide a lot of the compiling and installation proce=
ss behind their own tools / scripts.

Kind regards,
   Stefan

Am 13.12.2012 09:32, schrieb Lukas Bulwahn:
> Hi all,
>
> To my previous question, I have not received any feedback here. If anyone=
 knows someone who might be interested in packaging ROS, please contact us.=
 We're looking for collaborators and users.
>
> Lukas
>
> -----Urspr=FCngliche Nachricht-----
> Von: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org] Im Auftrag von Lukas Bulwahn
> Gesendet: Dienstag, 4. Dezember 2012 16:08
> An: yocto@yoctoproject.org
> Betreff: [yocto] Packaging ROS for Yocto-Linux
>
> Hi all,
>
> we are interested in setting up a computing platform for our=20
> development using Yocto-Linux and the robotic operating system ROS=20
> (http://www.ros.org/). We are currently at the very beginning of this
> development: As a first step, we want to package ROS for our own needs, b=
ut we are open to contribute this to the community if there are others that=
 need this as well.
>
> Has someone in the community already packaged ROS for Yocto? Are there ot=
hers that also interested in a ROS package for Yocto?
>
> We are happy about any feedback.
>
>
> Lukas Bulwahn
> BMW Car IT GmbH
> Petuelring 116
> D-80809 Muenchen
> Germany
> Mail: lukas.bulwahn@oss.bmw-carit.de
> Web: http://www.bmw-carit.de
> -------------------------------------------------------------
> BMW Car IT GmbH
> Gesch=E4ftsf=FChrer: Harald Heinecke
> Sitz und Registergericht: M=FCnchen HRB134810
> -------------------------------------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--
Dipl.-Ing. Stefan Herbrechtsmeier

Universit=E4t Bielefeld
AG Kognitronik & Sensorik
Exzellenzcluster Cognitive Interaction Technology (CITEC) Universit=E4tsstr=
a=DFe 21-23
D-33615 Bielefeld (Germany)

office : M6-117
phone  : +49 521-106-67370
fax    : +49 521-106-12348
mailto : sherbrec@cit-ec.uni-bielefeld.de
www    : http://www.ks.cit-ec.uni-bielefeld.de/


