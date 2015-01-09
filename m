Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F157E00828; Fri,  9 Jan 2015 08:08:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BADAE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 08:08:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 08:08:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,731,1413270000"; d="scan'208";a="648803301"
Received: from unknown (HELO swold-mobl5.amr.corp.intel.com) ([10.252.248.119])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2015 08:08:19 -0800
Message-ID: <54AFFCF2.5020501@linux.intel.com>
Date: Fri, 09 Jan 2015 08:08:18 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Matthias.Heise@atlas-elektronik.com, yocto@yoctoproject.org
References: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
Subject: Re: can't pull any sources anymore
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Jan 2015 16:08:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2015 06:10 AM, Matthias.Heise@atlas-elektronik.com wrote:
> Hi,
>
> I'm not able to pull any sources for a little time now. As test I re-tried an already working setup by again following some tutorial and trying to setup a fresh repo. The repo init works but the sync fails. I should mention that due to network limitations I replace git:// urls with https:// . Is it possible that this doesn't work anymore (I mean it is replaced but maybe the online repos don't support it anymore seamlessly)?

Can you be more specific, are you talking about the git repos at 
git.yoctoproject.org or some other git source?

You say a "repo init works", does that mean an initial clone or ?  What 
commands are you running?

I think a little more information is needed here.

Sau!

> Thanks
>
> Mat
>
>
>
>

