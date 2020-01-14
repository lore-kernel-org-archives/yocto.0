Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web10.1485.1579039711197276893
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:08:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R+kLwMw7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id f129so15565140wmf.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 14:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=z/sA9yylbGWi7aZjBU7DPUpVZo4z5pV86EqfX6lpFnY=;
        b=R+kLwMw7QLfVDgViKZqnWmEziGHQuULIsPrH5kAJMeaQ3g2zEdPteGqzSnM5M36MnE
         f0b0R6S8Os2FLF/e9xP5HSJzulAW4sgFvuLIiI2Oh60fgBA3qN2UK3+4/KllxbBo4p4R
         WkkSR1ZauNp/D5kDUGwJjxTswlgveZweAabrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=z/sA9yylbGWi7aZjBU7DPUpVZo4z5pV86EqfX6lpFnY=;
        b=aAyCl6BCAkBjrlxkUEEqWb7fFUGCviVHu1ht2UepP4kzlLUDXJNpmDVExMSAp6ruFl
         YZidptA+dYTtwGLE1I1yfbNDLCsTb89MjQP+Sa8wy9KD33pH5XlAMJiDK5T8Uf7Q5SFo
         5m9TZNjT8Otu78+OXnpoumezZcH6Zx1yv71uHZEMzwNL2ueujnCeqU+s1iqq5Y3qGZh/
         UwCXV+wOjYu+sm9VgPKWgF0laRUo8SX2oqazJymVVv18gFUJud4RsxH9q+Sa+Zgej2pt
         nTalBuFO354I36FmcZYy5w+O8DDaloZo+E+vQ/KJ6mzqZ6c6PEIiaQsORwi++ZqTVBH+
         Myrg==
X-Gm-Message-State: APjAAAUD6TNC8KS1QLuteraGxHBs3aAHS2XRTGcHt7xN0iHw9hkAvTN7
	cZG/XLRDISlz7FwNWEq7S/s6AA==
X-Google-Smtp-Source: APXvYqyapH1PYmcdHb9ZlR7WfCmhF1aLdVU5b3QNPxlj5H0nafk31SwhIxC6719/QkznnapTCeUrIQ==
X-Received: by 2002:a05:600c:224d:: with SMTP id a13mr29610306wmm.70.1579039709609;
        Tue, 14 Jan 2020 14:08:29 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id l19sm20219612wmj.12.2020.01.14.14.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 14:08:28 -0800 (PST)
Message-ID: <739d894e1e5b9cae0fa7a1fddfb1193aec4eb782.camel@linuxfoundation.org>
Subject: Re: [yocto] Switching to OpenSSL 1.1.1 in Yocto Morty release
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: n.merinov@inango-systems.com, yocto@lists.yoctoproject.org
Date: Tue, 14 Jan 2020 22:08:27 +0000
In-Reply-To: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
References: 
	<1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-01-14 at 15:50 +0200, Nikolay Merinov via
Lists.Yoctoproject.Org wrote:
> Our company interested in updating an old Yocto releases (especially
> the Morty release) to use the OpenSSL version 1.1.1.
> 
> Can Yocto Project integrate all necessary changes if Inango prepares
> all required modification to compile all the code that exists in Poky
> Morty distribution with OpenSSL 1.1.1b (version used for Thud
> release)?

Our new stable branch maintenance plans are here:

https://wiki.yoctoproject.org/wiki/LTS

Have a look at those, particularly the community section to see whether
this may qualify as a community maintained mixin style layer for morty?

We couldn't integrate these into morty itself but this could be
potentially be acceptable as a mixin type piece of work that could be
shared.

Cheers,

Richard

