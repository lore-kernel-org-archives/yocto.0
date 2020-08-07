Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.6298.1596836274349477308
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Aug 2020 14:37:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ffk9U+qP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id q76so3096668wme.4
        for <yocto@lists.yoctoproject.org>; Fri, 07 Aug 2020 14:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=ioIYAfbNabpbLrmwkjSReMAP8IZQz64ci+DV1lntXmw=;
        b=ffk9U+qPpmp73VyEYOuJ3XtxPKyCpL6KDQusyBbYbOK+NECIWX39sXqsLYw7Y+yM5r
         PouGiCyHlMkFgEeCq6ifeIcpq8VLjL7r9AxkeKO98ya9iuOFnqvnIZfc1JNcGrwBVZdM
         gRO9gg4nB7SFozwe8znCa8536eXoQz0d0APi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ioIYAfbNabpbLrmwkjSReMAP8IZQz64ci+DV1lntXmw=;
        b=RDaGsZ1hYZM15CPBNY9SY+6is3HyO4Qydi585A2Zah8BTMymWWNnr7FVixum10x8JG
         jLHZ6GbbUXUgPn3gG0ceBGJuO6SUpUDpu2bkxGnYNPrzsam/AC8B4xoAkCTr0i6TFrZ0
         JmKocdfuwfnMiJPzZadn9zBzNGUNZEODFk6Jm4T9qJv9/ayEeBuYOzREB5g6UK0pdIwW
         zVfp27SZ52yYuvXF6KSoBdfeonxXJH0UzEme0aF6s9USn5CZVO9Ea22sPwCtNVXCMvUj
         kzkwlNIR8iA5ODKbMfcMV7+tnTgvI1XEY+LsqZYBQVJTSj6mwbHYJGteUPdONADHzZ/R
         Zuqw==
X-Gm-Message-State: AOAM532G6vsS7IC5OnFYfZWO0gNksnSpiiaGoqhRh/ir9FLHul/m1MQ7
	VOvS1Td8WxkbvTAHNO6q9QXARg==
X-Google-Smtp-Source: ABdhPJx0fHvzWB4csTzgXH/5q/jW84KddkHwoNKjavyGO7lZOPCgvoH5uESozzC8QZpeGolO5uK7lQ==
X-Received: by 2002:a1c:28c1:: with SMTP id o184mr15259504wmo.91.1596836272766;
        Fri, 07 Aug 2020 14:37:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 9.a.b.2.3.a.a.7.c.e.f.b.f.8.9.f.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.a.b.2.3.a.a.7.c.e.f.b.f.8.9.f.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:f98f:bfec:7aa3:2ba9])
        by smtp.gmail.com with ESMTPSA id o124sm12045945wmb.2.2020.08.07.14.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2020 14:37:52 -0700 (PDT)
Message-ID: <7fab837ef3ddcca3f1c78ef235ab8ec2664e8bc6.camel@linuxfoundation.org>
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Scott Branden <scott.branden@broadcom.com>, yocto@lists.yoctoproject.org
Cc: Rick Liu <rick.liu@broadcom.com>, Jonathan Richardson
	 <jonathan.richardson@broadcom.com>
Date: Fri, 07 Aug 2020 22:37:51 +0100
In-Reply-To: <9e6ba27a-72a0-ed57-1d06-13db335ae1c9@broadcom.com>
References: <20200512131738.GQ11927@denix.org>
	 <4061.1596576995601033488@lists.yoctoproject.org>
	 <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
	 <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
	 <4521ef13-3e15-0d57-11ad-a415b89b9e0f@broadcom.com>
	 <27103d01c503068a4124cee48d14448c1eb0b306.camel@linuxfoundation.org>
	 <9e6ba27a-72a0-ed57-1d06-13db335ae1c9@broadcom.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-08-06 at 15:31 -0700, Scott Branden wrote:
> > diff --git a/meta/classes/uninative.bbclass
> > b/meta/classes/uninative.bbclass
> > index 70799bbf6d..99072e1326 100644
> > --- a/meta/classes/uninative.bbclass
> > +++ b/meta/classes/uninative.bbclass
> > @@ -56,9 +56,14 @@ python uninative_event_fetchloader() {
> >              # Our games with path manipulation of DL_DIR mean
> > standard PREMIRRORS don't work
> >              # and we can't easily put 'chksum' into the url path
> > from a url parameter with
> >              # the current fetcher url handling
> > -            ownmirror = d.getVar('SOURCE_MIRROR_URL')
> > -            if ownmirror:
> > -                localdata.appendVar("PREMIRRORS", "
> > ${UNINATIVE_URL}${UNINATIVE_TARBALL}
> > ${SOURCE_MIRROR_URL}/uninative/%s/${UNINATIVE_TARBALL}" % chksum)
> > +            premirrors =
> > bb.fetch2.mirror_from_string(localdata.getVar("PREMIRRORS"))
> > +            for line in premirrors:
> > +                try:
> > +                    (find, replace) = line
> > +                except ValueError:
> > +                    continue
> > +                if find.startswith("http"):
> > +                    localdata.appendVar("PREMIRRORS", "
> > ${UNINATIVE_URL}${UNINATIVE_TARBALL}
> > %s/uninative/%s/${UNINATIVE_TARBALL}" % (replace, chksum))
> >  
> >              srcuri =
> > d.expand("${UNINATIVE_URL}${UNINATIVE_TARBALL};sha256sum=%s" %
> > chksum)
> >              bb.note("Fetching uninative binary shim from %s" %
> > srcuri)
>
> Note is missleading as it is going to fetch from PREMIRRORS.
>
> > Hopefully that handles this case more generically.
> Yes, this works.  uninative is now fetched from the PREMIRRORS like
> all the other downloads even though it prints the note about Fetching
> uninative binary shim from the URL.

Thanks, I've tweaked the patch to improve the note and submitted it.
Good to get to the bottom of this!

Cheers,

Richard

