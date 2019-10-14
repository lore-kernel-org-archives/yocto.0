Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F393EE00C9B; Mon, 14 Oct 2019 15:54:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDABE0096F
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 15:54:51 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9EMsmWM031518
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 14 Oct 2019 17:54:49 -0500
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <a689c6cf-1b24-fd3d-19db-79c2000c9db1@kernel.crashing.org>
	<1678166.3Pd2BCF48v@linux.fritz.box>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <e247be4b-7c6e-83db-e202-edd5ef5a0948@kernel.crashing.org>
Date: Mon, 14 Oct 2019 17:54:47 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1678166.3Pd2BCF48v@linux.fritz.box>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [layerindex-web] Enabled zeus, not working...
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
X-List-Received-Date: Mon, 14 Oct 2019 22:54:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 10/14/19 5:08 PM, Paul Eggleton wrote:
> Hi Mark
> 
> On Tuesday, 15 October 2019 10:21:29 AM NZDT Mark Hatle wrote:
>> I added the zeus branch on the layers.openembedded.org today and it's not
>> showing up and being indexed.  Any idea why?
> 
> The bitbake branch wasn't correctly specified - it needed to be set to "1.44" 
> (grabbed from https://wiki.yoctoproject.org/wiki/Releases if you don't have it 
> in your head - I didn't ;).
>

Great so it's my fault.. much easier to fix then an infrastructure issue.

>> On my own personal layer index I did it and it worked fine.  So it may be
>> something related to the configuration.
> 
> I guess it worked in your case because (based on your patch of the other day) 
> you're picking bitbake out of a repo where zeus is a valid branch.

Yup, exactly.. it -happened- to work.. :)

> FYI on layers.openembedded.org you also need to select the Python environment 
> for the branch - python3 in this case. 
> 
> I've made both of these changes so it should index correctly the next time 
> around.

Ahh I thought python3 was now the default, and python2 was for the older
systems.  I read it backwards.. I'll try to remember in 6 months.  :)

(Part of the reason I included the mailing list here.)

--Mark

> Cheers
> Paul
> 
> 

