Return-Path: <vishwavtu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D39C1E00D15; Fri,  8 Mar 2019 07:25:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vishwavtu[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD867E006D8
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 07:25:26 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id a188so12654155wmf.3
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 07:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0VwA8s0SCby5lPyG6tbAPAD0ihtqVM81hOaJC2HaLjU=;
	b=G/07LR+U1QAAyozbZMCiTsfM69wdTSPbUhwnAqFBJdHiZRK/PF5SFxOxrXuzGKO0rZ
	QYNz/J1SHPAA+SeIKWqNdA3w8GPRXFg73Yrn8MxKcRn2tg/6nq5QJ4cW2WW7PZQVwXat
	5h4wtmu/YxNmSNFAd0ILSp8HcW8VTGKbedl2O6HUOGCL/9fQrEg/Kt7uhsveFZuEmxkv
	INRHVXcZ5Ylh4b0GyIsSOLd52reyWC0GVlJSUzukbBRvFTrankOFgQPEsh4H+lV4ma0I
	BAG3iYo9o2Y7MNVbAfoLFiSC4ORlhKZIyBXUn1UvoE4lEMoP/HwF+IK/Kq/6hgDwZxlu
	5CkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0VwA8s0SCby5lPyG6tbAPAD0ihtqVM81hOaJC2HaLjU=;
	b=hqh3dO4a9ZvlEhufDb6iOB/AsGgBvfE2fWYLgrgJhr+yXmbawBB37yJ3cMzLqXE9FK
	4VSVxA/I5OYGAlJInbVUbZq73Pj631OpRBt837LB3n4P9mQpqW0ZGL0JLQK40b/zhqjC
	NkBJHSFEwrw1FR2BYhtnc0MeeizxDq86gDmU3baV1DMYn7SHWsGYiee4xOqv8X2YP2fM
	xgij+3tJV43OGz+cVQHCxLnYaYK6dlsGrWaUGZ77HNyKDIC01x8Z+gi/Mg4ivqiABxIu
	5jJ5u0SyK3JSzKRV2JRdZcQ3vPGBR5tH7mJlTZHT3b/BH+vtYR7tkLpX/jmsCNLWUxng
	g2Hg==
X-Gm-Message-State: APjAAAU2iMJSlt8fw6j+jV8wNriqIsURkc5UMoNtbcHOnGsaWzCfb4fD
	9RC9AQHf2Dn5HXUmdbzh0MCQsnXLmZGkgxhbKXPXSuOBzL4=
X-Google-Smtp-Source: APXvYqynP2Pv55RNRzRPpjdSTvzAGDwBvNCukmlNlvkJNexxGDbDBbYtQ1902Wesd3sQRiPo1Cy4ZOPUe/Lz7IHz2KQ=
X-Received: by 2002:a7b:c056:: with SMTP id u22mr9194531wmc.5.1552058725476;
	Fri, 08 Mar 2019 07:25:25 -0800 (PST)
MIME-Version: 1.0
From: Vishwanath Chandapur <vishwavtu@gmail.com>
Date: Fri, 8 Mar 2019 20:55:14 +0530
Message-ID: <CALQBcOd6tYi8eD3CGHMRtHfKUNwYvONXEa-=pC9MUi_TVFEqqA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Delete /run/nologin after boot up.
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
X-List-Received-Date: Fri, 08 Mar 2019 15:25:28 -0000
Content-Type: multipart/alternative; boundary="00000000000000ad5a058396d5bd"

--00000000000000ad5a058396d5bd
Content-Type: text/plain; charset="UTF-8"

Hi Team,

We are using poky thud version with systemd .we have enabled pam mdoule for
authentication because of which  non-root users no longer able to login to
terminal/ssh.
I have gone through systemd documentation according that  "/run/nologin"
should be deleted after boot up so that pam module cam allow to login.

There is already init script is available but it deletes in /etc/login not
/run/login.

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/rmnologin.sh

With Regards
Vishwa

--00000000000000ad5a058396d5bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
 Team,</div><div><br></div><div>We are using poky thud version with systemd=
 .we have enabled pam mdoule for <br></div><div>authentication because of w=
hich=C2=A0 non-root users no longer able to login to terminal/ssh.</div><di=
v>I have gone through systemd documentation according that=C2=A0 &quot;/run=
/nologin&quot; should be deleted after boot up so that pam module cam allow=
 to login.<br></div><div><br>There is already init script is available but =
it deletes in /etc/login not /run/login.<br> <br><a href=3D"https://git.yoc=
toproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscr=
ipts-1.0/rmnologin.sh">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree=
/meta/recipes-core/initscripts/initscripts-1.0/rmnologin.sh</a><br><br></di=
v><div>With Regards</div><div>Vishwa<br></div></div></div></div></div>

--00000000000000ad5a058396d5bd--
