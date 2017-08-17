Return-Path: <ma@telensa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F4F8E00D24; Thu, 17 Aug 2017 01:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,URIBL_SBL autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: gappssmtp.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2161E00C45
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 01:30:50 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id v189so38282142pgd.2
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 01:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telensa-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v0Z0/hn0lcrh4LZJnW3bj8Bz7cRDtzt+HEms3Zbcv3Q=;
	b=KsnAlUyRdI4ZDmTtidt93iMpp6no73NBGb8Zqnf80Qkp9tAecroYyhlvY97tfy+oEI
	5HyO4GDxUOrWxJxInyW9fcwhCxIBW8paEUB3MqpRPrfer+M2Q0V3XvLQYi5X28GM2IVd
	rnzzH7cdk04U7S5ApjCT+wVKEV0aPec/JV8tF6fgwxTjoaAlEmLdLDxVlDH0O1GHqGaG
	6grN6nkp9lXz8PNmrpqyfthqn5LCEwGvw2CTCAgzYJCbgXDgJahrAnjY2M2ue6hqjS+K
	eSBbu780gkXR62BXd47rhh3BXDO/w5u6EKFnP8UIECpqSA44mU1KciyD54/xQxjLhQ+k
	LtuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v0Z0/hn0lcrh4LZJnW3bj8Bz7cRDtzt+HEms3Zbcv3Q=;
	b=dAb5jXHeqlyvagqoLUY231WyE0KzB2gHr4BX0Czya5F2lgkC0yHQ7KYi2YxlriUXcR
	WDEbVCY9rqArCaDBkpkhgN40dqwg2oiDuiQmhSSqg3QKh8JY3oNtF8X5WO7k+Lpk+21T
	YTDKB0bMPS/8oDWoYcVvPoTX29zqi0E+3q4BgBc58FvnzMIxHXMVhbWXPXv0MbqhjBGS
	JlQlwU0Hys8aIRMp5KrUUNGMh5woXI2+xlEe+TKkL6PEekjriEI1g6foj/8GK9bi51kU
	rP9vaCwyF1lVywE5SWAJckPhaZ0+DlIXh05tY3jxLZ0ysHRo47nMjvf0BrkwhjUpbfM7
	e5Kw==
X-Gm-Message-State: AHYfb5iGA6ijotDML+6L5nps9IDbgYm0FeKr2Mxb8dACbp3hx+/yy9hc
	lsW6e/2EpxoV9s7/6Ikx/3QAu5BprFBP6VjOdA==
X-Received: by 10.84.231.200 with SMTP id g8mr4869965pln.21.1502958649913;
	Thu, 17 Aug 2017 01:30:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.185.66 with HTTP; Thu, 17 Aug 2017 01:30:29 -0700 (PDT)
In-Reply-To: <CAGsrAHepRQAMeLW4vxMPVMDg5P2C9=YgUQ0ztUdU44LW7dfrzQ@mail.gmail.com>
References: <CAGsrAHepRQAMeLW4vxMPVMDg5P2C9=YgUQ0ztUdU44LW7dfrzQ@mail.gmail.com>
From: Miguel Aveiro <ma@telensa.com>
Date: Thu, 17 Aug 2017 09:30:29 +0100
Message-ID: <CAPZBU9bLMhAj45bDkkJMh38-05wh7f7ivwhwhN=qgPRUdff_9A@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Apt-get is not working...
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
X-List-Received-Date: Thu, 17 Aug 2017 08:30:51 -0000
Content-Type: multipart/alternative; boundary="f403045ff68a70c9450556eed42f"

--f403045ff68a70c9450556eed42f
Content-Type: text/plain; charset="UTF-8"

Well, I think you're missing the point of using Yocto. The idea is to
create your own distribution and manage it yourself...so don't expect a
mainstream Yocto apt repository for your target machine (RPi).

You can either include those missing libraries on your build and reflash
your RPi or set up a full apt repository yourself including the web server
and other stuff. Keep in mind that for older Yocto versions, the project
used to support smart package manager which has now moved to dnf because of
the lack of upstream maintenance of the first one. You can find information
about both on official Yocto documentation ;)

http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#migration-2.3-package-management-changes

On 17 August 2017 at 05:38, mohammed aqdam <mohammedaqdam@gmail.com> wrote:

> hello everyone,
> i was trying to build image for rpi 3 using yocto...
> after few attempts i have build the image...but it not had apt-get so
> i added IMAGE_INSTALL_append +=" apt"
> above line local.conf.
> now i apt-get is working but whenever i try to add any package it will
> give package not found error,
> so after digging a bit i found i need source.list and status file in
> /var/dpkg/ which were absent.
> i'm working on picamera using python for which i need to add picamera
> library in order to import its functions so i need apt-get to install
> that,so is there any way i can use that library without apt-get?
> so how to make apt-get to  work?
> is there any repository of yocto which i can use in source.list?
>
> thanks in advance...
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045ff68a70c9450556eed42f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Wel=
l, I think you&#39;re missing the point of using Yocto. The idea is to crea=
te your own distribution and manage it yourself...so don&#39;t expect a mai=
nstream Yocto apt repository for your target machine (RPi).=C2=A0</div><div=
 class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"=
gmail_default" style=3D"font-size:small">You can either include those missi=
ng libraries on your build and reflash your RPi or set up a full apt reposi=
tory yourself including the web server and other stuff. Keep in mind that f=
or older Yocto versions, the project used to support smart package manager =
which has now moved to dnf=C2=A0because of the lack of upstream maintenance=
 of the first one. You can find information about both on official=C2=A0Yoc=
to documentation ;)</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default"><a href=3D"http://www.yoctoproj=
ect.org/docs/latest/mega-manual/mega-manual.html#migration-2.3-package-mana=
gement-changes">http://www.yoctoproject.org/docs/latest/mega-manual/mega-ma=
nual.html#migration-2.3-package-management-changes</a><br></div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 17 August 2017 at 0=
5:38, mohammed aqdam <span dir=3D"ltr">&lt;<a href=3D"mailto:mohammedaqdam@=
gmail.com" target=3D"_blank">mohammedaqdam@gmail.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">hello everyone,<br>
i was trying to build image for rpi 3 using yocto...<br>
after few attempts i have build the image...but it not had apt-get so<br>
i added IMAGE_INSTALL_append +=3D&quot; apt&quot;<br>
above line local.conf.<br>
now i apt-get is working but whenever i try to add any package it will<br>
give package not found error,<br>
so after digging a bit i found i need source.list and status file in<br>
/var/dpkg/ which were absent.<br>
i&#39;m working on picamera using python for which i need to add picamera<b=
r>
library in order to import its functions so i need apt-get to install<br>
that,so is there any way i can use that library without apt-get?<br>
so how to make apt-get to=C2=A0 work?<br>
is there any repository of yocto which i can use in source.list?<br>
<br>
thanks in advance...<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f403045ff68a70c9450556eed42f--
