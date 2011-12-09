Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B2FBE0030C
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 15:43:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Dec 2011 15:43:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45767963"
Received: from unknown (HELO [10.255.13.9]) ([10.255.13.9])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Dec 2011 15:43:57 -0800
Message-ID: <4EE29D3D.10002@linux.intel.com>
Date: Fri, 09 Dec 2011 15:43:57 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+5N1gx-t5BZeZxy7ooHLWoYK=B2Dr36AVWpca2LZ6M95_MbSw@mail.gmail.com>
In-Reply-To: <CA+5N1gx-t5BZeZxy7ooHLWoYK=B2Dr36AVWpca2LZ6M95_MbSw@mail.gmail.com>
Subject: Re: Routerstation Pro hardware is being discontinued
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
X-List-Received-Date: Fri, 09 Dec 2011 23:43:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/12/11 15:42, David Smoot wrote:
> I noticed that the routerstation pro hardware no longer appears on
> Ubiquiti Networks product page.  Their sales rep confirmed it is being
> EOL February 1, 2012.  Since that is the Yocto reference MIPS
> platform, I thought you would like to know.

Yikes, thanks for the notice David!

> It does make my problem with Mediatomb seg faulting on the RS Pro
> obsolete.  For the record, I had made two minor patches to the
> "meta-demo" branch and had been successful in compiling
> demo-image-mediatomb for the routerstation and the beagleboard.
> Mediatomb worked fine on beagleboard but segfaulted during
> initialization on the routerstation.  That's one bug overcome by
> events.

Great. I look forward to reviewing the patches!

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

