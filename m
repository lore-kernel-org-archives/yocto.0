Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.231.1611954892120481350
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 13:14:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FHRXTqdq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id s7so7207944wru.5
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 13:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Sj5E6TwYSQ8pfNNA+QxrUIMEbgLBXxsRQCQm9xw9PBE=;
        b=FHRXTqdqoTIlT93b/CxLOX8HgUEnPyjJI4Qo9xW6RZpWUziLojvq6JSRCWAuW2387P
         0CcE+WYsXGXfXNnVFsOgMS5Ok/ovioOsibssgRPVLpIwS+lMErB/lF+MbjwtMvYCIcey
         PalEYeblwc/7jT1r9VEfMToEqoGeJ12Gv6vfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Sj5E6TwYSQ8pfNNA+QxrUIMEbgLBXxsRQCQm9xw9PBE=;
        b=P2JpsWhJ+IMm7AdMujoCWOuo5ToevO/Rm0KhpNgdPMYnMj1bzygthr4ImpQ5wDQ5LT
         84luG2ZF6vtcCAnJbd3/VOn3T4HmJuwfDlBsx3mPolQxqYsfdSlq/5OPPJeb10VW+7ys
         d5krzr77Owz45We3U0RhNbPRfUobs22sIiQyLhHJTdkVOmGBkp48cHRjH56OrFBye84I
         9fQT544myMJxEuyIYJL+LLY4t16DN8V7mkDsbRMOQGh/NtaZYnWoPbxWEqr1EBmrjG7Z
         H5NYVmZNE0ICvGpw9SyK5O4E3qCEAYE6tJ3qqrC0S/cnRTLCmAuQlL7LvFvQdheCNPLX
         U60w==
X-Gm-Message-State: AOAM531zvd6RYE63/DYn7mh0barcwPAgNzQsxGV7MWF/b2waL0UaeHOJ
	YSNHS22dxZKaNvElp/t1CaG1jA==
X-Google-Smtp-Source: ABdhPJwk9kDxfKJazjQNnPY/62kKsK/cv/raw++CdB9nP80SxfhVARUArv85HWtx+NXJCCRBq5upbA==
X-Received: by 2002:adf:9cc4:: with SMTP id h4mr6408686wre.403.1611954890507;
        Fri, 29 Jan 2021 13:14:50 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1e22:34f6:7a80:adbb? ([2001:8b0:aba:5f3c:1e22:34f6:7a80:adbb])
        by smtp.gmail.com with ESMTPSA id e12sm13603812wrs.67.2021.01.29.13.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 13:14:49 -0800 (PST)
Message-ID: <d19cb71cfb386dd11d1daa45f70c42faaba926fa.camel@linuxfoundation.org>
Subject: Re: [yocto] SDKMACHINE and ppc64le issue with latest head?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Andrew Geissler <geissonator@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Fri, 29 Jan 2021 21:14:47 +0000
In-Reply-To: <0332E332-9E9F-43A8-8022-59586B240F01@gmail.com>
References: 
	<a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
	 <25512.1611938435690182276@lists.yoctoproject.org>
	 <5d089dd1170dd222ce863914cb8ac95b4b4461e2.camel@linuxfoundation.org>
	 <0332E332-9E9F-43A8-8022-59586B240F01@gmail.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-01-29 at 13:48 -0600, Andrew Geissler wrote:
> 
> > On Jan 29, 2021, at 10:54 AM, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> > 
> > On Fri, 2021-01-29 at 08:40 -0800, Andrew Geissler wrote:
> > > > What was SDKMACHINE set to before?
> > > 
> > > Hey Richard, thanks for the quick response. 
> > > 
> > > We did not have it set. It looks like this recent commit is what
> > > changed things on us:
> > > 
> > > commit c74ec1dd7393b9dc7bec1a3ca2ed0a56fb18d8fb
> > > Author: Ross Burton <ross@burtonini.com>
> > > Date:   Tue Dec 22 17:23:14 2020 +0000
> > > 
> > >     bitbake.conf: default SDKMACHINE to the build host architecture
> > > 
> > > 
> > > Looks like I need to submit a patch to y'all to add a ppc64le.conf to
> > > conf/machine-sdk/?
> > 
> > That would likely avoid the failures you're seeing, yes.
> > 
> > I really wish we had better support for ppc64le both for hosts and
> > targets and had people actively involved/maintaining the ppc support,
> > its in need of massive modernisation particularly on the target side.
> 
> Darn, I tried just adding this:
> 
> cat meta/conf/machine-sdk/ppc64le.conf
> 
> SDK_ARCH = "ppc64le"
> ABIEXTENSION_class-nativesdk = ""
> 
> I get further but then hit a bunch of fails like this:
> 
> ERROR: /home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.56.0.bb: Unable to determine endianness for architecture '${SDK_ARCH}'
> ERROR: /home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.56.0.bb: Please add your architecture to siteinfo.bbclass
> ERROR: Failed to parse recipe: /home/andrewg/Code/openbmc/meta/recipes-devtools/meson/nativesdk-meson_0.56.0.bb
> ERROR: /home/andrewg/Code/openbmc/meta/recipes-graphics/xorg-lib/libxext_1.3.4.bb: Unable to determine endianness for architecture '${SDK_ARCH}'
> ERROR: /home/andrewg/Code/openbmc/meta/recipes-graphics/xorg-lib/libxext_1.3.4.bb: Please add your architecture to siteinfo.bbclass
> …
> 
> I’m did some grepping around but don’t see anything obvious. Why is it not
> finding the SDK_ARCH I’ve set in the new conf file?
> 
> Wondering if I should just go with my first workaround and set SDKMACHINE=x86_64. 
> Apparently using that default in the past hasn’t affected our use cases.

SDKMACHINE is the machine to run any SDK that is built on. If you're
not building an SDK or eSDK, it won't matter to your use case.
BUILD_ARCH is the machine you're building upon which is already being
set correctly and unchanged.

Cheers,

Richard

