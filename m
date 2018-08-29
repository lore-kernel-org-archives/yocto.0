Return-Path: <carsten.behling@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50B6AE00939; Wed, 29 Aug 2018 01:03:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carsten.behling[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B9DE00848
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 01:03:48 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id f17-v6so2788070qkh.4
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 01:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bShYx4HgcDXm2ugw8rhYq+Ppa6pzWou74gJrs6R+Oaw=;
	b=OtTUqSALh0nNb3fFidV+EWSD1kjBuaahV2DlqBCMlPSzxLZspZrLbhJmYjElsGaSLt
	1P2i1gDhqKEWfTXibAdux0qf1eH1Dw2+e6mAKV55oOIY33y1fnsOqZ1yOlhyOnkbv5DG
	klLhzZtOf4z4cXdQaHYhIVdLcujkjTwsq5Z702UmuvEoM8m19Y/caG6GRUfis8tbSSTr
	qb+gAN0LggX3Yt4shg1yhylXOLFhHATb2E01PKlgzQ3s1KRPvU1Y0h6dKfPN+E3/W7aS
	2GB4PuxYTWIm7MTwhkUlMkHROvfcgCjsMJSW5actQUEmCctnq99vpY3r0uMMPhUlLSGT
	/yig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bShYx4HgcDXm2ugw8rhYq+Ppa6pzWou74gJrs6R+Oaw=;
	b=Kg4QK6Xmrjrno/gdkUERgqwty8hISgslNznJAQ5HYsJWTtXUMNnUIlI55warpKU1sJ
	mCnVqdDDqT2x6yxPEjsNLD2gRCWF+GH/g5G0Kfh9kQ5iGTug1chfnIOJYWc2NMykkJp/
	D8jV+NYm0Sm1zDYKV9XpA3ksKu98r2A9XJvrQNgNm6hOqamtFJT1CSeZNdtbHqx7YFF8
	4Hgn2UJYwUTnBIjjUnithHZb6d+X3vIKxAaXV6Zk8wXZ4QF0WlpvAi+GGe3jDbWEXsSl
	xkRDiWCvNlA1XwliEM0ytZo2CNAmxx1XHOJ6z43e36rr+HKwIjyZM7lK4U3AZ/ebEkQA
	tLqQ==
X-Gm-Message-State: APzg51CKrtlGdlf/ZGDWqpRY6UUd473KiGLZnPtJ3h58jQv0pHubatnl
	mw9sj/egslMkiP3eevLdOtMZHeKbbfvMTYxwyaC6JNDV
X-Google-Smtp-Source: ANB0Vdb3rSbgWiz6jakgE/SzW8PplYna8nf+Tn+J+jnGud/a6Zg24BBsT8P3tanvHTfKwGsdN9MA3OgUQrVeaPt2nf0=
X-Received: by 2002:a37:8102:: with SMTP id c2-v6mr5219577qkd.41.1535529828233;
	Wed, 29 Aug 2018 01:03:48 -0700 (PDT)
MIME-Version: 1.0
From: Carsten Behling <carsten.behling@googlemail.com>
Date: Wed, 29 Aug 2018 10:03:37 +0200
Message-ID: <CAPuGWB9ydEvQZX-2Bu2mTh3mkrbLKWTWwmG3tmg8EVbLOUP2Kg@mail.gmail.com>
To: yocto@yoctoproject.org, matetuske@gmail.com, ajlennon@dynamicdevices.co.uk
X-Mailman-Approved-At: Mon, 03 Sep 2018 00:56:51 -0700
Subject: mono build issue
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
X-List-Received-Date: Wed, 29 Aug 2018 08:03:50 -0000
Content-Type: multipart/alternative; boundary="000000000000f4373405748e65aa"

--000000000000f4373405748e65aa
Content-Type: text/plain; charset="UTF-8"

Hi Matthew,

> The problem still exists sadly.
> Matthew

I had the same issue. The problem was that I installed Mono on my host
system. After removing it and reforcing a rebuild of the mono package and
its dependencies the error has gone:

# sudo apt-get purge libmono* cli-common mono-runtime
# bitbake mono -C compile --force

I did to spend any more time on fixing the recipe.

Best regards
-Carsten

--000000000000f4373405748e65aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Matthew,</div><d=
iv><br></div>&gt;=C2=A0<span style=3D"color:rgb(0,0,0);white-space:pre-wrap=
">The problem still exists sadly.</span><div><span style=3D"color:rgb(0,0,0=
);white-space:pre-wrap">&gt; Matthew</span></div><div><span style=3D"color:=
rgb(0,0,0);white-space:pre-wrap"><br></span></div><div><span style=3D"color=
:rgb(0,0,0);white-space:pre-wrap">I had the same issue. The problem was tha=
t I installed Mono on my host system. After removing it and reforcing a reb=
uild of the mono package and its dependencies the error has gone:</span></d=
iv><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></=
div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"># </span><fo=
nt color=3D"#000000"><span style=3D"white-space:pre-wrap">sudo apt-get purg=
e libmono* cli-common mono-runtime</span></font></div><div><span style=3D"c=
olor:rgb(0,0,0);white-space:pre-wrap"># bitbake mono -C  compile --force</s=
pan><br></div><div><br></div><div>I did to spend any more time on fixing th=
e recipe.</div><div><br></div><div>Best regards</div><div>-Carsten</div><di=
v><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></div><d=
iv><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></div><=
div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"> </span></div></d=
iv></div></div>

--000000000000f4373405748e65aa--
