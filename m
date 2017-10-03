Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A706E00CF6; Tue,  3 Oct 2017 07:13:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eliya.mir[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
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
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CE9EE00CF3
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 07:13:11 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id 90so1702006lfs.13
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 07:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9wNvGMd4Hxs/y+w3IfSAB7/a4tKLb7iR0QTXX6iXlUU=;
	b=Q6dm8cvq7oOjswJy3/eSTUdX5HGWUdEglWgSfQM5AvtmSIrkF5wib3RdgnA35Mmigq
	8AMKWimKPmhFVNFGbKtIxkhb9cK/JoAfNbcnicl38l49vJyGTzs5LB3qokZjS2lA5/yM
	bx2aJ/9lU5s1+D+tr8weiAu3Bgwj44pK0tbrMwwLt1wtlsBbueD7jm1WSC8IMfnBPwcw
	y4iNHytI29a6K8GspHPkHABFQzMtR/OYovhnnP4v9TTdxNVutbGb79uAX0CDFWIV6dDc
	ZJRFL5y+Eeg3Qx2Ud0ct1FRlmFsntAW1DOL1cRKs3dfJEsxcjCiCGmSdrrZ8P/dpnPAH
	5GZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9wNvGMd4Hxs/y+w3IfSAB7/a4tKLb7iR0QTXX6iXlUU=;
	b=n/uu55VTOttxIebnroKVO6re7ly2Tw/RQzIJB6Ej77Zjnm3dFwIiIWSdBhlJMakYeD
	/EcIsyN6LamTC6ngmlrLOzlYiNoVe70tDgOZwo9ar59l0dH9Tm7OdTIJKgQXlC7UUpZn
	/tVvjzQsqkxCqBkkeuBMpVhWIEs54Hcx4184+pZ6WECdzE6yKy5C0njBjFug9M7S0A7s
	TI54MQPFQJbM3ryhOQx5aFQT8uT/Y4i2UeT5Mt/rvc95NeYMeodlwndICpbuV+44sBXX
	g1Iw6gYJF1mm80XvGohkRcHu9Z7ujQQxrdvpnfmW+ImvE5/gH6OFtHvoC5rJaDNKfuWD
	qbtg==
X-Gm-Message-State: AHPjjUh011Ytq5G6AzfVT44CfDO2ldoOOp2ILsWDwsasRoIrL8wzK3IC
	2xPg807au87asjo/AwgUXNmh3sGPyfhusH5a3IQWq8Wi
X-Google-Smtp-Source: AOwi7QBrDi2Z3OVUbqS4lqwW93GPG6JhgISB2cQNI65jIjS3a99H6gChvSe3pX5R0+jQeHGujuqu9qYglt5OwnKN06Y=
X-Received: by 10.46.99.79 with SMTP id x76mr9912924ljb.55.1507039990642; Tue,
	03 Oct 2017 07:13:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Tue, 3 Oct 2017 07:13:10 -0700 (PDT)
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Tue, 3 Oct 2017 17:13:10 +0300
Message-ID: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: pkg-config search directories
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
X-List-Received-Date: Tue, 03 Oct 2017 14:13:12 -0000
Content-Type: multipart/alternative; boundary="94eb2c0742d04dfc6f055aa517d5"

--94eb2c0742d04dfc6f055aa517d5
Content-Type: text/plain; charset="UTF-8"

Hi all,
I am new to the Yocto project.
Is this the Yocto forum ?
I would like configure pkg-config search directories but, the program
configured from the sysroots file system, so it does not see Host
environment variables.
i.e : there are two pkg-config apps : Host's pkg-config located at
/usr/bin/ , and bitbake pkg-config located
at ~/Yocto/build/tmp/sysroots/x86_64-linux/usr/bin/

I would like to edit bitbake's search directories.

Thank you,

Eliya

--94eb2c0742d04dfc6f055aa517d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<br>I am new to the Yocto project.=C2=A0<div>=
Is this the Yocto forum ?=C2=A0</div><div>I would like configure pkg-config=
 search directories but, the program configured from the sysroots file syst=
em, so it does not see Host environment variables.</div><div>i.e : there ar=
e two pkg-config apps : Host&#39;s pkg-config located at /usr/bin/ , and bi=
tbake pkg-config located at=C2=A0~/Yocto/build/tmp/sysroots/x86_64-linux/us=
r/bin/</div><div><br></div><div>I would like to edit bitbake&#39;s search d=
irectories.=C2=A0</div><div><br></div><div>Thank you,</div><div><br></div><=
div>Eliya</div></div>

--94eb2c0742d04dfc6f055aa517d5--
