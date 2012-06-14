Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D3FCE013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:08:08 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-MD5; 14 Jun 2012 13:08:08 -0700
Received: by dano14 with SMTP id o14so3024742dan.25
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:08:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=VwHG6cKGpbi5lLWzJhARYzmALlNhw3LMYffjsoJRaZM=;
	b=OVt+C+9yhkQxhOdn0+QHmlaLUk7JO/3txYMnlYvCyEAQjCkYXrffzjt9/KOzf3dwvn
	2+KgkTHXyexiwUhWhY8xq8MvgRw2mN7AeiOZqLa8SypbesKTTPHt/3beVvgNSOwaMV+h
	OxvIuOFMz4a2sj6nx2r0pEo0mekVD/4twyR96Saqgw0Fx4orJuWd1fwppwwEcYq5FGMt
	3AjXOWPo6iah20I3md1iYLDt03Uo147Yx0SS0n+NDMERttfdjuwx7/CmORf73Wc5gG2+
	2C+85Ftv+znqVOgWn1GuZwxjzQjKtu7aTTpplX4mcGHWNecdPVM6lNEjxjaCSQiiLlrh
	X5Lw==
Received: by 10.68.223.35 with SMTP id qr3mr12388035pbc.83.1339704487890;
	Thu, 14 Jun 2012 13:08:07 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id x1sm10535601pbp.50.2012.06.14.13.08.05
	(version=SSLv3 cipher=OTHER); Thu, 14 Jun 2012 13:08:06 -0700 (PDT)
Message-ID: <4FDA449E.7040507@intel.com>
Date: Thu, 14 Jun 2012 13:07:58 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1206141400230.10611@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206141400230.10611@oneiric>
X-Gm-Message-State: ALoCoQkvnsTYNEzRvCYUGwQqSu1IxlRmEusniDy/HDFRNEpqt5MPon+qcf/VTt5Ira5uk4FrCCeb
Subject: Re: running my qemu images with kvm
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jun 2012 20:08:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2012 11:05 AM, Robert P. J. Day wrote:
>
>    embarrassingly, i only just noticed that if i want my
> yocto-generated qemu images to take advantage of kvm, i should add the
> arg "kvm" to my "runqemu" invocation, is that correct?

Correct.

>    if that's the case, might it be worth adding that note to the
> standard oe-init-build-env output at the bottom?  or perhaps referring
> the user to the output of "runqemu -h" for available run-time options?

Since the oe-init-build-env script gets invoked for many scenarios that 
don't involve running runqemu, I'm not convinced that the info is needed 
- it might be nice to have, but we don't want to clutter the output with 
too much info.

>    at the moment, it seems awfully easy to run your qemu image without
> realizing you're not taking advantage of kvm.  or am i misreading
> something?

I've been running my QEMU sessions without kvm and it hasn't been a big 
deal. Since we do mention its use in the runqemu usage help, IMHO it's 
appropriately documented.

I'm not sure what the status is of kvm support in the various 
environments that Yocto is run in, so enabling kvm by default may not be 
safe. Please correct me if I'm wrong.

Thanks for the feedback,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

