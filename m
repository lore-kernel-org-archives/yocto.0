Return-Path: <prvs=11875a91ee=haris.okanovic@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF2BE00BB5; Fri, 11 Oct 2019 11:25:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
X-Greylist: delayed 7164 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Oct 2019 11:25:10 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69B0BE00B65
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 11:25:09 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9BGG2kb026048; Fri, 11 Oct 2019 11:25:43 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2verpv81p4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 11 Oct 2019 11:25:42 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com
	(us-aus-exhub1.ni.corp.natinst.com [130.164.68.41])
	by us-aus-skprod3.natinst.com (8.16.0.27/8.16.0.27) with ESMTPS id
	x9BGPf2r024347
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2019 11:25:41 -0500
Received: from us-aus-exch5.ni.corp.natinst.com (130.164.68.15) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server (TLS) id 15.0.1395.4; Fri, 11 Oct 2019 11:25:41 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch5.ni.corp.natinst.com (130.164.68.15) with Microsoft SMTP
	Server (TLS) id 15.0.1395.4; Fri, 11 Oct 2019 11:25:41 -0500
Received: from harisdt.amer.corp.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1395.4 via Frontend Transport; Fri, 11 Oct 2019 11:25:41 -0500
To: Alejandro Del Castillo <alejandro.delcastillo@ni.com>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, Ycn aKaJoseph
	<ycnakajsph@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
	<2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
From: Haris Okanovic <haris.okanovic@ni.com>
Message-ID: <dd7ef53d-2721-96b4-2c37-73019a247e90@ni.com>
Date: Fri, 11 Oct 2019 11:25:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-11_09:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
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
X-List-Received-Date: Fri, 11 Oct 2019 18:25:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I have no objection. Do you have a patch with this change?

-- Haris


On 10/11/19 10:54 AM, Alejandro Del Castillo wrote:
> 
> On 10/11/19 8:51 AM, Ycn aKaJoseph wrote:
>> Hi guys,
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528
>> <https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528__;!fqWJcnlTkjM!8RtsWJXbDz_l063ZSVKrRMwvQ5KGdD0lk9aSjlUW9VHM2wufITJnBuIvovQxoT0yJXu-6Q$>
>>
>> I'm about to work on that bug however most of the script in opkg-utils
>> dir are un-licenced and there's no hint for me to decide what SPDX
>> Identifier to add.
> 
> thanks for doing this!
> 
>> The doubt concerns those script :
>> makePackage
>> opkg-build
>> opkg-buildpackage
>> opkg-compare-indexes
>> opkg-diff
>> opkg-extract-file
>> opkg-graph-deps
>> opkg-list-fields
>> opkg-make-index
>> opkg-show-deps
>> opkg-unbuild
>> opkg-update-index
>>
>> What license do you want them to carry ?
> 
> Looking at the commit history, opkg-graph-deps was authored by Haris
> Okanovic, and the rest by Richard Purdie (included them on the thread).
> 
> My take on it:  since opkg is licensed as GPLv2+, and the files that
> have a license in opkg-utils are GPLv2+, make sense to me to license the
> rest as GPLv2+ too.
> 
> Haris, Richard, thoughts?
> 

