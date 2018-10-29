Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 901E7E00BC6; Mon, 29 Oct 2018 06:43:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF910E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:43:45 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id p23so7542462otf.11
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=c8uNFLmt0YbSRIlQ1rNoTEEy8MY6XaNQ//5VtUlRVjk=;
	b=Bqfc0yeLjFipCw5TaPJDeyXekVSfOfxUO3JPQYMwGfwH+t7XW/mMlnJOurgIBx4HpY
	JY1Hz1ugEnZjf3yM41Fr0gIImYT40pbQ7G4/vEqBspjjiJm5j37MuzDssv12s2OWoIrE
	Ibvahpg6yrcloMqhupqPyu3aF8FbFZF404Q7k5QjKHeK4FVdo4W7p4Sk2nca/kN9Pgqn
	xgve5yoRUKIh+1mDWaQsVpgPVAIJ3kc2y8fKAgNZOKEwAflgQB3ywJt9rG938wk6E8Sc
	CaHww1+bGiweWKQ+QuKBsVRr5T2mTTDY2LokHd9Rk14twZTyTkW+iS5GSAGSvMS0056q
	AnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c8uNFLmt0YbSRIlQ1rNoTEEy8MY6XaNQ//5VtUlRVjk=;
	b=nrWYpkC3kOb6tPs/2XBCIQ5t3Z4VATX9igkZUtQbOHB0Jn0mXr/4mnRImodCBGwhgW
	ctdjSMLN2E/2wsXZJLk7V8176/1oQggzYbXJgB6IymzNEu3QteEd9G0IccqnRWHMLywy
	fcBvptC4yLyErHiByPS2Ab3r/gRPr1Cjs0c0kNJTqs/UBb3YvymDNPNgz6npAfKVCXp0
	NqU13QA5X0GGHkKoC8uhpuSsQHRNp6aqD2z2vCSZqwNnwr8IH74D3RewV3N7D0QdjsZl
	fSuE7ZhscQ7HjgFLDlkfm6sWMHo4nXAh1UUe7H7JRstuTbSSQS45ocobuz45//lHNy9i
	/mDQ==
X-Gm-Message-State: AGRZ1gJnRfs5IgG2j9bopk5IFO/X6Nfhe7HB3lN9hCVCgpEwcgRSEwfd
	pHsHzhWleKMouyBq3PAP5aD/z0XxCsbJ34dES9zV8hN3
X-Google-Smtp-Source: AJdET5cJHBBfKTT13OqnxiTqR6Ljy1F+Khx0TZfOJu6Hhx3j7LMHbZ+jZkHUnVHeVw/8HAD9N2Jx7atbABj7CpeacZQ=
X-Received: by 2002:a9d:56c8:: with SMTP id b8mr4653455otj.306.1540820624719; 
	Mon, 29 Oct 2018 06:43:44 -0700 (PDT)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 29 Oct 2018 14:43:33 +0100
Message-ID: <CACKFPN2C-=XWKStypsyUHr0ddyPrLX9-y4qJGJ+zO98=-F9vWA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: nativesdk-libxcrypt-4.0.1 is failing
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
X-List-Received-Date: Mon, 29 Oct 2018 13:43:46 -0000
Content-Type: multipart/alternative; boundary="000000000000ffdc4905795e418c"

--000000000000ffdc4905795e418c
Content-Type: text/plain; charset="UTF-8"

Hi all,

it seems that the libxcrypt recipe in poky is failing because the git repo
doesn't have a master branch anymore. The default branch has changed
to `develop` and the recipe can't fetch the repo when I'm building the SDK
for my image.

A temporary solution is to override the URL with a bbappend, but in general
this has broken the recipe. This is the error that I'm getting.

WARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fetch URL git://
github.com/besser82/libxcrypt.git;branch=master, attempting MIRRORS if
available
ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure: Unable to
find revision 089479bb24acd168613757a6f12d63caa95416b4 in branch master
even from upstream
ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure for URL:
'git://github.com/besser82/libxcrypt.git;branch=master'. Unable to fetch
URL from any source.
ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in:
/rnd/yocto/nativeos/build/tmp/work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-r0/temp/log.do_fetch.19081
ERROR: Task
(virtual:nativesdk:/rnd/yocto/nativeos/sources/poky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch)
failed with exit code '1'

P.S another good reason to enable the own mirrors early in the development
phase.

--000000000000ffdc4905795e418c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>it seems that =
the libxcrypt recipe in poky is failing because the git repo<br>doesn&#39;t=
 have a master branch anymore. The default branch has changed<br>to `develo=
p` and the recipe can&#39;t fetch the repo when I&#39;m building the SDK</d=
iv><div>for my image.</div><div><br></div><div>A temporary solution is to o=
verride the URL with a bbappend, but in general<br>this has broken the reci=
pe. This is the error that I&#39;m getting.</div><div><br></div><div><div>W=
ARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fetch URL git://<a=
 href=3D"http://github.com/besser82/libxcrypt.git;branch=3Dmaster">github.c=
om/besser82/libxcrypt.git;branch=3Dmaster</a>, attempting MIRRORS if availa=
ble</div><div>ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure=
: Unable to find revision 089479bb24acd168613757a6f12d63caa95416b4 in branc=
h master even from upstream</div><div>ERROR: nativesdk-libxcrypt-4.0.1-r0 d=
o_fetch: Fetcher failure for URL: &#39;git://<a href=3D"http://github.com/b=
esser82/libxcrypt.git;branch=3Dmaster">github.com/besser82/libxcrypt.git;br=
anch=3Dmaster</a>&#39;. Unable to fetch URL from any source.</div><div>ERRO=
R: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed: base_do_fetch</d=
iv><div>ERROR: Logfile of failure stored in: /rnd/yocto/nativeos/build/tmp/=
work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-r0/tem=
p/log.do_fetch.19081</div><div>ERROR: Task (virtual:nativesdk:/rnd/yocto/na=
tiveos/sources/poky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch=
) failed with exit code &#39;1&#39;</div></div><div><br></div><div>P.S anot=
her good reason to enable the own mirrors early in the development phase.</=
div></div></div>

--000000000000ffdc4905795e418c--
