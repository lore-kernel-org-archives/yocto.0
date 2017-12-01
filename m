Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5098BE00D26; Fri,  1 Dec 2017 06:07:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f171.google.com (mail-ot0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98BD5E00D04
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 06:07:41 -0800 (PST)
Received: by mail-ot0-f171.google.com with SMTP id i1so9088788oth.9
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 06:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B20+GJbvJ6DgvI8cBPMCBig+2+3u18nZZwBG6ifesWk=;
	b=tR0o9M5G4AgMXlRjjYnyNkwFUmDAQN9aY1IZa98Hgw2hrKvDBcXO+ZbXmq5qmXIWxQ
	WPqvOcrPKrdBxg5z3Ehla0VE3K2n7U2+zF3++sKWJVSK8nqdkOQLfaXqVUH/1ZWKqSWe
	EboQY7dgDscrYUgmRNbXgbQWcM8xr9NTqXckbz8wmH/sompdqJyh7fGy3/EPl5QI27CH
	l6RsvOvUc5hR6jP9YTGCiSnNv+QycLso7JUuOvyLEWOVBHRdtCqxQw30WKAjDV+diGQK
	lOtqSrAQqFi2A8etwvBdZ3Ck6TYSwL/2kzS+2w4EzUGQ7e64eAg9PIi2WXJx/PKd4QT/
	u60g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B20+GJbvJ6DgvI8cBPMCBig+2+3u18nZZwBG6ifesWk=;
	b=CpLrRzDFjl9+bye4CAl0tPgXFwUKPtX4mLRA/myYPCP8wzJCXiq84ZqCf/AW1i9Ms8
	LnUad5XLujVZz2bU0NajtFzoZ5ynzpxhZNjSwojmAov3LLcospcA2v65uhYcL+8eqfdO
	JLc4nSysJljEjrV/VXfVkZgWeAgimJd66KV3TF8qPXkG3CuJyPdBy6+b5Je+WymWh7i7
	2JnechH7LfChMkJu5HQpArCWK5deRj9JiwBlabq8gSFVRolM2g40K4rVHs9sofQGALrx
	dVI1S/5TowJy1LKXPtC+TztTMmHSeDtAotIvHcEUWIH2ZeVmUMMHqwu+iwYCRV//7hKX
	Wczw==
X-Gm-Message-State: AJaThX61ZyQi90XgU3fE0qx+gN8PSheTGfdnMt5sV3aUgvY4kSxrUMBC
	gn9mTN21o2TLzY46iyezpS9LQR2Fg4sowmAdf/5zvg==
X-Google-Smtp-Source: AGs4zMYDrBbyilQSbFWk0acJwb/YwU2M1oVCOuQD6A0oZ3awRSa0rK3kOowEI1azVuy0GPdSyr24vIQhE3sT3iL0nkE=
X-Received: by 10.157.17.80 with SMTP id p16mr7650705otp.305.1512137260390;
	Fri, 01 Dec 2017 06:07:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Fri, 1 Dec 2017 06:07:39 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 1 Dec 2017 09:07:39 -0500
Message-ID: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto SDK: how to deploy application with step "make install" to target?
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
X-List-Received-Date: Fri, 01 Dec 2017 14:07:42 -0000
Content-Type: multipart/alternative; boundary="001a1134eba041e689055f47e468"

--001a1134eba041e689055f47e468
Content-Type: text/plain; charset="UTF-8"

I am new to embedded linux, and some concepts confuse me:
* I have downloaded an Autotools-based application to run on my board.
* If I boot the board with original image/original SDK, I normally
build/install it with steps:
----- ./bootstrap
----- ./configure
----- make
----- make install
* Now if I boot the board with yocto image without SDK, how can I deploy
the application?
---- (surely I do "bitbake -c populate_sdk some-image", and source the
environment!)
----- ./bootstrap (Yocto SDK on host)
----- ./configure (Yocto SDK on host)
----- make         (Yocto SDK on host)
----- make install (???)

* How to do "make install"? (I want to install it on target, but how?)

Thanks!

--001a1134eba041e689055f47e468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am new to embedded linux, and some concepts confuse me:<=
div>* I have downloaded an Autotools-based application to run on my board.<=
/div><div>* If I boot the board with original image/original SDK, I normall=
y build/install it with steps:</div><div>----- ./bootstrap</div><div>----- =
./configure</div><div>----- make</div><div>----- make install</div><div>* N=
ow if I boot the board with yocto image without SDK, how can I deploy the a=
pplication?</div><div>---- (surely I do &quot;bitbake -c populate_sdk some-=
image&quot;, and source the environment!)</div><div><div>----- ./bootstrap =
(Yocto SDK on host)</div><div>----- ./configure (Yocto SDK on host)</div><d=
iv>----- make=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(Yocto SDK on host)</div><di=
v>----- make install (???)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</div><div><br></div><div>* How to do &quot;make instal=
l&quot;? (I want to install it on target, but how?)</div></div><div><br></d=
iv><div>Thanks!</div></div>

--001a1134eba041e689055f47e468--
