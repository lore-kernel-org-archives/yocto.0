Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15ED6E00B27; Thu, 15 Oct 2015 08:49:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B07FCE00AEB
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:49:19 -0700 (PDT)
Received: (qmail 30693 invoked by uid 1003); 15 Oct 2015 15:49:18 -0000
Received: from unknown (HELO ?10.50.10.85?) (philip@opensdr.com@69.7.123.146)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	15 Oct 2015 15:49:17 -0000
To: chris@2net.co.uk, Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <561E588D.5060609@2net.co.uk> <561E8278.7080702@windriver.com>
	<561E9E71.3020105@2net.co.uk>
From: Philip Balister <philip@balister.org>
Message-ID: <561FCAFC.5060209@balister.org>
Date: Thu, 15 Oct 2015 09:49:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <561E9E71.3020105@2net.co.uk>
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
X-List-Received-Date: Thu, 15 Oct 2015 15:49:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/14/2015 12:26 PM, Chris Simmonds wrote:
> 
> On 14/10/15 17:27, Mark Hatle wrote:
>> On 10/14/15 8:28 AM, Chris Simmonds wrote:
>>> Hi,
>>>
>>> Is there a statement about the period of support for a Yocto release?
>>> Looking through the updates, it seems that 12 months is typical, a was
>>> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
>>> declaration anywhere that this is the expected norm.
>>>
>>> Leading on from that, is 12 months enough? Most projects have a
>>> lifecycle that is much longer. Is there an argument for an LTS Yocto
>>> release, maybe once a year? If not, what is the recommended way for a
>>> project developer to keep a distribution up to date in the light of the
>>> several well-publicised security flaws that have been discovered over
>>> the last year or so and the new ones that will no doubt be discovered in
>>> the future?
>>
>> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_overall_support_plan_for_the_Yocto_Project.3F
>>
>> =What is the release cycle of the Yocto Project?=
>> Each release of the Yocto Project is subject to its own release schedule
>> according to the community-maintained Project Planning Guide. It is generally
>> expected that a new version of the Yocto Project will be released every six months.
>>
>> =What is the overall support plan for the Yocto Project?=
>> Security patches and critical bug fixes are supplied one release back. No
>> toolchain or kernel changes are allowed for these updates. Support for longer
>> periods of time can be supplied by commercial OSVs.
>>
>>
>>
>> Effectively this means that support is on the last two releases.  Releases are
>> typically released every 6 months.  After that point it is usually supported by
>> OSVs, or others that offer commercial services.  In the past we have done a few
>> very late security fixes past the 'last two releases' point, however that has
>> been for unique situations.
>>
>> You should consider keeping current with the Yocto Project releases or consider
>> commercial support if you need more then an approx 12 - 18 month support cycle.
>>
>> --Mark
>>
> 
> Thanks, that is all clear now.

We wouldn't be opposed to a group of people supporting a release for
longer. But they would need to provide the people to do the work. LTS
work is hard.

Philip

> 
> Chris
> 

