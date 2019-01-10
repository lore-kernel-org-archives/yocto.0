Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0682E00CC4; Thu, 10 Jan 2019 12:11:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 314D8E00C4E
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 12:11:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0AKADQq022532
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Jan 2019 12:11:09 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 10 Jan 2019 12:10:49 -0800
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Jia, Hongxu" <Hongxu.Jia@windriver.com>, "Hatle,
	Mark" <mark.hatle@windriver.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155EEA6CE2BC@fmsmsx123.amr.corp.intel.com>
	<BYAPR02MB6005BF6F7DE0C04A8A1F98D3B98A0@BYAPR02MB6005.namprd02.prod.outlook.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <6ced0398-5c4c-c757-bc0a-30c1c005f684@windriver.com>
Date: Thu, 10 Jan 2019 15:10:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <BYAPR02MB6005BF6F7DE0C04A8A1F98D3B98A0@BYAPR02MB6005.namprd02.prod.outlook.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Notes: Yocto Project Technical Team Meeting @ Tue Jan 8, 2019 8am - 8:30am (PST)
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
X-List-Received-Date: Thu, 10 Jan 2019 20:11:53 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 1/8/19 1:03 PM, Manjukumar Harthikote Matha wrote:
> Hi
> 
> 
> 
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Jolley, Stephen K
>> Sent: Tuesday, January 08, 2019 8:29 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Notes: Yocto Project Technical Team Meeting @ Tue Jan 8, 2019
>> 8am - 8:30am (PST)
>>
>> Attendees: Stephen, Armin, Alex, Richard G., Joshua W., Richard. P., Randy, Ross,
>> Trevor, Jon, Lewis, Jesse, Tim, Matt, Tracey,
>>
>> YP Status:  See - https://wiki.yoctoproject.org/wiki/Weekly_Status
>> <https://wiki.yoctoproject.org/wiki/Weekly_Status>
>>
>>
>> *	YP 2.7 M1 is out of QA and being prepared for release.
>> *	YP 2.5.2 was released on Jan. 4, 2019.
>> *	YP 2.6.1 should build soon.
>> *	YP 2.7 M2 is targeted for build Jan. 21, 2019.
>>
>>
>> Richard and Stephen discussed QA status and plans for YP 2.6.1.  We will still do
>> some manual QA work in Q1’19 but plan to automate QA before the end of Q1’19.
>>
>> Joshua discussed the hash work on sstate.  It has merged for M2. Discussed how
>> build history use of hashes needs some updates to improve reproducibility.
>>
>> Trevor asked about the Weekly status report meetings. These are where the weekly
>> status report is written and while all are welcome to attend, no one but Stephen and
>> Richard are required.
>>
>> Trevor discussed that YP is dropping support for some old  ARM targets, since they
>> are being dropped from gcc.
>>
>> Richard asked about incremental image packaging.  Randy commented that WRS is
>> using this feature for RPM.
>>
> 
> This is something that we are looking for, can you provide more details on the current implementation?
> 

Hongxu implemented it:
   http://git.openembedded.org/openembedded-core/commit/?id=b3eeb0edf3f

so maybe he or Mark can comment.

../Randy

> Thanks,
> Manju
> 


-- 
# Randy MacLeod
# Wind River Linux

