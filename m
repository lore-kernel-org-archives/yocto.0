Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEC7E00A54; Fri, 14 Aug 2015 00:15:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A35B5E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 00:15:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E7F3Bw004333
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Aug 2015 00:15:03 -0700 (PDT)
Received: from [128.224.162.176] (128.224.162.176) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 14 Aug 2015 00:15:03 -0700
Message-ID: <55CD9575.4040501@windriver.com>
Date: Fri, 14 Aug 2015 15:15:01 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>, Randy MacLeod
	<randy.macleod@windriver.com>
References: <55BB022B.6050800@windriver.com>
	<20150731173331.GC5208@mentor.com>	<55CD0E05.4070801@windriver.com>
	<20150814003806.GA8204@mentor.com>
In-Reply-To: <20150814003806.GA8204@mentor.com>
Cc: "Radzykewycz, T \(Radzy\)" <radzy@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 -- resend to right list.
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
X-List-Received-Date: Fri, 14 Aug 2015 07:15:08 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

I just sent uprev patches for:

libcap-ng 0.7.3 -> 0.7.7
python-ipy 0.81 -> 0.83

The remaining list that need to be updated:

selinux:
   - libsemanage     2.3     2.4
   - sepolgen     1.2.1     1.2.2
   - checkpolicy     2.3     2.4
   - libselinux     2.3     2.4
   - libsepol     2.3     2.4
   - policycoreutils     2.3     2.4


Thanks
Wenzong

On 08/14/2015 08:38 AM, Joe MacDonald wrote:
> [[oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 -- resend to right list.] On 15.08.13 (Thu 17:37) Randy MacLeod wrote:
>
>>
>> Resending to the right list.
>> (yocto@yoctoproject.org rather than
>>   openembedded-devel@lists.openembedded.org )
>>
>> Radzy will be working on meta-selinux and
>> I've suggested that the start with a package uprev or two
>> once the upstream selinux release intentions are known.
>
> Well, the backlog is cleared out (not quite true, but I'm waiting on a
> final verification from my autobuilders before merging the last couple
> of patches) and it looks like I didn't destroy Phil's work on the
> filesystem labelling bits when rebasing them, so I expect I'll merge
> those tomorrow too.  Let's say everything after that is negotiable.  :-)
>
> -J.
>
>>
>> ../Randy
>>
>> ---
>>
>> Going on-list like I should have originally.
>>
>> On 2015-07-31 01:33 PM, Joe MacDonald wrote:
>>> Hey Randy,
>>>
>>> Good to hear from you.
>>>
>>> [meta-selinux updates for oe-core-1.9] On 15.07.31 (Fri 01:05) Randy MacLeod wrote:
>>>
>>>> What's the plan for meta-selinux in the next 2 months?
>>
>> Roy dug up the current meta-selinux, upstream versions:
>>
>> swig             2.0.10        3.0.6
>> python-ipy         0.81         0.83
>> audit             2.3.2        2.4.3
>> refpolicy-mls 2.20140311　　　　2.20141203
>> libcap-ng         0.7.3        0.7.7
>> setools           3.3.8        3.3.8
>> sepolgen            git        1.2.2
>> libsemanage         git          2.4
>> checkpolicy         2.3          2.4
>> policycoreutils     git          2.4
>> selinux-config      0.1          0.1
>> libsepol            git          2.4
>> libsemanage         2.3          2.4
>> sepolgen          1.2.1        1.2.2
>> libsepol            2.3          2.4
>> libselinux          git          2.4
>> policycoreutils     2.3          2.4
>> libselinux          2.3          2.4
>> ustr              1.0.4        1.0.4
>>
>>
>>>
>>> There's a backlog of meta-selinux patches to integrate that have been in
>>> my merge queue for rather a long time now.  I expect to clear that out,
>>> which will include an update to the most recent (not the current, any
>>> longer, I don't think) refpolicy and a new recipe that will build from
>>> the refpolicy git repository rather than release tarballs.  I think
>>> this'll be a significant benefit to everyone in that it'll make it much
>>> easier to migrate patches and to try out a new release without waiting
>>> for a full update.  Those are the big things on the horizon.
>>>
>>> The other one is the filesystem labelling work being done by the
>>> community.  It looks quite good and as soon as I get a few minutes to
>>> try it out a bit more on some oddball configurations to ensure we aren't
>>> bringing in any new dependencies (after having just scrubbed a bunch of
>>> bashisms and hidden deps), it'll likely get merged.
>>>
>>> There's nothing on the radar in the short term that hasn't already been
>>> discussed on the mailing list, though, AFAIK.
>>>
>>> -J.
>>
>> So when Radzy is back in a week from being OOO, hopefully Joe's backlog
>> will be cleared and we all can update pkgs as needed. We can split
>> up that work however it makes sense; just tell the list
>> if you start working on a package.
>>
>> My quick review of git logs and my memory of selinux releases
>> tells me that there tends to be an late fall release.
>> I looked at the Changelog for a few of the components of:
>>      https://github.com/SELinuxProject/selinux
>> and things seem to be moving along more quickly than usual
>> so that pattern might not hold. Is anyone subscribed to the list:
>>      https://www.nsa.gov/research/selinux/list.shtml
>> if so is there talk of an approximate release date that
>> would help us decide if we went to update now or in a month or so?
>>
>> Oh and is selinux happy under gcc-5.2+?
>>
>> ../Randy
>>
>>
>>>
>>>>
>>>> Roy can you summarize the state of each recipe?
>>>> i.e. current version and upstream version?
>>>> I'd like to make sure that we're up to date when
>>>> oe-core-1.9 is released.
>>>>
>>
>>
>> --
>> # Randy MacLeod. SMTS, Linux, Wind River
>> Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, Canada,
>> K2K 2W5
>>
>>

