Return-Path: <jjosburn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB2FE00B53; Wed, 14 Jun 2017 03:43:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jjosburn[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0019]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D250E00888
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 03:43:26 -0700 (PDT)
Received: by mail-ot0-f177.google.com with SMTP id a2so107148788oth.2
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 03:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Hw+fot9Q/S2/FrQg+lIutsxl27TL95o5svlxwt5/maI=;
	b=DcA/nDk8cxue0NH6KnASqJJKiLs/Q49Us2ekZjFUkhU5z1SMKuNRzPnmeiVEVW1yCs
	SZfERb1I0s91aYq1YwCKzScAY0BlK38G+g+uLCobfJGZDuXTeKDYvlgkX43c9TMFdzYC
	LOnY/AGzrtABih+COpxYNTLm2yhqNtNw75Jk7khmMX9BP6xOeZr8sMFHmh36lM1P7NyP
	5lM72gKq8ZzhV7mgd9xl6DLP4ZcUch8+e+F13PI04a2DcTKPE2+tCUIlTPhxS8MbjZWf
	xurLay+1B8SuW+B25silsOu92HFXJ1B3RAvmWcTq8m3nrBeVu4fp2QMXf3ItAR7jJse6
	A6gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Hw+fot9Q/S2/FrQg+lIutsxl27TL95o5svlxwt5/maI=;
	b=VLVkwC6SSoBMFbOKZbTk/xv/8U4XcLncm4P8OquA/pOM9xBfzg7/vZjpniAfP+OUME
	v4mjguSQ2GuAnj1t1rf9k47gW9XKyTg01CrP45+Kxeoj8IYT2oA0MKmd7rHPNM7nR0Fm
	NkB/Jpupho5jzoU9c02QUso8tlgQys4LEw7JXfuVQ/D01T5QYkSDWoCNrdXYXPBZrdMF
	+b+N8Zsn9vtIlIPQxNbSIDg8CNxKe3ISJ0gSyxzUTCsyTO/ntsZuKkxq9+Etne1AzMAt
	7WHqrrUyqOHT0YPuJHUybsAkKtKGyeRrguaTx70AZGOqjrTRpdpnFfpcwn9ALGCZ8L0c
	gU2w==
X-Gm-Message-State: AKS2vOw2Xmm9dk37yN/Ogzz/GPJQwTwAIuhiBYA4ik3lDcMLx5763rQl
	DykiJhrWYMSKa9W056wJ5B6wGiEmfQ==
X-Received: by 10.157.12.171 with SMTP id b40mr428883otb.98.1497437005279;
	Wed, 14 Jun 2017 03:43:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.230.5 with HTTP; Wed, 14 Jun 2017 03:43:24 -0700 (PDT)
From: "blackthirt33n ." <jjosburn@gmail.com>
Date: Wed, 14 Jun 2017 06:43:24 -0400
Message-ID: <CA+z1-f-KrzwFjRTgmiH0dj-mYavLa1sJSmG=30AiAMdwQ6TMBA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: is there a guide to making a recipe for bitbake with the morty/pyro branch
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
X-List-Received-Date: Wed, 14 Jun 2017 10:43:27 -0000
Content-Type: multipart/alternative; boundary="001a1141df16c5fa2d0551e93883"

--001a1141df16c5fa2d0551e93883
Content-Type: text/plain; charset="UTF-8"

is there a guide to making a recipe for bitbake with the more recent
branches.
I have found a guide but those are dated 2015 and there descriptions
are now dated.
James

--001a1141df16c5fa2d0551e93883
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">is there a guide to making a recipe for bitbake with the m=
ore recent branches.<div>I have found a guide but those are dated 2015 and =
there descriptions=C2=A0</div><div>are now dated.</div><div>James</div></di=
v>

--001a1141df16c5fa2d0551e93883--
