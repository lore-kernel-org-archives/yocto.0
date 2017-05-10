Return-Path: <andreapicaro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B917E00B45; Wed, 10 May 2017 03:52:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreapicaro[at]gmail.com)
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
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78A1E00B3D
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 03:52:47 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id b68so13370426ywe.3
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 03:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tnY9d7DKKdaV5BIzB/ix3aXGG0FZVlAJYIVSDMl52vk=;
	b=YXHH+mvtKTYGYSLuXovcRai+Z+WGMk6FCvBmYotF3Lmgz89NbpsCtVB4DVbhqizqcX
	ZVCcdYrXlv5l9wWmE6T4YZbXDfgUwGL1KwHJXfeoB52xLHbmTRZBrR0YLlNeQo5T759X
	UK7FXS0tkG7pBnH45eovzMryynEJ0vxuHYNj6UqgDppar7xbuckKXtXnD8m6gkfxfuwf
	Q80n55rJNpxvyPXC8dxLgpcysQcyw1EIqVjwJps2FjWPnWiiX/U2rpgl3Oiub7iZ1mk5
	pICvyVbc5FQEQK5lpZYMUM4AfY0oIeyb9waoP+P+tly0kUiQsTSJC8MNXQF6fOu+pKRo
	Hl4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tnY9d7DKKdaV5BIzB/ix3aXGG0FZVlAJYIVSDMl52vk=;
	b=FnRLppjWekhGnxo1EkcCYFcZx5zTYyIJ+MS3OXSwYOI5jHXA0HQH3p67AIuNOows30
	wmrLaotSYRWQMBm3mDlwUP4LLxmF1vKOTrq84TS0GGpd0w22bc41mzHntFp8EtNLn8aj
	JeMmr8AGrSE5LGkJsJhXrwwtRbgV0+g5CqL66msd2KjytILsWf+2+G1Xd1S75v3p695o
	LoM0LK8/TvqwGvx0+USg+f822t4PvbdWcoAx7knTXRHdcljPBMgdEI3DrSr5xNDYQ5Jr
	bLqVboQcWvGZ+8ikpvZj294DeKitonkiM9Mjr6Q96Vz+5LtoK1iI7LUhYzEuyCQhOrAm
	vQrg==
X-Gm-Message-State: AODbwcAnQ1hOWyhu0B2Vw1cTxL3jpkJglAMgPHlkenZwfs2oHnjZ+4df
	Jeke1euoGWSufIjms96tRP5F2Pdlvdsn
X-Received: by 10.129.172.39 with SMTP id k39mr3890711ywh.249.1494413566388;
	Wed, 10 May 2017 03:52:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.4.200 with HTTP; Wed, 10 May 2017 03:52:46 -0700 (PDT)
From: Andrea Picaro <andreapicaro@gmail.com>
Date: Wed, 10 May 2017 12:52:46 +0200
Message-ID: <CAA7DeJD4WV=RZ6CCk5aDO9Ex06z3jr6s=0ceKrdJBwwoHY4fUA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 16 May 2017 12:05:36 -0700
Subject: QtWebEngine cannot show google sites due to certificate errors
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
X-List-Received-Date: Wed, 10 May 2017 10:52:51 -0000
Content-Type: multipart/alternative; boundary=f403045e56acc5b016054f2945bb

--f403045e56acc5b016054f2945bb
Content-Type: text/plain; charset=UTF-8

Hello, i compiled Yocto Morty for an mx6 machine.
QtWebEngine works fine for all sites (included https by ignoring
certificate errors) apart
from google sites.
I've found other info about this issue googling around but it seemed
to be solved in latest chromium builds and none of the solutions tested
gave results.
All google sites gives ERR_INSECURE_RESPONSE and i see this error in
console:
ERROR:cert_verify_proc_openssl.cc(238)] X509 Verification error certificate
has expired : 10 : 3 : 2

Any hint would much appreciated
Thanks

-- 
*Andrea Picaro*

--f403045e56acc5b016054f2945bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, i compiled Yocto Morty for an mx6 machine.<div>QtWe=
bEngine works fine for all sites (included https by ignoring certificate er=
rors) apart</div><div>from google sites.=C2=A0</div><div>I&#39;ve found oth=
er info about this issue googling around but it seemed</div><div>to be solv=
ed in latest chromium builds and none of the solutions tested gave results.=
</div><div>All google sites gives ERR_INSECURE_RESPONSE and i see this erro=
r in console:</div><div>ERROR:cert_verify_proc_openssl.cc(238)] X509 Verifi=
cation error certificate has expired : 10 : 3 : 2<br><div><div><br></div><d=
iv>Any hint would much appreciated</div><div>Thanks</div><div><br></div>-- =
<br><div class=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"2"><i>And=
rea Picaro</i></font></div></div>
</div></div></div>

--f403045e56acc5b016054f2945bb--
