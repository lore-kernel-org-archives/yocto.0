Return-Path: <jjosburn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 415F4E00C35; Thu,  3 Aug 2017 07:55:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jjosburn[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AF38E00C32
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 07:55:55 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id x3so14918098oia.1
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MKEm58l8ZMZWDslWJNEbDpsHmL2ziTL8D5zifgpRYx0=;
	b=CED1tJfbcrwXc2HZC673bSRiQSOCqPC8214zGsZAFzw+qxYQtObgMrpt3fm7U7228z
	vtK8CR/iO7zhtavqyBvuxtk79obrWg1XhhcWue2o7fAaSMWgDnuzyJjt2K8T1Z/2MaS8
	+zG1peXbAM5t6H6mwSu3AgJoIxdDQIenQkJ3XOOo4xy6TJD+wzwXENbPqK/RPKc5uTy1
	+X83WH0UIhMzJ0JbEYnuH3WdgQtWgBsmGyRBaAB2BjmOMrr5uhZDgGprc+0aV4i3q6RE
	SIdDvV/2o4r75a5TKoaUWRD44ahRClNHWvdBNbP3KiOz/RFwH3pPb6s+TmlK+kjmzIyN
	Ja5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MKEm58l8ZMZWDslWJNEbDpsHmL2ziTL8D5zifgpRYx0=;
	b=BQ5HjmhQmy57V/nO0KiVO4aRG6mzmMzaKu7Dgbw16aIPqH5/H0k1lz6L6gXvtJ90QG
	cn5uTBXWs9LR4anLsvfsRpulZ5DB0Nx0BgDIFnQ+MxCYZPucArsMQQSw475wVVdMGIuS
	bqq6q+k6UKXAc5d5qQFbXno1SIqnXHf0/YmU0rk5HDHLye7b3Qr7sgrsiaYFbmZphV4X
	+OoCgVgt76LxjL3YrZth2oPAsrOrwVGomxnV9I2hvwimreWAC9hBG5xxDEWsXjg0JdMP
	R7UXzrlasXFUHCYHaCI2dJP6gZdyZ6HJIXPrty8xOIS/IL4rTyRf0E9cbLWqiRWRwt1b
	htnQ==
X-Gm-Message-State: AIVw111WICruKXBDoYsS80aMwhYsVtHR4/QaKu+x11c+pLzLYba7oWiP
	Rc6tT1sxvH6UNOFEAxmAwgrOLqGRh1pp
X-Received: by 10.202.86.132 with SMTP id k126mr1965661oib.154.1501772154682; 
	Thu, 03 Aug 2017 07:55:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.97.7 with HTTP; Thu, 3 Aug 2017 07:55:54 -0700 (PDT)
From: "blackthirt33n ." <jjosburn@gmail.com>
Date: Thu, 3 Aug 2017 09:55:54 -0500
Message-ID: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake download only
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
X-List-Received-Date: Thu, 03 Aug 2017 14:55:57 -0000
Content-Type: multipart/alternative; boundary="001a113d3734d042a20555da9377"

--001a113d3734d042a20555da9377
Content-Type: text/plain; charset="UTF-8"

Is it possible to perform a download only bitbake of a recipe/target?

For instance only download the necessary files for core-image-minimal?

James

--001a113d3734d042a20555da9377
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible to perform a download only bitbake of a rec=
ipe/target?<div><br></div><div>For instance only download the necessary fil=
es for=C2=A0<span style=3D"background-color:rgb(244,244,244);color:rgb(0,0,=
0);text-align:justify">core-image-minimal?</span><div><br><div>James</div><=
/div></div></div>

--001a113d3734d042a20555da9377--
