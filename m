Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85431E003E4
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 20:51:31 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 03 Feb 2012 20:51:31 -0800
Received: by iabz7 with SMTP id z7so6155943iab.25
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 20:51:30 -0800 (PST)
Received: by 10.43.52.129 with SMTP id vm1mr9439251icb.15.1328331090438;
	Fri, 03 Feb 2012 20:51:30 -0800 (PST)
Received: from [192.168.1.12] (c-76-115-40-64.hsd1.or.comcast.net.
	[76.115.40.64])
	by mx.google.com with ESMTPS id x18sm15128477ibi.2.2012.02.03.20.51.29
	(version=SSLv3 cipher=OTHER); Fri, 03 Feb 2012 20:51:29 -0800 (PST)
Message-ID: <4F2CB95F.6040509@intel.com>
Date: Fri, 03 Feb 2012 20:51:43 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Trying to re-use sstate.
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
X-List-Received-Date: Sat, 04 Feb 2012 04:51:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to re-use the sstate from one build directory and move it to 
another. It's not working - bitbake is rebuilding *everything*.

My hunch is the reason for this is because bblayers.conf must differ 
between the two build directories, because it uses full paths to the 
layer directories.

By default, when you source oe-init-build-env for the first time, it 
generates a bblayers.conf file with full paths to the default layers, 
meta and meta-yocto.

I thought the point of sstate was that I could copy it between build 
directories - or even different hosts - and save myself the effort of 
rebuilding everything if the remaining metadata was the same?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

