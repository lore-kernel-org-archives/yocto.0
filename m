Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAC65E00BCC; Thu, 15 Oct 2015 12:06:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B64E00BB6
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 12:06:37 -0700 (PDT)
Received: from [192.168.159.8] ([80.43.50.149]) by mrelayeu.kundenserver.de
	(mreue103) with ESMTPSA (Nemesis) id 0Lpyfn-1aFWlS3Apj-00fgQt;
	Thu, 15 Oct 2015 21:06:25 +0200
References: <561E588D.5060609@2net.co.uk> <561E8278.7080702@windriver.com>
	<561E9E71.3020105@2net.co.uk> <561FCAFC.5060209@balister.org>
To: Philip Balister <philip@balister.org>,
	Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <561FF930.7090902@2net.co.uk>
Date: Thu, 15 Oct 2015 20:06:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <561FCAFC.5060209@balister.org>
X-Provags-ID: V03:K0:T6IQWHR48MnuOJVbEA3La5GSd9VLgBn+qmi/kRbWDYISVl96U3G
	A8ddyl6+iPDu+lBiV6R+pbMmBd59rZSyiR6A52Tf4uQvSHOW1dSePtxQ6Thtl0uQh3BwCfP
	VDW4PobdokAZp8pb2mxsjjTB3/U6DSIbewOeggYH2tv62pgPXMq/ROcKo917/uW1228MATZ
	yIprFtKxPoOQSrWzG6/2A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:6H35FHzu4+A=:fe1Iuygj4X3JolEbHUNmgI
	tId31d9Afwni3SHcpUq8vAnFRTDndAjq+kvsHY0loyFAN2OYK9qxlpF9mJwrj7bFNxrJ8y2xf
	j84KLR3YWFwaARGdw0f4ywKe40DmZwNA7w7BVWWAbNf1tk7X4KuoZuGK5v9PFEQJygUWM68o+
	o8hFT0M5B+O91V3HpN6V27225QUKP4xHdvCNSBFJ3VNX6bkfX9TOIZjUNr140pYY0a4C7de60
	4ZrPsu/ZuRRCuJcLfAUh5rWLt2r3Btsf8eNdJO7xq1ekItIfVo8h+If14mGwF70Je41trGc2J
	vKEs2FSMI28/tvw057tJRZ9eVyCjlCKNvSvxM6BvRGJvQi6zgx/i9jYejxkL7+K1+/y4Qxxa8
	JIBbe+mDBlCjGLXWn8nlrU1W/fg8uBlWZNRw65FXA4YH1c0UU7LDU59L5UiPgjn2TzjkYk/sl
	GetqoAqiLTekh/jv32622zrQGthOmw0hrEN42a7aveE9SevrlHM52lDvUa05aTUHElvzozMk2
	Er+9ozGZRxjHmD2hkgk4TXP+Fv9R7LbOBXsBSrCNWAqcOSqsiBD0mKgXkxON72MtoZrLS+F8w
	BOJ68elM3P3zi980tT+/GvsWP4ma/h6NEWgDz3fyComxHzWgQ6kFMcs0A5mNgAC46VNjKMVP3
	Ecih//FsnYxPbBXndsySeKEe19BXneoX50NRcaicolHi0R6jHXjjqkZlt8vMSQd8asDAYza6x
	u5kQcBvyKaaaKGpF
Subject: Re: RFC: Yocto LTS?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Oct 2015 19:06:40 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 15/10/15 16:49, Philip Balister wrote:
> On 10/14/2015 12:26 PM, Chris Simmonds wrote:
>>
>> On 14/10/15 17:27, Mark Hatle wrote:
>>> On 10/14/15 8:28 AM, Chris Simmonds wrote:
>>>> Hi,
>>>>
>>>> Is there a statement about the period of support for a Yocto release?
>>>> Looking through the updates, it seems that 12 months is typical, a was
>>>> the case for 1.4, 1.5 and 1.6 for example, but I cannot see a
>>>> declaration anywhere that this is the expected norm.
>>>>
>>>> Leading on from that, is 12 months enough? Most projects have a
>>>> lifecycle that is much longer. Is there an argument for an LTS Yocto
>>>> release, maybe once a year? If not, what is the recommended way for a
>>>> project developer to keep a distribution up to date in the light of the
>>>> several well-publicised security flaws that have been discovered over
>>>> the last year or so and the new ones that will no doubt be discovered in
>>>> the future?
>>>
>>> https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_overall_support_plan_for_the_Yocto_Project.3F
>>>
>>> =What is the release cycle of the Yocto Project?=
>>> Each release of the Yocto Project is subject to its own release schedule
>>> according to the community-maintained Project Planning Guide. It is generally
>>> expected that a new version of the Yocto Project will be released every six months.
>>>
>>> =What is the overall support plan for the Yocto Project?=
>>> Security patches and critical bug fixes are supplied one release back. No
>>> toolchain or kernel changes are allowed for these updates. Support for longer
>>> periods of time can be supplied by commercial OSVs.
>>>
>>>
>>>
>>> Effectively this means that support is on the last two releases.  Releases are
>>> typically released every 6 months.  After that point it is usually supported by
>>> OSVs, or others that offer commercial services.  In the past we have done a few
>>> very late security fixes past the 'last two releases' point, however that has
>>> been for unique situations.
>>>
>>> You should consider keeping current with the Yocto Project releases or consider
>>> commercial support if you need more then an approx 12 - 18 month support cycle.
>>>
>>> --Mark
>>>
>>
>> Thanks, that is all clear now.
> 
> We wouldn't be opposed to a group of people supporting a release for
> longer. But they would need to provide the people to do the work. LTS
> work is hard.
> 
> Philip
> 
>>
>> Chris
>>
> 

Indeed, it is hard work. But there is a community out there with the
expertise and many very profitable corporations that depend on Yocto
Project (in addition to Intel, I mean, since they put a lot of resource
in already). It would be really nice if someone neutral - Linux
Foundation for example - could bring them together to make LTS work for
everybody.

Chris.



