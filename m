Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E23E006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 10:16:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9PHGq5K027554
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 10:16:52 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 25 Oct 2011 10:16:52 -0700
Message-ID: <4EA6EF03.4010307@windriver.com>
Date: Tue, 25 Oct 2011 12:16:51 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 25 Oct 2011 17:16:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/25/11 11:08 AM, McClintock Matthew-B29882 wrote:
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

sstate-cache already caches the results of the package builds (not just RPM).
This is needed to be able to populate both the sysroot and the package set for
the image generation step.

To me what is a bigger deal is to break up the image generation into an external
step.. so I can simply start with a set of packages and build them.  (since
sysroots and similar are not needed in this situation.)

--Mark

> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


