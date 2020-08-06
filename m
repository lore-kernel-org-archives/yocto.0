Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.15401.1596746148613964117
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 13:35:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RrKP4UK5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id 184so10919719wmb.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 13:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CAwuxYc92JS59f4ZuWAl7jkHoEAyW3+lm6dxRTirc/w=;
        b=RrKP4UK5gM08gsFao6McOPzNTGTggj4iItuRvwybu8E6vSU27rd/UtxVL5CmXWRv5z
         lHV4yV8XEMtMBYo/MQdiu51jJDcJosftMRFkzJ+qXu/+aljXSfkI57VtfV+ZDTOI1Y/s
         BopfNXUMGdBkW2L+CrZUpGt8W6xELIT49Wvy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CAwuxYc92JS59f4ZuWAl7jkHoEAyW3+lm6dxRTirc/w=;
        b=cexn+f41ijkc10c5sadBuLFZHqf7m7h4TXNvqSgRbCPAM+Gqq4usZC6D7zp2rQ4lrB
         7g+jqtX6LpsZNrnFDPkyd9tK403l98ELws5yIA3KDfnEhL1Y4TKAQsKTTklU5fJYTb57
         Bc2euJkl8U4rjrtXK7R7HwmDU9qFrPerHE4eOm4kfJgWFrH9OOzjQWjLmErJPrCQuLtg
         HBBcaBGmBIXOqEj9RGMmRY9xpVN7KQLtf/sTAAx1MxCdEwnJWQJ4w9Wp0Ij1uhPGE+e4
         fNUtMPBy5SyJM+KGYGnVdM3E0CZb2ZKeekd5MfxaQg4rrU0Uo6rkt9mwItzFf/BYX9N7
         kXmA==
X-Gm-Message-State: AOAM531DJWPr94l3E0c7O3nLLaXKyTLz0lCvUakOHZCjfhUn9CHVdjUZ
	aR/XFWwLfRl5mupGmJ5vgcvpvg==
X-Google-Smtp-Source: ABdhPJw5vg7TgYNBXv5HnAgYQ0vbjmPQHzaqPD1o+/uBJtb+2saYSdFjDs4zN8XG1TpEk35yp3onxg==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr9902007wmf.92.1596746147017;
        Thu, 06 Aug 2020 13:35:47 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 9.a.b.2.3.a.a.7.c.e.f.b.f.8.9.f.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (9.a.b.2.3.a.a.7.c.e.f.b.f.8.9.f.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:f98f:bfec:7aa3:2ba9])
        by smtp.gmail.com with ESMTPSA id h14sm7456135wml.30.2020.08.06.13.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2020 13:35:46 -0700 (PDT)
Message-ID: <27103d01c503068a4124cee48d14448c1eb0b306.camel@linuxfoundation.org>
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Scott Branden <scott.branden@broadcom.com>, yocto@lists.yoctoproject.org
Cc: Rick Liu <rick.liu@broadcom.com>, Jonathan Richardson
	 <jonathan.richardson@broadcom.com>
Date: Thu, 06 Aug 2020 21:35:43 +0100
In-Reply-To: <4521ef13-3e15-0d57-11ad-a415b89b9e0f@broadcom.com>
References: <20200512131738.GQ11927@denix.org>
	 <4061.1596576995601033488@lists.yoctoproject.org>
	 <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
	 <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
	 <4521ef13-3e15-0d57-11ad-a415b89b9e0f@broadcom.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-08-06 at 11:05 -0700, Scott Branden wrote:
> We found the source of the uninative fetch problem:
> 
> SOURCE_MIRROR_URL needs to be set in order for uninative to be picked
> up from local mirror.
> 
> The standard PREMIRRORS mechanism doesn't work for this single
> tarball.
> So every time a clean poky build took place it always went to the
> internet to fetch the uninative tarball
> the first time and store it in the local build download.
> 
> I think this should be clearly documented somewhere in the yocto
> manual?

That definitely explains things. I think its assumed that people would
set appropriate PREMIRRORS to cover uninative in this case but that
isn't documented. I'm not even sure we want for people to have to care
about this :/.

Can you try this change:

diff --git a/meta/classes/uninative.bbclass b/meta/classes/uninative.bbclass
index 70799bbf6d..99072e1326 100644
--- a/meta/classes/uninative.bbclass
+++ b/meta/classes/uninative.bbclass
@@ -56,9 +56,14 @@ python uninative_event_fetchloader() {
             # Our games with path manipulation of DL_DIR mean standard PREMIRRORS don't work
             # and we can't easily put 'chksum' into the url path from a url parameter with
             # the current fetcher url handling
-            ownmirror = d.getVar('SOURCE_MIRROR_URL')
-            if ownmirror:
-                localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${UNINATIVE_TARBALL} ${SOURCE_MIRROR_URL}/uninative/%s/${UNINATIVE_TARBALL}" % chksum)
+            premirrors = bb.fetch2.mirror_from_string(localdata.getVar("PREMIRRORS"))
+            for line in premirrors:
+                try:
+                    (find, replace) = line
+                except ValueError:
+                    continue
+                if find.startswith("http"):
+                    localdata.appendVar("PREMIRRORS", " ${UNINATIVE_URL}${UNINATIVE_TARBALL} %s/uninative/%s/${UNINATIVE_TARBALL}" % (replace, chksum))
 
             srcuri = d.expand("${UNINATIVE_URL}${UNINATIVE_TARBALL};sha256sum=%s" % chksum)
             bb.note("Fetching uninative binary shim from %s" % srcuri)

Hopefully that handles this case more generically.

Cheers,
Richard
 



