Return-Path: <Chris.Carr@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88CAEE00877; Tue,  7 Oct 2014 07:04:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: ge.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 364DEE00853
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 07:04:31 -0700 (PDT)
Received: from pps.filterd (m0048300.ppops.net [127.0.0.1])
	by m0048300.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s97E3w3b041190
	for <yocto@yoctoproject.org>; Tue, 7 Oct 2014 10:04:30 -0400
Received: from cinmlip10.e2k.ad.ge.com ([12.71.149.1])
	by m0048300.ppops.net-00176a03. with ESMTP id 1pvh4h80sk-21
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 10:04:30 -0400
Received: from unknown (HELO ALPMBHT01.e2k.ad.ge.com) ([3.159.19.194])
	by cinmlip10.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	07 Oct 2014 10:00:59 -0400
Received: from CINMBAPD03.e2k.ad.ge.com (3.159.212.69) by
	ALPMBHT01.e2k.ad.ge.com (3.159.19.194) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Tue, 7 Oct 2014 10:04:13 -0400
Received: from [3.26.68.158] (3.159.212.192) by CINMBAPD03.e2k.ad.ge.com
	(3.159.212.69) with Microsoft SMTP Server id 14.3.195.1; Tue, 7 Oct 2014
	10:04:12 -0400
Message-ID: <5433F2DA.60300@ge.com>
Date: Tue, 7 Oct 2014 15:04:10 +0100
From: "Carr, Chris (GE Intelligent Platforms)" <chris.carr@ge.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <542945DD.2010800@ge.com>
	<CAJTo0LYNSGpdRhh7qfjDjE_rJca80XgGJDmzpgpTQqFteit-3A@mail.gmail.com>
	<5433BE53.8000108@ge.com>
	<CAJTo0LYJz=9tB8cc_dTRAwusLny7UbvHsjkU0Z2fNUDDTsxQKw@mail.gmail.com>
In-Reply-To: <CAJTo0LYJz=9tB8cc_dTRAwusLny7UbvHsjkU0Z2fNUDDTsxQKw@mail.gmail.com>
X-Originating-IP: [3.159.212.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-10-07_05:2014-10-07, 2014-10-07,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1410070126
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issues removing RRECOMMENDS packages with BAD_RECOMMENDATIONS
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
X-List-Received-Date: Tue, 07 Oct 2014 14:04:35 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 07/10/2014 11:26, Burton, Ross wrote:
> On 7 October 2014 11:20, Carr, Chris (GE Intelligent Platforms)
> <chris.carr@ge.com> wrote:
>> I've switched over to the RPM package manager and rebuilt the deploy image.
>>
>> From the list that I had in BAD_RECOMMENDATIONS, none of the packages appear in the deploy image.
> 
> So we're found a difference in behaviour between the rpm and opkg
> backends.  Can you file a bug for the opkg backend in bugzilla?
> (oe-core->deployment).
> 
> Ross
> 

I've raised the bug in bugzilla.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6816

Chris

