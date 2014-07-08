Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2235DE00559; Tue,  8 Jul 2014 15:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
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
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F59E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 15:07:51 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id cc10so1733679wib.12
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 15:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cJVAhiHX+UIcnYaihmTe84Xw3+SXu6erdqRnZogLAag=;
	b=yW3WRdzDUD5Fw3nLnQ7v+2mPYBpXViRo7LI4pyIISaf1oyDY8sA11tABeSm94Hxn1o
	t6iZRyrdcjkEvelcJxn6m35KZvJZ0b6EkN14IxNLeFowGJZYXYnRWmQ2oCZGNAY9TKdl
	MxYQrdCb7f/Gl0Pu4p0TvCtVxckQge7EsOPQnMG4gcKMOF1Wtka2O7waLuSXIJr2dwLC
	eFfvY29i/IjHl9nlmY+BJo9+2M0BLiJPt6huPje77ogou7Fbb9tVLa283hmC9/W0it41
	BTRXU0VKkjXYps9m6SdRw7aiSt1HTtDi8JiqFTEw/Ml/h1JUh5+qSlEcbZ7kF583F+eS
	LCTg==
MIME-Version: 1.0
X-Received: by 10.180.76.134 with SMTP id k6mr6755221wiw.49.1404857270954;
	Tue, 08 Jul 2014 15:07:50 -0700 (PDT)
Received: by 10.194.78.46 with HTTP; Tue, 8 Jul 2014 15:07:50 -0700 (PDT)
Date: Tue, 8 Jul 2014 17:07:50 -0500
Message-ID: <CAGM0ZdTnjLQXoh6aFeURUv1N_7-gga7wLgPg-JMjaB2-jgVWRQ@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: IMAGE_INSTALL
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
X-List-Received-Date: Tue, 08 Jul 2014 22:08:04 -0000
Content-Type: multipart/alternative; boundary=f46d043c074498701c04fdb5d22d

--f46d043c074498701c04fdb5d22d
Content-Type: text/plain; charset=UTF-8

Hi All,

I want to include coreutils package in my image. I have included
IMAGE_INSTALL += " \
        coreutils \
"
in my image file. But, I do not see any coreutils package in tmp folder.
Let me know if my understanding is wrong.

Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--f46d043c074498701c04fdb5d22d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,<br><br>I want to include coreutils package in=
 my image. I have included<br>IMAGE_INSTALL +=3D &quot; \<br></div>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 coreutils \<br><div>&quot;<br clear=3D=
"all"><div>in my image file. But, I do not see any coreutils package in tmp=
 folder. <br>
</div><div>Let me know if my understanding is wrong. <br></div><div>=C2=A0<=
br><div dir=3D"ltr">Thanks &amp; Regards,<div>Bharath Chandra Elluru.</div>=
<div>Contact Number:785-979-4875.</div></div>
</div></div></div>

--f46d043c074498701c04fdb5d22d--
