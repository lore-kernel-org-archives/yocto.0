Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 508ABE00ACE; Wed, 19 Apr 2017 07:57:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED087E00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 07:57:55 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id g60so21141743qtd.3
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 07:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mdwx8M0ymIfbXTXypAVoesDaAowKfjvmZjT99hIB7bA=;
	b=CObkwlsCU75jCUK/LyzVaYwBK1VC250U9MoxN26KPZ5os2jrIjsYfaWBKVE7j16jdG
	5dby3Umxt3LTgw6KBOnA5rkBZw+s2p4uvUp+qfQmQqvyoZENs+F4nwyf5eAQxMJhryto
	byan/tpyjTVIHH8dKtVPOlU3quSJxYOqx1Rwhq9MBaIwl88fqFhDrZ8YcUZHGT7JoVic
	5Yu/Kt+yroMZX4fEyGZI+jpnuASxxUQMI0Vu4Ta6gnVYjAfauMrieB9nlXSAmkc1QplN
	DbHPgnhM4V3Jcsa3r1rSokovXH+fvt5aNhODZ1uv5K7dWUfMOTky3vVxUFnDi8OP9f35
	VMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mdwx8M0ymIfbXTXypAVoesDaAowKfjvmZjT99hIB7bA=;
	b=iuUjW2nJ7dYvN4lfnRBlTRsNuUtugQBa2P5wIL1WElvR5p5YGCo+6PGf4gAd/5cD/q
	WW0S35oeEwptXVp2IuucAinrC5KdusJlzOuDIPd8ycT64QdmEelA44/qv/gUpN8j5UX2
	hdRL9+BE6NdM7KOC9rlEIrSS7C+8SdvvOW8D10JZXScTS8FnYdW41NBwX+aIkclmyy/L
	VtJwX1698N5yjpof+Ey+vseupwKYHsLdiIFE3n59K3aA51/dEtiFkutGsf2OkemJLwf3
	H1mkGAubjjh2zXx4xWr7mkFILZw8PGsdtWLpVcMuuqYeVCsoGLXyB1XaQHdmNu4AmoAQ
	+e6w==
X-Gm-Message-State: AN3rC/5cuc63ymGhnymIcSwwZsMsSYZGZhZcOBPH5lChIrgKEwCpmr/U
	nleFG38/0JgqZhDoImjol1Fjm3DXOZtIV/c=
X-Received: by 10.237.60.135 with SMTP id d7mr3232816qtf.7.1492613874803; Wed,
	19 Apr 2017 07:57:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.48.73 with HTTP; Wed, 19 Apr 2017 07:57:54 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 19 Apr 2017 16:57:54 +0200
Message-ID: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Share recipes
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
X-List-Received-Date: Wed, 19 Apr 2017 14:57:57 -0000
Content-Type: multipart/alternative; boundary=001a1140109ecb6b4b054d863f16

--001a1140109ecb6b4b054d863f16
Content-Type: text/plain; charset=UTF-8

Hi! I have built some recipes (ddcutil, unclutter, supervisor,
nvidia-propietary-driver...) and I would like to share it. Should I push to
openembedded meta or create my own layer?

--001a1140109ecb6b4b054d863f16
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hi! I have built some recipes (ddcutil, unclutter, supervisor, nvidia-propietary-driver...) and I would like to share it. Should I push to openembedded meta or create my own layer?<br></div>

--001a1140109ecb6b4b054d863f16--
