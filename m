Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5460.1576079337051278393
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 07:48:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RA0O2ftp;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E137AE010EA; Wed, 11 Dec 2019 07:48:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B48AE00F02
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:48:54 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id q10so24556631wrm.11
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=YTo0gNsRU13w3dODJth8tv21rmNQIgqT+hYMt/SS+G4=;
        b=RA0O2ftpCU7VHEmkPsRcWMAbk+AcTSYpSL5+QJKpljFtqn1oE2UO6cP7l+GjiIp7gs
         l4nLuvz3oMoBhLFhYQmeg+Wl/H+K7babYZTISqY1EogSueuSo9SH+/R05VNTA6JUsnkp
         +A9SxOxpYaT7vIOGcuvrzIA5uNkzR9UAP5eHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=YTo0gNsRU13w3dODJth8tv21rmNQIgqT+hYMt/SS+G4=;
        b=OW3v9GrhyJWqhvQdBSLsq5Pt7glafwtFJMWXkmWcrYoG2LSuAXDerqFO1/KisoO2j6
         VdLfxTv4Q7PkkZk17oYxCtiyT5a2bxBVydeMHUJ5NgnMp2WnGlmxK7djeGsFlwnSqE01
         AP17xme0NQUIE05sURKKWKlvXHpQWUK9TVp2Z/Go/GiyU/3j6yb5rYaLiX1JMTl9yqNT
         6tuwJTPvPbcrPCzXuppACwRwgQFmoHwsYEHY08CewiEbreFlAncAWoZNPTJ3fhlh06Bw
         oFPnVtWly+TcBUc5ByxRITQowfPFq0yEgf3t47mgGjhguUASePBF7iKFP0rSlar3fv6g
         9hjw==
X-Gm-Message-State: APjAAAUawy4/NBwx4HmQUW0zzM2fPQde/pxp6rFYIBW8hV6WNTUaFZ8T
	kChompXhbES2UsRXAMhVBgWVDg==
X-Google-Smtp-Source: APXvYqxz+cmvXfXqXPXJKFVBi8NJjYNb8UtSxhyZkLdYp1MR8FOjZ3INZZqFOgs5zra0ksfMd1EadQ==
X-Received: by 2002:adf:f850:: with SMTP id d16mr462226wrq.161.1576079333517;
        Wed, 11 Dec 2019 07:48:53 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id f9sm2609763wmb.4.2019.12.11.07.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 07:48:52 -0800 (PST)
Message-ID: <a9e3cc548a4794e2497f350f53a7a915ee71fc2d.camel@linuxfoundation.org>
Subject: Re: [yocto] variable and task/function timing
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>, Nicolas Dechesne
	 <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Date: Wed, 11 Dec 2019 15:48:51 +0000
In-Reply-To: <20191211153955.GA5676@linux-uys3>
References: <20191211071807.GA32639@linux-uys3>
	 <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
	 <20191211153955.GA5676@linux-uys3>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-12-11 at 10:39 -0500, Trevor Woerner wrote:
> On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:
> > >         +python do_check_build_type() {
> > >         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
> > >         +    if _buildtype not in ['release', 'debug']:
> > >         +        bb.fatal("unknown build type (%s), please set to
> > > either 'release' or 'debug'" % _buildtype)
> > >         +    if _buildtype == 'debug':
> > >         +        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> > >         +        bb.plain("setting meson build type to
> > > debugoptimized")
> > >         +}
> > >         +addtask check_build_type before do_configure
> > >         +
> > >          EXTRA_OEMESON = " \
> > >              -Dshared-glapi=true \
> > >              -Dgallium-opencl=disabled \
> 
> Whether I move the above to before or after the "inherit meson..."
> line makes no difference. Probably because the variable is being set
> by a task (which, I assume, is too late to have any effect, which is
> a large part of why I wrote this email: when do these tasks get
> called with respect to how variable are being set by all the
> different ways they're being set?)

Tasks run in isolation, if you change the datastore in a task it has no
way to get "seen" by other tasks. They're separate processes.

That is why the setVar in a task has no effect outside that task.

Cheers,

Richard



