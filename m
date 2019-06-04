Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27E3BE00D35; Tue,  4 Jun 2019 04:43:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF210E00C7D
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 04:43:50 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id a186so32859062itg.0
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2019 04:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LX2IDtGE8/CltipjuHSZpZ0PYC7CB0kVtJRuN0azRVM=;
	b=KrKAatPN0qzrrx8C7Nkl1W65QkQs+aqRn2gmmx4KCsInyL0N6Stmtc8HOTtbkinvGd
	Jaj471n5U2G3RgmwjoJkbZ93OupoHUhBSyRFvSQ+eTzeqxBW0efNF1XRKZiQ7pe0FhU8
	LCGH7FLwsVArHlQHF4ntl493R0z8nPFEdzbSO2iEQ3pM7esDPJmqhRyGJNTjeD64o7xR
	Qd0JHYh6/gk/nHeFl9/s+gqx3WAxlSD9L9gCWPWlq3Ysh1tfyicjpB6w9P9ERCoqOPqE
	6YXAs1EGx9OMEj2rWX6huL7mqOiCMxmDifbGKs8759yedbi6zqETmFy92LqWeE7WnCT0
	e0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LX2IDtGE8/CltipjuHSZpZ0PYC7CB0kVtJRuN0azRVM=;
	b=aNtBUJqRkxYIrOYfzPQ8s1APIE+JMW3MDNh2LFiOOe2f2M5UttyX0lK0WgQSM2u7ZG
	/sMZsE/rSQfqMx0429DTF38+n3ev29pfU1VjHdjRnmjLNIkvckIXCmZ78spI2qasRAVS
	v5seRzEoVBLcTfk17azNJINphSOIdNukpQ6ATyUiRsemdy9yB5I290fU1kijE29X8n4O
	Tq5h2Z6CB1R7USBkc16PWWOVlLo9bn8TBXSynRA1a17YxDvfdQ92VOEYCEOgtxs/zBEu
	zHVMiiYw/Mv9IoPcDvJtau0gp0tGW47tHRzkNTi5qNMxyQk26NbxWYtd6T+n4TXQ4njw
	IvHA==
X-Gm-Message-State: APjAAAUi6GYrVBnjPGScKhOnJrJyYjO+HEnN6IeYrMo9B662VrSLKaUC
	AY39Cxx1b6ekBI0rp1XnQyajBMBEBf6cItOvlKUBH208
X-Google-Smtp-Source: APXvYqw4LftPHdQt/yfgeT45wZvKsNHTpg0/9y0pmmxRGv0cueVZBIeZZ5z8tUHgILXOWEe1jwhscIVTEOcY01+//NQ=
X-Received: by 2002:a24:69c1:: with SMTP id
	e184mr20277144itc.168.1559648629973; 
	Tue, 04 Jun 2019 04:43:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Tue, 4 Jun 2019 04:43:49 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 4 Jun 2019 21:43:49 +1000
Message-ID: <CAA=hcWSduw6wzQ_9pg1yT4jGwky0bfWypSS8tSJm72ZHh9Q+2w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to build Yocto zImage ramdisk image format
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
X-List-Received-Date: Tue, 04 Jun 2019 11:43:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I build a zImage--imx.bin, dose it contains initramfs? I downloaded
the zImage to IMX using MfgTool, it got an error "Wrong Ramdisk Image
Format".

How to build a ramdisk image? Should it be a separate command or
should it use a ramdisk recipe?

I found a couple of initramfs.bb, such as
fsl-image-mfgtool-initramfs.bb, core-image-minimal-initramfs.bb, but
there is no ramdisk.bb.

Appreciate any examples to build a ramdisk image format.

Thank you.

- JH

