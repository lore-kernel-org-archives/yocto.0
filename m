Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD35E011C0
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 15:35:57 -0800 (PST)
Received: from mail-da0-f72.google.com ([209.85.210.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 02 Dec 2012 15:35:11 -0800
Received: by mail-da0-f72.google.com with SMTP id r28so3127245daj.11
	for <yocto@yoctoproject.org>; Sun, 02 Dec 2012 15:35:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=OO7awEMH8t3zhGO8d9Kcr76Q3u4nE5jiaZhC01ml0os=;
	b=CRPdl9BjH1FMkMv0LyOk/lYt3ZJHoGUSzndoAJdETm9EUva9i5Vn5q6maqb2I7jw7Y
	fN8mbY5CUrp20In83tNsS2BKmKYE82isBCWo7Ew+i6HCcUa7apK965qSOZxvXA9/mHVL
	zLvyejoEfJDI8R82njdfxCwMhh4SiB3XxKSVQX0AW8wtGNJWIalL6YvYsl1tDQioldXR
	JDfY+tfhgquF5tAd9kFE+haemf0UG40MpW8hD0Vu+aa68HSytyGDbDtXkT9EJQcUBMHY
	4cxZ3yciiZDMV1HTcsiLGxaWtwbpIH4mTGxL4LVqZ7EKnlXXWO7BWeUg/x09Xv+Sq/bc
	zOtQ==
Received: by 10.68.233.196 with SMTP id ty4mr24863606pbc.23.1354491356632;
	Sun, 02 Dec 2012 15:35:56 -0800 (PST)
Received: by 10.68.233.196 with SMTP id ty4mr24863593pbc.23.1354491356535;
	Sun, 02 Dec 2012 15:35:56 -0800 (PST)
Received: from [192.168.0.190] (71-20-35-93.war.clearwire-wmx.net.
	[71.20.35.93])
	by mx.google.com with ESMTPS id vo8sm6960039pbc.16.2012.12.02.15.35.54
	(version=SSLv3 cipher=OTHER); Sun, 02 Dec 2012 15:35:55 -0800 (PST)
Message-ID: <50BBE5DA.3000302@intel.com>
Date: Sun, 02 Dec 2012 15:35:54 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <50BBDB70.2040803@intel.com> <5998848.CzcRMVOQ3K@helios>
In-Reply-To: <5998848.CzcRMVOQ3K@helios>
X-Gm-Message-State: ALoCoQmCIeitdLh75mxuyyvMArLxwLq4EW5H2rqMXOoY1MmixCaOQn54SL1HbWSURGSWFDQnhIQ6xG2+2zDynpVw54OzZR5TjPPhsvw9p6Rnuah2zWSY2yunU2A1DKOI0qdik4KGIXpHBmlMcq2Dg0lKj4v+MgYP4Q==
Cc: yocto@yoctoproject.org
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Sun, 02 Dec 2012 23:35:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2012 03:24 PM, Paul Eggleton wrote:
> On Sunday 02 December 2012 14:51:28 Scott Garman wrote:
>> Robert Day has brought up an inconsistency in the way we append to
>> BBPATH within a couple of our layer.conf files.
>>
>> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
>>
>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>
>> but in meta-yocto, we do:
>>
>> BBPATH := "${LAYERDIR}:${BBPATH}"
>>
>> Unless someone explains to me that it's necessary to use this different
>> ordering in meta-yocto's layer.conf, I will submit a patch to make this
>> more consistent.
>
> I think it actually ought to be:
>
> BBPATH .= ":${LAYERDIR}"

Oh? Would this apply just to meta-yocto or all layer.conf files?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

