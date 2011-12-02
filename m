Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C5D8E005B9
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:48:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2011 19:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,281,1320652800"; d="scan'208";a="43154242"
Received: from unknown (HELO [10.255.15.144]) ([10.255.15.144])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Dec 2011 19:48:34 -0800
Message-ID: <4ED84A92.5020403@linux.intel.com>
Date: Thu, 01 Dec 2011 19:48:34 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: David Smoot <davidsmoot@gmail.com>
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
	<4ED84560.2040807@linux.intel.com>
	<CA+5N1gz25ntd_yMwpdQ6V6CAB2JoGkMjNxc6ZFQj-z4hcdWUAQ@mail.gmail.com>
In-Reply-To: <CA+5N1gz25ntd_yMwpdQ6V6CAB2JoGkMjNxc6ZFQj-z4hcdWUAQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 03:48:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/12/11 19:36, David Smoot wrote:
> Thank you.  Nice job... you managed to anticipate and answer my
> question before I asked it.
> 
> Maybe I'll tackle updating the demo but I have a lot to learn.

That'd be great! I've just pushed a few changes to make the layer
actually parse.

On top of that you'll need to accept that there is software in the layer
which may have commercial licensing implications. If you accept this you
can add the following to your build/conf/local.conf:

COMMERCIAL_LICENSE = ""

With the latest git and that change set you should at least be able to
get started with demo-image-mediatomb.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

