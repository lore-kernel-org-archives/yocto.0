Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9073DE006D9
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 11:33:33 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 12 Jun 2012 11:33:33 -0700
Received: by pbbro8 with SMTP id ro8so1180962pbb.25
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 11:33:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=bFc72QFbh4bd5xJtjx+iu9ReJdfUAijPOzZuxnmWZJE=;
	b=UOes74BZupK2MPRBRQoqN/HIHWRlJgBP1oOLj470mu1SbOar38FHFt+cfa2nAZu1SQ
	i30wDDg+V52C7EdGA1YFsXMek0+6JIk4Xnb3m38SMYSQIql+ajyY18dhaYwgLPEGaYBq
	Vv4yiyEGlytIEyldaiNkaC+eAfxCDRaXbgZwOvM97scE5FEom3ORAQK6//oYIzRbBhcm
	8nlUqoP13cAC6w6rfVzyPb6vT+aCDBZtPIRGp7uJN6iZw58ZofMQg5lmyrXOFU0/tKLP
	4LRmnLWPBppODZASqbJKxRcZInbaycV6bLkq4xTEa+WYWADdUTSzbgrlsGgipVy/5aXQ
	9QmQ==
Received: by 10.68.227.197 with SMTP id sc5mr42138573pbc.58.1339526013045;
	Tue, 12 Jun 2012 11:33:33 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id jp3sm2826047pbc.7.2012.06.12.11.33.31
	(version=SSLv3 cipher=OTHER); Tue, 12 Jun 2012 11:33:32 -0700 (PDT)
Message-ID: <4FD78B83.5040102@intel.com>
Date: Tue, 12 Jun 2012 11:33:39 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <4FD785D2.3020603@intel.com> <4FD78713.5090909@intel.com>
	<alpine.DEB.2.02.1206121418560.15112@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206121418560.15112@oneiric>
X-Gm-Message-State: ALoCoQlBBA+CjDfSVSy7hF0m4GwFTyfzYoAjrNsNO80Wu9NMJCtXvSkiftpwwvn7sbLFJNHoDhJ6
Cc: yocto@yoctoproject.org, "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: denzil bug status.
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
X-List-Received-Date: Tue, 12 Jun 2012 18:33:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2012 11:20 AM, Robert P. J. Day wrote:
> On Tue, 12 Jun 2012, Scott Garman wrote:
>
>> Hello,
>>
>> As we are less than a week from our intended release candidate freeze
>> date (June 18) for the denzil point-release, I had a meeting with
>> Richard Purdie and Saul Wold to go over the final bug list and assess
>> the remaining work. Here is a summary of the results of that meeting.
>>
>> The bug numbers I'm referring to can be found on the Yocto Project
>> bugzilla site: https://bugzilla.yoctoproject.org
>
> ... snip ...
>
>    was someone working on a fix for downloading tarballs that contain a
> "+" in the filename, to prevent them from being downloaded repeatedly?
> recall the recent issue i reported WRT the "gtk+" tarball, which was
> continually downloaded despite it being in my local mirror.

Looks like bug #2546 is tracking this:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2546

It has not been assigned a milestone, perhaps Richard can clarify if the 
fix is intended/appropriate for 1.2.1.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

