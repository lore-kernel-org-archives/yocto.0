Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EEC1E00825; Wed, 18 Feb 2015 08:33:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2476CE00815
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:33:47 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id j7so1563097qaq.4
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 08:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=PfIbBf5JlQRDKAKp0Oi6cqMLT3mg9+tJOR5i2bOfNrQ=;
	b=sj3b6jTd6NA5H8ZDFpdeDl1TbQ0E/Tj0J+5vEiY+GSEU4SlJnxR6QoqQ2V58TpFzvx
	MVl5TluDUiiOLC4L+xL6Ga/TX/6ejUi1ehMJckrc/ciIGuVnas2ppZRKbXZ7QXCSzAbM
	1NQj4CYra390IDS5WrUlz5k5LCmh//b+udbJt/0rx6ArtQb+4NihJ7UsJiJjnQjNlxJ5
	LtM+HXHu9k/mSbbokRvwo7NG2Fb3bMErVPKCZ03DB1UYPYx3HVHBUVXR+BOoJhK2xgok
	7Gl5PQ5sW3io2NYBIlfw+dH78afcIL8VZCUTstHbLLrRsa80GY6Rebjy0qqqFdK1Kn6L
	olxg==
X-Received: by 10.140.32.166 with SMTP id h35mr1718843qgh.31.1424277227109;
	Wed, 18 Feb 2015 08:33:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.91.165 with HTTP; Wed, 18 Feb 2015 08:33:26 -0800 (PST)
In-Reply-To: <2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
	<2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 17:33:26 +0100
Message-ID: <CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 16:33:48 -0000
Content-Type: multipart/alternative; boundary=001a11397ec02f0376050f5f623c

--001a11397ec02f0376050f5f623c
Content-Type: text/plain; charset=UTF-8

Hi Paul, thank you.

I tryed editing /meta-wolfson/conf/layer.conf or /build/conf/layer.conf,
adding :
PREFERED_VERSION_linux-raspberrypi = "3.10.%"

but neither worked (still using 3.12)

I endded up editing meta-raspberrypi's machine configuration and it works
fine.

It's good, but that means I will need to apply this change to every
building machine I will use, or fork the meta-raspberrypi repo, witch is
another story.
I was hoping to keep everything inside my wolfson layer. too bad.

Thanks again.

V.

--001a11397ec02f0376050f5f623c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div class=3D"gmail_extra">Hi Paul, thank y=
ou. </div><br></div>I tryed editing /meta-wolfson/conf/layer.conf or /build=
/conf/layer.conf, adding :<br>PREFERED_VERSION_linux-raspberrypi =3D &quot;=
3.10.%&quot;<br><br>but neither worked (still using 3.12)<br><br></div>I en=
dded up editing meta-raspberrypi&#39;s machine configuration and it works f=
ine.<br><br></div><div>It&#39;s good, but that means I will need to apply t=
his change to every building machine I will use, or fork the meta-raspberry=
pi repo, witch is another story.<br></div><div>I was hoping to keep everyth=
ing inside my wolfson layer. too bad.<br><br></div><div>Thanks again.<br></=
div><div><br></div><div>V.<br></div><div><br></div></div>

--001a11397ec02f0376050f5f623c--
