Return-Path: <minipada@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02962E00D10; Wed,  7 Dec 2016 03:57:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (minipada[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f175.google.com (mail-wj0-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1701E00C9B
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 03:57:54 -0800 (PST)
Received: by mail-wj0-f175.google.com with SMTP id v7so358397629wjy.2
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 03:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=RaG9zZx7wMnuLCg0ZaTM7JWsAKuWfrgHql8go4U0DuQ=;
	b=Ga556C044wPOQ53kntYXweEFl6gNjTpCh4IZ9DlXs1lug5Nw+rmGq6UngiDLmVzi9K
	lPfYW4JVO4BV5y9C/K5ckDPKzplrUcOiXv+VHvorKc8/FUAW7QjYrOzTfIKoDQ6uTzxE
	oh6hTEaNr6imPOndB2Kdv6MxccqJqnV8EyTclfGC5U9yoZKrJ8+XlJ2Bwq1S9Vd+/Gps
	ZKsD353edAJf8qEroG+bvtJ8zLxRZSyfseOKWWSaq8lDuzRtauSDU6zAZwxMwSM7Jm0t
	qBf65jkZJn6etTgw40a1FehBBM8rHb7beu3DNRIFBzhpkVVLldAU1IkqjLXTOZnHN0Or
	VcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RaG9zZx7wMnuLCg0ZaTM7JWsAKuWfrgHql8go4U0DuQ=;
	b=h8tQ27qWvF2DLgZHSjEDMfmV6Qm521lJvchCyEm+az/nyJXupVwMJWw29hhpFaQk1U
	po9n9f/cnFg+0IyqG+dCxoQ1YYCKvNF7pb2nKn1xyY/cr18wh9DSaiW1nlbSi/00V4HK
	blX7Ukr7iQbGdaLgubyjVTCwK3Fnf8DRMzLlqYI5IQ3uWCa8oGQConXK8r0KF3PwDvmL
	4QE1s3leO5yM5jKNCwdJxfFumFRtS93h/y652C+zdfUvsEnmb4YOutpO2wwhq6ukMp/m
	onI3s9Q3PvFiqrONtj6FuBMLuo/AnCIT4X8DlUzpBxfSjd4YcAs5hbOT7Eyx33GaxKkV
	Mr9Q==
X-Gm-Message-State: AKaTC008/JCYK7PPdIEbrWKH814ACob/7D/tmlIIiaHzUn94QwneSCB+WjVcqc3YCU3C7TK9e0afNhQOPa1hyw==
X-Received: by 10.194.7.233 with SMTP id m9mr57452109wja.108.1481111873125;
	Wed, 07 Dec 2016 03:57:53 -0800 (PST)
MIME-Version: 1.0
From: david bensoussan <minipada@gmail.com>
Date: Wed, 07 Dec 2016 11:57:42 +0000
Message-ID: <CALxi_JGOFMsiLLavJHF1uNDdu10zA_6YhgXXqEOf5Qw8Mw_C1g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Package depending on ATLAS, BLAS, libmetis, liblapack
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
X-List-Received-Date: Wed, 07 Dec 2016 11:57:57 -0000
Content-Type: multipart/alternative; boundary=047d7b5d57d012039a0543103b47

--047d7b5d57d012039a0543103b47
Content-Type: text/plain; charset=UTF-8

Hello,

I am currently working on libraries which need *ATLAS, BLAS, libmetis,
liblapack.*
Those are tuning libraries which cannot be cross compiled
<http://www.vesperix.com/arm/atlas-arm/faq/index.html>.

I created an image, compiled what I needed on it and then created recipes
providing the libs letting me cross compile projects depending on it
successfully.

Did you ever need those libraries, if so, did you find any other way to
integrate them in Yocto?

Thanks

--047d7b5d57d012039a0543103b47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am currently working on libraries which ne=
ed=C2=A0<i>ATLAS, BLAS, libmetis, liblapack.</i><div>Those are tuning libra=
ries which <a href=3D"http://www.vesperix.com/arm/atlas-arm/faq/index.html"=
>cannot be cross compiled</a>.</div><div><br></div><div>I created an image,=
 compiled what I needed on it and then created recipes providing the libs l=
etting me cross compile projects depending on it successfully.<br><br>Did y=
ou ever need those libraries, if so, did you find any other way to integrat=
e them in Yocto?<br><br>Thanks</div></div>

--047d7b5d57d012039a0543103b47--
