Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB9C1E01374
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 08:26:12 -0700 (PDT)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 15 Mar 2012 08:26:12 -0700
Received: by ghbz12 with SMTP id z12so4600504ghb.25
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2012 08:26:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=qXz/Pe6M0XUamKIoMB3bGktxeqwD+eEYAFqmesVDiBA=;
	b=W9NUL762j7UAVymHf6JpPL+wM3iqXBoKxwu4eI2ZBBEZwGAy4VElu74XGiXI8noGTU
	5EictU7b0S8X4LiLm41subnuYIYKsgjCb1UAA6kyt+0Q3cmXUw3CY2lLD/SD4Nto1oML
	x+D6LH2uumB8aO77oicQUU0b6AYFVJ/HRPh2iFYrmESM8nT4ypF6JgxubxzQsY+9EG/N
	sIyDiNLsoCZE4ysPMIyZO5vSNM1etwSZO80RhR9/sB1XnNCvvA3UrqcMYTPVxckEBnxu
	T745XRMZU639v5IkpmIlW5tOOAlEx7vsUG+10wn/8SHsOoaZ+PxXYIw5UleSbjotVVa3
	Xumw==
Received: by 10.68.190.8 with SMTP id gm8mr5555852pbc.146.1331825171161;
	Thu, 15 Mar 2012 08:26:11 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id r6sm2112810pbl.24.2012.03.15.08.26.08
	(version=SSLv3 cipher=OTHER); Thu, 15 Mar 2012 08:26:10 -0700 (PDT)
Message-ID: <4F620A03.4000902@intel.com>
Date: Thu, 15 Mar 2012 08:25:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1331816822.19369.7.camel@babel.joshhome>
In-Reply-To: <1331816822.19369.7.camel@babel.joshhome>
X-Gm-Message-State: ALoCoQmKR7tzZlc9fcJiiEBQNEnpM58cvjJGpfNmwZZi/njbujaD6OFPOSs/8wrp21HInpbNLR9b
Subject: Re: syslinux filesystem size limitation
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
X-List-Received-Date: Thu, 15 Mar 2012 15:26:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/15/2012 06:07 AM, Joshua Immanuel wrote:
> Hello,
> 	In yocto I find that the live image (hddimg) is generated using
> syslinux (in bootimg.bbclass). But, I find there has been no check
> enforced to find whether the filesystem size exceeds 1 GB. The image
> will not boot if the hddimg size exceeds 1GB. This is due to the
> limitation in syslinux.
>
> How to address this issue? Is there any other alternate solution for
> this? Should I file a bug report for this?

Yes, this sounds worthy of filing a bug. Bonus points for patch 
submissions to fix it. ;)

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

