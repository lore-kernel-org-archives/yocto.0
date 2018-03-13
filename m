Return-Path: <bartlomiej.osinski@enigma.com.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F849E00ED2; Tue, 13 Mar 2018 05:15:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.198.145.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 583 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Mar 2018 05:15:02 PDT
Received: from mail.enigma.com.pl (mail.enigma.com.pl [91.198.145.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40CB1E00EB4
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 05:15:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.enigma.com.pl (Postfix) with ESMTP id 8EAB316B3C434D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 13:05:17 +0100 (CET)
Received: from mail.enigma.com.pl ([127.0.0.1])
	by localhost (mail.enigma.com.pl [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 4hHS8tyFoPQs for <yocto@yoctoproject.org>;
	Tue, 13 Mar 2018 13:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by mail.enigma.com.pl (Postfix) with ESMTP id 6A62616F3EB3E4
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 13:05:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail.enigma.com.pl
Received: from mail.enigma.com.pl ([127.0.0.1])
	by localhost (mail.enigma.com.pl [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id DYhfRMArirjJ for <yocto@yoctoproject.org>;
	Tue, 13 Mar 2018 13:05:15 +0100 (CET)
Received: from mail.enigma.com.pl (localhost [127.0.0.1])
	by mail.enigma.com.pl (Postfix) with ESMTP id 362AD16F3EB3C7
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 13:05:15 +0100 (CET)
Date: Tue, 13 Mar 2018 13:05:14 +0100 (CET)
From: =?utf-8?Q?Bart=C5=82omiej_Osi=C5=84ski?=
	<bartlomiej.osinski@enigma.com.pl>
To: yocto@yoctoproject.org
Message-ID: <699103612.1933671.1520942714885.JavaMail.zimbra@enigma.com.pl>
MIME-Version: 1.0
X-Originating-IP: [10.13.11.10]
X-Mailer: Zimbra 8.6.0_GA_1200 (ZimbraWebClient - FF58 (Linux)/8.6.0_GA_1200)
Thread-Topic: Multiple distros with one bitbake
Thread-Index: sePUqCa0//m72srOMmcGroVFnLawdg==
Subject: Multiple distros with one bitbake
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
X-List-Received-Date: Tue, 13 Mar 2018 12:15:04 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1933670_1148439263.1520942714885"

------=_Part_1933670_1148439263.1520942714885
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, 

With one bitbake command I'm making 2 images: 


    1. image-my-initramfs, combined with kernel. I want it to make as small as possible. 
    2. core-image-minimal, loaded separately 

The problem I have with no. 1 is that some features (most notably cryptsetup) force relatively big libraries to be included into image. Yocto doesn't seem to have option to force static compilation of those features (or am I wrong?), so I have to rely on using smaller glibc. This involves using different distro than poky, but on the other hand I'd like my image no. 2 to be left untouched (still using poky). Is there a way to achieve this? 

Bartlomiej 

------=_Part_1933670_1148439263.1520942714885
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Hi,<br data-mce-bogus=3D"1"></div><div><br =
data-mce-bogus=3D"1"></div><div>With one bitbake command I'm making 2 image=
s:<br data-mce-bogus=3D"1"></div><ol><li>image-my-initramfs, combined with =
kernel. I want it to make as small as possible.<br data-mce-bogus=3D"1"></l=
i><li>core-image-minimal, loaded separately<br data-mce-bogus=3D"1"></li></=
ol><div>The problem I have with no. 1 is that some features (most notably c=
ryptsetup) force relatively big libraries to be included into image. Yocto =
doesn't seem to have option to force static compilation of those features (=
or am I wrong?), so I have to rely on using smaller glibc. This involves us=
ing different distro than poky, but on the other hand I'd like my image no.=
 2 to be left untouched (still using poky). Is there a way to achieve this?=
<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>Bar=
tlomiej<br data-mce-bogus=3D"1"></div></div></body></html>

------=_Part_1933670_1148439263.1520942714885--
