Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1355BE00C78; Tue, 10 Oct 2017 15:07:48 -0700 (PDT)
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
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 388E3E00C78
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:07:44 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id m72so932029wmc.1
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=plmT2dxYz0T7FF0/VbT4Kw3/ueiVt0JmXMzZ6oBb7w0=;
	b=mV5JkUiwYpDQec+dhLhBKeKNMVeZAkzTZK7s81/mlzoXv88Lp5UZjsLUjEeKbrPYqU
	0Gzr7ClsdCucvSqucCBhEbugM2UmfD5qerjBFSNH8fzZFDcppCNU+fmAhsJEsggH4jpz
	QOvD4la4YQ+xUBXFOcUO0hyoTvIcTpaSo5lfu9xoEcIGSJeyrxRtsfHCSCsXDublSR9W
	BD7w/ZBtqcu5p27ReyOnJ2cR+6jRNIbL7DvxLN55E8/4GofTJJFavwFLnXhYUgsfG6M5
	X8N7QcG+e0jdlsyh0wrDY/x3iFkXnifboM5jPLa0wtuvBhBKFUoUy+dShfM2TCNjlmJR
	cGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=plmT2dxYz0T7FF0/VbT4Kw3/ueiVt0JmXMzZ6oBb7w0=;
	b=HprxA09xTW4lrjuMKROWIoJvk186Wix/nouJYSlqEhVNsSOpYrGBU0sDpJrvAViLZn
	bLVC20E3kOVZDfHER5HCHabTwAJwdL9KOvW1vmVwxjpYwsJdSQQcEOoKN6OqAanx079H
	R9OjKCn5qGvG8xuDn+fsLtK+qhTrTIQaQSQz3fA12teVyEJ3Ya4164hT4Jyz07nUpF9h
	se0Y8KpZCNBOmTI+5XIFY0U6Z/ht6vaeLefDcf7EwHFEyYk6JsRJHProDkU1/4HrR0Rj
	KTylTvY433YPEezcI1iKSy0fwVjqLtj6uvswcMJRx+yY5zFpKDZz08A/zUUOnk2/jb83
	FW/Q==
X-Gm-Message-State: AMCzsaU+fRjtWh0CGuxHyb5L06CAGPg0DDBJ1CJ75Pq0EXCUXbfGSeYx
	ZsloSSMh2gzJk9wLsVNhTRpk8A6BgnFqxVFcjlI=
X-Google-Smtp-Source: AOwi7QC5qX9um+ANFtUtgGLhX5MXzijQe73XMqL78rWGE7gGvVpA232m8arZ65xM8P9N1+GdfeOi+YeCD3Iv7nqvPZ4=
X-Received: by 10.223.171.236 with SMTP id s99mr12944663wrc.27.1507673264260; 
	Tue, 10 Oct 2017 15:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Tue, 10 Oct 2017 15:07:43 -0700 (PDT)
In-Reply-To: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 10 Oct 2017 15:07:43 -0700
Message-ID: <CAJ86T=X8VtwndQPWJcdLs7n4CSyFQde5a_cM0qEDcW6EYyih7w@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Tue, 10 Oct 2017 22:07:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 6, 2017 at 1:40 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> Hi, all:
>
> I have a basic question: how to tell the difference between
> "core-image-minimal" and "core-image-base"?
> * If we look at file \poky\meta\recipes-core\images\core-image-base.bb
> ===================================================================================
> SUMMARY = "A console-only image that fully supports the target device
> hardware."
>
> IMAGE_FEATURES += "splash"
>
> LICENSE = "MIT"
>
> inherit core-image
> ===================================================================================
> * how can we tell that "core-image-base" will include "support for a variety
> of hardware such as WIFI, bluetooth...", as compare to "core-image-minimal"?
> * Do I miss any other document that I need to read?

core-image-base takes the default value of IMAGE_INSTALL from
meta/classes/core-image.bbclass, but core-image-minimal over-rides the
default value and effectively removes packagegroup-base-extended.

See meta/recipes-core/packagegroups/packagegroup-base.bb for more
details of what gets pulled in by packagegroup-base-extended.

> Thanks!
> Jerry
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

