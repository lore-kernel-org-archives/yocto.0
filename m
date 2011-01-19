Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B92F4C811A7
	for <yocto@yoctoproject.org>; Tue, 18 Jan 2011 19:50:39 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J1obCW009715;
	Tue, 18 Jan 2011 17:50:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 17:50:37 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 18 Jan 2011 17:50:37 -0800
Message-ID: <4D36420E.100@windriver.com>
Date: Wed, 19 Jan 2011 09:44:46 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4D33CFB0.1030701@windriver.com>	<B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
	<4D34FD16.7060308@windriver.com> <4D360370.90505@linux.intel.com>
In-Reply-To: <4D360370.90505@linux.intel.com>
X-OriginalArrivalTime: 19 Jan 2011 01:50:37.0597 (UTC)
	FILETIME=[44F52CD0:01CBB77B]
Cc: Harry Ciao <qingtao.cao@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Status for lsb test (2011.1.10-2011.1.14)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Jan 2011 01:50:40 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Mark,Saul & Stewart

I will add qt3 test to lsb test plan according to your suggestion.


Yan
On 2011年01月19日 05:17, Saul Wold wrote:
> On 01/17/2011 06:38 PM, Xiaofeng Yan wrote:
>> On 2011年01月18日 00:21, Stewart, David C wrote:
>>>
>>> Thanks for sending.
>>>
>>> I am surprised that QT3 is included in LSB. We're at QT4 now I believe.
>>>
>>> For those who care about LSB: Are we OK with that failure?
>>>
>>> Dave
>>>
>> Thank you for your attention to LSB fixing.
>> Yes, LSB test suite include QT3 but we don't test it because QT3
>> couldn't be necessary due to QT4 is more stronger then QT3 which is in
>> suspended while we wait for suggestion from "Saul" and "Mark Hatle" . If
>> you have better ideas, we will adopt it with great willingness. So If it
>> is necessary , we will fix bugs from QT3 for the future.
>>>
> Xiaofeng:
>
> It seems that Mark replied to this that we need to have Qt3 in order 
> to pass the tests, therefore I would recommend that we add recipes to 
> the poky-lsb distro that support qt3, you can possibly re-use/port the 
> OpenEmbedded recipes for this.
>
> Sau!
>
>
>>> *From:* yocto-bounces@yoctoproject.org
>>> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Xiaofeng Yan
>>> *Sent:* Sunday, January 16, 2011 9:12 PM
>>> *To:* yocto@yoctoproject.org
>>> *Subject:* [yocto] Status for lsb test (2011.1.10-2011.1.14)
>>>
>>> Hi all,
>>> The next table is for the latest lsb test result.
>>>
>>> *LSB Test Suite*
>>>
>>>
>>>
>>> *Version*
>>>
>>>
>>>
>>> *Result*
>>>
>>>
>>>
>>> *Left work*
>>>
>>>
>>>
>>> *May/Days*
>>>
>>>
>>>
>>> *Start Date*
>>>
>>>
>>>
>>> *Finish Date*
>>>
>>>
>>>
>>> *Status*
>>>
>>>
>>>
>>> *Completed Percentage*
>>>
>>>
>>>
>>> *Defects filed*
>>>
>>>
>>>
>>> *Developer*
>>>
>>>
>>>
>>> *Risk/Issue*
>>>
>>> Cpp-T2C Tests
>>>
>>>
>>>
>>> 4.0.2-1
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 2
>>>
>>>
>>>
>>> 2010-12-20
>>>
>>>
>>>
>>> 2010-12-21
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Libstdc++ Tests
>>>
>>>
>>>
>>> 4.1.0-7
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 3
>>>
>>>
>>>
>>> 2010-12-22
>>>
>>>
>>>
>>> 2010-12-24
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Perl Tests
>>>
>>>
>>>
>>> 4.0.7-1
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> None
>>>
>>>
>>>
>>> 2
>>>
>>>
>>>
>>> 2010-12-27
>>>
>>>
>>>
>>> 2010-12-28
>>>
>>>
>>>
>>> Done
>>>
>>>
>>>
>>> 100%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Python Runtime Tests
>>>
>>>
>>>
>>> 4.0.2-1
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 3
>>>
>>>
>>>
>>> 2010-12-29
>>>
>>>
>>>
>>> 2010-12-31
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>> Bug 614(Open)
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Python Tests
>>>
>>>
>>>
>>> 2.4.5-2
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 0
>>>
>>>
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> OLVER Core Tests
>>>
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 6
>>>
>>>
>>>
>>> 2011-1-4
>>>
>>>
>>>
>>> 2011-1-11
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Command Check
>>>
>>>
>>>
>>> 4.0.0-2
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> Lsb
>>>
>>>
>>>
>>> 3
>>>
>>>
>>>
>>> 2011-1-12
>>>
>>>
>>>
>>> 2011-1-14
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>> BUG 520(Open)
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Tcl Tests
>>>
>>>
>>>
>>> 8.5.7-6
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> None
>>>
>>>
>>>
>>> 5
>>>
>>>
>>>
>>> 2011-1-17
>>>
>>>
>>>
>>> 2011-1-21
>>>
>>>
>>>
>>> Done
>>>
>>>
>>>
>>> 100%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Library Check
>>>
>>>
>>>
>>> 4.0.2-1
>>>
>>>
>>>
>>> Failures: 2
>>>
>>>
>>>
>>> qt3
>>>
>>>
>>>
>>> 5
>>>
>>>
>>>
>>> 2011-1-12
>>>
>>>
>>>
>>> 2011-1-18
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 80%
>>>
>>>
>>>
>>>
>>> Jingdong Lu
>>>
>>>
>>>
>>> Query if we need to handle any QT3 issues
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> Desktop Tests
>>>
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 4
>>>
>>>
>>>
>>> 2010-12-20
>>>
>>>
>>>
>>> 2010-12-29
>>>
>>>
>>>
>>> Delay
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>> BUG 567(Closed)
>>> BUG 569(Closed)
>>> BUG 570(Closed)
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>> Desktop-T2C Tests
>>>
>>>
>>>
>>> 4.0.2-1
>>>
>>>
>>>
>>> Failures: 1
>>>
>>>
>>>
>>> fix failures
>>>
>>>
>>>
>>> 4
>>>
>>>
>>>
>>> 2010-12-20
>>>
>>>
>>>
>>> 2010-12-29
>>>
>>>
>>>
>>> Delay
>>>
>>>
>>>
>>> 70%
>>>
>>>
>>>
>>> BUG 571(Accepted)
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>> Qt4-Azov Tests
>>>
>>>
>>>
>>> 4.0.2-1
>>>
>>>
>>>
>>> Failures:3
>>>
>>>
>>>
>>> fix failures
>>>
>>>
>>>
>>> 4
>>>
>>>
>>>
>>> 2010-12-30
>>>
>>>
>>>
>>> 2011-1-5
>>>
>>>
>>>
>>> Delay
>>>
>>>
>>>
>>> 50%
>>>
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>> Xts5 Tests
>>>
>>>
>>>
>>> 5.1.5-19
>>>
>>>
>>>
>>> Passed
>>>
>>>
>>>
>>> submit
>>>
>>>
>>>
>>> 5
>>>
>>>
>>>
>>> 2011-1-6
>>>
>>>
>>>
>>> 2010-1-12
>>>
>>>
>>>
>>> In Progress
>>>
>>>
>>>
>>> 90%
>>>
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>> Core Tests
>>>
>>>
>>>
>>> 4.0.5-1
>>>
>>>
>>>
>>> Failures: N/A
>>>
>>>
>>>
>>> fix failures
>>>
>>>
>>>
>>> 7 (?)
>>>
>>>
>>>
>>> 2011-1-21
>>>
>>>
>>>
>>> 2011-1-31
>>>
>>>
>>>
>>> Not started Yet
>>>
>>>
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>> Blocked by POSIX rename test case
>>>
>>> LSB Test Suite
>>>
>>>
>>>
>>>
>>>
>>> creat-lsb-image
>>> LSB_Setup.sh
>>>
>>>
>>>
>>> 0
>>>
>>>
>>>
>>>
>>>
>>> Done
>>>
>>>
>>>
>>> 100%
>>>
>>>
>>>
>>>
>>> Xiaofeng Yan
>>>
>>>
>>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


