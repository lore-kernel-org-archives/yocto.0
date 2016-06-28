Return-Path: <augiekim@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0210E00C81; Tue, 28 Jun 2016 08:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (augiekim[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F177E00C72
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 08:38:57 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id s66so28179474oif.1
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 08:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=6fc+i0yEENOMSNEkE08rf5CmPVGMtRyl9K5mm/6gkK4=;
	b=Gm8l7dIZBIvZzfL7gmYZUPIZLsOdjq/o/1Nr6XTsSojhYlvCsYfich5rFYxa/MMD8H
	gcTCNKBR5bL/dPpyUOdDIJVI+CEI7ezEIsApu68PhasYvfGny67p73Kg8tZa83q/wA+y
	WCd3HXhPWzvWNw9g+CHOrKe89Ewe9rJ//Dp9hsJp57tm4f2v21LK4bcnSoI7ZEllsEAZ
	sRp5r9tWj3M51AYtB8U9JzjAnsEIBpY1fO7i6sLavYIKGeLiash7Mm9mSS/hEpC6xDry
	7RacgvCiTAummelFCV/VhdhDEO/fwHC3+ttBag1WBoZKYt5ZYvq1G5dXop1O9eiaVnNo
	5iWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6fc+i0yEENOMSNEkE08rf5CmPVGMtRyl9K5mm/6gkK4=;
	b=FbF6C4kgxaVUDQqBiCDAw0cP/Y6pARrgGatkYacVAFHFt0+9v9kx0Ode3xK2uFXdab
	uq4jErwrWJohejHc6Z7yiFta7yVtvSjMuDDJSf17nwNDpv5J7CjAHl6KMBsAeiTwwN08
	fDNaz+C8hLRE8hNze0VjGBRFjRTJSGSl9isrzMSL7IOIvQOiu+d7/U1Xeemr424XCeLs
	w4f7IFpeY+vh7r7/3nBHd8N9egSqF8zcwAlpGkB5ftShn/psc+aXaIE1SUuDR5bk0ylC
	b0vHYuxcGNAHDYef33OE2PyXDNFJbS/u79Q72+Ye1LCkbKHjlzys5NsIm8SBavknXeXL
	rI/Q==
X-Gm-Message-State: ALyK8tKCvg3qR4KCVYymZlvxMRzh38fM5jTNYLi0ue3YYDsCmnB1KeVmsErvmfraH2J5Ta6Yd9VRSY92Tpsipg==
X-Received: by 10.202.92.194 with SMTP id q185mr2206362oib.88.1467128336220;
	Tue, 28 Jun 2016 08:38:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.77.229 with HTTP; Tue, 28 Jun 2016 08:38:55 -0700 (PDT)
From: Austin Kim <augiekim@gmail.com>
Date: Tue, 28 Jun 2016 08:38:55 -0700
Message-ID: <CACv_uOSvZc9gLG5c4g2V04F0gEwG6qfuLLoqQEX2TUT_1buGhw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to generate debug symbols but not copied to the image?
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
X-List-Received-Date: Tue, 28 Jun 2016 15:39:00 -0000
Content-Type: multipart/alternative; boundary=001a113d3ece5213490536586f9e

--001a113d3ece5213490536586f9e
Content-Type: text/plain; charset=UTF-8

Hi,

I'm wondering how to copy only stripped binary and leave debug symbols on
the host build machine. I'm running on the OS on a very tight HDD space so
I cannot put debug symbols into the image. So I tried


PACKAGE_DEBUG_SPLIT_STYLE = 'debug-without-src'

EXTRA_IMAGE_FEATURES = "dbg-pkgs"

But the output image is still bigger than the original image. Is there
anyway to keep the original size and keep debug symbols and source code in
the host so DBG may reference them during debugging?

*- Austin*

--001a113d3ece5213490536586f9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m wondering how to copy only =
stripped binary and leave debug symbols on the host build machine. I&#39;m =
running on the OS on a very tight HDD space so I cannot put debug symbols i=
nto the image. So I tried=C2=A0</div><div><br></div><div><br></div><div>PAC=
KAGE_DEBUG_SPLIT_STYLE =3D &#39;debug-without-src&#39;<br></div><div><br></=
div><div>EXTRA_IMAGE_FEATURES =3D &quot;dbg-pkgs&quot;<br></div><div><br></=
div><div>But the output image is still bigger than the original image. Is t=
here anyway to keep the original size and keep debug symbols and source cod=
e in the host so DBG may reference them during debugging?</div><div><br cle=
ar=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature"><b>- Austin</b></div></div>
</div></div>

--001a113d3ece5213490536586f9e--
