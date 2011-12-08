Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DA7E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 13:57:27 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2011 13:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="84466104"
Received: from sagarman-mobl.amr.corp.intel.com (HELO [10.7.199.152])
	([10.7.199.152])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2011 13:57:25 -0800
Message-ID: <4EE132C5.6040007@linux.intel.com>
Date: Thu, 08 Dec 2011 13:57:25 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
In-Reply-To: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
Subject: Re: HOB usage
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
X-List-Received-Date: Thu, 08 Dec 2011 21:57:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 05/12/11 10:35, madeeha javed wrote:
> I an using Yocto Edison. My machine configuration is beagleboard. And
> when I launch hob and Bake. I get a message that Output Image Type is
> not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
> set. And even if I select a different type, the message keeps is
> there.

Madeeha,

I'm not able to replicate this issue. Have you modified any of the
configuration files by hand? The three key files in build/conf are
hob-post.conf, hob-pre.conf, local.conf

It's possible you've hard-assigned the variable in there.

If you can provide more information I can try and replicate. A copy of
the above configuration files would be useful.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

