Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0136FE00717; Mon,  2 Feb 2015 01:26:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
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
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88FCE005A9
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 01:26:19 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id a13so16721835igq.0
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 01:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jM4z+6+CNcxhB7ljKEo6TAuHn5UoutFmqp0q+IFc2Y8=;
	b=zkJs2YAOP42bpoekuHuGe9vj5/sCN3ckvONeOkEcFg/f+DFRDWYjg24qRCBFGmkEzy
	cZqVvxeQ7uFtD8B8Bx2s3kHpTX7dHaExjWdC+8mPE/ji+G15ZKxsKmw5oNPVW7SYm9nG
	52pmQLKP0nGTf7H+MaYM0KAe2tl7Y9c1tAf8FA/mhaEotCtnAhpGIeHqors6kgwcjBRe
	byXuTzYS+uGoBN5VmNS2JFXv92T6oQJLBlrT21pxW/uAzZvNyf2vlsi/e0zK7COOqcNF
	NGIzO7zwkMBqanIEKXqNzG1GE73cMmxt9TffiVV9btVMaCwePxrd+FmklF4wNSycFjf3
	pqrQ==
MIME-Version: 1.0
X-Received: by 10.50.79.202 with SMTP id l10mr10415931igx.24.1422869178959;
	Mon, 02 Feb 2015 01:26:18 -0800 (PST)
Received: by 10.36.51.145 with HTTP; Mon, 2 Feb 2015 01:26:18 -0800 (PST)
Date: Mon, 2 Feb 2015 17:26:18 +0800
Message-ID: <CAKGbVbtSsWYLZV_sG6t+EKhZDzDdu_4Z+rE=YuRfLN0n9FN9Tg@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Can two build dir of different yocto version share the same download/ and sstate/ dir?
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
X-List-Received-Date: Mon, 02 Feb 2015 09:26:30 -0000
Content-Type: multipart/alternative; boundary=089e0122aaeef94b7e050e178b6a

--089e0122aaeef94b7e050e178b6a
Content-Type: text/plain; charset=UTF-8

Hi all,

I know two build dir of the same yocto version can share download/ and
sstate/ dir to speed up build. But what if two build dir of different yocto
version, like 1.6 and 1.7?

Regards,
Qiang

--089e0122aaeef94b7e050e178b6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I know two build dir of the sam=
e yocto version can share download/ and sstate/ dir to speed up build. But =
what if two build dir of different yocto version, like 1.6 and 1.7?</div><d=
iv><br></div><div>Regards,</div><div>Qiang</div></div>

--089e0122aaeef94b7e050e178b6a--
