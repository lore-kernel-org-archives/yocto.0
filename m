Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55DC8E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:29:32 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 20 Jul 2012 13:29:31 -0700
Received: by pbbro8 with SMTP id ro8so6941645pbb.25
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=JjJPfb3NBTBUU0Y7JuczFACVz5JAS+JHrUH1w/Jw7kU=;
	b=mGdGzXfu5ITTI+gChW1zzQ4s6x6Sj2ia/TGteAHZkkbVTsfCPFnz2rI0CWKiC1cAYT
	NJ77ThsbHyXW5kSPI2/MX2avHL/s/cLEO0SdxXwud6YvIc30B9YTc21RfV/TbeBnj9Kl
	jgWb2IZmYDJ+fY2Ml0z4HnaGQvH36AK3+4DUook7DZ/yX+UQQBuSPUMv+UxosVg949RN
	Kl/HIsVRsflYulmJPadY6xgTWFXxan3WDPong7BorPLKCGuHAeCsQgtJILdDsWpCvb/J
	3JQre05X8WD5nqDaa/vs5vc5cjD+dwonLgGrwuosJmqKaFD7qtYpg7blwNMg1ieJcsZj
	Fqew==
Received: by 10.68.231.39 with SMTP id td7mr16669024pbc.3.1342816171097;
	Fri, 20 Jul 2012 13:29:31 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id iw10sm3989402pbc.55.2012.07.20.13.29.30
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 13:29:30 -0700 (PDT)
Message-ID: <5009BFAB.9040801@intel.com>
Date: Fri, 20 Jul 2012 13:29:31 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5009BB61.5010605@gmail.com>
In-Reply-To: <5009BB61.5010605@gmail.com>
X-Gm-Message-State: ALoCoQk4t71iBkOKSL9EZKNbYtkXcgcYvT2yAmaks4+ouUxU5G8ZumexT06X3lHFNCQiq1wXnsXC
Subject: Re: nothing building under denzil-7.0.1
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
X-List-Received-Date: Fri, 20 Jul 2012 20:29:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2012 01:11 PM, Jim Abernathy wrote:
> There must be some basic thing I'm missing.  Nothing that I used to
> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
> you can run?
>
> I'd thought I'd check before I post a bunch of log files.
>
> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
> directory and untarred the 7.0 Intel BSPs.
>
> There must be a step I'm missing.  otherwise this would not have gotten
> thru testing before deployment.
>
> Jim A

Hi Jim,

We need more specific information about the error(s) you're seeing. 
We've done extensive QA with 7.0.1 and meta-intel, so I imagine there 
must be a step you've forgotten.

For example, you are using the denzil branch of meta-intel, right?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

