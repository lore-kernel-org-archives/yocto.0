Return-Path: <ed.sutter@alcatel-lucent.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65E09E00992; Mon,  1 Jun 2015 08:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.245.210.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-fr.alcatel-lucent.com (fr-hpgre-esg-01.alcatel-lucent.com
	[135.245.210.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 315D3E0096A
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 08:53:54 -0700 (PDT)
Received: from us70tusmtp1.zam.alcatel-lucent.com (unknown [135.5.2.63])
	by Websense Email Security Gateway with ESMTPS id 37141DE1165F0;
	Mon,  1 Jun 2015 15:53:50 +0000 (GMT)
Received: from umail.lucent.com (umail.ndc.lucent.com [135.3.40.61])
	by us70tusmtp1.zam.alcatel-lucent.com (GMO) with ESMTP id
	t51Frol2007645
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 1 Jun 2015 11:53:51 -0400
Received: from [135.222.138.133] (Ed-PC.mh.lucent.com [135.222.138.133])
	by umail.lucent.com (8.13.8/TPES) with ESMTP id t51FrmKl018828;
	Mon, 1 Jun 2015 10:53:49 -0500 (CDT)
Message-ID: <556C7F78.3080002@alcatel-lucent.com>
Date: Mon, 01 Jun 2015 11:51:20 -0400
From: Ed Sutter <ed.sutter@alcatel-lucent.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Trevor Woerner <twoerner@gmail.com>
References: <556629F2.20605@alcatel-lucent.com> <5568B2E1.2000507@gmail.com>
	<1795848.uj7DDzVjdK@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1795848.uj7DDzVjdK@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: getting started...
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
X-List-Received-Date: Mon, 01 Jun 2015 15:54:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 5/31/2015 8:16 AM, Paul Eggleton wrote:
> On Friday 29 May 2015 14:41:37 Trevor Woerner wrote:
>> Hi Ed,
>>
>> On 05/27/15 16:32, Ed Sutter wrote:
>>> This year I have two ongoing iMX6 based linux projects, and may need
>>> to use a beaglebone
>>> or RPi for some other small project.
>>>
>>> The point of the above detail is that I'd like to backup a bit and
>>> attempt to use Yocto to
>>> organize all four of these with one instance of Yocto/Poky.  Is that
>>> practical?
>> Yes, that would be a great idea!Have a look at angstrom, for example:
>> http://www.angstrom-distribution.org. They build one distro for a whole
>> bunch of different machines. As such, they start with a whole bunch of
>> different layers, most of which are BSP layers, and then simply do:
>>
>> $ MACHINE=<machine> bitbake <image>
>>
>> e.g.
>>
>> $ MACHINE=raspberrypi2 bitbake angstrom-image
>> $ MACHINE=beaglebone bitbake angstrom-image
>> ...
>>
>> and build the exact same image for a bunch of different boards/machines.
>>
>> They've recently switched to using a repo manifest (which I think is a
>> great idea): https://github.com/Angstrom-distribution/angstrom-manifest
>>
>> I've been playing around with doing essentially the same thing for a
>> "poky" distribution here (but it's still a work-in-progress and not
>> really ready for prime time yet): https://github.com/twoerner/layer-repos
>>
>>>    Seems
>>>
>>> to me that is the ideal goal of Yocto, but I don't see many BSPs
>>> listed under the project
>>> downloads page.
>> Take a look here:
>> http://layers.openembedded.org/layerindex/branch/master/layers this is
>> the "master" list of all the "known" layers, recipes, etc. As you can
>> see, there are quite a few BSP layers.
> Furthermore, you can click on the "Machines" tab i.e.
>
> http://layers.openembedded.org/layerindex/branch/master/machines/
>
> Type in a keyword (or leave the box empty to see all) and hit Search, and
> you'll see a list of the matching machines provided by all the layers in the
> index.
>
> Cheers,
> Paul
>
Trevor & Paul,
Ok, thanks much.  I'll dig into this more now.
By the way, the page that gave me the impression there were very
few BSPs is this: https://www.yoctoproject.org/downloads/bsps
Clicking on "Board Support Packages" and using <Any> and <ARM>
for "YP Core Release" and "Processor Family" respectively.

-- 
Ed Sutter
Alcatel-Lucent Technologies -- Bell Laboratories
Phone: 908-582-2351
Email: ed.sutter@alcatel-lucent.com


