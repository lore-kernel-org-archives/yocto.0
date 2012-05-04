Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E216E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 15:20:43 -0700 (PDT)
Received: from mail-pz0-f45.google.com ([209.85.210.45])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 04 May 2012 15:20:42 -0700
Received: by dadv2 with SMTP id v2so4681200dad.4
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 15:20:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=f5wW12uTf7Vj8lwPu8rTLkI9j/wdYUe6GR7frIk67FE=;
	b=omvombCXCrN+EYLYTSdTYe2g/APweiPd4XSku32b/gCuXEW40oNuKcF/iGsYKAX/Fg
	FOoRKO3ZW7MhC8xWAg/ajZIY24qn+xqb+n/CksFo6CbFfMd0qkEWXrJLganKq6JGgpEf
	bjYHRYWLVHdR95wWSmjDgj/zVNElllFbhO4Gp/I04ht3fO5NGlX7W/HzWlpSDTj3baOR
	OQxvXurctwBNnPKjpaRpsCt/aIJnGLViMfGfJB2ha43pez8Oy99aYBOzZMXdwyAB8tP/
	kwgBXJJElvMxOhnYfRKWfAUyTZmBp1fzVpk7aScZL5ijQ50yATn6FyXZzC/BIxMF4yiD
	os2w==
Received: by 10.68.232.228 with SMTP id tr4mr2268568pbc.12.1336170042349;
	Fri, 04 May 2012 15:20:42 -0700 (PDT)
Received: from [192.168.10.254] (c-98-246-229-6.hsd1.or.comcast.net.
	[98.246.229.6])
	by mx.google.com with ESMTPS id pl8sm9799577pbb.72.2012.05.04.15.20.39
	(version=SSLv3 cipher=OTHER); Fri, 04 May 2012 15:20:41 -0700 (PDT)
Message-ID: <4FA45634.9020309@intel.com>
Date: Fri, 04 May 2012 15:20:36 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1335812928.git.tom.zanussi@intel.com>
	<3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
	<4FA41CAC.2090208@intel.com> <1336159114.21923.15.camel@elmorro>
In-Reply-To: <1336159114.21923.15.camel@elmorro>
X-Gm-Message-State: ALoCoQmhpLJtKLyT+PXc2y7on+OybOL28R6PSbIil+NcWDQsGBLTMDlNzD8nr6efHbdSJecWEuBJ
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] yocto-kernel: use BUILDDIR to find bblayers.conf
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
X-List-Received-Date: Fri, 04 May 2012 22:20:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/04/2012 12:18 PM, Tom Zanussi wrote:
> On Fri, 2012-05-04 at 11:15 -0700, Scott Garman wrote:
>> On 04/30/2012 12:12 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> The current code assumes that builddir == srcdir/build, which it
>>> obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
>>> being used.
>>>
>>> Fixes [YOCTO #2219].
>>>
>>> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
>>
>> Merged to denzil-next, thanks!
>>
>
> Thanks, Scott!
>
> Could you also merge the other patch that was part of this patchset?
> (yocto-bsp: clarify help with reference to meta-intel)

Thanks for catching that - I've now merged this commit as well.

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

