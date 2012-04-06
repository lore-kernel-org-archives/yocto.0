Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9484E013A5
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 06:18:19 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3364073pbb.35
	for <yocto@yoctoproject.org>; Fri, 06 Apr 2012 06:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=uermyYA/QLh2FQHW1hDr6fUunPaAtaFYtkOl46VtqqA=;
	b=MRefZ7r/KnILfIppWKluZKmxQV97axY37p9RrKspFpzLQ9QGAt+k+qGnHqEgQMoaS7
	2Vvcz+VbZynA9c76ECor6ncw7uLCz5bM+qrXWJndmFFUMWh1Xc4OSJBCoMhfQ+U42xan
	NVakcIRwOJ9U4jtxFS+npYMJd2LbFadk235tOs5UyGzrCzSJ4YAyNBlba699cbzcZAdz
	wuHyEaQLX/N3Iwwve50cMs7yPV8ySDq7+daWeMtxJF93BAe1UKyWRRv5xxwsGZm5cs1S
	M3lRfMjL662P+bVLFJ9BMRxiIWkLfR6WR3v8B6B6z7+ILulM13YFzZNkBo/4miF1HcUo
	DD8A==
Received: by 10.68.217.97 with SMTP id ox1mr15544211pbc.81.1333718299686;
	Fri, 06 Apr 2012 06:18:19 -0700 (PDT)
Received: from [192.168.1.79] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id v1sm6291038pbk.10.2012.04.06.06.18.17
	(version=SSLv3 cipher=OTHER); Fri, 06 Apr 2012 06:18:18 -0700 (PDT)
Message-ID: <4F7EED17.7080408@gmail.com>
Date: Fri, 06 Apr 2012 06:18:15 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120402 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1203180550300.29125@oneiric>
	<alpine.DEB.2.02.1203180937590.7439@oneiric>
	<20120318160940.D221A206055@gemini.denx.de>
	<alpine.DEB.2.02.1203181213130.17206@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203181213130.17206@oneiric>
Subject: Re: why is YOCTO_GIT_URL defined to use http?
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
X-List-Received-Date: Fri, 06 Apr 2012 13:18:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/18/2012 09:17 AM, Robert P. J. Day wrote:
>   quite so, i wrote the above assuming there was a reason why you
> *couldn't*  clone using thehttp://  protocol, and that this had been an
> explicit decision (for whatever reason).  assuming, though, that it's
> just an oversight and someone can fix that, i'll just carry on with my
> proofreading.

its upto upstream package repo policy whatever protocols for git they 
want to expose. some may decide to expose http some not

