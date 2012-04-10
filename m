Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C650E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 09:01:06 -0700 (PDT)
Received: from mail-pz0-f44.google.com ([209.85.210.44])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Apr 2012 09:01:05 -0700
Received: by dadz14 with SMTP id z14so22948426dad.17
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 09:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=uKh6o8fkXYx4SFzSUMRrqdf0Z3gvcp7CVrK3yT2W/ao=;
	b=I+6arvsqrH/bYUk67qFxshUQYBze+2+qn+H6y5QOaPi+ycDZVvz/9pRknGDNW0SZ3c
	nfh+jpeAeylMI+PWXWFKm+TxJBFAtwkapl0VftW8BZHUDURJQfYGbqPXLiporldPIB4k
	HCM4IruaLXuIsYDSpRnxU7TnoyjZXNWZb4qi/KXcoc4hrdwtZyoj+/vvYXZ0yejiBOWO
	y5dG8RLzrne9FIlcJtZV1F2Wtr3nV4E+CLhj+UVXt/tqZ5zVw3b6h1XOpzFeC0ZYWq74
	8nBhmJbQQiJQvK8YHVuNA2tTUAxDQWY0MIm2suMySqmBVlu1Od0iFueL0WyDhCxtwHex
	PvXA==
Received: by 10.68.132.69 with SMTP id os5mr29720293pbb.60.1334073664974;
	Tue, 10 Apr 2012 09:01:04 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id z5sm215997pbn.35.2012.04.10.09.01.03
	(version=SSLv3 cipher=OTHER); Tue, 10 Apr 2012 09:01:03 -0700 (PDT)
Message-ID: <4F84593D.7090109@intel.com>
Date: Tue, 10 Apr 2012 09:01:01 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <857BE142E5399E46B20FD45B9DB8A7BC0FD33D27@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FD33D27@SHSMSX102.ccr.corp.intel.com>
X-Gm-Message-State: ALoCoQkTiposcunLjYJIO+RSIUsLF6pQ0/EcWajmy4ZqtBHKYiXxzeKYIM6NLIlCQIdtCd7Hl1FZ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder failure http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433
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
X-List-Received-Date: Tue, 10 Apr 2012 16:01:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2012 08:16 AM, Lu, Lianhao wrote:
> Hi Saul,
>
> I think I might have some clues why the python-nativesdk failed at http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433. It's due to the commit http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stage/master_under_test&id=a1f1cc4c27b5091870b1dbd9ede7c24c38d765dd.
>
> I guess the above commit which changed eglibc-nativesdk to version 2.15 has some conflict to the sstate-cache the autobuilder used, which might contains content from old eglibc-nativesdk 2.13.
>
Yes, that would do it, I will hit the sstate reset button and do a build 
that should clear this, but will cause problems for most people, I 
wonder if we need a PR bump in eglibc also?

Sau!


> -Lianhao


