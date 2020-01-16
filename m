Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4023.1579212019034177961
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 14:00:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FXEs3P9a;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78877E01481; Thu, 16 Jan 2020 14:00:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.54 listed in list.dnswl.org]
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A742E01478
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 14:00:16 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id d73so5395098wmd.1
        for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 14:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ZadDUGzGWBZ0g1wnYvOo9BUD9I2ivqnE4fNwjR1vVNs=;
        b=FXEs3P9aJSjGEebyDA7TymrVq6Sa/aadOJ5/Irh8GITy8V2NZB6Qm0EzRgbXbO1I7A
         Kt8QK2c1l/HoUbCdLJWVbyDLQPTBiZ0xHlPrG1Pm9ddzNN6GbUl9DvDUkEbkyfGCPqT2
         ew8filVnGXI/lheLMz0inAm4SZytGldeOd7us=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ZadDUGzGWBZ0g1wnYvOo9BUD9I2ivqnE4fNwjR1vVNs=;
        b=UxW08pGSQvtX75guMTCCgtaHh8Xeo2Ws2Ad78HQrk63WuFDTTqqSmDrb6Tyarm8ZfJ
         G2lxAIRRTy/F/2KFVqPLYskLuXDjTY0pt8sxuft3aGk8OxEXs13subcoWLeXNHJg4/+I
         aF9gOJKN911XZO1bmxwkrBsZ634nZEHexSn0u+vBLnixFujvuiS3Nh+a135d0VVgrzbz
         T+w8yTCI3mrrTIw2vWli4fUKLThUS6mVrUSKe7fZWEqv4XzbmViruU58vNJx/WZ4ZJrO
         KojpKN7weCnUZen2vBEtXkz8UZCHKwaDYSusEkOqW2pyALd9dtdjzqk9FhgzXZ3pH+Az
         RQKA==
X-Gm-Message-State: APjAAAWTs2j7HGrDlyqQSgEERENQPFZ4KzhXjX45Nc6FeNf0qEtI4Qj/
	81HBo5MJ6lCeo0f6zx3rs6/Kg/7rppg=
X-Google-Smtp-Source: APXvYqwUkK+1VS9Qh1T1/FzKzRirjKappvaZYQ7+E1ynO/XzRtbbAIM1FRC2bXAoQbewWUUUldlaDw==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr1136202wml.55.1579212015426;
        Thu, 16 Jan 2020 14:00:15 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id d16sm32827456wrg.27.2020.01.16.14.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 14:00:14 -0800 (PST)
Message-ID: <722e1fd016354b3ad453bc04ee8e5d2cd7a24ec6.camel@linuxfoundation.org>
Subject: Re: patchtest licensing
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>, Yocto discussion list
	 <yocto@yoctoproject.org>, openembedded-core
	 <openembedded-core@lists.openembedded.org>
Date: Thu, 16 Jan 2020 22:00:13 +0000
In-Reply-To: <CAM9ZRVv1O-vdWAtN=2GXjSz=sJ+LDGZYMKv0qiFzEa5Q3J9+Wg@mail.gmail.com>
References: 
	<CAM9ZRVv1O-vdWAtN=2GXjSz=sJ+LDGZYMKv0qiFzEa5Q3J9+Wg@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-01-16 at 20:07 +0000, Paul Barker wrote:
> Hey folks,
> 
> I've started looking through patchtest & patchtest-oe in detail and
> spotted that all the scripts, support code and test cases are
> licensed
> under GPLv2. Is that ok given that we plan to copy this into
> openembedded-core (probably under meta/lib/oeqa)? Is there any
> practical effect of this not being MIT licensed?

We have a mix of MIT and GPL licensing already. As long as the scripts
have a clear SPDX license identifier, I think we're fine. If not, we
should add that in the existing repo before the move.

Cheers,

Richard



