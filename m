Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E13E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 12:03:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2DJ2sEB027713
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Mar 2012 12:02:54 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 13 Mar 2012 12:02:54 -0700
Message-ID: <4F5F99DC.2030408@windriver.com>
Date: Tue, 13 Mar 2012 14:02:52 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A3D0A15D2@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe9fHCf3h=yNtu0ULBBR6PMcQQz7ZcSfLFuFbuWuhaksg@mail.gmail.com>
In-Reply-To: <CAEsOVNe9fHCf3h=yNtu0ULBBR6PMcQQz7ZcSfLFuFbuWuhaksg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 13 Mar 2012 19:03:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/13/12 1:54 PM, McClintock Matthew-B29882 wrote:
> On Tue, Mar 13, 2012 at 1:25 PM, Liu, Song<song.liu@intel.com>  wrote:
>> * Opens - 10 min
>>   - Mark: Reusing sstate cache, missing a testcase: found a bug in 1.1, found a new bug in 1.2, try to use the st cache, the compiler will try to use compiler from previous compiler.
>>     Sean: Mentor are testing sstate cache. There is at least one issue identified. Sean to take a look at what's going on, make sure we are augmenting what's done. We should see more mentor involvement in upstream.
>>     RP: Many sstate issues are known. There are warning messages the team can help to fix and that should improve sstate stability.
>
> Are any of these sstate cache issues specific to 1.1.1 or new issues?
> (Just trying to track fixes to 1.1.1)
>
> -M

1.1.1 issue is: 2041

The 1.2 issue is: 2074/2082  (former is the bug, later is the new test case)

--Mark

