Return-Path: <scerveau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5D2FE00851; Fri, 19 Sep 2014 08:28:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scerveau[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42C9AE00819;
	Fri, 19 Sep 2014 08:28:34 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hi2so2244604wib.5
	for <multiple recipients>; Fri, 19 Sep 2014 08:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=yPWwhNSlX4XRIrSwH59TccFbHU/vIxlNJJfOWhLAFNE=;
	b=n4X5R2mCMZqdHTDNucjiB6AJaBHiZRV4DBWGvOVTPPRf6FcxDsij0JwbNOR8/uxCor
	venE3JJkS7Q+VysFqkir4OuCurZ2XQkCr5g6tzxVIeS11JrspeMe+GvoMdh7r50ZctnF
	QJXdQMGxym0TFFc41VgCakp1eOH32mwcyCcORQoJVrXzUiVqcTVSIVDMwvSjrH38zUIR
	BWsTimqW3LPEcl5kbO0H1giRVJd9y7wR358gjMzsaivYvOOq9soZL095kdgRgIrIo94+
	LMoZ2FhGUmkdB/eDO/urRfR4DtQ3w41r22gA0WJma+at1+4wVqcKrjpdP4mBHmJWZ5Jz
	J47A==
X-Received: by 10.180.9.37 with SMTP id w5mr6934628wia.39.1411140513361;
	Fri, 19 Sep 2014 08:28:33 -0700 (PDT)
Received: from [192.168.0.13] (fac34-7-88-162-140-92.fbx.proxad.net.
	[88.162.140.92])
	by mx.google.com with ESMTPSA id y15sm2459531wib.20.2014.09.19.08.28.32
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 19 Sep 2014 08:28:32 -0700 (PDT)
References: <CAP3RZogedpFsq8r+2yoydjQ3M=jAhCA8Oby02mZaP-=7=K_EZA@mail.gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <CAP3RZogedpFsq8r+2yoydjQ3M=jAhCA8Oby02mZaP-=7=K_EZA@mail.gmail.com>
Message-Id: <363ED442-A2F0-46F3-AC6A-37B34453694F@gmail.com>
X-Mailer: iPhone Mail (11D257)
From: Stephane Cerveau <scerveau@gmail.com>
Date: Fri, 19 Sep 2014 17:28:33 +0200
To: jags gediya <jags.gediya@gmail.com>
X-Mailman-Approved-At: Fri, 19 Sep 2014 14:29:21 -0700
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] Start daemon or execute script at boot time
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
X-List-Received-Date: Fri, 19 Sep 2014 15:28:45 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It depends if your daemon is built by a recipe and if your are using initrd o=
r systemd. If so you have to make your recipe inherit from systemd or initrd=
. I guess you can find exemples in poky recipes...

> Le 19 sept. 2014 =C3=A0 17:14, jags gediya <jags.gediya@gmail.com> a =C3=A9=
crit :
>=20
> Hi All,
>=20
> If i want to execute some thing or start daemon at boot time, where
> can i make changes in yocto source code, so that it reflects in the
> file-system?
>=20
>=20
> Thanks,
> Jags
> --=20
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale

