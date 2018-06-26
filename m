Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E7C3E0143C; Tue, 26 Jun 2018 10:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81147E01438
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:53:13 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id z24-v6so8423224pfe.7
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=isNg899WsfH2vNqIVqBgh/wpv+2ywKsROJzoZNu8/I8=;
	b=QC+hcjhiLb7OoTqARd7bcHZ0qvgT7jD/lAeEDhhk2PNJ/1YYV4I6CwKMRCZ900G2Aw
	b7rO0EZbusOKcYhB56eZQDiRRzedWxnzGxGWkZKF/2rA5xI3JnSPGxbVab92JXPCYvEi
	G/7dc0yMri9EDKzPnYED1IOp/R+ec4xj/zxwW6zmcjcDXiWts3+2e1KM4vyqwOswx3AA
	mTcXq1SzMAs4WWvbxaHeZ+gYJUOuJIlCw42P7OUl4dk5+07s4hhxpVPVuPxHQwU+Qww6
	q/gN7bnko+M8YL49r59HSfOWOhpz221POBB87YJWLghYAA2lWcasr59AVcaRCyGYsRab
	DRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=isNg899WsfH2vNqIVqBgh/wpv+2ywKsROJzoZNu8/I8=;
	b=WHwZ8dvYv2qyRJ0JTRCogwTD8TLPQfGoh7xbO+UjzkwYe74uM+y9byEhvlpdJew90M
	rqK5HLmRjt8hCy52A+toDy06/BoeyU1BwWsbi+qEhcRLTn9lyNajSyLXqdvi4raNv0hP
	iu/BHgP+ljDVdp1oHeG93PGiVWgy6q9nQaZomW5iX+b7XGqRWkYmg2WGGcmEdzQA7t4X
	OxqMMGmNM1P432uK+1i68Qa9N/LrzOxMOjqWTjoEXBlh4TLFjeuY98Xn5+rATO6nXFmZ
	9vhHd+CxW45rISrM1sSJQxSuX0N0SYlN99j1wvc9PuQRuQF1evUja0JxTcmL7DM6LmEP
	cUZg==
X-Gm-Message-State: APt69E3+nawqj5Ar7OzDlnzrscBjvwYiDlZG+orDR9mIC70KXsCsk0eV
	62xIlF0lDK7AVAXhI5q/16jTp3LsSEnPo3+vw6EIhQ==
X-Google-Smtp-Source: ADUXVKLg4o51HpR1aVroQEf/ir0vBkVPbJtuRwobQOfyNZRc2MbMCv1Ay6/D1K4hr0V3zOA9+Re5jn9+ofGyW83qABs=
X-Received: by 2002:a63:541:: with SMTP id 62-v6mr2215907pgf.368.1530035592963;
	Tue, 26 Jun 2018 10:53:12 -0700 (PDT)
MIME-Version: 1.0
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 26 Jun 2018 12:53:01 -0500
Message-ID: <CAOsp8o_eP1eZ8gO9nXKP5dqBNRi1Bd+6KsOC4eCYF=cUb_yKsQ@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Yocto SDK and license manifest
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
X-List-Received-Date: Tue, 26 Jun 2018 17:53:25 -0000
Content-Type: multipart/alternative; boundary="000000000000032904056f8f2c90"

--000000000000032904056f8f2c90
Content-Type: text/plain; charset="UTF-8"

We use Yocto to generate a simple SDK that we use as a toolchain. However,
it appears that building the SDK vs an image does not generate the license
manifest (we have deploy/rpm, deploy/sdk, but not deploy/license).

Have we configured something wrong, or perhaps do we need to do something
additional to have the license manifest as well?

--000000000000032904056f8f2c90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We use Yocto to generate a simple SDK that we use as a too=
lchain. However, it appears that building the SDK vs an image does not gene=
rate the license manifest (we have deploy/rpm, deploy/sdk, but not deploy/l=
icense).<div><br></div><div>Have we configured something wrong, or perhaps =
do we need to do something additional to have the license manifest as well?=
</div></div>

--000000000000032904056f8f2c90--
