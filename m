Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0271E00D2A; Tue, 26 Sep 2017 15:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17E82E00C62
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 15:14:22 -0700 (PDT)
Received: (qmail 178 invoked by uid 1003); 26 Sep 2017 22:14:22 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.44.111.57)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	26 Sep 2017 22:14:22 -0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
	<CAMhs6Yzx+emQw40AvbrHRA2_MmOXiods5=B+2V-sYSW5nxyg_g@mail.gmail.com>
	<ef0eee81-2614-5d79-d6b9-344ab696fbd7@balister.org>
	<6052844.NaO1fkoddp@peggleto-mobl.ger.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <e24f4051-eb8e-f5b2-3ec0-0b6fc4a2b08c@balister.org>
Date: Tue, 26 Sep 2017 18:14:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <6052844.NaO1fkoddp@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 5/6] bdwgc: import from meta-oe
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
X-List-Received-Date: Tue, 26 Sep 2017 22:14:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

On 09/26/2017 03:59 PM, Paul Eggleton wrote:
> On Wednesday, 27 September 2017 1:16:19 AM NZDT Philip Balister wrote:
>> Does the layer index let us search for recipes that depend on another
>> recipe?
> 
> At the moment, no. I have explicitly not done anything with dependencies 
> because they can be dependent on configuration (e.g. DISTRO_FEATURES, 
> PACKAGECONFIG) and I haven't taken the time to figure out how to introspect 
> and present such optional dependencies.

Thanks Paul. I was wondering since I suspect that over time, the
question we are asking will become more important. We already ran into a
similar issue with sip.

Maybe it is time for oe-core-not-so-common-depends?

Philip

> 
> Cheers,
> Paul
> 

