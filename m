Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A318DE00CAE; Fri,  2 Dec 2016 08:50:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757D7E00B74
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 08:50:04 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id x190so284667323qkb.0
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 08:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=yM381DhRvpG0LuN4jCwl7wVD3pZh/PasdQi945QKzaE=;
	b=rqVO7byxtVxcKd9VLw6Vyh7N5z3JE0m3XOdfq5yABmQEmN6qRSArE0Yw6BkVewLpWD
	k9YdHLY3V8bcaO8SZC1Xm3p4C1L0zolkcZX86SY4PvvSqp7tZj1wFtMneVoq4ImXWE8X
	zWxn1AkB6RPB1yOLbQ3IEOKr7XxEbttUg6kkLNrG111YB6i0/LQ3C0KYysZ+3ogbaQdF
	7VY7mLS5DvFkgohimpRBqt464j8j59gLrdlUxQXbp7gG0Ask2esGM4XV26/XWrdJD7+c
	pMvotWKMBrxRdMZRd2/xYyhsno88GJnKtAgnKf7TQi7KFJk2UN99pQHSSe5FRs+F+pww
	TnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yM381DhRvpG0LuN4jCwl7wVD3pZh/PasdQi945QKzaE=;
	b=SFSGb1q2ceJfMSv3gV75jl9uDhjSBN30SD98tgnKbcJ+4FuJ6iy1ybWeZ0ClaMFvHV
	8mdX1/5tByPxuHi5CM1eva2ohc1zlYoaGBK/uaxjIzzOSLmJ9JncQGDhPA2dg4cyEcVm
	pKMVhSZ6lULh1vwYE0Y62Vx+BjipX2nbvHyJ1LptYMDUTslsdfPwd+zM4EA84Gbr7QrB
	htzj/egD27T8ERjIaPN/BYtkbcjg/uxLTTAmWN8DoCybQSfeUe3kBkqS3PkKJrY4WUoN
	+nuVoU2Lw1x1hPMQuURfY3x4peWtKOzX4GWpcaW61wib6bxrocWiwqcLpdf4PpR4z98p
	l/TA==
X-Gm-Message-State: AKaTC01dcjuIT/Vhrv3bf5q9k4fmPz188B6Nr4O9TXVBMt3cTXNn1B+MZuiATbHaPOgfxxK7bsTRaCOCGpMVdw==
X-Received: by 10.55.5.145 with SMTP id 139mr39258563qkf.77.1480697403222;
	Fri, 02 Dec 2016 08:50:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 2 Dec 2016 08:50:02 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 2 Dec 2016 14:50:02 -0200
Message-ID: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Fri, 02 Dec 2016 16:50:08 -0000
Content-Type: text/plain; charset=UTF-8

Hi every

I'm trying to build rpm-native and getting this error[1]

Can anybody confirm if this link[2] is returning not found (404)?

[1] https://gist.github.com/gkos/9a3596452bd00d6ebba5780e7987fd47
[2] http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm%3bname=srpm%3bextract=rpm-5.4.15.tar.gz

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

