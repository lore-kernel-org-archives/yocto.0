Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9404E00DF0; Wed, 12 Oct 2016 23:13:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
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
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 579BCE00D57
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:13:19 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id x79so121599906lff.0
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ohQqjlpMN85ceQV4noaHZiuwaJUMTk6drVuLoTDiq+E=;
	b=nAs9KHmBh017Ij9XCRjib1hNpK7RjxWrh4MuzeVBYIg1WfAKOFb5YGbjcNf8e+iJJN
	wWDpoxC/OZV1vxFzat66cWRaKSJ3hxviPO1zX2i9MAiVutCS8ELvocr5YbkqRKJhLbef
	EcQOtXa3W9qlxDDxff070avxwPODSAIkQ/irhCszXksPNC+Zgpzzg4rOQ5nCYgjaKtLK
	3rZZ49IE8wweu3seZcRbQ7D9AxaXSqjsmqlPqofMHA9W4JWaJ+rsAMtZZkBMn8f5b5RA
	5wsf+oqazK5sEaIRF6M7i7oKbk6ftxkXmMIF/7Phd6p4w/OpG46VIGR1XIQxpwfwQqf9
	eDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ohQqjlpMN85ceQV4noaHZiuwaJUMTk6drVuLoTDiq+E=;
	b=DzJKSNt/d8Iq7f4L5vzZ7xXTDh7i9LfnQ3BegIdQAmmT2XO7iKd21ec1lvudVUg6rS
	sM+ov6L9J4bcMveJskwNSFJqFcXD30p96yB7U5Y71myYSYDSBw5+tGU7VFfB42vu0IgK
	3HKLRkXfCB5/ON/ye1nQ8/XsvFE2kGpRsLdP/zcn6iW8ET1/4OZKRyngAFzXhVOb3kHr
	01WB64Bm2HcNxocBZFp3cwVsyoyVW/eJlxAhTAqOkZmSqQc2QaBs9DRsuAMISClZvBZB
	zeCKcLGCuPwUa1gvncrzglUQscz06MEGgvn8QiMR7UIoQwdJr9g/yGgt/GMKFWN94+Lf
	JTYw==
X-Gm-Message-State: AA6/9Rk2NOEZtl8x0zqgGoLi+30JVmV7b97kahkgK4kpqFAf1R19Hjk3mXsc0jb2yVQnlvxtcj5FgMMkM0QKlA==
X-Received: by 10.28.203.202 with SMTP id b193mr824062wmg.0.1476339198191;
	Wed, 12 Oct 2016 23:13:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.104.164 with HTTP; Wed, 12 Oct 2016 23:13:17 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 13 Oct 2016 08:13:17 +0200
Message-ID: <CAFq4t4gDKfnjPJi_sDTa_Dyd_HcfDafrKnJKggmQpqG0orPD0w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Resizing root flash partition/filesystem on first boot
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
X-List-Received-Date: Thu, 13 Oct 2016 06:13:23 -0000
Content-Type: multipart/alternative; boundary=94eb2c13151279ecae053eb90190

--94eb2c13151279ecae053eb90190
Content-Type: text/plain; charset=UTF-8

Hello Jason,

I'm interested in your code + BitBake recipe to be able to *automatically
resize on first boot*.

Thank you.
Peter

--94eb2c13151279ecae053eb90190
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Jason,<div><br></div><div>I&#39;m interested in your=
 code<span style=3D"color:rgb(0,0,0);white-space:pre-wrap"> + BitBake recip=
e to be able to </span><i style=3D"color:rgb(0,0,0);white-space:pre-wrap">a=
utomatically resize on first boot</i><span style=3D"color:rgb(0,0,0);white-=
space:pre-wrap">.</span></div><div><span style=3D"color:rgb(0,0,0);white-sp=
ace:pre-wrap"><br></span></div><div><span style=3D"color:rgb(0,0,0);white-s=
pace:pre-wrap">Thank you.</span></div><div><span style=3D"color:rgb(0,0,0);=
white-space:pre-wrap">Peter</span></div></div>

--94eb2c13151279ecae053eb90190--
