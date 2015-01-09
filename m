Return-Path: <dlohar2009@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A956BE0086E; Fri,  9 Jan 2015 04:32:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dlohar2009[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59395E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 04:32:47 -0800 (PST)
Received: by mail-pa0-f65.google.com with SMTP id et14so10269337pad.0
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 04:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bibQLwc7+tvil3icuIkCNDi/8L14+FUDMX2aBTb4QW0=;
	b=ouh8EMRCEDsCJAaqW3HjWeslReUW91bIlsTYL50RF+VPpM4/laGdVGlUY5xW5Sk2d5
	7fkLFzno5s5TFk1HB9ET/a5y6wuJHt8ASlzRxgNHg6nWRfN4Ioa2bxGJYrpYH1pIHMCK
	JBmkxvsCkGAulfIGsqFyEyhJ6q9CXHQGkCx/eKdRKsDNTA78dckDT3kAEAHuWr3rgBMU
	fMzLvoVYL/CBlhcGg8XTdNEO13CBPUf6Z8jr151ZHiKFlQ64gXc2DoM46nDrjSZBqIZ6
	iHP1/djBYZdxRVSZjExjUM+QmPAZibeNEKBsA13TNai7kyVXaZZf24IVY58VdAMNNef/
	WQ0Q==
MIME-Version: 1.0
X-Received: by 10.70.123.166 with SMTP id mb6mr23380300pdb.95.1420806766409;
	Fri, 09 Jan 2015 04:32:46 -0800 (PST)
Received: by 10.66.76.133 with HTTP; Fri, 9 Jan 2015 04:32:46 -0800 (PST)
Date: Fri, 9 Jan 2015 18:02:46 +0530
Message-ID: <CAAm4naC8J6KWYRgNg9rkNTvts2VV-8KSZYfme1HjUqW-x=9d_A@mail.gmail.com>
From: Debasmita Lohar <dlohar2009@gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Fri, 09 Jan 2015 12:32:59 -0000
Content-Type: multipart/alternative; boundary=001a11c3147e9b3d47050c375a9a

--001a11c3147e9b3d47050c375a9a
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

--001a11c3147e9b3d47050c375a9a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div><div>My yocto version is: 3.10.1=
1-yocto-standard. I was trying to install git 1.8.1.2. While making git it =
is showing the following error:<br>Writing MYMETA.yml<br>=C2=A0=C2=A0=C2=A0=
 GEN git-add--interactive<br>make[2]: *** No rule to make target `/usr/lib/=
perl/5.14.3/CORE/config.h&#39;, needed by `perl.mak&#39;.=C2=A0 Stop.<br>ma=
ke[1]: *** [instlibdir] Error 2<br>make: *** [git-add--interactive] Error 2=
<br></div></div><div>I am unable to fix this. Any help regarding this will =
be highly appreciated.<br></div><div>Thank you.<br clear=3D"all"></div><div=
><div><div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div><=
div>Debasmita Lohar<br></div><br></div></div></div></div></div>
</div></div></div></div>

--001a11c3147e9b3d47050c375a9a--
