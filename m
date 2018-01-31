Return-Path: <keshava.gn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8E72E00E02; Tue, 30 Jan 2018 20:54:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (keshava.gn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861C6E005B1
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 20:54:47 -0800 (PST)
Received: by mail-ua0-f178.google.com with SMTP id i15so8624249uak.3
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 20:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lNP5oNF9Gq6MqPZ76upY5g1UpM/TY9SQ0TbDsmLpNQI=;
	b=aQp+CLmmOhs0rRXvXk7z7ySuz254SLysN+/UCNFYpXFp+G7JDsK3cjclZ4qwxYaAUy
	bCDOHN1pJ5Ry5llOCnIVrtesH6RHuhU0wAhSF5/5RF2dJlMC5BXHkkWl6mli71AMFA0/
	yLsObx/wxbe4R3/tthmhnivmcl9KBr1JzwQ/ramOD7UoSL8gVmWENegYk1AMvlnyQ5HR
	uUYVcpwMVzGZgEIKPDVgvWoIliUCBadY23BY/G1v2MuB2TXdrcju7rDXxForHVG2JdRF
	ZleUaZ6kvDl7ToFCfTLQh9lqhMjBBD65UBqk8cVZ1M4cys8qJEHX1DxdYuCQ/QqMBWma
	Vhzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lNP5oNF9Gq6MqPZ76upY5g1UpM/TY9SQ0TbDsmLpNQI=;
	b=YUaVOtM+gWlSBasAAF1gIhXIGcwJ++ymDilvW3nFmtOUHYtYActBkSFJQL9VNfhvDn
	KmynF+1EAmtm6NWJ82nfFbb3f7OqF4v4HtJwmQFLFEpCGxtoKpiD/pyC1JWKwKAeGQMz
	KUG6Hk5LA6C6mB8cuEWY94klz8CY/xEEatK9tb8l7DcmjceqNgwA17Sfm5L9mPPW7N8f
	NjtbSF9rm2u3FbdBa+Kn5zj9ildyTTbwDmECAPNGjN5TJrxj9GCD673dUy6+friBUTyf
	dxXMFhMkZGQftN9skc3eVnQ0j8HjXKvkg7dhkL9hrJh/NUtukUgqH4AVn7VW8uCfbpH5
	CVjw==
X-Gm-Message-State: AKwxytfJ61kVjqp1FqemFDdaweULMDGr/7RmlBqCfgP9KS2SsTjKQJ6f
	Cwa45Q3yy9njvnWQ1ZhsB6WxJ6ZzNCo6l12ycGw=
X-Google-Smtp-Source: AH8x225aglDbqrR/ook3S2UXWqt8h2LEe/hxEG0cTDWO0+arQOOK14o2HWwxwm0h5N2fHIT4EvLex/gU6P9/alECBxs=
X-Received: by 10.159.37.208 with SMTP id 74mr23872029uaf.0.1517374486311;
	Tue, 30 Jan 2018 20:54:46 -0800 (PST)
MIME-Version: 1.0
From: GN Keshava <keshava.gn@gmail.com>
Date: Wed, 31 Jan 2018 04:54:35 +0000
Message-ID: <CABKwMduGXgSQ_5OPZ8L-bOLuZvw-szZ6Vy9c9LDzercn18DHng@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 02 Feb 2018 11:15:07 -0800
Subject: PHP in Yocto using Apache2
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
X-List-Received-Date: Wed, 31 Jan 2018 04:54:48 -0000
Content-Type: multipart/alternative; boundary="001a1139558c3f789405640b4725"

--001a1139558c3f789405640b4725
Content-Type: text/plain; charset="UTF-8"

I'm working on Yocto Krogoth for iMX6.

I have successfully added Apache2 and able to access HTML page.

But I want to get and process user input from HTML. From what I understand
I need PHP for this.

But in my Yocto, I'm not able to add PHP. Below is what I tried:

Added these to local.conf:

 PACKAGECONFIG_append_pn-php = " apache2"

 IMAGE_INSTALL_append = " apache2 php php-cli php-modphp"
Tried modifying php.inc according to few answers on net.

There is some accidental bug in Krogoth PHP git code - in php.inc. Tried
using master git code changes from this. Not working. Please suggest any
other changes I need to do.

Tried removing IfDefine PHP5 from php.inc. This makes Apache2 to fail to
load. Seems like there's some dependency. Please suggest.

--001a1139558c3f789405640b4725
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m working on Yocto Krogoth for iMX6.</div><div>=
<br></div><div>I have successfully added Apache2 and able to access HTML pa=
ge.</div><div><br></div><div>But I want to get and process user input from =
HTML. From what I understand I need PHP for this.</div><div><br></div><div>=
But in my Yocto, I&#39;m not able to add PHP. Below is what I tried:</div><=
div><br></div><div>Added these to local.conf:</div><div><br></div><div>=C2=
=A0PACKAGECONFIG_append_pn-php =3D &quot; apache2&quot;</div><div>=C2=A0</d=
iv><div>=C2=A0IMAGE_INSTALL_append =3D &quot; apache2 php php-cli php-modph=
p&quot;</div><div>Tried modifying php.inc according to few answers on net.<=
/div><div><br></div><div>There is some accidental bug in Krogoth PHP git co=
de - in php.inc. Tried using master git code changes from this. Not working=
. Please suggest any other changes I need to do.</div><div><br></div><div>T=
ried removing IfDefine PHP5 from php.inc. This makes Apache2 to fail to loa=
d. Seems like there&#39;s some dependency. Please suggest.</div></div>

--001a1139558c3f789405640b4725--
