Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A51CE00CD2; Fri,  8 Sep 2017 14:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B70E00B01
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 14:31:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v88LUd9V023203
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Sep 2017 14:30:40 -0700 (PDT)
Received: from server.local (128.224.21.188) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 8 Sep 2017 14:30:38 -0700
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.21.1709081643160.24679@localhost.localdomain>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <ee06a2a7-fc74-52cb-5348-27a0b7deddfa@windriver.com>
Date: Fri, 8 Sep 2017 17:30:38 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.1709081643160.24679@localhost.localdomain>
Subject: Re: is there a summary somewhere of container-based YP solutions?
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
X-List-Received-Date: Fri, 08 Sep 2017 21:31:36 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-09-08 4:56 PM, Robert P. J. Day wrote:
> 
>    topic came up today about docker/container-based solutions for
> embedded linux systems, and i already know some of that:
> 
>   * meta-virtualization layer has recipes-containers/ recipes

FYI: there are actually quite a few container tools that are
outside recipes-containers in meta-virt.

>   * resinOS is tailored for containers
> 
> i'm curious if anyone has summarized the container-related aspects of
> YP.

I've never seen a summary, but if you check the yocto bugzilla you'll
find more things on top of what currently exists in oe-core + meta-virt
for container features in planning.

Something I've been working on for 2+ years: https://github.com/OverC,
which is a container OS that Wind River builds into:
https://www.windriver.com/products/operating-systems/pulsar/

Togan labs is also working in the same area:
https://toganlabs.wordpress.com/2017/07/03/oryx-linux-v0-2-0-released/

There are lots of core features of oe-core/yocto that are ideally
suited to container work, tight dependency tracking, small footprint,
reproducible builds, application containers/microservices and that
all stems from everything like the recent work to allow kernel modules
to be installed without kernel images or the ability to build images
without kernels installed, SDKs, etc. So really, there's not a whole
lot in oe-core that I wouldn't say isn't peripherally of interest to
someone working with containers.

The various OTA update options also play in this area, as does the
work in meta-intel for clear containers, etc.

Mentioning OTA makes me chuckle, since having a consensus around
container features (and what is important, etc) is about as hard as
nailing down a consensus of defacto implementation for OTA :D

Everything that I do around containers ends up in meta-virtualization,
meta-cloud-services (and then meta-overc) so a shameless plug is to
check there for lots of guidance and information.

Bruce

> 
> rday
> 


