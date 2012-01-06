Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CFBCE00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 11:19:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jan 2012 11:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109546101"
Received: from unknown (HELO [10.255.13.185]) ([10.255.13.185])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2012 11:18:59 -0800
Message-ID: <4F074923.7030402@linux.intel.com>
Date: Fri, 06 Jan 2012 11:18:59 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F06C43D.3090102@windriver.com>
In-Reply-To: <4F06C43D.3090102@windriver.com>
Subject: Re: Design Document of "Yocto 1656 Recipe creation/import script"
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
X-List-Received-Date: Fri, 06 Jan 2012 19:19:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Kai,

On 06/01/12 01:51, Kang Kai wrote:
> This is the design document of "Yocto 1656 Recipe creation/import
> script". Please help to review it.
> Any suggestion is appreciate.

You should check out autospectacle[1] that I linked to in the bug 
report. It does a lot of guessing using clever tricks like searching 
Freshmeat, doap files, READMES etc to get a description[2] and analysing 
configure.ac[3], qmake[4], etc. to determine dependencies.

The autospectacle perl script is reasonably well commented and quite 
readable.

I'm not suggesting we adopt all of the features in it but many of them 
are useful techniques for this effort.

Regards,
Joshua

1. https://meego.gitorious.org/meego-developer-tools/autospectacle/
2. 
https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line1001
3. 
https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line633
4. 
https://meego.gitorious.org/meego-developer-tools/autospectacle/blobs/master/autospectacle.pl#line840
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

