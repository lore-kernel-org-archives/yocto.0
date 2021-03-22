Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.832.1616427178436466612
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 08:32:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gmiV9Hlc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id b9so17597873wrt.8
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 08:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rSxXYKwL8XIeQHjtHCWNibtaRN7cJtuJZ21Of3N0TpQ=;
        b=gmiV9HlcCb9El5tGPQGO3/DLZI5Gw6gRQQVYX0JCP1+R6dT05WYU92SO8hAWq6lUmI
         UgOkMwO8m7oXSKYtpS2WJFyLsV21bimty6gmC6lUKFU+N/kQsYSQQfBwMx7wejrRuSz4
         cRQLCI41cDTtj8sl+u9fkyqJKdMbX1fB2tvfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rSxXYKwL8XIeQHjtHCWNibtaRN7cJtuJZ21Of3N0TpQ=;
        b=I4ZX5cTdnvoL60324zYZDIyvfEDLS0IlWIPW3KzDLP56zs/xfRSUPqVlDffmDGr/Ft
         +TENZVPBPnzU0fP6AUdLC14YU0JkAZEatJH2a9LtHKQx5n3N4F8k6/JqkvnlFmv+19LT
         M1IitFxRrPGS9kGkhqB/P4GcGObHaXMOVrHB5LUaNDpTI5O4SshZ5ib7O7M53c31ome+
         4CkmfiBZfWeDI0l39/6cLcyulPdv3HBYMQ/cjq269kUBFIiw/5U0Aui103PGC5ZAZ67R
         /0RG694MqKMC+Z1iTGM80czD9zPtjw12bMPQwtPWjnyZZV6OCy/BGZ+iM41IA7VBj9o5
         zggA==
X-Gm-Message-State: AOAM532elZ6SbBXY2j0N/9G1veUUb0jDeT4ooM8en+bJRGdXqNQUKq/2
	8RwI3ABis/VEeIkrqrmtO+7/kQ==
X-Google-Smtp-Source: ABdhPJxyov7SMfb8Xp079LR7Ec6H2NkYcX3RGJ8OsC/V3CQKm+fZh/xnRqka7LP1shPA3jFZpU5jow==
X-Received: by 2002:adf:ea47:: with SMTP id j7mr64017wrn.377.1616427176676;
        Mon, 22 Mar 2021 08:32:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:5915:a721:ad3c:1822? ([2001:8b0:aba:5f3c:5915:a721:ad3c:1822])
        by smtp.gmail.com with ESMTPSA id x6sm16772757wmj.32.2021.03.22.08.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 08:32:56 -0700 (PDT)
Message-ID: <70bfa1727257beadb87350d443821463c38d923c.camel@linuxfoundation.org>
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Changqing Li <changqing.li@windriver.com>, Paul Eggleton
	 <paul.eggleton@linux.microsoft.com>
Cc: yocto@lists.yoctoproject.org
Date: Mon, 22 Mar 2021 15:32:55 +0000
In-Reply-To: <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
	 <9315981.NtHHCumI8A@shodan>
	 <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
	 <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2020-02-14 at 10:42 +0800, Changqing Li wrote:
> On 12/11/19 1:45 PM, Changqing Li wrote:
> > On 11/13/19 6:36 PM, Paul Eggleton wrote:
> > > Hi Changqing,
> > > 
> > > Some comments below.
> > > 
> > > On Tuesday, 12 November 2019 9:32:53 PM NZDT 
> > > changqing.li@windriver.com wrote:
> > > > From: Changqing Li <changqing.li@windriver.com>
> > > 
> > > 
> > > > +        {% if detail.BUILD.LOCAL_CONF != "" %}
> > > > +        <dt></a>Local Conf:</dt>
> > > > +        <dd style="white-space: pre-wrap;">{{ 
> > > > detail.BUILD.LOCAL_CONF | safe }}</dd>
> > > > +        {% endif %}
> > > > +
> > > > +        {% if detail.BUILD.AUTO_CONF != "" %}
> > > > +        <dt></a>Auto Conf:</dt>
> > > > +        <dd style="white-space: pre-wrap;">{{ 
> > > > detail.BUILD.AUTO_CONF | safe }}</dd>
> > > > +        {% endif %}
> > > We cannot use the safe filter here - doing so could open up an XSS 
> > > vulnerability, since anyone can upload anything to the error-report 
> > > application and the content could include links or other malicious 
> > > HTML data. We should allow it to be auto-escaped. Is there a 
> > > particular issue you were using this to solve?
> > 
> > This is for resolve a problem when there is angle brackets in 
> > local.conf/auto.conf.
> > 
> > I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass: 
> > replace angle brackets with &lt; and &gt;]
> > 
> > when we have below content in local.conf or auto.conf:
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
> > send-error-report will fail with "HTTP Error 500: OK"
> > 
> > error-report-web do rudimentary check on all fields that are
> > passed to the graphs page to avoid any XSS happening, if contains
> > '<', the server will return error(Invalid characters in json).
> > fixed by use escape of <> to replace it.
> > 
> > NOTE: with this change, error-report-web need to add filter 'safe'
> > for the string wanted to display to avoid further HTML escaping
> > prior to output. Below is how the content displayed on webpage:
> > with the filter 'safe':
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
> > without the filter 'safe':
> > BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj &lt;raj.khem@gmail.com&gt;"
> > 
> > Do you have good idea to resolve this? Thanks.

Sorry about the delay on this, we do really need to get this resolved.
I'm wondering if we should replace the angled brackets test with
https://github.com/mozilla/bleach which would then remove the need
for these workarounds.

Would you be able to update the patch for the others issues please
and then we can look at this one separately?

Thanks,

Richard

