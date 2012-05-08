Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87EE2E0030B
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 09:07:41 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 May 2012 09:07:19 -0700
Received: by pbbro8 with SMTP id ro8so27397194pbb.25
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 09:07:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=aM+cdzYXXqWL5FGWPiWiPgMLRGxrgQ2r9DevTROudUo=;
	b=Cg0rOhs0WuIvHH2Wu5jCuZ5otGhjjo+RyK/18PZ2bVeY1MC906W4M1ggixdkqZCDfU
	xWXc2DM+3ZLPD2uW1GGzIqFOJrzFa9Jn2x1jCbudKjp27MhbRbmWl1eXktnUT5RxHDmu
	8743O+BvL6n3/NbdbWyu6wfUgvgJ/ShNuKj83OeWVp9JZM0E/KVlU0TJMJ3YgF+00dZV
	ktYWFKrIrpOruY2Y+q94UahlgcmDiXFI9mh4ciiMlFgMgOzXa5b61f8xPXpzcoq10Oe1
	sUDBWS4WLZjzDSfi84uOropjSnDUQSaBBl1JyDe1B9Vh++u4sdXIki/XqaZCf6gt6XRm
	sVdA==
Received: by 10.68.229.69 with SMTP id so5mr9961870pbc.141.1336493239043;
	Tue, 08 May 2012 09:07:19 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id qk5sm2792920pbc.45.2012.05.08.09.07.17
	(version=SSLv3 cipher=OTHER); Tue, 08 May 2012 09:07:18 -0700 (PDT)
Message-ID: <4FA944B4.6060104@intel.com>
Date: Tue, 08 May 2012 09:07:16 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlvDqvSHcCAkBASiXLpNPvNK/7LKv+h0ucME1rb/SZR57mv9kT0mbQHAu4uCBTNr1O5tf2/
Subject: Point-release process wiki page.
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
X-List-Received-Date: Tue, 08 May 2012 16:07:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

As mentioned in the Yocto Technical Team call this morning, I have 
started documenting the workflow used to maintain a point-release on the 
wiki:

https://wiki.yoctoproject.org/wiki/Yocto_Point-Release_Development_Workflow

Right now most of the information there is fairly high-level, and as I 
refine my processes further, I'll be including things such as script 
snippets or git commands I end up using to manage things.

I also intend to add a section on testing guidelines, as I try to move 
beyond just doing build tests on our QEMU architectures to doing things 
like testing non-gplv3 builds, poky-tiny distro, etc.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

