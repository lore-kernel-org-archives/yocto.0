Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39085E01390
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 09:40:03 -0800 (PST)
Received: from mail-qy0-f173.google.com ([209.85.216.173])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 07 Nov 2011 09:40:02 -0800
Received: by qyk30 with SMTP id 30so3494812qyk.4
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 09:40:02 -0800 (PST)
Received: by 10.68.73.33 with SMTP id i1mr720791pbv.81.1320687601563;
	Mon, 07 Nov 2011 09:40:01 -0800 (PST)
Received: from [192.168.1.12] (c-98-246-160-155.hsd1.or.comcast.net.
	[98.246.160.155])
	by mx.google.com with ESMTPS id lt8sm37973253pbb.0.2011.11.07.09.40.00
	(version=SSLv3 cipher=OTHER); Mon, 07 Nov 2011 09:40:00 -0800 (PST)
Message-ID: <4EB817F9.4040704@intel.com>
Date: Mon, 07 Nov 2011 09:40:09 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Including additional layers for doc audit?
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
X-List-Received-Date: Mon, 07 Nov 2011 17:40:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Robert's emails about recipes in meta-demoapps missing LIC_FILES_CHKSUM 
made me realize that for my documentation audit runs, I'm only using the 
default layers Poky gives you when you source the build environment script.

Shall I change this to include all meta- layers we ship with? This would 
add meta-demoapps and meta-skeleton (perhaps the latter is not 
necessary). It will of course have an impact on the statistics I've been 
generating.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

