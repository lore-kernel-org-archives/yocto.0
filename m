Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.56.1593206307599225176
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 14:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HX9VaRTe;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D50E01D96; Fri, 26 Jun 2020 14:18:27 -0700 (PDT)
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
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC78EE01D92
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2020 14:18:25 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id g18so10802432wrm.2
        for <yocto@yoctoproject.org>; Fri, 26 Jun 2020 14:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=urlJAtXT8iEmwnpfBlvLiMYnRmAM6erXFXEyqx8Wmww=;
        b=HX9VaRTeIURY6UvTAEaIMs2/bJ3KHCy8VOLCaJnSNgqrSIDL4Q4IRr1VOKJ9X5lLlY
         jbxeyrfsJbJEgvOf4IbjPdRig9/OarQtNIeYXHPK9bSvddq7XZEfZiGjV0pZv7dMfG6y
         pm9E0BU7Ouai1ls4LffgVXadm8QXlRS+y1oXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=urlJAtXT8iEmwnpfBlvLiMYnRmAM6erXFXEyqx8Wmww=;
        b=F08EYXO5IoX42f0DcNqUkb1RRAwHAIIdCIetuuulBxZqPWaW+zWjrncT8bhMcUJ7lh
         88oKsqgw2x+vCiMSYCuc2Phc0ta2VedrLyr8EDL52IysZft0pP20GK4nkWjLS9s33X4M
         sNhCnhqIeYzbbzYcZFSw5ro9rUF9FmCAMJK9/mYp5oq+wftlhCvl43l5ihKr7D8iCaIf
         w3DCUG47yBWlvxxOWbdJjOeD42cxGQOScbh+z1G5Z0WrntADU9evLZB8NulhEsVqoLtg
         K1C6fjng0H7HgLLqf0kA1uh9Cy+m5hYQPlrsmPzYsg3UTQ1yBn7deeUKrIw2dJUMnBBK
         Al5Q==
X-Gm-Message-State: AOAM531BSYm+rIwVgZH8Y02C1QfSnBQUUnf9GQ1OcUTr+Vc6SP9Z5LuR
	p1YV44TnGcmDxq62wRfsqhJD9iE2H0gC8A==
X-Google-Smtp-Source: ABdhPJzdWOuqO8GlDWY2pEKJVyeRtqNFDNzkOT8VNxkCtmJ8ZIuoqeYmJn04XSZcvz/43SnvfRiq9Q==
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr5495866wrw.405.1593206304622;
        Fri, 26 Jun 2020 14:18:24 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e5sm38413244wrs.33.2020.06.26.14.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 14:18:23 -0700 (PDT)
Message-ID: <a4d0acc8c9bbc53901747afff990d94803af5386.camel@linuxfoundation.org>
Subject: Re: [yocto] how crippled is ruby support in YP 3.0?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Fri, 26 Jun 2020 22:18:22 +0100
In-Reply-To: <alpine.LFD.2.21.2006261419350.1554442@localhost.localdomain>
References: <alpine.LFD.2.21.2006261419350.1554442@localhost.localdomain>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-06-26 at 14:19 -0400, Robert P. J. Day wrote:
>   background: trying to get ruby and a number of ruby gems migrated
> from "morty" to "zeus", and nothing but grief trying to
> compile/install ruby gems.
> 
>   plan A: start with standard YP layers all checked out to "zeus",
> and
> add vendor layer -- still similar grief.
> 
>   current plan: start from absolute scratch, new project targeting
> x86_64, all layers checked out to "zeus", and build for
> core-image-minimal (*that* i know i can do).
> 
>   then, little by little, add ruby content. has anyone here worked
> with ruby and ruby gems extensively and has had to struggle to get
> stuff working? as soon as this basic build is done, i'm going to just
> add "ruby" to the image, and from there, start adding gems one by
> one.
> 
>   should i expect this to go smoothly, or should i expect the pain
> i've been through for the last couple days?

If we actually had some tests for it, we might have a much better idea.

The areas of the project with good automated tests tend not to regress
without our noticing. Areas with no tests can and do :(

Cheers,

Richard

