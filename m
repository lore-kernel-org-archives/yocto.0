Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F455E00AB0; Wed, 14 Oct 2015 09:23:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6A5E00A9B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 09:23:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t9EGNMcL001127
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Oct 2015 09:23:23 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 14 Oct 2015 09:23:22 -0700
To: <chris@2net.co.uk>, akuster808 <akuster808@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <561E588D.5060609@2net.co.uk> <561E5D99.6020304@gmail.com>
	<561E70CB.6040509@2net.co.uk>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <561E816B.4040906@windriver.com>
Date: Wed, 14 Oct 2015 12:23:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <561E70CB.6040509@2net.co.uk>
Subject: Re: RFC: Yocto LTS?
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
X-List-Received-Date: Wed, 14 Oct 2015 16:23:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-10-14 11:12 AM, Chris Simmonds wrote:
> Hi,
>
> On 14/10/15 14:50, akuster808 wrote:
>> Chris,
>>
>>
>> On 10/14/2015 06:28 AM, Chris Simmonds wrote:
>>> Hi,
>>>
>>> Is there a statement about the period of support for a Yocto release?
>>> Looking through the updates, it seems that 12 months is typical, a was
>>> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
>>> declaration anywhere that this is the expected norm.
>>
>> There is a release every 6 months.
>>
>> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_release_cycle_of_the_Yocto_Project.3F
>>
>>>
>>> Leading on from that, is 12 months enough? Most projects have a
>>> lifecycle that is much longer. Is there an argument for an LTS Yocto
>>> release, maybe once a year? If not, what is the recommended way for a
>>> project developer to keep a distribution up to date in the light of the
>>> several well-publicised security flaws that have been discovered over
>>> the last year or so and the new ones that will no doubt be discovered in
>>> the future?
>>
>> At table of the current supported release can be found at
>> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
>>
>> - Armin
>>
>
> Thanks, Armin, that is the kind of thing I was looking for. It doesn't
> mention a timespan for updates, but there does seem to be an implicit
> maintenance period of 12 months after release. I am still worried that
> this is a rather short period of time, though, and encourages device
> manufacturers to avoid ever updating boxes in the field.

For longer term support, or for support of truly critical devices, the
Yocto project has relied on OSVs to offer commercial support for their
Yocto compatible distributions.

For the project itself, and the projects under the umbrella, the
developer capacity to maintain and support a release for longer than a
year simply doesn't exist. And that lack of cycles is only from the
point of view of duration, much less to offer something that looks
like a SLA on critical issues.

Cheers,

Bruce




>
>>>
>>> Regards,
>>> Chris Simmonds
>>>
>>
>


