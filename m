Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E942E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 11:41:13 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 27 Jul 2012 11:41:12 -0700
Received: by pbbro8 with SMTP id ro8so5446514pbb.25
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 11:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=04/QXy1PzAkSXo/35sb6Y3jw6mkRF86rCr3Tr7tlbbA=;
	b=AF5kTy+wWmG8xtoW9S2aj2npkPbjElAFFUqj05yabOZryQainO/OsVE3u8ey2SbNxb
	wuQ6o6rwubnw3kcvy0svwf8CSmU+pN7NaqIU9gvxULXKnOP32+PPPRO+JQ8INImDdTWO
	tpLGdulG2LFRp6phq9omYg3RI85POSwFp43TrGIsStJbPUY9ekroXU2JjlMLnCei2aue
	nCMSsfWsjhXsFxE+3mdb0OM671tGSgo+qV1DFWSLUOZTLX3hPJwVZ7w6Ra8nRVCmPtzw
	uH+cUyuKNuwL7BbqGxNJxPBLwvplVlwfjup2Wt2Gl63+7WFnrcQKWmgMplgAbTUS2WYr
	9w7Q==
Received: by 10.68.136.233 with SMTP id qd9mr16292951pbb.166.1343414472464;
	Fri, 27 Jul 2012 11:41:12 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id oy8sm2370701pbc.52.2012.07.27.11.41.11
	(version=SSLv3 cipher=OTHER); Fri, 27 Jul 2012 11:41:11 -0700 (PDT)
Message-ID: <5012E0C6.40200@intel.com>
Date: Fri, 27 Jul 2012 11:41:10 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1207271016320.15452@oneiric>
	<5012D204.9010101@intel.com>
	<alpine.DEB.2.02.1207271402470.18695@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207271402470.18695@oneiric>
X-Gm-Message-State: ALoCoQmGIaIKlrLTs0Ya5ppexa1Qhl4uTeK2RafXomTtdfCzcVEOfvSvKut/W3RK/9jCoGrklN/h
Subject: Re: do QEMU images really come with dropbear and an nfs server?
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
X-List-Received-Date: Fri, 27 Jul 2012 18:41:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/2012 11:04 AM, Robert P. J. Day wrote:
> On Fri, 27 Jul 2012, Scott Garman wrote:
>
>> On 07/27/2012 07:18 AM, Robert P. J. Day wrote:
>>>
>>>     the yocto dev manual currently suggests that QEMU images come with
>>> both dropbear and an nfs server:
>>>
>>> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-pre-built-binaries-and-qemu
>>>
>>> i don't have a QEMU image in front of me to test, but the definition
>>> of the basic QEMU images doesn't seem to suggest that that's true.
>>>
>>>     i can see it's easy to add them, but the manual suggests they're
>>> there by default.  or am i misreading something?
>>
>> It looks like we may need a manual tweak here.
>>
>> core-image-minimal does not come with any ssh server. core-image-lsb
>> should have openssh instead of dropbear. So unless something changed
>> very recently, core-image-sato is the only one that has dropbear in
>> it by default.
>>
>> Also, the manual states "The QEMU images also contain an embedded
>> Network File System (NFS) server that exports the image's root
>> filesystem." This isn't strictly true - instead we offer a native
>> tool which runs a userspace NFS server and if some prep work is done
>> by the user (extracting a rootfs tarball with runqemu-extract-sdk),
>> you can then point the runqemu script to that directory instead of a
>> rootfs image file.
>
>    rather than a simple manual tweak, what about actually adding one or
> both of those features to even the smaller core images, then updating
> the docs accordingly?  just a thought.

Well, in the case of core-image-minimal, I don't think we want to add 
additional bloat.

Also, when I teach classes on how to create custom image recipes, my 
exercise is typically to take core-image-minimal, and modify it to 
include an ssh server (dropbear or openssh) and psplash (which gives 
students a nice visual change to notice when booting the new image). As 
a fellow instructor, you may find that useful.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

