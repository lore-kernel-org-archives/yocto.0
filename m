Return-Path: <prasoonkumar1295@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9830E00A5C; Mon,  3 Jul 2017 07:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prasoonkumar1295[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 707D0E009C2
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 07:33:36 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id h64so57600708iod.0
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 07:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=G2ysuG+a1CwGwisXNqLzbo1/v6Vhb72KqITNKhp/4Bw=;
	b=cEgPE1i1N1VaW/brV3YE8BD08UbyKxHCRm87hhlPJZlLwz2ZFkuLcY5TtFoAhNKbAk
	RUh1TOtVkZRT3lGt8x+XHAeF+SWXcUSy/nTBJDGuQdD+/c7haL7LcPfvPft+pGjmjP3r
	Tqn5Kp4qM5WW3Ql/EfGLEc9MEJevIFRjXzzpSBXqkMbHXhYRX5huCk9n96rgLtaIlJhU
	RmZRxyIGvR09sr7Ox7WgUXzzDJZoJij8y7wb9MWFEnyoaJNxGp3isMdHofPSfmer5+5T
	CGG1Y1j1dfGnovh1zTHWOZ+JBd1pyR9otcWU2SPMMdkuZLCAuP2L2SPTwyhT8/GzOyCa
	3uWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=G2ysuG+a1CwGwisXNqLzbo1/v6Vhb72KqITNKhp/4Bw=;
	b=kcN1mt7lmx+jXmXKNXbFxDxNOBwwSZqiFQ1v6MB/+SZlnIQEu6YbuLmMEYkFKFwL8P
	shwuho80aq4pvU3FLhgKOxDKlsEz7fxAyDMfdkpPmQus1gB23E+IUDtNjdmlDe7F8N2J
	yyCYy3NpeW9fvrgEueT01HTW3cUGyb3DKNr6m3IomCZiRidypKOrXrPTvxkvOUZJDxLM
	lKQMxP3iTpGhNXwwVPmhh2BeKRp52Kt3TO00UAjqlTdNvYW6OYhIb4yJLcvEODqfskb2
	G4o+rL84bXA6I3HNij6HLnMy7BJJTAdAgQ5rPrnMK+w9+puOX9j+5avuer6NkjgAiUtc
	dQDA==
X-Gm-Message-State: AIVw111wJBZxeHp+Rulg2iS2CxSGK9UG/qbLqDBGXCEVg/EtBqBtJR64
	poj0fh1Cm3gD+zXhorPGlkWe14uE/w==
X-Received: by 10.107.158.83 with SMTP id h80mr9337088ioe.98.1499092415113;
	Mon, 03 Jul 2017 07:33:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.122.133 with HTTP; Mon, 3 Jul 2017 07:33:34 -0700 (PDT)
Received: by 10.79.122.133 with HTTP; Mon, 3 Jul 2017 07:33:34 -0700 (PDT)
In-Reply-To: <CAGAEfx6MQLgWx=_ztMLMDos9uydADYNwJMBQocG6v8Qdu=0Xmg@mail.gmail.com>
References: <CAGAEfx7w9M+pdtMJO75yo1bssGcM-HFmh=+iN4zs3u2ycDJhHA@mail.gmail.com>
	<CAGAEfx7M8oFxJ=xPFTbTFw9zWmOVaQjOEBL_eRoJKVp5Hmq2qQ@mail.gmail.com>
	<CAGAEfx7NuzmNw5DNmUOtZwdSk9Wdq6Bx53pO7oAZ4hYKEH18EA@mail.gmail.com>
	<CAGAEfx4hdcEvvqP8yEouESG0sWv3f6N=OK6Jrcm6BdZGNWpV=Q@mail.gmail.com>
	<CAGAEfx5t9=0VFkg0J-zSpOUVE6t4ZOd8=PJbxzw-ANusAir3cw@mail.gmail.com>
	<CAGAEfx48ZAG4TDS2T+uE1_VoJfqL5SskG5r6cTAd-=GHFa-j_w@mail.gmail.com>
	<CAGAEfx5o3w1i_p4+Xf9Dqvsh-WM18=JhyadeLcM4V0pkQOmHgw@mail.gmail.com>
	<CAGAEfx5S8bz-F+eJTD6esHg3FV17vOcufM-42Q5__LpDyKg4qA@mail.gmail.com>
	<CAGAEfx7aw2ZHLvKAg7RN0EnTXz_BoQB-bB-S3bsRi_vH+AtW-g@mail.gmail.com>
	<CAGAEfx6MQLgWx=_ztMLMDos9uydADYNwJMBQocG6v8Qdu=0Xmg@mail.gmail.com>
From: Prasoon Kumar <prasoonkumar1295@gmail.com>
Date: Mon, 3 Jul 2017 20:03:34 +0530
Message-ID: <CAGAEfx6ncs54q2ZFBUd_9PVZZsaxt5921SsesG0J9-RAWSvTnA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: File system optimization in yocto
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
X-List-Received-Date: Mon, 03 Jul 2017 14:33:39 -0000
Content-Type: multipart/alternative; boundary="001a1140b72ee36eca05536aa60e"

--001a1140b72ee36eca05536aa60e
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to optimise the file system. I have removed the packages which
are not required using PACKAGE_EXCLUDE. It still take around 8 seconds to
load the file system.

How can I optimization so that my file system loading take less time. Is
there any way to load files in a multi-threaded way so that loading is
faster.

Any suggestions on optimising the file system in terms of size or time will
be helpful.


-Prasoon

--001a1140b72ee36eca05536aa60e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I am try=
ing to optimise the file system. I have removed the packages which are not =
required using PACKAGE_EXCLUDE. It still take around 8 seconds to load the =
file system.</div><div dir=3D"auto"><br></div><div dir=3D"auto">How can I o=
ptimization so that my file system loading take less time. Is there any way=
 to load files in a multi-threaded way so that loading is faster.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Any suggestions on optimising the=
 file system in terms of size or time will be helpful.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">-Prasoon</div></=
div>

--001a1140b72ee36eca05536aa60e--
