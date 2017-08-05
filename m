Return-Path: <jjosburn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF7A6E00C49; Sat,  5 Aug 2017 10:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jjosburn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4205]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D9AFE00C3A
	for <yocto@yoctoproject.org>; Sat,  5 Aug 2017 10:21:43 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id e124so38170629oig.2
	for <yocto@yoctoproject.org>; Sat, 05 Aug 2017 10:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4YPSHRyYShqROypF1rX4RQ8LgaDTgYYcUNqdIPP2Xew=;
	b=SUCh02JwHJ/Enel9429fdjZ/jP5DHBzviq4qTwlmLTOIOxa8lgMiI0fx0+LQijq26W
	lpSaz7ONVvPffAZ8YBJVhFIzyUvmoof/BeoqoKPDsLt3ilg1mir+gowYdK63YZTT/QAO
	Xiqpn8yq0l1O3ou82q9wnV5eAHYJi/tnRiKIlNJkQyCIp39r6Q0RLjNG4VxZFkdgzrgK
	ShzqLN4M+pvyqbr+xCRY5l4EZBganPdlsHj5u9G/s6FkxkJTiwS5yAgaeik2RAbYKi03
	k0Fpxx1XS8AgdSPi4Y7HCHuQoCL2ZCmubNp34Al+5msbhSYYR7Pt3lJKjAhylICw4VYA
	AHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4YPSHRyYShqROypF1rX4RQ8LgaDTgYYcUNqdIPP2Xew=;
	b=TInAQq4dQv37Iudcocg5g0yLhGoYhdhxJd7D6IETWCpwVhEgHna7rnIhhZAN+EjSP4
	+TOWhLYY60ZvWYx0sgzgP/Mgwy3d7XAKvtkECnlvtd0iVWaAsHMBc03l5OT8prWYn483
	1uQzd+6XOj2JtMeVp5ExTOAnpHQ4uKDrjQFJlzuvEA5mSMZRdCeSUXgP94RpxdAdbeuj
	24Q+52t1M1gPiMmXO/m7o9SLqgqR8x/xkM8qlOD2eGlCGCt95BmmSKvSncTMdTTq6kE/
	1sYGuJa+V/CjuVpt5wAyBxehlyRX/G8slA5h6yu8+Xs5378S0b8acJD+sYq6YjxJmzbB
	wOGg==
X-Gm-Message-State: AHYfb5j95SF4E7Ue7uYkDHDBuJN+FZjCnaebVezV4anZs1jBC8mkXiOm
	qUlnshWZ466cI/mgsUBpo9nsCg7fmA==
X-Received: by 10.202.221.10 with SMTP id u10mr4010404oig.31.1501953703046;
	Sat, 05 Aug 2017 10:21:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.97.7 with HTTP; Sat, 5 Aug 2017 10:21:42 -0700 (PDT)
From: "blackthirt33n ." <jjosburn@gmail.com>
Date: Sat, 5 Aug 2017 12:21:42 -0500
Message-ID: <CA+z1-f_wMOSaDwHde_SAkQgS-447wRECJ0QgkqXZ0gwf2CHk7Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: using wic to build an iso
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
X-List-Received-Date: Sat, 05 Aug 2017 17:21:44 -0000
Content-Type: multipart/alternative; boundary="001a113d4e6cf07429055604d865"

--001a113d4e6cf07429055604d865
Content-Type: text/plain; charset="UTF-8"

is there documentation on how to use wic to create a bootable iso for
an x64/x86 target?
James

--001a113d4e6cf07429055604d865
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">is there documentation on how to use wic to create a boota=
ble iso for=C2=A0<div>an x64/x86 target?</div><div>James</div></div>

--001a113d4e6cf07429055604d865--
