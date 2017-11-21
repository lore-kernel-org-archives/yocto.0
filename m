Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E591E00CBF; Tue, 21 Nov 2017 08:32:15 -0800 (PST)
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
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9AE5E00B48
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 08:32:14 -0800 (PST)
Received: by mail-ot0-f176.google.com with SMTP id b54so11016397otd.8
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 08:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jaNnrSWJNAahSzEvajP4T2OeienVI0R1nabanC1aYk0=;
	b=WbmlHfJF3txrQ9V0HuuuMhAcwkq6BFGfXbvOjodJmtP4j+B19j3TaY0N4/FAPKJ0lj
	noO/ptcfMvy0WuiSR8QQnQeBJAP2F3JXojzAmQmsRFb1hTcdMRh7pRmyEjIQ3ZQsjQoK
	JqdgSXQUOeHeLLsAqQCwJOwScZBqpC16poJ0D3LowJXUdQkGlkutlyj7XyXW+QYm4w3u
	h/sPDxRQ8COyA6Cryh87Zd0eOfTlaFjc8J7//KNnMmx6TYd6Rht+z4hjw1qLgp/i/Xiz
	AZehTjiurMnVPvw1dp19JDWssP4//M9WNcVGhj+iOYnGnDqyjXygJSqpo38x7osVH0na
	MzqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jaNnrSWJNAahSzEvajP4T2OeienVI0R1nabanC1aYk0=;
	b=TWJRXAGHxrTqONPQY7cX+/TefQgUvHB08PIXZERpLZer4QZ+uLVXqSCb0Wgc4LP4mQ
	zKipVUXpU7MLkjElNTU0aV6IkBC28dk9wsZxXWXCEvrhEQxL/NOyeARh6yhniacLgwvO
	oQuPoMbW1NeuiuOiyM4RUgwCjeuDAdeGUQL7jdjwVLFJiCAQFFj5YQ9451yWHdhx4gW7
	ljk5+TnAaD+Egtre7DIs2DKTWtxHA9wqGE7dV80gjGRTmPmU2j8MRjANLgdEKx95HZJv
	txnkmE+p5DNZH1MKb6vmSILPJ7XHgGVhvft2is0wekIqrMkn1Lq4spvcKHoWtxEUl/vV
	2fGA==
X-Gm-Message-State: AJaThX6RaJqOrCb1yXI4D2JB30UB+TRUhn1yJw1NGEeCAkQyrl5B0uSj
	JGhve6lYrYisULnXLgWtdo2Nrt7b6VXoDcTCs9c=
X-Google-Smtp-Source: AGs4zMYA0JCGxpzLPrM/GjtQNQ8Vhb3I1K6WV5xP05D7meOp+jtTfTxMazA90Re0GPzaBeOyxXC0t5SXBS4ybYqwaLM=
X-Received: by 10.157.66.216 with SMTP id c24mr11811424otj.332.1511281933699; 
	Tue, 21 Nov 2017 08:32:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Tue, 21 Nov 2017 08:32:13 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Tue, 21 Nov 2017 11:32:13 -0500
Message-ID: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: How to add support for "usb WIFI dongle"?
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
X-List-Received-Date: Tue, 21 Nov 2017 16:32:15 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c1aead04d8d055e80be31"

--94eb2c1c1aead04d8d055e80be31
Content-Type: text/plain; charset="UTF-8"

I am confused on adding support for "usb WIFI dongle":
* My boards do NOT have WIFI capability, so I will add a "usb WIFI dongle".
  (I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)
* Suppose we start from "core-image-sato"
* What should I do to add support for "usb WIFI dongle"
* After we build/boot the image, how can we verify and bring the WIFI up?

Thanks!
Jerry

--94eb2c1c1aead04d8d055e80be31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am confused on adding support for &quot;usb WIFI dongle&=
quot;:<div>* My boards do NOT have WIFI capability, so I will add a &quot;u=
sb WIFI dongle&quot;.</div><div>=C2=A0 (I have two boards: Raspberri-PI-2, =
SIMATIC IOT-2020)<br><div>* Suppose we start from &quot;core-image-sato&quo=
t;</div><div>* What should I do to add support for &quot;usb WIFI dongle&qu=
ot;</div><div>* After we build/boot the image, how can we verify and bring =
the WIFI up?</div><div><br></div><div>Thanks!=C2=A0</div><div>Jerry</div></=
div></div>

--94eb2c1c1aead04d8d055e80be31--
