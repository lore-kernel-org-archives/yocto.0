Return-Path: <yannickkiekens@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E24A2E00997; Wed,  9 Nov 2016 04:57:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yannickkiekens[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E0EE0083E
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2016 04:57:44 -0800 (PST)
Received: by mail-oi0-f50.google.com with SMTP id 62so235377004oif.1
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2016 04:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EF/GzGpMueYw5IUuiPgQu1D6gPZbmCh5KTIYFhPVk3o=;
	b=K31HYD++t2drc36ocx0Obsk+SLX4C06dy/ZJE1O/eGzakqpsHFt4OOOw5uFGEWpFI9
	Ojk/yUzSSQr/fQCJnC/e7Awv1rw13Ckqdnwtxf0CGZD86uwPl3lLMW7XLrr0JGgfWT6X
	esvk2qgx6OAMN0BxSVl04rX+j+4JMnb/LXKk6V/fvdBmYxHdrIYvoZRpl7xidyGc22qr
	luz3xHk9mj7kFNw0L+3SbOF/QrozswAEkX4chtNDufvssHwhZMTqFWsW83N1O+vj7Bnq
	5XpvGg87rgM4PBhvcbCmv0mV1z3fA5XLL5Ecu2VBLJPrupZjt2m22UBuZDH3BMpw5C62
	iZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EF/GzGpMueYw5IUuiPgQu1D6gPZbmCh5KTIYFhPVk3o=;
	b=QqOvB03KuI66s173mjeKpy9GMuzCIiud2nkXiTOEsV2q4PaIuamn1fpcB14i5NVklb
	/7AUTuSIo8womH6LsUPLBPWvcFkTdXWgyVoouNm17OEcvJ6bKGgqUOAI4KU5AE5b/fSo
	9BLPc2ohv5IFUS5I8a0qKnjuErwMAR0nyJJaNgrr8Jkp4TmmlYXpGKIvvZZQarfeTKCJ
	ZR7AgwIUp6pkUM0xVce5hX9VzCG6a68Djcnh/1f53wGQVQazTIwleY+263+Ub/KMGcM4
	p0kCEhWuHBwUjBDoNMyba/hDqp4ac6hnOTnOn6u/c394267v1gTpL5MpZtkaYDRxZvFc
	qm8A==
X-Gm-Message-State: ABUngvdeqXapKkOZObtopcbTljAUrvmd5h4BmfYYonrhxCw56MfS6lqdmoKZi+6pSt6XmcoNTynyFRXl9KhT1A==
X-Received: by 10.202.183.215 with SMTP id h206mr12448426oif.102.1478696264135;
	Wed, 09 Nov 2016 04:57:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.226.143 with HTTP; Wed, 9 Nov 2016 04:57:43 -0800 (PST)
From: Yannick Kiekens <yannickkiekens@gmail.com>
Date: Wed, 9 Nov 2016 13:57:43 +0100
Message-ID: <CAEyFGJEAb0T+oXCrFXNVaWbFjb19Z=we9afarzZ08giRghXwMA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: error: package X is already installed
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
X-List-Received-Date: Wed, 09 Nov 2016 12:57:49 -0000
Content-Type: multipart/alternative; boundary=001a113cdf348dfab00540ddcd66

--001a113cdf348dfab00540ddcd66
Content-Type: text/plain; charset=UTF-8

Hi all,

I am porting several projects from Jethro to Morty.
Some of those projects give several hundreds of "error: package X is
already installed" during do_populate_sdk stage in Morty.
These projects compiled fine in Jethro.

What can cause these errors?

Mvg
Yannick Kiekens

--001a113cdf348dfab00540ddcd66
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif;font-size:small">Hi all,</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif;font-size:small"><br></div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif;font-size:small">I =
am porting several projects from Jethro to Morty.<br>Some of those projects=
 give several hundreds of &quot;error: package X is already installed&quot;=
 during=C2=A0do_populate_sdk stage in Morty.=C2=A0<br>These projects compil=
ed fine in Jethro.<br><br>What can cause these errors?<br><br>Mvg<br>Yannic=
k Kiekens</div></div>

--001a113cdf348dfab00540ddcd66--
