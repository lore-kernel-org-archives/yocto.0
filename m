Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA2DEE00B18; Mon,  9 Jul 2018 10:47:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D745E006B4
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 10:47:40 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id r10-v6so12254476uao.1
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 10:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=l8jqGFAUrjH3+3iyQrhOv6tgcxMCzi1MX/OfxWz95Gs=;
	b=IUwv2DMGotxuDdCOERVaNY3QRKX+6QGA23tnYxAjWiVG/yC/47k4kDG7Ay5Ziujwg8
	I4rPhcr1QHW+7b8QTTwQJeBrAmc2vHmTCeOiURM4mIGTjpijIyZcTWitQgMiD4aKTX96
	jhHtn1fFBKhwBkv0bwE2RvofGS1BHkgZTymWYM4nNnJXb6cHA1BV1dJqZUNLEbxfOAKj
	XY51sYqjWwwnocGMNtdnU8BlztiQnAQfcMvtbjo2WFUsGrONvpb2ZGaaRYgYzDYM+/Gt
	s4VaqsYcHAtTkYciomMP9wMJw0P0wFzJxxfPA9U6pr5qTwYKqy3YN1Jfu1aE57kVzszB
	YAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=l8jqGFAUrjH3+3iyQrhOv6tgcxMCzi1MX/OfxWz95Gs=;
	b=qwzZHYDnOG6Ypp6v2eSVDY7sTpjyz4yxd7eLZlMIzwAFBCg6Ai8htwV1IRpytZ8AFE
	qk2A2RiFzyj9kuGL6A+zE6Rc5R3qwY+jox680smUO5z+yeZZvBlw6AyOs6XE8n31n94h
	yDvwOWGZ1UA7mvyJX59Mv7aP0Jf8wvlsBI3sXedWvDLbjf8cPxsJzFiMF+rzEb0RbT0E
	ZMkp2fWJWcnDWi2l2ksRu5wbCKct/ipGmgEAQw9A+IYxORrQzP7184k4Kb1Z20fPHHv+
	nnwugErkzkCXj2jkeWTh6yJstG3pFH1wxXi3D884gXkPoY/di/b5q4QGp52QEMxcyLPB
	uKng==
X-Gm-Message-State: APt69E1v4dZ6FpIFnbHETBdbB0tyJAsqdyxvf9fb/wwEdKyUh6hu0tsL
	PyBX6K7QcY0KrvMJoPiedhpPIB4b7gxF1i1el50=
X-Google-Smtp-Source: AAOMgpdmvwDGBfwHJ9dS6lRnACHIbprFosi/TrnFArYT+FW2SrcKxt1e7kOfxMnLY8bR6iOE7j4pZlDzv6khgevUcT4=
X-Received: by 2002:a9f:3f8c:: with SMTP id
	k12-v6mr13587371uaj.38.1531158459513; 
	Mon, 09 Jul 2018 10:47:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 10:47:39 -0700 (PDT)
In-Reply-To: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 9 Jul 2018 10:47:39 -0700
Message-ID: <CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
To: Michael Allwright <michael.allwright@ulb.ac.be>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Mon, 09 Jul 2018 17:47:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright
<michael.allwright@ulb.ac.be> wrote:
> Hello,
>
> I think it would be useful to extend the hello-mod recipe in meta-skeleton
> to demonstrate some slightly more complicated scenarios. For example, I am
> trying to find out how to have two external kernel modules A and B, where
> module B #includes a header file provided by module A.
>
> I have made module B depend on module A, however, I believe I am still
> missing one or two steps in my recipe for module A such that the header file
> is copied into the shared kernel staging directory where module B can find
> it.
>
> So far I have tried the following:
>
> FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"
>
> FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"
>
> do_install_append () {
>    install -d ${D}${includedir}/linux/mfd
>    install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h
> }

And what happened after you tried the above? Did the header not end up
in the -dev package for module A? Did the module A recipe not create a
-dev package? Something else?

> In module B, I want to be able to:
>
> #include <linux/mfd/module-a.h>
>

