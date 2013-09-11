Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC7AAE013AE
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:10:14 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id l10so4381590eei.35
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 00:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=i6u7YPQZBD3voOrPeA+4fo0lRhU8JVLAvgzEqBcHgWQ=;
	b=Y2g2iiDw8eWjWU0Y3zm7+T9mqfqDKVHvD+421tapsWDLWT7et2TVeb+bTIohTqgHD5
	MGWivHMsGym2Ge802iNNITRkgLVqyIJQB0ck5s0uyTdYIFqMC6Ol/QmobG0a+k41+aUu
	B6ayoaX16eiGimNmtHsts4TF/vUw5xDb8+tJO7+jEdIu+buCPPzuZBFusM7Angs6nKnM
	YGegeZ8Np6zdYENUl4zJ1hPBPzHFnZ6VrWkEGwJ+yS4BDBOT3FtfFVmLbR4b1X64vijb
	lX0snfLY8rA3stGV/l+H+A0w0ogoR972lXUC2KaL2NsjniR2tC2Z9hGUMrIFRkw8bK6g
	0qkQ==
X-Gm-Message-State: ALoCoQmEu09UdIrmmwZNy0ItCzkjIH0Da8k0DHkfTgry1WkuK2Anf0vc1+XETNRKAGXKgclpQXEs
MIME-Version: 1.0
X-Received: by 10.14.204.5 with SMTP id g5mr130183eeo.110.1378883413518; Wed,
	11 Sep 2013 00:10:13 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Wed, 11 Sep 2013 00:10:13 -0700 (PDT)
Date: Wed, 11 Sep 2013 03:10:13 -0400
Message-ID: <CALmOhg=-=y_TDAbaSgSn1rjv1c1QB2iLe3z0EUYe17gTmxWU4g@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Subject: CFLAGS and configurations
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
X-List-Received-Date: Wed, 11 Sep 2013 07:10:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

Sorry if this has been asked too many times before, but is there is an
advantage to specifying a whole bunch of CFLAGS for every invocation
of the compiler versus specifying them during the ./configure?

For example, if one ./configures their cross-compiler with things like
-march, -mtune, --sysroot, etc then those will be the defaults. If
nothing is otherwise specified, these ./configure options are what
will be used. But if these things aren't specified at ./configure
time, then every time the cross-compiler is invoked these options need
to be specified.

Looking, roughly, through some of the log.do_compile logs when
cross-compiling applications for the target, and looking at the output
of invoking the cross-compile with the "-v" flag, it appears most of
these flags need to be specified for each invocation of the compiler.
The ./configure specifies the sysroot, for example, but doesn't try to
specify any of the -mtune or -march (etc) flags.

Wouldn't it be easier the other way? That way we don't have to worry
that some component's build isn't clobbering our required CFLAGS?

Do the SDK cross-compilers work the same way? Are they ./configure'd similarly?

Best regards,
    Trevor

