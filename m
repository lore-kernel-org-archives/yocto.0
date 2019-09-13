Return-Path: <ragaprasanth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BFEFE00D94; Thu, 12 Sep 2019 22:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ragaprasanth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D21FE00B65
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 22:55:44 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id m11so60536281ioo.0
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 22:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=eHfHHoZBMqoI2g0RgjAqwpVNevc7YZXe2m3ZVX6sneA=;
	b=Re59lHv4AQMOhZw7dqORKvvUOd7YwT6GJiT3phg0cTSEuFQr9XglaKItHBCvfaPY7q
	nP+UU6O9MihiLMa8fIn/38DDOz5ns7Lmvnmew6rzldqiQFPGgqm/sW0R9LlDW/4vUKAX
	7rYuC1JCr47oUb1KwxaWsEnmBQEzTXdjvm4/wgxm/Hu2h73sGqYKmOZyOa9TEMPnLGP6
	V1o2rm+/i9qLBjovRm+qBq6Wv4b+oDurt1KyONodXIhiuxOuc7L37uvY31rkcJuYya+z
	9dCEgLJ0CaoS+bh1UMYByS32qy1Kz1XnguzwXbXlPVdsdWZsiuad3mXtzyhXMdvhc/jA
	E8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=eHfHHoZBMqoI2g0RgjAqwpVNevc7YZXe2m3ZVX6sneA=;
	b=e2RwBYl5aSupLeTmmFoRfKvauOirPaWU3fPpNfb5b/Pug9kNGVVp1jokQs6UtnwFKC
	C7kR0mR7ko5k5tIeIbng9tqyjJmhqqiQL2cfWjcoR1+Exf3rwiYFJaozttqQmw1nPuw/
	+VHrzvmmbm26uuncu1RyaK7LbwVYUT7CSAGjNuf5a3mnk0Ter+fa6qJoTB6wSSKzgU3b
	DzJfpK3S7xb/J8uqUdZeTO8xqYDaXp9jpNXbyzB+oREKQBZ4kmEApd3xZRNxikvDBiAy
	JW8g809UGc0b4rQERUuNSOFesKnuEey6D4QmdQPYE7W/XZYp8AhF8tPGy/E3QBzaRC7B
	uAkQ==
X-Gm-Message-State: APjAAAWhswo+KVPf/6BH70pFCbYyHwjX4TgBWEGn9OONhip6otqaa2TR
	tILWcHDeAM1kCiT8ogvqLaW7Yjzi3xe94B20KS1VaxaD
X-Google-Smtp-Source: APXvYqwr5Dw5MDi30osdomydh+rYRE8YJWytLDSAwKFuqcEj1SSAN3SEh3+9WLP6gibJgpj/wNxWATXa4Yax2b00XhE=
X-Received: by 2002:a5d:8259:: with SMTP id n25mr8458818ioo.284.1568354143418; 
	Thu, 12 Sep 2019 22:55:43 -0700 (PDT)
MIME-Version: 1.0
From: PRASANTH R <ragaprasanth@gmail.com>
Date: Fri, 13 Sep 2019 11:25:07 +0530
Message-ID: <CAG7eodG0LkuUENpdT=Fq__3OUV63jr8+q1B9EEvhTSjBvfqf4w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 13 Sep 2019 08:06:04 -0700
Subject: Patch a package with condition
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
X-List-Received-Date: Fri, 13 Sep 2019 05:55:45 -0000
Content-Type: multipart/alternative; boundary="00000000000099c01f059268e70e"

--00000000000099c01f059268e70e
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to patch my custom recipe, let say "Package-A.bb" in which I need to
add a patch to the test recipe if the yocto build has a specific package
like let's say if "Package-B" is available patch should be applied for
Package-A.bb
I am trying with below step in Package-A.bb
SRC_URI_append_Package-B = " file://0001-add-new-line.patch"

But it doesn't work, I could see this SRC_URI_append_* works only for some
specific tokens like board name, Architecture, library or native-class as
such

Have u come across the scenario to make a dependency in patching with
reference to another package? which way I can use this?

Thanks,

