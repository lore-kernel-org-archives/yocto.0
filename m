Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1995.1587540280763008702
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 00:24:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LksFFY/+;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: pbarker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63135E01A42; Wed, 22 Apr 2020 00:24:40 -0700 (PDT)
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
	*      [209.85.221.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1721E019FA
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 00:24:39 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id k1so1103544wrx.4
        for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 00:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=3zQ6Kd+4DXEFCrZutCULgZZo+Cl5dE3poKW23XeWu9c=;
        b=LksFFY/+Zpy70r1nBLDa/aY792UKb9cLfb7h4lpvSyI4Ut4EjghbGFRNxxvvkG5pzZ
         CVpUMRnNPWr/eCzjep5btSbypeHwBsXeI+ZSq+WE9tPqpLB8OX5EBPmqE/9hIXak7OW+
         JRq3H/iA3EgmEDL7xUbywlWV2cPAWSm037/TU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=3zQ6Kd+4DXEFCrZutCULgZZo+Cl5dE3poKW23XeWu9c=;
        b=sKOOVkGdUec+e13ujlii2izquZEZTM6cACYUU69LxIQAfTQXOQOOc94UOZNXX73Odp
         xiumhEvcGtGygKIUidg238TJ71NFA9kTXiA7tLUECGKWfVN/e1r7cJxyR2jt91UcwqIT
         R0jY4XCqei4xguba26muvh+NSN+8k9+PeGCG4/DWUKlncKVvbwqnNR6zEpPKfFschjez
         8Cj/vN8DK1oaHuBGgOnsd0T2GMfKNUGDIp0xfMsrXYE74yqmRpWncu5DvYK4Ov8rg8Xh
         bCBJNQfqZta0TBUFBHqNMk+5Uq485DcJffPEvKP18p4uzL4ecEqUvfU5UkXV+jsKjd45
         pN5g==
X-Gm-Message-State: AGi0PuYMExm9V52uEBac47JxOOXK7rymU8AsHUpiIBq1zw++FRFxddPt
	BKRjVUklYWReGcujIdZJ8Hpxsg==
X-Google-Smtp-Source: APiQypLYMkg1jX340729CP1vxSr1Y7hZAXqrYAax48HYEWO/OaP2LccDl6TYc9S5Fecpuh7+cNmEdQ==
X-Received: by 2002:adf:fa41:: with SMTP id y1mr27322754wrr.131.1587540278605;
        Wed, 22 Apr 2020 00:24:38 -0700 (PDT)
Received: from ub1910 ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id g69sm6839758wmg.17.2020.04.22.00.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 00:24:38 -0700 (PDT)
Date: Wed, 22 Apr 2020 08:24:35 +0100
From: "Paul Barker" <pbarker@konsulko.com>
To: "Philip Balister" <philip@balister.org>
Cc: "openembedded-devel@lists.openembedded.org"
 <openembedded-devel@lists.openembedded.org>, openembedded-core
 <openembedded-core@lists.openembedded.org>, openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Yocto Project
 <yocto@yoctoproject.org>
Subject: Re: [yocto] OpenEmbedded developers virtual happy hour
Message-ID: <20200422082435.151a49f1@ub1910>
In-Reply-To: <98d30536-4d57-16f9-88f4-1a678fd75970@balister.org>
References: <98d30536-4d57-16f9-88f4-1a678fd75970@balister.org>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 21 Apr 2020 15:34:57 -0400
"Philip Balister" <philip@balister.org> wrote:

> We (the OpenEmbedded board, with help from Automotive Grade Linux who
> are providing the meeting "space") would like to invite you a a virtual
> happy hour on April 29 at Noon EDT, 6PM CET (Is that the right TZ)
> 
> We'd like to come and show off their projects and give us all a chance
> to say hello since so many of our chances to meet in person are not
> happening for the foreseeable future. We would also like to discuss what
> kind of events we should host in the future to help build the community.
> 
> Topic: OpenEmbedded Developer Happpy Hour
> Time: Apr 29, 2020 06:00 PM Amsterdam, Berlin, Rome, Stockholm, Vienna
> 
> Join Zoom Meeting
> https://zoom.us/j/94557245630
> 
> Meeting ID: 945 5724 5630

Sounds like an excellent idea, thanks for organising this! I'll see you
all there.

-- 
Paul Barker
Konsulko Group
