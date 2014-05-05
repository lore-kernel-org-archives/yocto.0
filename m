Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D79EE00B27; Sun,  4 May 2014 18:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86098E00B20
	for <yocto@yoctoproject.org>; Sun,  4 May 2014 18:04:41 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id l13so1634679iga.10
	for <yocto@yoctoproject.org>; Sun, 04 May 2014 18:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XerUxx0lbozm/pwWv613m7SOuaK+XuIqpF7ZsMU4JPU=;
	b=qzgDYdmNVwWl/C8KDxEwRyAdD9bC4DLk5mzbdbMatmPm8WMpwM0XYH4q9wVoQd/pci
	at6HC2dtpyKV8lobd2pYMLdMGIHgBda8EKPExGyu8pRyYCEVuAtqGygeWJsCi0tRbYso
	PVKJg27uPdKWj6toHgxOO55oBFEhC3ozzJTLKFqFxcgTtLAkgUcr+WiasjqcuTZJioyV
	tY4694zD/yRrJTVSBEy4tpsyezznELir8Y565ULu26xJpGavgE0S4spf5+UezlzYW697
	cTN28AVv7Nr31y7YpA1hdOABnGC8r2d80tMt0BaGYDglMO/StAdSiQedUiFadqZCk8Pc
	8cOg==
X-Received: by 10.42.16.199 with SMTP id q7mr28958217ica.16.1399251880701;
	Sun, 04 May 2014 18:04:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Sun, 4 May 2014 18:04:10 -0700 (PDT)
In-Reply-To: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
References: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 4 May 2014 18:04:10 -0700
Message-ID: <CAMKF1sozckAboRv3sxuCbuYv1G5EYNk_O8wcbmSFMXphY6H8Ww@mail.gmail.com>
To: Fabio Berton <fabio@bertux.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PySide
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
X-List-Received-Date: Mon, 05 May 2014 01:04:43 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 4, 2014 at 6:53 AM, Fabio Berton <fabio@bertux.com> wrote:
> I need to run PySide and I can't compile any version of PySide. I'm using
> this meta-pyside https://github.com/svolpe/meta-pyside. Does anyone knows
> how I get PySide work on Yocto?

whats the error ?

