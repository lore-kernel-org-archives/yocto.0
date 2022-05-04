Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31538C433EF
	for <webhook@archiver.kernel.org>; Wed,  4 May 2022 08:08:46 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.4059.1651651722845811839
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 01:08:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QfsiJpDY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id c11so884512wrn.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 01:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=gjo0biPEFJSR5ovCa9Mg3m59J6iKYbtyFZZ/mozIh14=;
        b=QfsiJpDY4bRd6kySrZlTBQuMpZqOdNrGU9sKFIvH7KnvDV3yAPI2gziYbcBz2Qm1JR
         y8o7NGL3YiG4pTdCWEx+zLFXfW1kxfHIO0wtp8tX6AkpuCglo6cVqUFquK+iu7TslWhE
         YCwYGSKXj79bjkmHXgkcTU02hEaMOgI5iJoJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=gjo0biPEFJSR5ovCa9Mg3m59J6iKYbtyFZZ/mozIh14=;
        b=061fbt2oqpd8bLnMoyMcaMcqAToohFudqpi9x4y1d4VoJX0QdyN8r1yvGddovETqck
         Vd6AbyqAjW2VHgEmnlUsbdsvox4MUO7yxEL+cStmEZ9Rs0JAXseFnhy2OulmGdn+qgeE
         ZaEpy/PFpw8KFB5MDrXCX3sY5I92YGKd1h1u4bu3cU9O9hoVrqMuoopUnILM84xc1eqC
         mCV32+pgyt888y3yNtr0N1YXQ3iCO+LDTs50WiD0KnbU0qlQuL1mjtQEIg3BjoUMS7Po
         0Cr9KolbjEjvzNbPGIox54K0y5n4HltZfI5XnWxjeKxhxi4WcXEbYTX8PUWPxGVtx2WE
         7rBQ==
X-Gm-Message-State: AOAM530FOvdHciboZv27IeeAOl3FYpsDdGtwILTi1osoZB0ICoFC9+3x
	XZwgkltN9F1M9y/H44ZZ41WtYQ==
X-Google-Smtp-Source: 
 ABdhPJw72bOwxbRhtnEM7/MFakWCkC9BG2dv9KPcIvC7g263wmdQXAdFui46gSWJaOQxBUM5Kr+L7w==
X-Received: by 2002:a5d:6f16:0:b0:20c:60f8:c17 with SMTP id
 ay22-20020a5d6f16000000b0020c60f80c17mr10798051wrb.322.1651651721307;
        Wed, 04 May 2022 01:08:41 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d387:a418:2b62:bd29?
 ([2001:8b0:aba:5f3c:d387:a418:2b62:bd29])
        by smtp.gmail.com with ESMTPSA id
 j30-20020adfb31e000000b0020c5253d8c2sm10760829wrd.14.2022.05.04.01.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:08:40 -0700 (PDT)
Message-ID: 
 <6cf4b0c243c9fbb0ca7a7088acd22d8a5c23232f.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.4.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, "Mittal, Anuj"
	 <anuj.mittal@intel.com>, "Elberger, Richard" <elberger@amazon.com>
Date: Wed, 04 May 2022 09:08:38 +0100
In-Reply-To: 
 <010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com>
References: 
	<010101808ce91651-962b6832-98c0-412d-b766-0b6f9cfbf3e0-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 May 2022 08:08:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56990

Hi TSC,

On Wed, 2022-05-04 at 02:32 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.4.4.rc1) was completed on the autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.4.4.rc1
> 

This build of 3.4.4 had some issues on the autobuilder:

* qemux86-64 ptest failure in lttng-tools - known issue
  https://bugzilla.yoctoproject.org/show_bug.cgi?id=14263
  https://autobuilder.yoctoproject.org/typhoon/#/builders/81/builds/3449
* logrotate in testimage failed on qemuarm64-armhost - known issue
  https://bugzilla.yoctoproject.org/show_bug.cgi?id=14686
  https://autobuilder.yoctoproject.org/typhoon/#/builders/97/builds/4490
* meta-aws shows the warnings we used to see on master about SRCREV_FORMAT:
  https://autobuilder.yoctoproject.org/typhoon/#/builders/122/builds/1129
* alma8 perf working failure - same issue as dunfell, we need the same fix
  https://autobuilder.yoctoproject.org/typhoon/#/builders/133/builds/120

I don't think any of these are blocking, just sad we have so many issues that
keep cropping up. Do we proceed to QA or retry? We have no known fix for two of
the above.

Cheers,

Richard


