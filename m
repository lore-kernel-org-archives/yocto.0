Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 553C1E00BE8; Thu, 14 Feb 2019 01:00:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 898E4E00B81
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 01:00:33 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id b3so9279231otp.4
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 01:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=WJOW6jCT98WDvNqRFsOh5btRfQn/eOaaQhjl1XTUnFs=;
	b=XMJCJrWXlL60pu/yU4jkDgbO4IMsXJ3CiK8Z35ENpgjq0VAi0aPw7ML2pkShg9NDV7
	Z58IFrKTXfecNqvclwmUHTiwyAK75BN6W3dAfv7FBxofeXYdl/cniF6neVhGxSZRoG7A
	193351Visw0WavjY5e4c2UI7gLz5rBXO9hJDpDyqOuJI0V1ZAZiuYVFxDE8KtKF9Vyld
	9Z0QldeFik+CW29MZccROnGFMf0MXQZMgAlWe7iPgb4OBPfcz83WqPgDor8sJIm/iw/v
	yjm5ebS9wbGVd8CmfddVHrjUTDCOqwNzJQpnsmp+RPoi5Ga+MIduyhhL9k5cGYbt/dCV
	EAKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=WJOW6jCT98WDvNqRFsOh5btRfQn/eOaaQhjl1XTUnFs=;
	b=nsuREo19jAldMACIKVEH0hBNCFRr8ewTidFG32tjiAEjclCDsHt9JgCEQOnB86DEM7
	D6UcLOzRpOaVft1uMgK495nvcDOtS0P9FYwROtbDNLi9EPPTfnf8q2Kp86ok+I2A6Yt3
	sT/WtPds7sUXD3IGMUXW7d2fW/l2DTkySXaswNCZGrJM0D5rkE8oIM2WLHCzAym2juth
	sMjYOJCLFGuzOb3Nwq28l3iso+WuUpz2oRXJ20iVQQ/BhMFQSXStv9TGrUdpSCswabaT
	hKRL6ymYsYF6g8MZM5sQb6zeXLVr3U4ORuomcU/co/G2I1uktSwwqVA4F39/WB5YWtT0
	WWTQ==
X-Gm-Message-State: AHQUAuZCONHylA4loLrrjkMcvmv9ohRsyj89SQXbLn+ygZEBO6Z1ILxP
	ovSMX5YN51hj87OQhUMYRX1sI0EbA0c/SxHUFw9ulA==
X-Google-Smtp-Source: AHgI3IadFCVG8bjIHFgxCbwXDbHlQddLthd4p9m4ZiNKvr7SkS0E4UqE16YvExTRA94kLBDf7p27b7m4jBgSrdOxiw4=
X-Received: by 2002:a9d:7653:: with SMTP id o19mr1627016otl.12.1550134832782; 
	Thu, 14 Feb 2019 01:00:32 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
In-Reply-To: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Feb 2019 10:00:21 +0100
Message-ID: <CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
To: Timothy Froehlich <tfroehlich@archsys.io>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 09:00:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich <tfroehlich@archsys.io> wro=
te:
> Hi, I've been struggling a bit with this question. I want to use Yocto to=
 build two+ products with separate dev/prod images for each (dev including =
debug-tweaks, etc.). I've ruled out separate image recipes because my dev b=
uilds need ENABLE_UART on my RaspberryPi and that needs to be set at the co=
nf level (I've got it set conditionally in my base dist conf). Multiconfig =
looked promising, but I'm not happy about how long the parsing takes to sta=
rt a build. "--postread" looked nice, but I've barely seen it mentioned so =
I'm worried that it's not well supported.
>

Which recipes use the ENABLE_UART setting? You might want to write two
variants of those, and include them into images accordingly.

Alex

