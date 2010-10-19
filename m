Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B69A4C810D8
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:31:55 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Oct 2010 14:31:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,352,1283756400"; d="scan'208";a="338051935"
Received: from unknown (HELO [10.255.12.141]) ([10.255.12.141])
	by azsmga001.ch.intel.com with ESMTP; 19 Oct 2010 14:31:55 -0700
Message-ID: <4CBE0E4A.1050208@intel.com>
Date: Tue, 19 Oct 2010 14:31:54 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1287522903.24666.5.camel@scimitar>
In-Reply-To: <1287522903.24666.5.camel@scimitar>
Subject: Re: Call for help for demo UPNP media renderer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 21:31:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Dongxiao,

Can you take a look at this since you have worked with the gstreamer?

Thanks
    Sau!


On 10/19/2010 02:15 PM, Joshua Lock wrote:
> Hi all,
>
> I've packaged Rygel, a upnp media server and renderer, to use as the
> media renderer in the upnp demo. However I'm seeing a segfault at launch
> and as it's getting late here I'm wondering if someone in a strategic
> timezone can help debug while I cycle home and sleep.
>
> The (ugly) recipes are in the josh/demo branch of the meta-demo
> repository.
>
> rygel --gst-debug-level=5
>
> shows plenty of output, but nothing that jumps out to a gstreamer newb
> like me. AFAICT I have all of the plugins required but it's possible we
> need to add more.
>
> If not I'll pick it up again in the morning.
>
> Thanks,
> Joshua


