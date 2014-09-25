Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480BBE00790; Thu, 25 Sep 2014 14:27:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0D7E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 14:26:59 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id r5so3618933qcx.18
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 14:26:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mwswKBUST8jQOyCXJNhm5q2gJvOWmvEYywEDTr1H4lU=;
	b=XmxqZmZ+70svig/69JURiTul3Df4E5aw5arfAwHMUequ7yP1DwkfkhG1F5ruEuw0ro
	tDctCLA8fpE1lbLwu25UMHev3Rf7loB0PVC20OD7EVeyxZYWJKtQzpINgTNr8L1OuSD2
	wJkrfEs7pth0cdC/B0bT5gx0Ez31i2U3JRnAqWBhIKwYmGvxuxA0pDTsfO+cpUbtr8wH
	+g2r18bfep0dsD/e235ABiy621Igd7rjD2I1U8IusabiqNmFTCbCKSGjCAIQpEDVfeDa
	t/2V+FsKTIAYTrgMxGpQ7oRfsG2FwPtxzRQy7yiTgsab9HqIYJBChMEp0MnDChAN3TmO
	l2iQ==
X-Gm-Message-State: ALoCoQnJxVGBf5wJeEYdMpOHeDTcSRwgKjVYQSXFMulkLhAYylMbPitEjEnPvp+9vZjb/BnzggXH
X-Received: by 10.224.103.194 with SMTP id l2mr22849896qao.93.1411680419058;
	Thu, 25 Sep 2014 14:26:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 14:26:39 -0700 (PDT)
In-Reply-To: <542480E0.7090502@gmail.com>
References: <542480E0.7090502@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Sep 2014 22:26:39 +0100
Message-ID: <CAJTo0LZLqSaxUOA4+LuH7rRpQrwO6jR_KrjuHDU77WbUfSUpoA@mail.gmail.com>
To: Jeremy Moles <cubicool@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding Python to an Image
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
X-List-Received-Date: Thu, 25 Sep 2014 21:27:07 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2014 21:53, Jeremy Moles <cubicool@gmail.com> wrote:
> Hello everyone! With today's git (56f6634) I can build python using bitbake
> without any issues. However, if I add it to an image I'm trying to arranage
> (in the form of adding it to IMAGE_INSTALL) it totally explodes. The error
> is massive, so I have attached it to this e-mail.

The message says that it can't find a package called "python" (and
then spams you with the complete list of packages it did find).
There's a good reason for this: the python recipe doesn't actually
produce a package called python.

The binary and key libraries are in python-core, and the rest of the
modules are split into separate packages.  If you want to install them
all then install python-modules.

Ross

