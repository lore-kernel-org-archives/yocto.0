Return-Path: <mikael.pahmp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CE43E009E2; Fri, 13 Apr 2018 08:19:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikael.pahmp[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8CB5E0073D
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:19:23 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id q12so4328549ywj.0
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=G1olV22D9fVw/o1sJqdVX6RTxgoHv9xyTqgIItIBjos=;
	b=efSJAFDja2slSB+Z9O4cXFXjfEYGw4lbU8octvHi0TxwzUeqigOHQWGVbTmtuEoq2A
	Km6xHNzoqW1SFgDHo4LGGnCT9b5+LzINYa+QUh7H+rH84us3AH06SZvhIKwn+vzIc/yP
	30JhnvY8ZSJv3dK1DGqYGN54e7Dy4Urs7OjzNbzDBAKFlk0TrAJsZb1q0ddognv+ywYl
	txdn1AeEhKMGlcHZU4QyDG71gQkWn0XTARnnKgSR7h1bbh2WCC9y6f8/r+smDIcJ5LYL
	0Q/IEMiwG4pBQKYHtpKnlWVmpQTYJ34I+bR92xojkqC8z4WrSHXxQ895TXMWwGJW+DTa
	J54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G1olV22D9fVw/o1sJqdVX6RTxgoHv9xyTqgIItIBjos=;
	b=fTGG2o4Fb4unC3xLE+kbKkhPPEgNP7rNW9zs00EvSjWbQFqxXh30ke8euUXhS3/u4L
	YBKwRfIw/geZzfSIgpaKcLFYsYaKTI01EBiXckatajWIy7fi6Yztn3nVlo66k5DBJDdm
	HP+Zz96eLRqROrpit1XH6qmr9vef9/LqMcKEL4+v2xpYGp0j2TPNs+BpF1CB6EJWYDQs
	uQbOUuotm7D+mSC29xB+xgOPaMQboWKOqPPFlzIhAQF6RK4zv863Ecxn1ko+twuktsl0
	gHsDw7rhRC7urEHksC04uqOJHOrRanSzws5Dw6jOk/2ESJOo8F9cjlANN7bKIOqDzFob
	dSSQ==
X-Gm-Message-State: ALQs6tCNsHX0MYJdfOwuR/Yf5ch0FdLtX83PkyQW8C9eUHTQK+i/TfbS
	cdVcQSc4QJ6JDvhCy+5d6TMX6c5JsQB+av1KbOQ=
X-Google-Smtp-Source: AIpwx486IEA/JsUxMtsU+lW4+FH0v3n8eT+cpgFHC5CVdi/kd+ZgOYCB3E7p5IG5RZqr1Og8iW60HpywRAVCoJNtGQQ=
X-Received: by 10.13.242.3 with SMTP id b3mr4983428ywf.89.1523632762714; Fri,
	13 Apr 2018 08:19:22 -0700 (PDT)
MIME-Version: 1.0
From: Mikael Pahmp <mikael.pahmp@gmail.com>
Date: Fri, 13 Apr 2018 15:19:12 +0000
Message-ID: <CAHWDVAkFVaiM8yhQMk9R1jqhD6i_9SVjTmJE6RtzWHtniPA37Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 13 Apr 2018 08:20:18 -0700
Subject: Devtool: Different binaries with and without devtool
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
X-List-Received-Date: Fri, 13 Apr 2018 15:19:24 -0000
Content-Type: multipart/alternative; boundary="94eb2c03601096ff600569bc65c5"

--94eb2c03601096ff600569bc65c5
Content-Type: text/plain; charset="UTF-8"

Hi, using poky 2.4.1.

When building our custom linux kernel recipe with a fixed git hash for
SRCREV, compared to building it after "devtool modify  --no-extract" with
the same hash checked out, we get different binaries and the later doesn't
boot. This is our normal workflow and have worked fine for our first
MACHINE but we get this problem trying to get our second MACHINE arch
working.

Trying to find out what differs, we compared signatures in both cases using
bitbake-diffsigs and there were quite a lot of variable dependencies not
showing up when using devtool, e.g. some 'TUNE_... and ARM... variables.

Do you have any idea of what is going on?

/Mikael

--94eb2c03601096ff600569bc65c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, using poky 2.4.1.<div><br></div><div>When building our=
 custom linux kernel recipe with a fixed git hash for SRCREV, compared to b=
uilding it after &quot;devtool modify=C2=A0 --no-extract&quot; with the sam=
e hash checked out, we get different binaries and the later doesn&#39;t boo=
t. This is our normal workflow and have worked fine for our first MACHINE b=
ut we get this problem trying to get our second MACHINE arch working.=C2=A0=
</div><div><br></div><div>Trying to find out what differs, we compared sign=
atures in both cases using bitbake-diffsigs and there were quite a lot of v=
ariable dependencies not showing up when using devtool, e.g. some &#39;TUNE=
_... and ARM... variables.</div><div><br></div><div>Do you have any idea of=
 what is going on?</div><div><br></div><div>/Mikael</div></div>

--94eb2c03601096ff600569bc65c5--
