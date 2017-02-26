Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 486B0E00970; Sun, 26 Feb 2017 07:54:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
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
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86EFDE0033D
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 07:54:06 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id z127so24604237lfa.2
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 07:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=24D5W6z0PsXSGHMZZ6kfvx/mHAN7YfCW+q9RwNYbDeU=;
	b=CGYktqw+j2YONtla1JCQKFfCNv1Hhj4YorWF69i1EIdPr9s4856x17sLeo1Az1kGJr
	GHNZUQsAywdgi9z5atUpDEp6usBOBNt/oSf2XFTEGMw5PQaMpSmxjMchf5guPk+Hw/Oe
	C22BAj9Uvp4FASolB5BeS6zkkqjyHZAae3rK0ZpOiPAcOxbT5/6pH4C4mFTUE3t47Uvw
	RNpSEn2sdlVrQ+ueXxR0ZnmW4C47vUhPUAkYF7u+HNQGJovOCgRp3hr5rFHr2PfUG7Ca
	k1SRKumHRd5TCsnA+rUNbgcg9DVTOkZcV4682B63IHAKm10Nlc3LhG1CrciestsUOdFw
	FyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=24D5W6z0PsXSGHMZZ6kfvx/mHAN7YfCW+q9RwNYbDeU=;
	b=bVGtoAs66NLiAOLjNprqfpuL0pFjDu10u2O7rZ8yzC0Vb7yYRMwwwJPIS4rkpWB5iW
	HEsh5asiMNWvpZgMnkmWWh4QgI7fOT4Z0mTu+ECHayFkmPWA09XWbgiPuzApoxCp0viU
	gD+XqjEPahLMoOdLOcV1cs9Vblr+AMjL8N7vH2iD96PX2/9cfka57AAFhbMLjKTU5bIV
	ug80io9yGe19CQsO3eLNKz7Y+juqzVz/BykSzk0GsCXwvgxPdFc2f8PkIE/Pg4p2GGpI
	ZDsprCv+s7vCwqVqmARzUzfAMujOGC15mJ2Ee76a45E/gCtueKCve3dHR4/UGbzwbftm
	Ip9g==
X-Gm-Message-State: AMke39ncoYWYhyaH2L+g+prrtbHpbd3uAmlt0yegsnSER+vjBfLX1xUZUki0j0GrJ9p472OFLts4u422V/6XYg==
X-Received: by 10.46.75.26 with SMTP id y26mr3210104lja.27.1488124445874; Sun,
	26 Feb 2017 07:54:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Sun, 26 Feb 2017 07:54:05 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Sun, 26 Feb 2017 21:24:05 +0530
Message-ID: <CAF1M0z5-fo4TOBppF7ETWYUpPc-tqcni=pv=+oyRnHv3PuLUdw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Conflicts: Meta-layers with same priority
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
X-List-Received-Date: Sun, 26 Feb 2017 15:54:09 -0000
Content-Type: multipart/alternative; boundary=f403045ea286fa673e054970f8a7

--f403045ea286fa673e054970f8a7
Content-Type: text/plain; charset=UTF-8

Hi all,

I need to know, if two meta-layers in poky has the same priority, then how
it is resolved.

say e.g,

mylayer-1 with default priority:6
mylayer-2 with default priority:6

How it will be resolved.

Answers would be appreciated!

Thanks in Advance,
satya

--f403045ea286fa673e054970f8a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I need to know, if two meta-lay=
ers in poky has the same priority, then how it is resolved.</div><div><br><=
/div><div>say e.g,</div><div><br></div><div>mylayer-1 with default priority=
:6</div><div>mylayer-2 with default priority:6<br></div><div><br></div><div=
>How it will be resolved.</div><div><br></div><div>Answers would be appreci=
ated!</div><div><br></div><div>Thanks in Advance,</div><div>satya</div></di=
v>

--f403045ea286fa673e054970f8a7--
