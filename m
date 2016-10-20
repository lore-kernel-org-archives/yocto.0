Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 486DAE0081E; Thu, 20 Oct 2016 10:32:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE079E0074C
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:32:45 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id 4so185023448itv.0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=5QFuf5NWs5Nau3aP7szFUtOvflLAmtAWeijv1+WLPRo=;
	b=lGCM3EHtdcTlya1LhmhjLzVaba/9OIlve8SNP83q4aEWICfd2IJXoIAEPOmKUd1M/Z
	7mEmSvZ+17YBhcZEGHSkMcd1Fffa9TClBrdQYDccXJCAPRDy2qSGtKLwHe+sN+mdX5rF
	TaP1FNXSc+zAQfMVAOjO0Gdxkt5fHXmE8nv1tx3auQv+O8fxFj4bt//vqEwNpCT8BO6E
	Viq8DDXA0sP6yFc1QlNSQ1wqtiFCQ6GvXhDUWdTkPT319xingNhbPiWKaapCgo+aNCpQ
	taobTqDHcT1EB2y3qxjTI9EZKNF3y/BAEsv/QHTKY5JW6RCJxD7FrWC2vAir+C1YZt7H
	imiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5QFuf5NWs5Nau3aP7szFUtOvflLAmtAWeijv1+WLPRo=;
	b=mCaPS6xljOAUr9cmPs11dzPUtSHbhxSsm/B2xffTBmlG9OWI19NGjmbtdAULRa7RTX
	Ee9v+ggvC0jAuPP79sVbPzVBFIbm2Kf2/JpW8LK1dwIk9Bes6Pg1IKxq99DH/8iSfUvx
	ydeNN2UZAcjHasDTXLTWZ+FWGK/6wvUD90Nua4iTdfE6Oa04vxlZ7ItfJvISUSVt3EC8
	t+dQng4iIbhc9/1tjP5/Lp2m/rz3vgXIMXDYdwWgNVRuLIkHEfp2EIZIBH7i1Y3P2+dw
	Rllclt6sQ3j28v36DHRIlnMTUrgIOYYxgtmYMshjSYZ9yH4ALpwzFS38SUZMDopGVEZr
	FT0Q==
X-Gm-Message-State: ABUngvconiTWBW4psMMD2KGiveEGL1ayN5dlo3RfnUjbGbYMDmBxWAzxjjDtdrVAUsENzb4uoQiiEtEWtIPqSQ==
X-Received: by 10.107.146.67 with SMTP id u64mr2121887iod.34.1476984764079;
	Thu, 20 Oct 2016 10:32:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.54.36 with HTTP; Thu, 20 Oct 2016 10:32:43 -0700 (PDT)
From: Davis Roman <davis.roman84@gmail.com>
Date: Thu, 20 Oct 2016 13:32:43 -0400
Message-ID: <CACfi_Z1THW3LYcqZbnsXWCKw3tyRPW00cSXOrsdzTRapixL_BQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Deciding between yocto kernels and soc vendor kernels
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
X-List-Received-Date: Thu, 20 Oct 2016 17:32:48 -0000
Content-Type: multipart/alternative; boundary=94eb2c05579433c90b053f4f5021

--94eb2c05579433c90b053f4f5021
Content-Type: text/plain; charset=UTF-8

Hello Yocto Community,

As I understand it, the Yocto project team cherry-picks certain kernel
versions from kernel.org to be dedicated as Yocto Project Linux Kernels
that have support for the officially supported arm target boards.

However, if I'm using a silicon vendor, such as nxp, for a custom i.mx6
board then I'll need to stick with nxp's kernel but the problem that I see
here is that they may not support that version of kernel for too long.

Are there any best practices or advice when it comes to how to avoid
getting locked into an evil vendor kernel ?

Thank you,

Davis

--94eb2c05579433c90b053f4f5021
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Yocto Community,<div><br></div><div>As I understand =
it, the Yocto project team cherry-picks certain kernel versions from <a hre=
f=3D"http://kernel.org">kernel.org</a> to be dedicated as Yocto Project Lin=
ux Kernels that have support for the officially supported arm target boards=
.</div><div><br></div><div>However, if I&#39;m using a silicon vendor, such=
 as nxp, for a custom i.mx6 board then I&#39;ll need to stick with nxp&#39;=
s kernel but the problem that I see here is that they may not support that =
version of kernel for too long.</div><div><br></div><div>Are there any best=
 practices or advice when it comes to how to avoid getting locked into an e=
vil vendor kernel ?</div><div><br></div><div>Thank you,</div><div><br></div=
><div>Davis</div><div><br></div><div><br></div><div><br></div><div><br></di=
v><div><br></div><div><br></div><div><br></div><div><br></div><div><br></di=
v></div>

--94eb2c05579433c90b053f4f5021--
