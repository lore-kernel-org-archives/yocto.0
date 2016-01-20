Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AE8E00BB6; Wed, 20 Jan 2016 09:36:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71F7E009C3
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 09:36:52 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id h5so16620707igh.0
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 09:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6JQYquey2zhaf3Napt5Sx/psml9uolHpuqtvtp7h7Pw=;
	b=zy+5QJn5UwKV6DTFfEOSBMHEsysSMznaHo+NbtbfvholZ0HcwqfFc6XvMHdkpBsaA3
	fimuN8TanyreWrfcmk5XremMYZfTHuX+hPTGT7P3pyRRezmdNLgA/tua0Or5w/1ceyAe
	YEa898YcJA4CVa1qABsBcivbfUEDAJrlv+zjzyYIY/lGjM7ejpzxn504zjroKtjoF5HC
	U0QgMGRUQISsCB+u3xuEbIsVeDuNsu5cgxWpq3PsbZZ1WlElTTkhCS6s8Z6BdFUuncv9
	3nXCff8O+BR7BzqFzHK7lB7vTlNph3Delc/M7sW178yrBCkpbQhgdbWcmZNbvZz55KXx
	aLyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6JQYquey2zhaf3Napt5Sx/psml9uolHpuqtvtp7h7Pw=;
	b=iKv2VhaKUqwVLIR2kpN08kEDfbvmH6HCTGX3HRQd4aB+Evk28YXl6qfR5apzdHO5Kc
	FlfCKwvpuvATVeBr3MBuxs3bcCAQ5+X8FJLr8oVe2JlRgrMsTZOOBN5jPUk/GGpB2aKG
	2ClmkChWo+Pg9aKWN2Htjfd+nTF0lwC/loi8goAkq1DA3I7mLoT5qeeqjm23FJmSVrGv
	pQDKpPiH/3nXwUwGfW9+BgfpRPNaCqIAYOK/teOX2cJXK0vWAMIhIsu7ln4OVuZ7YxlD
	C7LVVGEeybgx3cw0u9SkCNgbMmjPdHYca/o3oXPTD14OqOq00SDl23VAD3jDIzW+eEK6
	x+eA==
X-Gm-Message-State: AG10YOSA3ZXteMnTQTR0QGi7ub6bmXMyRwg6BoRWgjBNLQI52g7Uf0Of8kw0Cdb4o88/IfH86NaOuJzf6ION+Q==
X-Received: by 10.50.141.226 with SMTP id rr2mr4361776igb.75.1453311411796;
	Wed, 20 Jan 2016 09:36:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 20 Jan 2016 09:36:22 -0800 (PST)
In-Reply-To: <loom.20160120T173432-777@post.gmane.org>
References: <loom.20160120T173432-777@post.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Jan 2016 09:36:22 -0800
Message-ID: <CAMKF1spjrGMd5MhRD8+n+rHnTmo21hK2NR5CNfMBU7-Zabt1Uw@mail.gmail.com>
To: DEEPAK N PAWATE <deepak.mtech2006@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2 step solution to ERROR: QA Issue: Files/directories were installed but not shipped
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
X-List-Received-Date: Wed, 20 Jan 2016 17:36:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 20, 2016 at 9:11 AM, DEEPAK N PAWATE
<deepak.mtech2006@gmail.com> wrote:
> Hi Folks,
>
> Below is the simple 2 step solution for
>
> ERROR: QA Issue: Files/directories were installed but not shipped
>
> WARNING: QA Issue: Files/directories were installed but not shipped
>   /usr/lib/lib-0.29/lib-gstreamer.so
>   /usr/lib/lib-0.29/lib-multi.so
>   /usr/lib/lib-0.29/lib-pulse.so
>

.so by default are treated as either symlinks or linker script stubs
which are only useful during build therefore the defaults
in OE is to package .so into PN-dev files however many packages dont
use shlib versioning and .so itself is the real .so and not a symlink
to .so.X or .so.X.Y

So in above case you would teach this exception to bitbake via the recipe

FILES_SOLIBSDEV = ""

The you would add then to FILES section so they get packages if not
done via other regexps

FILES_${PN} += "${libdir}/lib-0.9.29"

> Problem statement:
> Above error occurs during installation
> This scenario happens when files have been installed but not shipped in
> any package
>
> Solution:
>
> Step1 :
> Please open Bitbake.conf in meta/conf path:
> when bitbake runs bitbake.conf is parsed. This file is present in
> meta/conf & includes config variables that are used in metadata, bb
> files.
> Kindly go through this file to understand
>
> Example :
> export prefix = "/usr"
> libdir = "${prefix}/lib"
>
> Step 2:
> Files that do not appear in any package such as
> directories/files in this path /usr/lib (as stated in error above)
>
> Add the files to FILES to include in package
>
> Open the meta files
> example :
> pulseaudio-meta.bb
>
> Add  below line
> FILES_${PN} += "${libdir}/*"
>
> Hope it helped you to resolve the warning.
> See you soon with more discussions on solutions.
>
> Thank-you,
>
> Regards,
> Deepak
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

