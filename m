Return-Path: <lakshmikanthr36@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EF91E00B8D; Sun, 25 Jun 2017 07:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lakshmikanthr36[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.48 listed in dnsbl.sorbs.net]
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
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4899E00524
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 07:37:09 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id m77so49612462lfe.0
	for <yocto@yoctoproject.org>; Sun, 25 Jun 2017 07:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JZBouaMFPS2dfkM5p1R9TEevM4f9Dp38ymBYyD52Qqg=;
	b=lnWpkSElJXVo3WbUW1mPEcwDEIrO82Hl9jlAMmA0vJgNzeZ8yE2x0dxCrE7jlEFcsO
	FOu5EDv9v57DTY3u+RklqXOpBB0+tPZ4JxZaxWb06nGi08z/pu0qv5m3aaaym4hFVrrB
	t2imGSjZuWoU4bjjRwrXvPxwUxuJ5He63IN4CFUA5mAqsDqMcz7diwa+uHKcWoVAmiaW
	OyT/S37O+gxeiScFH5TilcQ01IF2s8wfR7UnJMM18txAZWowVblgO8mcTfGJ0h+gwNrc
	fXS9siI3++SJs/SXCoksFyrpt2IpEKWQY7In83UvKDTDtSq/TndKFXElWO9qNq+ObsqV
	1Ecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JZBouaMFPS2dfkM5p1R9TEevM4f9Dp38ymBYyD52Qqg=;
	b=EzHbNgGwGh0EdmrjgzRfDska9rHjnb7oI7m8wjP5QT0G6oIdFeaVVLdkKzzm6lLlAP
	6HO3MtUxdo2Mj5FYUKF9gd01T+BinBU9gc3whXKlSqzNXHNLHO1R7+fATbPJg62mj98A
	ztj4wb7jgAmm2iYYVd2UDuTfnZXByaINoz84/erxV2v2toygXmssmjBeMY/1BFPGP9x1
	3Prgy5ufdcYICOQOfVqD4CFAjSCP1CIZGu4NHdUwSV3g5wNKktP/UG3D+zTDqQ1/jZWa
	hMl/9z20jJbznRGec7OUfU3j0Ns4hk0JhrG7nUVOMn9zbCUM71bCtj3nV/XYnEBDXHQR
	llQw==
X-Gm-Message-State: AKS2vOyNJDLVND1D+ODkquI1yg1W5ZOacIJXSD6nNKL2VaTfis/ueyhs
	wH8E1G9UqLw5VGGVvb4bWiZ38JRpRuRB
X-Received: by 10.25.28.70 with SMTP id c67mr1281834lfc.130.1498401428349;
	Sun, 25 Jun 2017 07:37:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.71.67 with HTTP; Sun, 25 Jun 2017 07:37:07 -0700 (PDT)
From: lakshmikanth r <lakshmikanthr36@gmail.com>
Date: Sun, 25 Jun 2017 20:07:07 +0530
Message-ID: <CAKc9Xffk5ACJekJifP0p+WPtiHqmuuURqTUuVneRzuJ8hMC4-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Guidance for building fsl-image-qt5-gui Image
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
X-List-Received-Date: Sun, 25 Jun 2017 14:37:11 -0000
Content-Type: multipart/alternative; boundary="001a11402258de2d720552c9c424"

--001a11402258de2d720552c9c424
Content-Type: text/plain; charset="UTF-8"

Hi,

Good Evening ,

Actually I wann to build the fsl-image-qt5-gui. I was getting more error
while building morty branch. will you please suggest me to build the
fsl-image-qt5-gui. could you please guide me for building the image. hope
am waiting for your reply .



Thanks & Regrads,
R.Lakshmikanth

--001a11402258de2d720552c9c424
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>Good Evening ,<br><br></div><div>Actually =
I wann to build the fsl-image-qt5-gui. I was getting more error while build=
ing morty branch. will you please suggest me to build the fsl-image-qt5-gui=
. could you please guide me for building the image. hope am waiting for you=
r reply .<br><br><br><br></div><div>Thanks &amp; Regrads,<br>R.Lakshmikanth=
</div><div><br></div><br></div>

--001a11402258de2d720552c9c424--
