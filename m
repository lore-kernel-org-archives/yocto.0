Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92CDBE00D39; Mon, 31 Aug 2015 19:23:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDC3E00B5E
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 19:23:33 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t812NWNH026580
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Aug 2015 19:23:32 -0700 (PDT)
Received: from server.local (128.224.20.12) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 31 Aug 2015 19:23:32 -0700
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>, Yocto
	Project <yocto@yoctoproject.org>
References: <CALbNGRSQGZdyeWGF8vWN9gqJ-iO9CYiQy9pjKNFpCYEyJM09TA@mail.gmail.com>
	<CALbNGRRzu5=TJgYtpPmWRcGwRwjpGvJqzqzgF4mZY5Q=vfLP+Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <55E50C22.2030503@windriver.com>
Date: Mon, 31 Aug 2015 22:23:30 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRRzu5=TJgYtpPmWRcGwRwjpGvJqzqzgF4mZY5Q=vfLP+Q@mail.gmail.com>
Subject: Re: [meta-raspberrypi] kernel do_patch lasts ages
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
X-List-Received-Date: Tue, 01 Sep 2015 02:23:37 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-08-31 9:07 PM, Andreas Müller wrote:
> On Thu, Aug 20, 2015 at 12:23 AM, Andreas Müller
> <schnitzeltony@googlemail.com> wrote:
>> Hi
>>
>> since one week or so my build sometimes freezes with
>>
>> linux-raspberrypi-3.18.11+gitd64fa8121fca9883d6fb14ca06d2abf66496195e-r0
>> do_patch (pid 7335)
>>
>> without any progress noticeable.
>>
>> In log.do_patch I see strange stuff:
>>
>> DEBUG: Executing shell function do_patch
>> [INFO] validating against known patches  (raspberrypi2-standard-meta)
>>    [####################################################################################################]
>> (|)(200 %)
>>
>> Anybody out there with ideas what's going on?
>>
> OK a successful log says
>
> DEBUG: Executing shell function do_patch
> [INFO] validating against known patches  (raspberrypi2-standard-meta)
>    [####################################################################################################]
> (|)(200 %)   [##################################################]
> (completed in 6326 seconds)
> DEBUG: Shell function do_patch finished
>
> What takes 108 minutes??

Wow. That is REALLY long. In existing releases the tools are looking
for place to resume a previously applied set of matches. Depending
on the history of a branch, it means quite a few commits are
checked.

I'm betting this is falling into some sort of pathological case where
hundreds of commits are being checked.

As it turns out, I completed a set of changes just today that eliminate
that checking and make the patch phase take almost no time.

If someone is willing to test an in-progress patch, I can send it out
tomorrow and see if the change resolves this issue.

Bruce

>
> Andreas
>


