Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E490AE00C52; Mon, 25 Apr 2016 19:11:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0687CE00C4C
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 19:11:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u3Q2BD87025571
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 25 Apr 2016 19:11:13 -0700
Received: from server.local (147.11.119.214) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 19:11:12 -0700
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
	<BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<571E553D.4070200@windriver.com>
	<BY1PR0701MB1594282E92D12DA005739343E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <571ECE3F.60200@windriver.com>
Date: Mon, 25 Apr 2016 22:11:11 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <BY1PR0701MB1594282E92D12DA005739343E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Tue, 26 Apr 2016 02:11:33 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-25 9:05 PM, Jaggi, Manish wrote:
>
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Monday, April 25, 2016 11:04 PM
> To: Jaggi, Manish; Burton, Ross
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
>
> On 2016-04-25 12:10 PM, Jaggi, Manish wrote:
>>
>> ------------------------------------------------------------------------
>> *From:* Burton, Ross <ross.burton@intel.com>
>> *Sent:* Monday, April 25, 2016 8:12 PM
>> *To:* Jaggi, Manish
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Fetcher failure: Unable to find revision
>> 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
>> upstream
>>
>> On 25 April 2016 at 14:30, Jaggi, Manish
>> <Manish.Jaggi@caviumnetworks.com
>> <mailto:Manish.Jaggi@caviumnetworks.com>> wrote:
>>
>>      It seems the revid / tag is not on any branch
>>      git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
>>      returns nothing.
>>
>>      How to fix this issue ?
>>
>>
>> You probably want to use git branch -r --contains 213... as otherwise
>> git branch will only list local branches.  The web UI says that this
>> commit exists on master though...
>>
>> [Manish] Same output with -r.
>> Can you please share the link of web ui. As per the error it is not on
>> master branch.
>
> linux-yoct-dev and linux-yocto-4.4 are different trees. linux-yocto-dev
> tracks the latest mainline kernel, not -stable.
>
> So if you are looking for 4.4.3 on linux-yocto-dev, you aren't going
> to find it.
>
> [Manish] the 4.4.3 tag is also not on master branch of the 4.4 tree.
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/tag/?h=standard/base&id=v4.4.3
> The master is 4.4

It's on standard/base. master is left as the initial branch point of
the repository. When LTSI is available, I tend to update master, but
since 4.4 has no LTSI content, I leave master alone.

Also note: I'm currently not pushing and -stable updates to that tree,
since I'm temporarily frozen for the yocto 2.1 release.


>
> A clone and check from tag works manually, but when bitbake fetches it, it throws error as bitbake is not able to find the commit on master branch.
> How to fix thisk

don't use master, use standard/base as the branch.

Bruce

>
> Bruce
>
>>
>>
>> Ross
>>
>>
>


