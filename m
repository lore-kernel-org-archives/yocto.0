Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31AB9E00BEB; Mon, 26 Mar 2018 00:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B2E1E0070F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 00:54:41 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id v13so22081291iob.6
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 00:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=OjF4HcFQ0BchCba9yGHyhiEHVzyQA3EuwISmguWFI2Y=;
	b=Fh06snDjPmkfJZz13P5df81YxUb3mcPzP4vbN2W47ZDqg/RmYhnvsHNZAYSa2oVW13
	UqVA7EcoR5fEVhfJetxnfdrSZcW1FxyorrJS59thyK4Gy4RvSM2mLx2RDThgTpWBGf2T
	3sWVDv7Wv80X1rvb+Fle5nzPmmOi3n8Flkkrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OjF4HcFQ0BchCba9yGHyhiEHVzyQA3EuwISmguWFI2Y=;
	b=O5U4ZD4deOpwQUfcGvDAtqiPMU8VG3pC5eq1ji6pAhDCkh8iIcL1WPobOIOhUj2EII
	3Lq7CdvFZlCtAngVZLrZmYyLkCfFy8RLoYSZCAfQAb1Gluh8VMzRCu4xnk6rjK/4uGGz
	1OTHM9gQTrtnA1LylTULzEhYldBSV00rLWaSaI5qH3u8H1OmE8OKau+gcx9LVTkOsR8B
	A83C9LphaoQxjloerfUvOemPE1eqGk6SZQscDKJyQkQKDpLE+CRW4GCBH9EQjzV4PZZ+
	UMU6V4adxJVOq1nVdqhBU1CSmngO2bDZwBnCAmrpBtjxuBp8AqXMaOeHOwOJ1YKn5t8k
	QEpw==
X-Gm-Message-State: AElRT7HP1e7bqewn8fn2iChHW85vOQGgDmZad3L3MSUK0+vqYfNYneQh
	0W2qEc2gy+UOtAWSKKoByDVps6e2KK73+u66nnFsAPDk
X-Google-Smtp-Source: AIpwx49bEUvKp5uOtCrNGFTX1SQwQx+BZk8lW3RGrSAUfeNNGg1ghFyWuuz51YR3ZxxJ6pjEt6PPavP/qBZhipywpiA=
X-Received: by 10.107.156.196 with SMTP id f187mr21880702ioe.229.1522050880497;
	Mon, 26 Mar 2018 00:54:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.102.100 with HTTP; Mon, 26 Mar 2018 00:54:39 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 26 Mar 2018 09:54:39 +0200
Message-ID: <CAALXFYzFPJE9PAgNsGU+tOeGrPHB-ZxM4sobbTS1fsD6==e8CA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: How to check list of installed packages to stop the build process conditionally
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
X-List-Received-Date: Mon, 26 Mar 2018 07:54:42 -0000
Content-Type: multipart/alternative; boundary="001a1140bb3e1016c505684c1614"

--001a1140bb3e1016c505684c1614
Content-Type: text/plain; charset="UTF-8"

Hello forum.

My layer provides two custom recipes A and B with exactly the same
functionality. To get a working image, one of these two recipes must be
included on the generated image (A_installed XOR B_installed).

So I need the build process being able to check the list of installed
packages, stopping the build process in case any of these two packages is
included.

Does yocto provides some mechanism to manage this issue?

Thank you in advance!

--001a1140bb3e1016c505684c1614
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello forum.<div><br></div><div>My layer provides two cust=
om recipes A and B with exactly the same functionality. To get a working im=
age, one of these two recipes must be included on the generated image=C2=A0=
<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">(A_installed XOR B_installed).</span></div><div><=
br></div><div>So I need the build process being able to check the list of i=
nstalled packages, stopping the build process in case any of these two pack=
ages is included.</div><div><br></div><div>Does yocto provides some mechani=
sm to manage this issue?</div><div><br></div><div>Thank you in advance!=C2=
=A0</div><div><br></div><div><div><br></div>
</div></div>

--001a1140bb3e1016c505684c1614--
