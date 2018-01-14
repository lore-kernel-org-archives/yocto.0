Return-Path: <ngthanh.vu94@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 391ADE00B1A; Sun, 14 Jan 2018 06:49:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ngthanh.vu94[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EBDE00A75
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 06:49:58 -0800 (PST)
Received: by mail-it0-f54.google.com with SMTP id m11so6134697iti.1
	for <yocto@yoctoproject.org>; Sun, 14 Jan 2018 06:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=R4KdR2GSb2s6ZxC0Imu2KDrC/vi7nRr231wRj+SDwRg=;
	b=DCtB5UdAO5RYxSMsKQDfcRLe8e7lgkZxkZRDBnNSiSPlf3VAke1DclrVDgdql5z09C
	Kz44PvoIc0QqDQUhWmSql9agOOcJ8hgKW1SBAaBoDbsrrWfBpRFYXkatYBlTIbDKhAGV
	00rP0cQpBOkFSv1Mq1FOTAUo/xvgbGu9LjtpOIkXsRzHDHPSF3wzpSP7O3x1Udg2yGDZ
	SJBw1FpiLZ+gE8p5KD/9kzBoNCPTal4ANHITFadSa6QCUXlv+DDjOIyXNzr+XWftm8a2
	aIHL1SVKcnRMh8zc499lVXolgtO6qiUY5G04hMHESrz5WaT9PLgcoOgNnkxIl/gf6vgw
	Ofpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=R4KdR2GSb2s6ZxC0Imu2KDrC/vi7nRr231wRj+SDwRg=;
	b=XID6ONS4cbbe+Cuar1oQlTfjPpsp5iNBin554p8Q3UwCTGrdG1YmQxWZD5T1xvZsHz
	a6trSTp/NnQUs45st5GkafRIir+gMu4nlGhX3XLDbn4BEqhmaODYiJQ8Msub3PouYxCk
	2F00PJUGgtx9kOd0zmiB+YLyfBvExP4ZJx2rqmN/3vbl4eFkCAPWlIknDZJdCJdANO9p
	0EPuZ3VyejOAnIOAdMl/e/Ki8sDzlr+1lQzeDQ/LWEq/Lu1oBhxVC7KiVeFNYwoF/6UK
	F4I5H0AUCPCROw5MkU1jZWKCC2XWlq6YOFdbNpXonqkLB4JCVYxiBuf7+bnprWrmUP6g
	LCFw==
X-Gm-Message-State: AKwxytcgE+f14rXXGPSMHzLTuOExs2jdDp8DIcUQ5L0aoyu7rINChJj2
	CLq6ge/BOvmb9VJNumCx5K4/SS1YgPiyhBgrs6w+2Q==
X-Google-Smtp-Source: ACJfBossvPPSs3xAghIzuzsh85ywRGAJkK7qbg1W5iPvdAOxS+v55wchFwSChJZSZmNF4sF8LmwLOLCC47HPjAuGlAc=
X-Received: by 10.36.137.67 with SMTP id s64mr10782645itd.90.1515941397930;
	Sun, 14 Jan 2018 06:49:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.16 with HTTP; Sun, 14 Jan 2018 06:49:57 -0800 (PST)
From: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWpIA==?= <ngthanh.vu94@gmail.com>
Date: Sun, 14 Jan 2018 21:49:57 +0700
Message-ID: <CAGJSYqnh8q8CBgRQSJ5pPhqhEfxqb+KvFa1k_M-aPVDpNN0ugw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to correctly understand "selects" and "selected by" in menuconfig to properly configure the kernel?
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
X-List-Received-Date: Sun, 14 Jan 2018 14:49:59 -0000
Content-Type: multipart/alternative; boundary="94eb2c05eee68626a60562bd9c45"

--94eb2c05eee68626a60562bd9c45
Content-Type: text/plain; charset="UTF-8"

I'm currently trying to remove the networking components from the kernel
using menuconfig. However, it seems that there are a lot of dependencies
when I choose to exclude the networking component (error when bitbake build
after reconfiguring). I think it has something to do with the "selects" and
selected by". Please tell me if I'm wrong here:
- If we select a component, the modules in "selects" section will
automatically be selected to . So, how about when we deselect a component,
will those modules be automatically deselected?
- How about the modules in "selected by" when we select or deselect a
component?

Thanks,
Vu.

--94eb2c05eee68626a60562bd9c45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m currently trying to remove the networking componen=
ts from the kernel using menuconfig. However, it seems that there are a lot=
 of dependencies when I choose to exclude the networking component (error w=
hen bitbake build after reconfiguring). I think it has something to do with=
 the &quot;selects&quot; and selected by&quot;. Please tell me if I&#39;m w=
rong here:<div>- If we select a component, the modules in &quot;selects&quo=
t; section will automatically be selected to . So, how about when we desele=
ct a component, will those modules be automatically deselected?</div><div>-=
 How about the modules in &quot;selected by&quot; when we select or deselec=
t a component?</div><div><br></div><div>Thanks,</div><div>Vu.</div></div>

--94eb2c05eee68626a60562bd9c45--
