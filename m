Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0B33E00C12; Thu,  6 Dec 2018 08:00:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tmichalski23[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FDDE00BB5
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 08:00:55 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id a6so2187963itl.4
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2018 08:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iPB0zwW6GaWf3hEk8PVhpOXI2gAJkoP4UQ9bE3dIWq4=;
	b=G4Qc9RJ09atqXV9i/5Nj3oXrKCowufJBf4Oi+3cs7bTisI8Dncf3S6TUGxHjS8wXmd
	lzceWiGiPCKV+QIlmC1/NAf/0J9RMv7E6GhKAnMM5OU8jGfhTGLdmkSu0ifCX7mWVcJz
	uaBCOnCJdJCnVeb560M+RSngObWiU7k5UbaapVzw5wUdAuOMUjTNDBXgDY3Am2i/6utK
	p1tU4KTo5pAnVocn/GHxBDuySSQ1gsrqd8dxXeY8RW/NuITmi+bT5ca8vyLhywNzoPVS
	U+8r2p2mRCvOR6fUdeWqA6a4tE/SiHzijPMy9V7Ha+xaem2z1CFix3QsRP9G/6l4a5BP
	JFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iPB0zwW6GaWf3hEk8PVhpOXI2gAJkoP4UQ9bE3dIWq4=;
	b=GznCwpd2XS69nEVTtR6NXW2wbCLRT8q0iQ1LItgstEIJg3gE3kdUlFTbVLTr1UUNlH
	aFmI+AxHvHZEVdksXuMfe7wGN0FM1H4Nt6biVSCEFBV6ap/QD1E5MjttZ4LayeVUnvXM
	Bb9hUFOuig7DRI29iF6w56uXZ4/RI3Vw9uE3HQW60RwSkyDn45CaKaYi6sHNByFF0W9k
	0LXyJ9md8jkkdo2VdeEFGsKoeDSeKmKK3ihOF4wpnW3Mp9AggHuivUuW7i6+nvFMPMWI
	EEFidOF0gQ3hWE1IepJKLQxesVNdcA1bvytRttvDAZkUcUpQ10yrjpYhzfaBNiSKMl/2
	1JyQ==
X-Gm-Message-State: AA+aEWb4Am5RxsHrub6yMSzt0AS278p9B/ohTc5hLKIkJ1/E14anOb5i
	VSaz3OtOXkzesyK2K+9ApxsKstSvwu/trDmPh3O2eB9C
X-Google-Smtp-Source: AFSGD/UHswhKEujNpb+MVoQRj4GjNP6CRI/LND8SiQbmFoJGQtUi7+pO7V8J4tgYXb04Ht1UixX4KGgelKRIHVhArFg=
X-Received: by 2002:a05:660c:1cc:: with SMTP id
	s12mr1261599itk.33.1544112054759; 
	Thu, 06 Dec 2018 08:00:54 -0800 (PST)
MIME-Version: 1.0
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Thu, 6 Dec 2018 17:00:42 +0100
Message-ID: <CAE5v_rKx_+pqhPnUMb9do6DnaJYt_eCs65KFXBya6PznYZEUaQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: overwriting do_install causes cmake install not executed
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
X-List-Received-Date: Thu, 06 Dec 2018 16:00:59 -0000
Content-Type: multipart/alternative; boundary="000000000000847480057c5c9ac1"

--000000000000847480057c5c9ac1
Content-Type: text/plain; charset="UTF-8"

Hi
I have recipe componentX.bb which refer to some C++ repository. In C++
repository I have in main CMakeList.txt:

install(PROGRAMS ./script/start.sh DESTINATION
${CMAKE_INSTALL_COMPONENTXDIR}/init.d)
install(PROGRAMS ./script/functions.sh DESTINATION ${CMAKE_INSTALL_BINDIR})

When I add to componentX.bb my own implementation of do_install() then
start.sh and function.sh script is not installed from CMakeList.txt!
How to tell bitbake in do_install() body to installl this what is in
CMakeList.txt and moreover something more? Using do_install_append() is not
a solution for my case because do_install_append() cannot be overwritten in
another meta-layer, for example in componentX.bbappend. So this must be
do_install() function.

BR
Tomek

--000000000000847480057c5c9ac1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<div>I have recipe componentX.bb which =
refer to some C++ repository. In C++ repository I have in main CMakeList.tx=
t:</div><div><br></div><div><div>install(PROGRAMS ./script/start.sh DESTINA=
TION ${CMAKE_INSTALL_COMPONENTXDIR}/init.d)</div><div>install(PROGRAMS ./sc=
ript/functions.sh DESTINATION ${CMAKE_INSTALL_BINDIR})</div></div><div><br>=
</div><div>When I add to componentX.bb my own implementation of do_install(=
) then start.sh and function.sh script is not installed from CMakeList.txt!=
<br></div><div>How to tell bitbake in do_install() body to installl this wh=
at is in CMakeList.txt and moreover something more? Using do_install_append=
() is not a solution for my case because do_install_append() cannot be over=
written in another meta-layer, for example in componentX.bbappend. So this =
must be do_install() function.</div><div><br></div><div>BR</div><div>Tomek<=
/div></div></div>

--000000000000847480057c5c9ac1--
