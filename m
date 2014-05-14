Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBB03E006EF; Wed, 14 May 2014 14:38:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226C7E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 14:38:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2014 14:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1054,1389772800"; d="scan'208";a="511779488"
Received: from unknown (HELO [10.255.12.90]) ([10.255.12.90])
	by orsmga001.jf.intel.com with ESMTP; 14 May 2014 14:38:51 -0700
Message-ID: <5373E26A.6060509@linux.intel.com>
Date: Wed, 14 May 2014 14:38:50 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Lucas Pirolla <lucas.pirolla@gmail.com>
References: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
In-Reply-To: <CAK4xyAmvGw7dYHhMEcUCHxBSzMiM+9Hk_SedN5huG5hc=BHcNg@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-web-kiosk: bad fonts in high resolution
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
X-List-Received-Date: Wed, 14 May 2014 21:38:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/14/2014 01:25 PM, Lucas Pirolla wrote:
> Hello, Saul.
>
> I'm new to Yocto, and I made an Image meta-web-kiosk, and when I run it,
> the fonts in browser  are getting messed up, as you can see in these images:
>
> https://drive.google.com/folderview?id=0Bw1B-mbeX0tbRnc0OHZSaDVuQlE&usp=sharing
>
> This happened in FullHD output.  But when I low the resolution to VGA,
> fonts are totally ok.
>
Hm, I think I have tested it with HD before, it's been a while since I 
touched that layer.

What device are you using it with?

Adding in yocto@yoctoproject.com in case other folks have any idea.

Sau!


> Any ideas?
>
> Kind regards
> Lucas
>

