Return-Path: <bryan.fishell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA68E00519; Tue, 28 Aug 2018 08:31:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bryan.fishell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20584E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:31:37 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id x197-v6so3597536oix.5
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=D/ie3wqRea1XBPIzVQevqRQc4r+/gS7ro1ENLsmns2Q=;
	b=l3CfNLDRfwwLuzWMJL97E/cV4NTOJFVjoy/hnICco0boRR2sEVKTRbYo8JWxX95yPB
	YLpaWA6NHtaOi2ENQ+z+f64nCUhNwKebaiJck6rlhwD1ZBAhAM6PyXygt1/arFMzWMGS
	BFit+ZxSPi9hLJgUaZ57VYjZ2LGuO2OyUFiv/yitC54+qZlMJu0tQ5RWjgSPzWNhjA1R
	E4egsSybT2+5Sewz0t0iTVe3skumBuh+fU2SsGu9NLhGsA9JQcP5AIPn8RFPZhTA8XFr
	DceRUGXx+CkKtYAiJ71Ht/BOqx1Q7ecOshH1Sboust3KgQiQC52/UOwywvhhuo2thI33
	CcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=D/ie3wqRea1XBPIzVQevqRQc4r+/gS7ro1ENLsmns2Q=;
	b=h0RaRqcfNU5Qi8QSs45YhaqR4bW98364ufmnzl8YZ1jDATFWQXFUTgypq3g5zNYct6
	2uozGBjevfNz7t6/p9s8HAL2fbPCXOOmGmYPEuGaCcjuCMY6Kvc7Lx42sPktmkJS53Mj
	SvMFJ8EjweZfV5UVAuDi4ZGq0TET+UINqUax0OBlJCRlgrbbH5sYxDW1ium/YMJOU4qW
	hlUPzgBv0z9pmxVDjeyMKKD7esggsxe0/mCkHKbgpxTR4PqkM75HE6F6gsyDi+tshZmn
	zPMs17R0wkf63P+oVDYY85wbmzwF2Z9WQNWgs9HHtGnr6d5t/tTuzlybu+zrTOeXHQli
	ijFQ==
X-Gm-Message-State: APzg51DGYAhbv16GRZRPEcK5lEn8l6ru4BXf3Ur2iaC8rce9MAE7smQm
	GOVe70lUFmITMphhIxHDPzU253O7o18g+k5myEn/BA==
X-Google-Smtp-Source: ANB0VdYVMwgTRc5ECPBCGj47MYCyayfBi281dJQvi8+KGsLDXHPNFfwwE1gfd8JoYrHUTY1jcgTqOZP51DddjWyWPW0=
X-Received: by 2002:aca:4d0a:: with SMTP id
	a10-v6mr1584186oib.175.1535470296124; 
	Tue, 28 Aug 2018 08:31:36 -0700 (PDT)
MIME-Version: 1.0
From: Bryan Fishell <bryan.fishell@gmail.com>
Date: Tue, 28 Aug 2018 11:30:59 -0400
Message-ID: <CAPC-RG=00RS7hogJpNeMkPqZhUbDBN7O0=SAakbiUfQVW4P1_w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Production vs Debug Images
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
X-List-Received-Date: Tue, 28 Aug 2018 15:31:37 -0000
Content-Type: multipart/alternative; boundary="000000000000905205057480891c"

--000000000000905205057480891c
Content-Type: text/plain; charset="UTF-8"

Hi,

Given a target machine, is there a traditional way to produce either a
debug image vs a production image? If so, can you give some advice on
generally how to do this?

I have read about conditionally including a package (or bitbake variable)
based on another variable, but that seems error prone. It seems like this
is a problem that already has a solution, I just don't know what it is.

TIA

--000000000000905205057480891c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Given a target machine, is th=
ere a traditional way to produce either a debug image vs a production image=
? If so, can you give some advice on generally how to do this?=C2=A0</div><=
div><br></div><div>I have read about conditionally including a package (or =
bitbake variable) based on another variable, but that seems error prone. It=
 seems like this is a problem that already has a solution, I just don&#39;t=
 know what it is.=C2=A0</div><div><br></div><div>TIA</div><div><br></div><d=
iv><br></div></div>

--000000000000905205057480891c--
