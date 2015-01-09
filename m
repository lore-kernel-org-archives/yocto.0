Return-Path: <dlohar2009@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC02E0086E; Fri,  9 Jan 2015 04:36:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dlohar2009[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF5ABE004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 04:36:11 -0800 (PST)
Received: by mail-pa0-f65.google.com with SMTP id et14so10284553pad.0
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 04:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KtwpI8JZpD9MCTqh7e3yz7nV5U513KorHu21uDZrys0=;
	b=iueplQffIXKNao0teBZQJ7HvjUqsyotHe84H5qysFKbpiRw29gbgnfYIue2xGTw2Ir
	hhVw2JVERwAANPu8P/OUkK4KLlcGjQ/XpYL84H9L18PqG6nAk1EEgHMjzHQYSCBkJ4Mo
	z/N1ht58yxI5JJ9usFqtT0dkARXrKVPG8eqG5/uMsv6JRBETDc/dCBe6AyEzAwy2Vr3V
	ql1VCLc9R4wQT8/FhbIqoDHlA46SjaHtkhXz0Ea4LbgOdMTRXZnCBFGpPDRe/fVhcE4H
	0G5wuVmHyzZi3fuN6uMBBKW8iico7uE8xJpFpom6GWjVwigK7qd9d5mXTd8eqWizTB1m
	TXRw==
MIME-Version: 1.0
X-Received: by 10.66.55.4 with SMTP id n4mr23123092pap.79.1420806970872; Fri,
	09 Jan 2015 04:36:10 -0800 (PST)
Received: by 10.66.76.133 with HTTP; Fri, 9 Jan 2015 04:36:10 -0800 (PST)
Date: Fri, 9 Jan 2015 18:06:10 +0530
Message-ID: <CAAm4naD9Zp=Dx4qTJFtpXmPBtJ5och6+jzTJS-Tmb=NPG_rhPg@mail.gmail.com>
From: Debasmita Lohar <dlohar2009@gmail.com>
To: yocto@yoctoproject.org
Subject: Problems faced while installing git
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
X-List-Received-Date: Fri, 09 Jan 2015 12:36:13 -0000
Content-Type: multipart/alternative; boundary=001a1136afc6cb193b050c3766bf

--001a1136afc6cb193b050c3766bf
Content-Type: text/plain; charset=UTF-8

Hello,
My yocto version is: 3.10.11-yocto-standard. I was trying to install git
1.8.1.2. While making git it is showing the following error:
Writing MYMETA.yml
    GEN git-add--interactive
make[2]: *** No rule to make target `/usr/lib/perl/5.14.3/CORE/config.h',
needed by `perl.mak'.  Stop.
make[1]: *** [instlibdir] Error 2
make: *** [git-add--interactive] Error 2
I am unable to fix this. Any help regarding this will be highly appreciated.
Thank you.
Debasmita Lohar
MS Student
Computer Science and Engineering
IIT Kharagpur

--001a1136afc6cb193b050c3766bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div><div>My yocto version is:=20
3.10.11-yocto-standard. I was trying to install git 1.8.1.2. While=20
making git it is showing the following error:<br>Writing MYMETA.yml<br>=C2=
=A0=C2=A0=C2=A0 GEN git-add--interactive<br>make[2]: *** No rule to make ta=
rget `/usr/lib/perl/5.14.3/CORE/config.h&#39;, needed by `perl.mak&#39;.=C2=
=A0 Stop.<br>make[1]: *** [instlibdir] Error 2<br>make: *** [git-add--inter=
active] Error 2<br></div></div><div>I am unable to fix this. Any help regar=
ding this will be highly appreciated.<br></div><div>Thank you.<span class=
=3D""><font color=3D"#888888"><br clear=3D"all"></font></span></div><div><d=
iv class=3D"gmail_signature"><div dir=3D"ltr"><div><div><div>Debasmita Loha=
r<br></div>MS Student<br></div>Computer Science and Engineering<br></div>II=
T Kharagpur<br><div><div><div><div><br></div></div></div></div></div></div>=
</div>
</div>

--001a1136afc6cb193b050c3766bf--
