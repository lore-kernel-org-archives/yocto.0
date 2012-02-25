Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF189E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 18:08:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Feb 2012 18:08:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110612903"
Received: from unknown (HELO [10.255.15.27]) ([10.255.15.27])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2012 18:08:44 -0800
Message-ID: <4F4842AB.1070006@linux.intel.com>
Date: Fri, 24 Feb 2012 18:08:43 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAC+thW1xz0eWYh3wHdFDZWRTUgqjKPe5XKEsbzwKLrwMFKZfUA@mail.gmail.com>
In-Reply-To: <CAC+thW1xz0eWYh3wHdFDZWRTUgqjKPe5XKEsbzwKLrwMFKZfUA@mail.gmail.com>
Subject: Re: adt-installer: cannot install package autoconf-nativesdk
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
X-List-Received-Date: Sat, 25 Feb 2012 02:08:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrea,

On 24/02/12 05:40, Andrea Galbusera wrote:
> The installer was built against the latest version of its recipe as
> per commit c6ec5a0d9e31a1694aba25e2ff76f1c933e556d5,
> adt-installer-0.1.8+svnr596-r6. I guess a change was made with commit
> de68393270d5455b4861d38cef3f081b9667d25f which requires installing
> autoconf/automake-nativesdk but relevant ipks are missing from
> http://adtrepo.yoctoproject.org/1.1/adt-ipk/, which is still default
> in latest adt_installer.conf.
>
> Am I guessing right? First time digging into the adt_installer so I
> might be completely out of track! Is this a known limit if building
> adt_installer with latest edison branch? Should I file a bug for this?
> If so, what's the best solution right now? Maybe using the edison
> original adt_installer from the yocto downloads...

This sounds like you've correctly deduced the issue - it looks like 
there may be required changes which need backporting to the edison 
repository - I'm currently running some builds to verify this.

Please do report this information on bugzilla so that we can track it. 
It's my first time digging into the ADT installer too so it may take a 
couple of days to pull together all of the required fixes.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