--00000000000099c01f059268e70e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><div id=3D"gmail-:j0.ma" class=3D"g=
mail-Mu gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;lin=
e-height:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;=
word-break:break-word;color:rgb(38,50,56)"><span id=3D"gmail-:j0.co" class=
=3D"gmail-tL8wMe gmail-EMoHub" dir=3D"ltr">I need to patch my custom recipe=
, let say &quot;Package-A.bb&quot; in which I need to add a patch to the te=
st recipe if the yocto build has a specific package like let&#39;s say if &=
quot;Package-B&quot; is available patch should be applied for=C2=A0</span>P=
ackage-A.bb</div><div id=3D"gmail-:j1.ma" class=3D"gmail-Mu gmail-SP" style=
=3D"font-family:Roboto,sans-serif;font-size:13px;line-height:16px;margin-bo=
ttom:6px;margin-left:9px;margin-right:9px;opacity:1;word-break:break-word;c=
olor:rgb(38,50,56)"><div id=3D"gmail-:j1.at" class=3D"gmail-xH" style=3D"te=
xt-align:center"></div><span id=3D"gmail-:j1.co" class=3D"gmail-tL8wMe gmai=
l-EMoHub" dir=3D"ltr">I am trying with below step in=C2=A0</span>Package-A.=
bb</div><div id=3D"gmail-:j1.ma" class=3D"gmail-Mu gmail-SP" style=3D"font-=
family:Roboto,sans-serif;font-size:13px;line-height:16px;margin-bottom:6px;=
margin-left:9px;margin-right:9px;opacity:1;word-break:break-word;color:rgb(=
38,50,56)"><span class=3D"gmail-tL8wMe gmail-EMoHub" dir=3D"ltr">SRC_URI_ap=
pend_Package-B=C2=A0=3D &quot; file://0001-add-new-line.patch&quot;</span><=
/div><div id=3D"gmail-:js.ma" class=3D"gmail-Mu gmail-SP" style=3D"font-fam=
ily:Roboto,sans-serif;font-size:13px;line-height:16px;margin-bottom:6px;mar=
gin-left:9px;margin-right:9px;opacity:1;word-break:break-word;color:rgb(38,=
50,56)"><span class=3D"gmail-tL8wMe gmail-EMoHub" dir=3D"ltr"><br></span></=
div><div id=3D"gmail-:js.ma" class=3D"gmail-Mu gmail-SP" style=3D"font-fami=
ly:Roboto,sans-serif;font-size:13px;line-height:16px;margin-bottom:6px;marg=
in-left:9px;margin-right:9px;opacity:1;word-break:break-word;color:rgb(38,5=
0,56)"><div id=3D"gmail-:js.at" class=3D"gmail-xH" style=3D"text-align:cent=
er"></div><span id=3D"gmail-:js.co" class=3D"gmail-tL8wMe gmail-EMoHub" dir=
=3D"ltr">But it doesn&#39;t work, I could see this=C2=A0SRC_URI_append_* wo=
rks only for some specific tokens like board name, Architecture, library or=
 native-class as such</span></div><div id=3D"gmail-:jt.ma" class=3D"gmail-M=
u gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;line-heig=
ht:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;word-b=
reak:break-word;color:rgb(38,50,56)"><span class=3D"gmail-tL8wMe gmail-EMoH=
ub" dir=3D"ltr"><br></span></div><div id=3D"gmail-:jt.ma" class=3D"gmail-Mu=
 gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;line-heigh=
t:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;word-br=
eak:break-word;color:rgb(38,50,56)"><div id=3D"gmail-:jt.at" class=3D"gmail=
-xH" style=3D"text-align:center"></div><span id=3D"gmail-:jt.co" class=3D"g=
mail-tL8wMe gmail-EMoHub" dir=3D"ltr">Have u come across the scenario to ma=
ke a dependency in patching with reference to another package? which way I =
can use this?</span></div></div><div id=3D"gmail-:jt.ma" class=3D"gmail-Mu =
gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;line-height=
:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;word-bre=
ak:break-word;color:rgb(38,50,56)"><span class=3D"gmail-tL8wMe gmail-EMoHub=
" dir=3D"ltr"><br></span></div><div id=3D"gmail-:jt.ma" class=3D"gmail-Mu g=
mail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;line-height:=
16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;word-brea=
k:break-word;color:rgb(38,50,56)"><span class=3D"gmail-tL8wMe gmail-EMoHub"=
 dir=3D"ltr">Thanks,</span></div><div id=3D"gmail-:jt.ma" class=3D"gmail-Mu=
 gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13px;line-heigh=
t:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opacity:1;word-br=
eak:break-word;color:rgb(38,50,56)"><br></div><div id=3D"gmail-:jt.ma" clas=
s=3D"gmail-Mu gmail-SP" style=3D"font-family:Roboto,sans-serif;font-size:13=
px;line-height:16px;margin-bottom:6px;margin-left:9px;margin-right:9px;opac=
ity:1;word-break:break-word;color:rgb(38,50,56)"><br></div></div>

--00000000000099c01f059268e70e--
