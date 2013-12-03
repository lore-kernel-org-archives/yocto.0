Return-Path: <joe@deserted.net>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C6AE00563
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:35:45 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so13623113qec.9
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:35:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=GJdA7kTLWlmgGbqu6YVCIPtOXAFDgXbGj6MdwjjtC7Y=;
	b=VEkjn9iLnO2fUuUOA+PFfFoYEu25X9RyY2LWstPmrnR4jRwWxOXrew2YPIxWCeSkn1
	QDYV8AG/VPTOLOIG6LuhbactsCa1A0vCXXTuGalXOUXklcoBqP8VFA/OmYNnizK46Ilk
	e6gffK/4qzgr+xMPtaTYd4BU5itZKbhDBi8mKEKjsr3NDQ4ZjkWXTHeXXcTXo07x2J+E
	qEv2aXFMQXjPc1GRWqZi4imY7Y9dQsMUZagzCASIraL04rEaLq2gir1x5u1g0EM+GA4t
	vVbO+Vj81QatFkN+FQN9N9//fTidbv3v5kuhCMxIQYwYDSOgGj/0mxM1eT+u7KfQVuNd
	2vTA==
X-Gm-Message-State: ALoCoQkzsE2a8sMxU+mF65jtoHoXuwBJ9o3HxGZK+5oP0TnEDoEDSPa7MqZU+Pv5zl+K2gw/IPQt
X-Received: by 10.224.56.5 with SMTP id w5mr128773733qag.60.1386106545181;
	Tue, 03 Dec 2013 13:35:45 -0800 (PST)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id w5sm40696231qat.10.2013.12.03.13.35.43
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Dec 2013 13:35:44 -0800 (PST)
From: Joe MacDonald <joe@deserted.net>
To: flihp@twobit.us
Date: Tue,  3 Dec 2013 16:35:39 -0500
Message-Id: <1386106541-28801-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <20131021201510.GB27412@deserted.net>
References: <20131021201510.GB27412@deserted.net>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Dec 2013 21:35:46 -0000

(resending, this time including the list ...)

[Re: [meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}] On
13.10.21 (Mon 16:15) Joe MacDonald wrote:

> [[meta-selinux][PATCH] bzip SELinux policy modules in ${datadir}] On 13.10.21
> (Mon 18:06) Philip Tricca wrote:
>
> > The 'semodule' utility can operate on compresed modules so the only
> > cost of this change is a slower module load time when invoking
> > 'semodule -i' on a running system (increased CPU load due to bzip2).
> > That said my tests show more than 100M reduction in ext3 image size
> > of core-image-selinux. This last metric is a bit skewed as the image
> > includes two policies. Still, a reduction in the size of the refpolicy
> > package by 1/2 is significant.
>
> This is included in the batch of updates I've merged and are currently
> staging in my tree.  FWIW, on my build I saw a similar reduction in size
> to what you've reported, ~110MB, with a minor hit at load time.  As
> expected there's also an increase in memory requirements at load time,
> so I'm poking around a bit to see what this does to the lower-end
> configurations I've got kicking around.  It'd be really nice if this was
> an option rather than an on/off thing.

This took rather longer than I'd hoped.  :-/

Anyway, I tried a bunch of different configurations and didn't find a huge hit
on memory requirements by doing this, though I still think there's an advantage
to making this an option that can be turned off for folks where storage is cheap
and memory and processing power is at a premium.  That, and the discussion on
the SELinux mailing list along the same line where the general feeling was that
smaller policies are better achieved by actually having less policy rather than
compressing it, led me to this idea.

A DISTRO_FEATURE that is on by default and incorporates your patch.  What do you
think, Phil?

-- 
-Joe MacDonald.
:wq


