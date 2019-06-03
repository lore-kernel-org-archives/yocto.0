Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26F79E00A0C; Sun,  2 Jun 2019 22:40:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joaohf[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68240E00A0C
	for <yocto@yoctoproject.org>; Sun,  2 Jun 2019 22:40:52 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id g13so25150648edu.5
	for <yocto@yoctoproject.org>; Sun, 02 Jun 2019 22:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rHdXUSBCZLziT/u3svhJkLRbrZKJ1Hm7SExQw/c/kN4=;
	b=J7GKf/UVI9kK3Z6ZGKpZn+ljwzMe1acgldmK+Ac6u11mu2ACRTwLqmVFzTkm9krpSR
	8+YVhb07W6ionWWZgDVdXHhNsN+syp2aeqTFfkoQ7hiRiwgMU/aZUGjeXJLoV1cksTVZ
	ZBZ6WL7bmxt1NGBvEfpBwi0wszpIuE+rzAKnYuiCvurANSG10yIUeyI5Lj9C7ob7s4DH
	7j10E3hMqKTMpXXtr/9QUiJtYn203riNLtAdObXW9n90uGcGZQpcS5YMApWu6SEy+BnC
	vQTFnZnbCBFjX6gBqDYnP5TdUCHyVqkVbS2u0TiZLE2btE37vsrsCV4NhV6SBos7EtE7
	uxvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rHdXUSBCZLziT/u3svhJkLRbrZKJ1Hm7SExQw/c/kN4=;
	b=GXtarqbY02gsPj7fXG0aVyMTCy6pKfkv1nLf4Cf6ERkkvtCplPgsYNyeBhUZJSt13E
	zL/xPLZn9mkJDyHRHRSd5i8OHXvHBzlt8/3zw7+H+W/sQjfQsDGU7mikhEreSi/zRQLi
	CBhiz98izIRj98LF8jbQmH3/VP72YVkhbdBVkP2/dwNsr4ude+H57pcDZ6ajCVKjloMf
	Vff5zaMGo0khiA6TrsOR2UTju5IS2/fDucNovNf6palz5X2gRIIeDeZhX0k/UCl6dHpU
	5DVsYlOdxWG94WpyZJWc4HlDhGuTn8f0zjrfh/kggqfboaULTZbmDtNx0GnOJjowEK7e
	Uocg==
X-Gm-Message-State: APjAAAX2De/bcl5kN11NYQAaBV5yhvYgKBUSIgz7gMj1XQxEH3n+vX9u
	bB/OaDecA6m5db9Yu/Af4RJC8dn1ukHouYouhSxPng==
X-Google-Smtp-Source: APXvYqwJIHzYy47hF+yqzNYMwShRFXj1Mt4k5pqscC5ebdUcjRLWF9D1UvVKLx/D4G0Sp/QcZViy/QXOTzu6StXAeU0=
X-Received: by 2002:a17:906:2922:: with SMTP id
	v2mr21431206ejd.115.1559540451029; 
	Sun, 02 Jun 2019 22:40:51 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
Date: Mon, 3 Jun 2019 07:40:40 +0200
Message-ID: <CANFVK78ymEGrUgqtr0sH+6F6vOzmwbuq75AqdYVqYhTDN9ro0g@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 06 Jun 2019 08:27:38 -0700
Subject: EMQ recipe
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
X-List-Received-Date: Mon, 03 Jun 2019 05:40:53 -0000
Content-Type: multipart/alternative; boundary="00000000000098b66d058a64ce94"

--00000000000098b66d058a64ce94
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm the author of a Yocto Project layer called meta-erlang. I would like to
announce that now is possible to use Yocto Project which build a embedded
Linux distro and on top of that install the EMQ (a mqtt broker) or EMQ
edge. I've created the recipe and all the patches necessary to do that.

My main target is to bring software made with Erlang/Elixir possible to run
in Yocto/Openembedded ecosystem.

Just in case, if you have a embedded project and are planing to run emq
edge, for example. This could be feasible for you.

Check it:

 - https://layers.openembedded.org/layerindex/branch/master/recipes/?q=emq
 - http://joaohf.github.io/meta-erlang/#/guides-emqx
 - https://github.com/joaohf/meta-erlang
 - https://www.yoctoproject.org/
 - https://www.emqx.io/

Best regards,

--00000000000098b66d058a64ce94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">H=
i,</span><br style=3D"font-family:sans-serif;font-size:12.8px"><br style=3D=
"font-family:sans-serif;font-size:12.8px"><span style=3D"font-family:sans-s=
erif;font-size:12.8px">I&#39;m the author of a Yocto Project layer called m=
eta-erlang. I would like to announce that now is possible to use Yocto Proj=
ect which build a embedded Linux distro and on top of that install the EMQ =
(a mqtt broker) or EMQ edge. I&#39;ve created the recipe and all the patche=
s necessary to do that.</span><br style=3D"font-family:sans-serif;font-size=
:12.8px"><br style=3D"font-family:sans-serif;font-size:12.8px"><span style=
=3D"font-family:sans-serif;font-size:12.8px">My main target is to bring sof=
tware made with Erlang/Elixir possible to run in Yocto/Openembedded ecosyst=
em.</span><br style=3D"font-family:sans-serif;font-size:12.8px"><br style=
=3D"font-family:sans-serif;font-size:12.8px"><span style=3D"font-family:san=
s-serif;font-size:12.8px">Just in case, if you have a embedded project and =
are planing to run emq edge, for example. This could be feasible for you.</=
span><br style=3D"font-family:sans-serif;font-size:12.8px"><br style=3D"fon=
t-family:sans-serif;font-size:12.8px"><span style=3D"font-family:sans-serif=
;font-size:12.8px">Check it:</span><br style=3D"font-family:sans-serif;font=
-size:12.8px"><br style=3D"font-family:sans-serif;font-size:12.8px"><span s=
tyle=3D"font-family:sans-serif;font-size:12.8px">=C2=A0-=C2=A0</span><a hre=
f=3D"https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3D=
emq" style=3D"text-decoration-line:none;color:rgb(66,133,244);font-family:s=
ans-serif;font-size:12.8px">https://layers.openembedded.org/layerindex/bran=
ch/master/recipes/?q=3Demq</a><br style=3D"font-family:sans-serif;font-size=
:12.8px"><span style=3D"font-family:sans-serif;font-size:12.8px">=C2=A0-=C2=
=A0</span><a href=3D"http://joaohf.github.io/meta-erlang/#/guides-emqx" sty=
le=3D"text-decoration-line:none;color:rgb(66,133,244);font-family:sans-seri=
f;font-size:12.8px">http://joaohf.github.io/meta-erlang/#/guides-emqx</a><b=
r style=3D"font-family:sans-serif;font-size:12.8px"><span style=3D"font-fam=
ily:sans-serif;font-size:12.8px">=C2=A0-=C2=A0</span><a href=3D"https://git=
hub.com/joaohf/meta-erlang" style=3D"text-decoration-line:none;color:rgb(66=
,133,244);font-family:sans-serif;font-size:12.8px">https://github.com/joaoh=
f/meta-erlang</a><br style=3D"font-family:sans-serif;font-size:12.8px"><spa=
n style=3D"font-family:sans-serif;font-size:12.8px">=C2=A0-=C2=A0</span><a =
href=3D"https://www.yoctoproject.org/" style=3D"text-decoration-line:none;c=
olor:rgb(66,133,244);font-family:sans-serif;font-size:12.8px">https://www.y=
octoproject.org/</a><br style=3D"font-family:sans-serif;font-size:12.8px"><=
span style=3D"font-family:sans-serif;font-size:12.8px">=C2=A0-=C2=A0</span>=
<a href=3D"https://www.emqx.io/" style=3D"text-decoration-line:none;color:r=
gb(66,133,244);font-family:sans-serif;font-size:12.8px">https://www.emqx.io=
/</a><br style=3D"font-family:sans-serif;font-size:12.8px"><br style=3D"fon=
t-family:sans-serif;font-size:12.8px"><span style=3D"font-family:sans-serif=
;font-size:12.8px">Best regards,</span></div>

--00000000000098b66d058a64ce94--
