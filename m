Return-Path: <microdevel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8D5E003FA; Fri, 18 Jul 2014 10:11:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (microdevel[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA04AE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 10:10:51 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so3170193qab.8
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 10:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YzbBU+t1z65G7JOKDbQLhxYdlnqbOwTWwtdDbU7/XNQ=;
	b=nwtUyM1oHFYYk76mRaBxtSP0JhlbrAMOIL5HlIAOH+nKwaBoZXKJGGlj7kr0TLYszP
	MVsrm15l0ptJNqbARWs6g4HHe0Fv4vYS2ukQLkgQe5CGCi+FmpbTGeGO+ZNYe9viyk/s
	6t/om9ZCb3miEhJfOofFAg3xuYGhw4YpEwncc7VWh9gqZfcx4dgjd9f/5RCRb3v29lE4
	A7jEXLMZj1QvLEKqEG1XVu1lMMhkJBzS1DFcbnwzpdC179pMSiWFYyS4Hl3C4IEDmSjY
	rR6ycI/q1C7ab7s5gyudMuYcJcufleD8XA1OQUeK6nlU4AQdlAlJ7osd5RITXGchtGhh
	C1XA==
MIME-Version: 1.0
X-Received: by 10.224.130.5 with SMTP id q5mr10380813qas.72.1405703446585;
	Fri, 18 Jul 2014 10:10:46 -0700 (PDT)
Received: by 10.96.73.106 with HTTP; Fri, 18 Jul 2014 10:10:46 -0700 (PDT)
Date: Fri, 18 Jul 2014 19:10:46 +0200
Message-ID: <CAOB9jCJdQhUd4xq69psURj55-Dfzjt1xVOcx+w4=i6EzKx9cUg@mail.gmail.com>
From: Chris Enrique <microdevel@googlemail.com>
To: yocto@yoctoproject.org
Subject: Best way to make use of kernel defconf for supported hw?
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
X-List-Received-Date: Fri, 18 Jul 2014 17:11:01 -0000
Content-Type: multipart/alternative; boundary=001a11c2c45297e7cd04fe7ad67f

--001a11c2c45297e7cd04fe7ad67f
Content-Type: text/plain; charset=UTF-8

Hello,

i need some advice:

i have created a bsp for a board which is supported by the linux kernel. so
my bsp doesn't focus on kernel patching or similar, just contains some
other board specific content.

how do i use the kernel defconf for this board which is located under
arch/architecture/.../.../board_defconfig as kernel config in my bsp?

i know there's several approaches. mine would have been to use defconfig
and create a config fragment from it but somehow my mind tells me that
there must be a better way?! just reference the board_defconfig file or sth?

any help would be appreciated,

chris

--001a11c2c45297e7cd04fe7ad67f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br>i need some advice:<br><=
br></div>i have created a bsp for a board which is supported by the linux k=
ernel. so my bsp doesn&#39;t focus on kernel patching or similar, just cont=
ains some other board specific content.<br>
<br></div>how do i use the kernel defconf for this board which is located u=
nder arch/architecture/.../.../board_defconfig as kernel config in my bsp?<=
br><br></div>i know there&#39;s several approaches. mine would have been to=
 use defconfig and create a config fragment from it but somehow my mind tel=
ls me that there must be a better way?! just reference the board_defconfig =
file or sth?<br>
<br></div>any help would be appreciated,<br><br>chris<br></div>

--001a11c2c45297e7cd04fe7ad67f--
