Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EE8FE01398
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 11:09:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Oct 2011 11:09:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,404,1315206000"; d="scan'208";a="30036266"
Received: from unknown (HELO [10.255.15.132]) ([10.255.15.132])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Oct 2011 11:09:04 -0700
Message-ID: <4EA6FB40.7050600@linux.intel.com>
Date: Tue, 25 Oct 2011 11:09:04 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
	<33AB447FBD802F4E932063B962385B3512DB2DBA09@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNdfJ_VRRNVRGNf3C7ziBdn4uaa3hNUk5hSAQnj9zimkYQ@mail.gmail.com>
In-Reply-To: <CAEsOVNdfJ_VRRNVRGNf3C7ziBdn4uaa3hNUk5hSAQnj9zimkYQ@mail.gmail.com>
Subject: Re: Proposed roadmap and design for Hob improvement
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
X-List-Received-Date: Tue, 25 Oct 2011 18:09:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 25/10/11 09:08, McClintock Matthew-B29882 wrote:
> On Sun, Oct 23, 2011 at 10:12 PM, Yu, Ke <ke.yu@intel.com> wrote:
>>> Seems like with the build packages and build image steps separated you could
>>> skip the build step completly for most packages if we ship or host pre-built build
>>> packages
>>>
>>> -M
>>
>> Yes, current design supports this scenario, i.e. if some packages are already pre-built, HOB will notice that and won't build them again.
> 
> It would be nice to be able to skip the package generation if the RPM
> already exists somewhere. This could provide significant speedup above
> what is already provided by sstate-cache. Although other issues might
> need to be solved....

I think this falls in line with the proposed design. If we create the
images from package feeds we needn't build when the package feeds are
already available.

Of course with ambiguous terms like *somewhere* I'm not sure we're
thinking along exactly the same lines but we're definitely looking to
speed up and re-use in as many places as possible.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

