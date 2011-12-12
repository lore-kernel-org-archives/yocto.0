Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C3CE0030F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 09:49:08 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2011 09:49:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="86351754"
Received: from unknown (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2011 09:49:08 -0800
Message-ID: <4EE63E94.4000507@linux.intel.com>
Date: Mon, 12 Dec 2011 09:49:08 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1408073.zz37vY4uZy@helios>
	<CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
	<3295079.2DL3Md5Ydr@helios>
In-Reply-To: <3295079.2DL3Md5Ydr@helios>
Subject: Re: Sanity tested distributions list
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
X-List-Received-Date: Mon, 12 Dec 2011 17:49:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/12/11 09:16, Paul Eggleton wrote:
> I can definitely see a compelling reason to mark CentOS 5.x as supported, but 
> the problem with it is it doesn't come with Python 2.6, so BitBake won't work 
> out of the box (actually right now it fails before it has a chance to show a 
> reasonable error message, which is even worse). We really need a concise set 
> of instructions on how to install the external python tarball, at the moment I 
> don't think we have these.

It's been a while since I wrote them, and therefore since I tested them,
but:
https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

