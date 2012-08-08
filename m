Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5727FE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 10:12:52 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 08 Aug 2012 10:11:09 -0700
Received: by pbcxa7 with SMTP id xa7so1773210pbc.25
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 10:11:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=srqu2OGXnWO2OBya/bDTElNXvZhiXe0xEzG0JIkk56A=;
	b=IwWwkObRoOzaNPhyBcExuUXqyYcnpAA9YjJf5hKZp3oHUCAhSApvx3XCZBcNYeIBkU
	xSeMkPu6q6cU6zK1+I2gePxtZV/Kbfes/xYCQVkyjHXrirvAruXEy/ZJ7iCna6lDtg10
	VjdFs9ke4mr5Nl/dcGEm/8kHEB6W2Rhoi7BHvfxGusZ17+dt0R+DXrKTR8jt8jDyNKmz
	vZZE17yK71efPRnuhRdNdWdyw/5z7HEtB+E1yxO6s0ZyqK9LxAi8fRa/wTRtmcbTgwR3
	YplhfDrVSoiJIUDaW72CzJ4jATednZBN0wN/n/ZHgfcyYS4YeJ3msOTBWwI9Un8VM2Ly
	A7TQ==
Received: by 10.68.191.226 with SMTP id hb2mr515482pbc.129.1344445868438;
	Wed, 08 Aug 2012 10:11:08 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id pe2sm10313248pbc.59.2012.08.08.10.11.07
	(version=SSLv3 cipher=OTHER); Wed, 08 Aug 2012 10:11:07 -0700 (PDT)
Message-ID: <50229DAA.3000307@intel.com>
Date: Wed, 08 Aug 2012 10:11:06 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
	<50229D6F.8010801@intel.com>
In-Reply-To: <50229D6F.8010801@intel.com>
X-Gm-Message-State: ALoCoQk16UCEJPtHtfbgyB//ON3KGKzBXmKZnP3MmGPvIBa6x2GvuCwV8M04T5+SFw44JCjUOgJ3
Subject: Re: Custom splash screen using psplash
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
X-List-Received-Date: Wed, 08 Aug 2012 17:12:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2012 10:10 AM, Scott Garman wrote:
> On 08/08/2012 08:13 AM, Giovanni Foiani wrote:
>> Hi,
>>
>> I need to setup a custom splash screen replacing the Yocto logo with a
>> custom image.
>> I generated my logo using make-image script into psplash screen and
>> replaced the previous one in meta/recipes-core/psplash/files folder.
>> Then I run
>>
>>   * bitbake psplash -c cleansstate
>>   * bitbake psplash
>>
>> and then generate a new image, but during boot I still see the Yocto
>> logo.
>> Which is the right procedure?
>> Does the my custom logo (a png image) have some requirements (i.e. size,
>> colors, etc..)?
>
> Did you re-generate the image too?

Sorry, apparently I can't read this morning.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

