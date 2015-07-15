Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB460E00992; Tue, 14 Jul 2015 21:57:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
Received: from mail-vn0-f53.google.com (mail-vn0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3442CE0086D
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 21:57:22 -0700 (PDT)
Received: by vnbf7 with SMTP id f7so3307038vnb.1
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 21:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9FYP3K94N3lEqWOI4uNEi/2KmLCa/2f1Wrp9UxP2+IE=;
	b=bg4ultbcpe2WrKcEWwHqQDoW28q4KXaXgAEL4an1JHdF+vnn64owtPrBGTFzXyha6o
	xTMoiN0WMYduPTdPzCV5jX9sIdKl5eoXze4FntNJAeFfTx4LUOfGZica8fo5u6V3/nfq
	vZtLnSicXD3yMfPyG7BYi/E6TwdPIZqeG7KzaUF5zuUbJdaDyg7VhEgxpRT5SbkZIPKg
	3br/70hJ4llZyj3LdjKgFHQUNRBVakSmK1I70GVXAILd8tpiluGhGZutNNShObt+/ERi
	HBxV2b37lUCqNHEB+pl7dF8cEaG+KFZx8rwGI0mRxhnzuWS+FC4SQqBSZcdtNW2TOXKk
	lD+g==
MIME-Version: 1.0
X-Received: by 10.52.135.202 with SMTP id pu10mr2433022vdb.40.1436936241969;
	Tue, 14 Jul 2015 21:57:21 -0700 (PDT)
Received: by 10.31.212.199 with HTTP; Tue, 14 Jul 2015 21:57:21 -0700 (PDT)
Date: Wed, 15 Jul 2015 06:57:21 +0200
Message-ID: <CABc_YGCV8RAVHLNc9tE8Q+ty5ys5C5X4-SvyNuw=tU+pWVh82A@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: overriding install in recipe for nativesdk
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
X-List-Received-Date: Wed, 15 Jul 2015 04:57:25 -0000
Content-Type: multipart/alternative; boundary=bcaec51a8c66447fd1051ae2ca70

--bcaec51a8c66447fd1051ae2ca70
Content-Type: text/plain; charset=UTF-8

Hello,

Currently in our yocto layer there is a recipe for u-boot that also produce
mkimage binary for host,
I would like to have mkimage in SDK. Now, there is a separate recipe in
yocto to do that, but I am wondering is it possible in some way to override
install function for nativesdk. Then I could use same sources for u-boot
and I won't be downloading them twice.maybe there is another way that I can
try?

Regards,
Marcin

--bcaec51a8c66447fd1051ae2ca70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Currently in our yocto layer the=
re is a recipe for u-boot that also produce mkimage binary for host,</div><=
div>I would like to have mkimage in SDK. Now, there is a separate recipe in=
 yocto to do that, but I am wondering is it possible in some way to overrid=
e install function for nativesdk. Then I could use same sources for u-boot =
and I won&#39;t be downloading them twice.maybe there is another way that I=
 can try?</div><div><br></div><div>Regards,</div><div>Marcin</div></div>

--bcaec51a8c66447fd1051ae2ca70--
