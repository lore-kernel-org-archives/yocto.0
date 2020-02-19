Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.619.1582150776204408636
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:19:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=T5D7uDHo;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF700E01564; Wed, 19 Feb 2020 14:19:35 -0800 (PST)
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
	*      [209.85.128.50 listed in list.dnswl.org]
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B6CE01432
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 14:19:34 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id n3so2379552wmk.4
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 14:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=JBnWe5TZlgr3Bee/jFcuNtyGX6V2xLx6iZUfsTa+DJI=;
        b=T5D7uDHoQUJse6DlJqPud6KtKOofqHaHAlZtYoIRV/2dllXHDwWqVW5yqJ36T2nJs0
         SEIWI0spPtCgJP+dRIv1RIWLU1b2T1Ecq0EcZ0GKqq/c6zwVq8GP+/bkVKCeDCjn7MhG
         uq91D6eEcYuHO5qq3btVAuBLjYq4I8ohc7mM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JBnWe5TZlgr3Bee/jFcuNtyGX6V2xLx6iZUfsTa+DJI=;
        b=fNQluhON70Z3XI3+6exJDrGmhvcf1Ynf/692TkFCQP2detrhZA5PNgvmC8YIbEtXp1
         64jmPUkB9fwRQBQYUsKg5JFfyexk3GNLa5UtE1Hh2P16jSpnaUTtxA4/srenatuICwb8
         6w4Osz1+7u+Se6PuXGnQXQCPw72Kn8thwIEcg2af6+uXxRF3wPIRwagy19lVHwsAMPbx
         V01Yit9OrkyD54ORogYUvr2AJaJtDJpeyHlGwbEGvxXLI03LgllE6AV+9Pmt/4ZQA0oo
         t6fJ2dgkd/Dq2ak/wPhzKfJvbhJq3qKJPjBtzpm5SmLx5Dc4kPuGnmWW6rnQvy/R+FXm
         Hb2g==
X-Gm-Message-State: APjAAAVYT4XSOcaxMa5xsLCOcX0Z2slUBjc5SdusPGCb8CLw7YGUus5c
	Wv68azmnbF3yWA6q4qt03OOPtA==
X-Google-Smtp-Source: APXvYqzF647y+uBExZN2VDANkllTAuon9nb9XFN5/9p81C4DXfXl9wP3n3GUBT2IDZ6+LbcmE2P35g==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr12988559wmc.185.1582150773221;
        Wed, 19 Feb 2020 14:19:33 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id l6sm1735565wrn.26.2020.02.19.14.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 14:19:32 -0800 (PST)
Message-ID: <2c0fedf92f8a5cf805cc9908b438dab40ffd72ec.camel@linuxfoundation.org>
Subject: Re: [yocto] Debugging gdb built by Yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Patrick Doyle <wpdster@gmail.com>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Wed, 19 Feb 2020 22:19:31 +0000
In-Reply-To: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
References: 
	<CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-02-18 at 11:26 -0500, Patrick Doyle wrote:
> Does anybody have any tips or tricks for how I might debug the
> (cross-canadian) gdb built by Yocto's SDK?
> 
> I need to add some printf's to the gdb code to help track down why
> something isn't working, but none of my traditional
> get-ready-to-debug-this-code techniques are working.
> 
> How can I run the gdb that I just built?  Note that I am presuming
> that I can
> 
> $ bitbake gdb-cross-canadian-mipsel -ccompile -f

Do you perhaps want gdb-cross-mipsel ?

cross-canadian is designed to be run as part of the SDK.

Cheers,

Richard

