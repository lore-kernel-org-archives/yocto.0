Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B40E00770
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 09:18:55 -0800 (PST)
Received: from mail-pb0-f69.google.com ([209.85.160.69])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 26 Dec 2012 09:17:59 -0800
Received: by mail-pb0-f69.google.com with SMTP id un15so9452241pbc.0
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 09:18:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:message-id:date:from:user-agent:mime-version
	:to:cc:subject:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=ObZF5/m9wZcFu+4OsNMXhiKgn8aUAQeaK19o6Kf1nKQ=;
	b=AmKB10glX/PlU0N1TYwcB+Y/vCGDDSkR3iyFxD5IXOs1DBS+bIeiB+zXyik97weUeo
	WJQW1+emk5XKixRNCAh6dCBQfyEQdL0ThlqWnlBihfhRNhHpgXM5fOVMUBfAnwGZv2LS
	0rL9KXTIbDvScjAbRUBy5oS+WqxIq/WadtwORVdwawKAlmrbIQBqAo5ZMzJDl+bBjra+
	P5gUjZOtM5ZJ1XFCdgrEMSMMXgtVdT7k2893a8FZOBcw0wnROTUoWQ9U6Newpk1sUdA2
	6SHrxuJAVmEygq8jxEA+3vZDIwyLIK5cmJ0IfB8ynp6yMYPBflLDHEYL6XTpIoqXOGJi
	v0Fg==
X-Received: by 10.69.0.74 with SMTP id aw10mr87141668pbd.87.1356542334673;
	Wed, 26 Dec 2012 09:18:54 -0800 (PST)
X-Received: by 10.69.0.74 with SMTP id aw10mr87141644pbd.87.1356542334516;
	Wed, 26 Dec 2012 09:18:54 -0800 (PST)
Received: from [10.1.10.13] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id wh8sm16182276pbc.75.2012.12.26.09.18.49
	(version=SSLv3 cipher=OTHER); Wed, 26 Dec 2012 09:18:53 -0800 (PST)
Message-ID: <50DB3174.1030709@intel.com>
Date: Wed, 26 Dec 2012 09:18:44 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Gm-Message-State: ALoCoQkzbGy/BrJStK5n8qLSkelSvfSjjjGmRPeT7a2iq/hw6MDwTuAZ74dxu1izn4yEn7jFRhGZE2MbrWJY07ycJcGIuiW8lqxIgoWrFhE95xZKBuc17rld5izwQYiUnlrZikTKtWgNNEhE8dYzjc/6eRnwH52NjQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Denzil 1.2.2 development nearly complete
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
X-List-Received-Date: Wed, 26 Dec 2012 17:18:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone,

I wanted to make sure the community is aware that I am wrapping things 
up for our next denzil stable release, 1.2.2. We've had some discussions 
about this at the Technical Team Meetings, but I thought I'd send this 
out to the mailing lists as well.

The current status of my testing branches can be found here:

oe-core based tree:
http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next

and my poky-based tree:
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

I will be submitting a pull request to Richard soon to get these patches 
merged to the official denzil branches of the oe-core and poky 
repositories, respectively. If anyone has outstanding patches they need 
in denzil (or that I've overlooked), please get them to me as soon as 
possible.

To see a list of bugs addressed during the 1.2.2 release cycle, do a 
Bugzilla search for bugs with a Target Milestone of 1.2.2.

Our QA team will be back on Monday, January 7, and will begin another 
full-pass test cycle on denzil. If they don't find any new bugs and can 
verify the recently fixed bugs in denzil, our goal is to release 1.2.2 
shortly thereafter.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

