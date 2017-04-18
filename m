Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D55F1E00A80; Tue, 18 Apr 2017 13:28:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Apr 2017 13:27:59 PDT
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 472E7E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:27:59 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1d0ZUX-0003HG-38
	for yocto@yoctoproject.org; Tue, 18 Apr 2017 22:12:49 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 18 Apr 2017 22:12:48 +0200
Message-ID: <b8415d43-c665-55c0-7b97-4a7b1b82bbbd@reliableembeddedsystems.com>
References: <335001a8-d384-37ff-8e77-b741186b1207@mlbassoc.com>
	<697428d2-25df-411c-c926-aacb2715b2f4@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
In-Reply-To: <697428d2-25df-411c-c926-aacb2715b2f4@mlbassoc.com>
Subject: Re: Task dependencies
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
X-List-Received-Date: Tue, 18 Apr 2017 20:28:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2017-04-13 11:24, Gary Thomas wrote:
> On 2017-04-13 09:34, Gary Thomas wrote:
>> I'm trying to understand why 'perl' is being built for my target
>> even though I don't mention it in any of the package recipes used
>> to build that target.  When I used 'taskexp', I found that
>> 'perl:do_build'
>> only has a single dependent task, namely 'my-image:do_build'
>> note: no perl packages end up in my image.
>>
>> This is just one example where it seems bitbake is doing a lot of
>> unnecessary (certainly un-asked-for) work.
>>
>> How can I unravel this mystery?
>>
>> Thanks for any pointers

Did you have a look at the dependency explorer?

bitbake -g -u depexp core-image-sato-sdk

There you see also reverse dependencies (who depends e.g. on perl)

Regards,

Robert





