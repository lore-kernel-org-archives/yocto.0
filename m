Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 219A5E00798; Thu, 28 Mar 2019 09:20:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C6C8E00798
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:20:55 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id b7so9893899lfg.9
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HPcS9zihgfjgdsUnLdvPsHBexT+ekBoYDUGkInxz250=;
	b=OKdPIYG/0ewWFUo5K/uswjyFsYX3sk5HFEoOUmtTnYZgVK92XfiTNel7RQUCkk2iij
	qCbegl+ngOH10l/EuOinmBQnOhGJoz0AyANT8awB6fa74fpGVWLAcjoEM7tkHd8txTUA
	xI7R2qWlJoRDa6EMFdAzdpGLHVc2+ifvoO4E9+ddkiDtVwwcJK1u+nLqYExfOySaYued
	bEljIKz4eJYjq0308gBLPqqF/6l8Tg2cEhihbKqSJO+DwAdAUv9rVgKFTCKL029Cj/Dl
	AGlgUeUzJDx0QjQKv47solta/jJaH1r9vQyjvxQDaiBzj1aD/De+4VDHHknUSk9JM/Rw
	fFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HPcS9zihgfjgdsUnLdvPsHBexT+ekBoYDUGkInxz250=;
	b=R15aaslPZq9bLdiyIaTozY2moDAtl19tmxuThQX01SNtxeqvJl0YrN2XOg9zKqE6Vd
	GjTj6RhwucXG7mObT1vHRhA1nyjCQSxoTjPLC514CMY/Gyxfm2iMou9qxKstEfguMSv6
	d0jTai2HpnItAl4/CucmB5EFjAKYkHc27ZIyJvtAjxn1uHLlcHUnGsV0BicGdFdaJqdN
	6U3SIzbE14BYkeY4i/JJGzUgcb2/Cq1Oa7frFhUOroIQ/un0pMhzHwX5AGTQvegz7BpK
	vbTIxD0RgQRchHk2ck1TOWP3sfgDVuMRpj89ccv41MDSUXTnyG5lU5BsUo0TyzBqOtTd
	fvfw==
X-Gm-Message-State: APjAAAUWqEWvEkDTsbZjQwqT64UceMEX/U/2m1kK/yrw3gNuOdEE2bKh
	VeTMMGdAMVY8YrEz0IxLUv/pMzvwJGO+/gBERDMrwg==
X-Google-Smtp-Source: APXvYqy2kYckdZYMLF/n5GO1iQaetf7ACHziMn1IQBDhudhIa+VdGQ9LChNBIABodhXXjXP7AuUP4PgvC8ZVkXWzSKs=
X-Received: by 2002:ac2:52a6:: with SMTP id r6mr23517649lfm.27.1553790054214; 
	Thu, 28 Mar 2019 09:20:54 -0700 (PDT)
MIME-Version: 1.0
From: A <aaron.biver@gmail.com>
Date: Thu, 28 Mar 2019 12:20:43 -0400
Message-ID: <CAMd7AX-pAObJ38twArWYpif7OCb5Z_mQmnfgRe7GxrnMXv-1mQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Basic Yocto+CMake Usage question
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
X-List-Received-Date: Thu, 28 Mar 2019 16:20:56 -0000
Content-Type: multipart/alternative; boundary="0000000000003cb116058529f0bd"

--0000000000003cb116058529f0bd
Content-Type: text/plain; charset="UTF-8"

I'm having issues with a yocto build that is combining recipes that should
depend on each other, and I need a sanity check.  Is this an ok forum for
stupid user questions?

The main idea is to have one recipe install some prebuilt libraries, and
have another cmake-based recipe use those libraries.

As a caveat, this is a native version of the build that I seem to be having
trouble with, but I assume that is mostly irrelevant:

In ProjectA, the meat of the matter is a do_install that copies
ProjectA*.so into STAGING_LIBDIR.  I don't recall why I chose that instead
of ${D}${libdir}... is it ok this way?
In ProjectB, I'd like CMake's find_library() to find Project A's libraries,
and I seem to be having trouble.

How would you approach this?  The recipe for Project B contains "inherit
cmake" and some variables I pass in with an EXTRA_OECMAKE and an
EXTRA_OECMAKE-native.

I also have there:
DEPENDS += "ProjectA"
DEPENDS_class-native = "ProjectA-native"

However,in ProjectB's find_library() call, I am uncertain how to direct it
to find those libraries - what PATHS or HINTS or whatever?

Any help is gladly appreciated.

--0000000000003cb116058529f0bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m having issues with a yocto build that is combining=
 recipes that should depend on each other, and I need a sanity check.=C2=A0=
 Is this an ok forum for stupid user questions?<div><br><div>The main idea =
is to have one recipe install some prebuilt libraries, and have another cma=
ke-based recipe use those libraries.</div><div><br></div><div>As a caveat, =
this is a native version of the build that I seem to be having trouble with=
, but I assume that is mostly irrelevant:</div><div><br></div><div>In Proje=
ctA, the meat of the matter is a do_install that copies ProjectA*.so into S=
TAGING_LIBDIR.=C2=A0 I don&#39;t recall why I chose that instead of ${D}${l=
ibdir}... is it ok this way?</div><div>In ProjectB, I&#39;d like CMake&#39;=
s find_library() to find Project A&#39;s libraries, and I seem to be having=
 trouble.</div><div><br></div><div>How would you approach this?=C2=A0 The r=
ecipe for Project B contains &quot;inherit cmake&quot; and some variables I=
 pass in with an EXTRA_OECMAKE and an EXTRA_OECMAKE-native.</div><div><br><=
/div><div>I also have there:</div><div>DEPENDS=C2=A0+=3D &quot;ProjectA&quo=
t;</div><div>DEPENDS_class-native =3D &quot;ProjectA-native&quot;</div><div=
><br></div><div>However,in ProjectB&#39;s find_library() call, I am uncerta=
in how to direct it to find those libraries - what PATHS or HINTS or whatev=
er?</div><div><br></div><div>Any help is gladly appreciated.</div></div></d=
iv>

--0000000000003cb116058529f0bd--
