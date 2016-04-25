Return-Path: <benjamin.gaignard@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DA45E00CB4; Mon, 25 Apr 2016 00:34:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F22E00C86
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:34:37 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id os9so73119038lbb.2
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:date:message-id:subject:from:to
	:content-transfer-encoding;
	bh=CIHEkWlpK+fmEdkX9yVBd3FY/3w6UuW3Vyfq55x9b5w=;
	b=Y2VA1Oi52rsPeWSS6fBG3gXqw3dYTNPV8+wb6iRoo8yBA8x27PthLAR9t27Sl5ZFzc
	ssSn7GxxjzKRVvTXA6un1VzTbmn67LICa1nu4McxQRxT8SBA51dxrbXosLmFBxnE/YJV
	/zTfG6tWaAWf+phGIjosl4y5+IqEZXY/jq+iU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-transfer-encoding;
	bh=CIHEkWlpK+fmEdkX9yVBd3FY/3w6UuW3Vyfq55x9b5w=;
	b=eSB73fHCn+NweHBelvynyNhyuzqTzQQBnIKLhxQK0w22VnmCjuCIND0/Hlm7Pu/98B
	Fbq+pqJ3tAiLxmWuY9Je6FP2JupcaOVePcnXerK4mQdnMdclL/S/sXgOGRaDKl724TlZ
	SoiPaqPE8OFQFeVw/1RVrHTfnSoPpyFq4bK18zE7SHEqpcYys1uBru5FRAssSZvt+au7
	MvRT6Mp319KeWPMHxBIChKgy7XBkCnOU9XkPBUL3q/exMOT95DK67NTPZdu+EVIFs26T
	RbcPu8x1qN8q8efMMtryf116aTlcjLfbmLrxHhikTjo+JJXrrzNyHi5Yg6+C3z/iM942
	yk5w==
X-Gm-Message-State: AOPr4FVQT4zqgf2ZQSpG6mBayQ4IZZ5NzO1SapD3aG5BVdLN4XvdwkMo7UNhNKlL8r5XG0/iqiqIKVYQrWNGZ9lr
MIME-Version: 1.0
X-Received: by 10.112.137.74 with SMTP id qg10mr13504370lbb.140.1461569676308; 
	Mon, 25 Apr 2016 00:34:36 -0700 (PDT)
Received: by 10.25.153.210 with HTTP; Mon, 25 Apr 2016 00:34:36 -0700 (PDT)
Date: Mon, 25 Apr 2016 09:34:36 +0200
Message-ID: <CA+M3ks4p7uBwDCDYPhLBbBJMSVWnbx0tAib1dQmGeteP3ESvxw@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 25 Apr 2016 06:54:20 -0700
Subject: Yocto ADT eclipse plugin and devtool
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
X-List-Received-Date: Mon, 25 Apr 2016 07:34:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

devtool usage is well documented in ADT manual:
http://www.yoctoproject.org/docs/latest/adt-manual/adt-manual.html#using-de=
vtool-in-your-sdk-workflow
but not explicit mention of how use it within Eclipse.

Do you know if we can use devtool, for example to compile and load new
code, directly inside Eclipse ?

Regards,
Benjamin

--=20
Benjamin Gaignard

Graphic Working Group

Linaro.org =E2=94=82 Open source software for ARM SoCs

Follow Linaro: Facebook | Twitter | Blog

