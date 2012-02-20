Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A47FE004D2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 10:24:13 -0800 (PST)
Received: from mail-pw0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 20 Feb 2012 10:24:12 -0800
Received: by pbbrp12 with SMTP id rp12so7886912pbb.25
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 10:24:12 -0800 (PST)
Received-SPF: pass (google.com: domain of scott.a.garman@intel.com designates
	10.68.211.131 as permitted sender) client-ip=10.68.211.131; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	scott.a.garman@intel.com designates 10.68.211.131 as permitted
	sender) smtp.mail=scott.a.garman@intel.com
Received: from mr.google.com ([10.68.211.131])
	by 10.68.211.131 with SMTP id nc3mr63889380pbc.49.1329762252848
	(num_hops = 1); Mon, 20 Feb 2012 10:24:12 -0800 (PST)
Received: by 10.68.211.131 with SMTP id nc3mr52801234pbc.49.1329762251404;
	Mon, 20 Feb 2012 10:24:11 -0800 (PST)
Received: from [10.1.10.192] (c-71-236-172-220.hsd1.or.comcast.net.
	[71.236.172.220])
	by mx.google.com with ESMTPS id u9sm13765013pbj.39.2012.02.20.10.24.09
	(version=SSLv3 cipher=OTHER); Mon, 20 Feb 2012 10:24:10 -0800 (PST)
Message-ID: <4F428FC8.5080806@intel.com>
Date: Mon, 20 Feb 2012 10:24:08 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1329746626.2728.10.camel@babel.joshhome>
In-Reply-To: <1329746626.2728.10.camel@babel.joshhome>
X-Gm-Message-State: ALoCoQmClYAdSB6yCWwpp6z3npM6tzvEPq971W0tUZYsOWBmqFxGxOFGRf3+gmYc5mQy1CbnALsI
Subject: Re: how do I contribute to yocto
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
X-List-Received-Date: Mon, 20 Feb 2012 18:24:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/20/2012 06:03 AM, Joshua Immanuel wrote:
> Hello all,
> 	In the process of creating my custom image, I ended up writing new
> recipes for packages which does not exist in yocto. I think it will be
> useful for others. I use the edison branch for my work, and I add the
> new recipes to my custom layer without disturbing the edison branch. So,
> how do I contribute these new recipes?
>
> Read the wiki https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
> it doesn't mention about the branch to use etc.
>
> Can someone guide me.

Hi Joshua,

I'd put your layer up on a git repo somewhere (GitHub?) and make sure 
you have a note in your layer's README file that mentions that the layer 
is intended for use with the edison release.

If you're looking to maintain this layer for multiple releases of Yocto, 
it may make sense to maintain a similar branch structure - i.e, your 
master branch aims to build with Poky master, edison branch builds with 
edison, etc.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

