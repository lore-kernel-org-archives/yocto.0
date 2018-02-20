Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 100CBE00F45; Mon, 19 Feb 2018 22:33:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50D1E00D5F
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 22:33:24 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id d26so15150894qtj.4
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 22:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=c7QB/PkZwNxfXqRpszr+YTKrWZtSbyJK8iOgIAWLnvg=;
	b=bspqYx+6qgmjt9IVOJDDVbmrug1B4stG7p0o7k6PxvK1aRJ2+voDF4T9t+1OwOjTIi
	Vmq4rf5ypu9Pd1pJmrB0orAks0nC+GoIzNlfc3YTGmAJNVbjfVvuo/R+SxirxVL1MfRr
	HNXrAbdfFIJZ06XbeLW707iSKteEmcyBNpHx5G76j2Mhxm9dnZcX949LHfoMUNEv4wo5
	LAz7/SVihE+1q7Dje9onmH/xVNOQnuMbozLwPnblYskED00thPkV4GfKgurvQfzBYSmA
	4nDM/Z5UYM5vkAoZl60eEz/Vg88Un5BZuhuPrBo73APxCNs0crnI8N5dp1sIH1pSuT6U
	x5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c7QB/PkZwNxfXqRpszr+YTKrWZtSbyJK8iOgIAWLnvg=;
	b=Mh19QWqa10zReYyMf/NmskjpJuPs/QSokJAWNTaKlwLtFOKCNCfLIe24lW+H4Yovo2
	eDWkBgggkA8zWeO1pSUzu4Emcd8G4iVt3GBZdI3lr4iQmuapLvaWxIQ+0irCTWcwWtGN
	YvkyY4uMAjdpUjWu5theq2uqblVfDRRBIgm86KN0PYHg8/ezcn/esOJLD7/YfofvspLh
	1jFWjcOEhxQLLKCDfBsj07tOh9l4GJUlQopvbTRrvJhL5tCOV7N9vEvGXL/xzHFuKfyn
	IOgDNeYOd5YFusxSD/1f9Dfm/GLHku4+XT3g/AH9OZXgUttCaSde3YSpnFIineXksV9t
	ZORg==
X-Gm-Message-State: APf1xPAK8lYn/2yvJdC7C/dZaS4gH7OtaojwSLpkNIcz+swa5iERMRaX
	sm2TAsrzGscaNIOKL4Ktte60Gal7mviY9FO0NEMsDw==
X-Google-Smtp-Source: AH8x227BSlkGlSvBUZz3QU97QLFjqQ+N4qIdDCoGv12lVRhvPCWNfV2q1dAem+gPy0bejw8rFx2wCg1teOBXwSEiIaM=
X-Received: by 10.200.27.122 with SMTP id p55mr28407920qtk.254.1519108403371; 
	Mon, 19 Feb 2018 22:33:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.130.66 with HTTP; Mon, 19 Feb 2018 22:33:22 -0800 (PST)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 20 Feb 2018 07:33:22 +0100
Message-ID: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Small documentation issue
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
X-List-Received-Date: Tue, 20 Feb 2018 06:33:26 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b29f6c2241105659efc25"

--94eb2c0b29f6c2241105659efc25
Content-Type: text/plain; charset="UTF-8"

Hello,

Just to point to the documentation issue on YOCTO Projects wiki page:
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password

This line:
inherit extrausers

Should be changed as:
INHERIT += "extrausers"

To be inline with bitbake syntax. It is somehow confusing.

Thank you,
Zoran

--94eb2c0b29f6c2241105659efc25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Just to point to the documentati=
on issue on YOCTO Projects wiki page:</div><div><a href=3D"https://wiki.yoc=
toproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password">https://wi=
ki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password</a><b=
r></div><div><br></div><div>This line:</div><div>inherit extrausers</div><d=
iv><br></div><div>Should be changed as:</div><div>

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">INHERIT +=3D &quot;extrausers&quot;</span>

<br></div><div><br></div><div>To be inline with bitbake syntax. It is someh=
ow confusing.</div><div><br></div><div>Thank you,</div><div>Zoran</div><div=
><br></div></div>

--94eb2c0b29f6c2241105659efc25--
