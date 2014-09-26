Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75873E00781; Fri, 26 Sep 2014 07:03:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395B2E0056A
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 07:03:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s8QE3ANR007416
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 07:03:10 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 26 Sep 2014 07:03:09 -0700
Message-ID: <5425721C.4000008@windriver.com>
Date: Fri, 26 Sep 2014 09:03:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>	<CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>	<54249BD8.1030702@windriver.com>	<CAJTo0LZGT0ogEA-PDfZOYVznJew0BP069d=_UU75qX-z2pPSyg@mail.gmail.com>
	<CALNVO6bKcz5f_nhK_vYqC83z4_cw4W=L3FYVL7oOenY6PhCQog@mail.gmail.com>
In-Reply-To: <CALNVO6bKcz5f_nhK_vYqC83z4_cw4W=L3FYVL7oOenY6PhCQog@mail.gmail.com>
Subject: Re: [OE-core] [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Fri, 26 Sep 2014 14:03:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/25/14, 10:00 PM, Francesco Del Degan wrote:
> Yes, patch 026 that fixes CVE-2014-7169 is underway, should be pushed out today:
>
> http://www.openwall.com/lists/oss-security/2014/09/26/1
>
> bash-4.2 (as in dora) got patch048 for CVE-2014-6179 and should receive patch049
> as well.
>
> I'm going to send bash 3.2 and 4.2  patches in oe core ml.

There are two additional issues as well.

CVE-2014-7186 - bash: parser can allow out-of-bounds memory access while
handling redir_stack

CVE-2014-7187 - bash: off-by-one error in deeply nested flow control constructs

(The above two are so new they are not yet published on the CVE web sites.)

A patch for these has been posted to the oss-security list, but has not yet been 
validated by the bash maintainer.

We'll need to watch for this as well.

--Mark

>
> On Fri, Sep 26, 2014 at 1:15 AM, Burton, Ross <ross.burton@intel.com
> <mailto:ross.burton@intel.com>> wrote:
>
>     On 25 September 2014 23:48, Mark Hatle <mark.hatle@windriver.com
>     <mailto:mark.hatle@windriver.com>> wrote:
>     > So I would recommend that someone get the 025 patch (don't forget to patch
>     > bash 3.2 as well) in.. and we should wait until their is an official one for
>     > 7169.
>
>     Agreed, and patches sent.
>
>     Ross
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> --
> :: e n d i a n
> :: security with passion
>
> :: Francesco Del Degan
> :: software engineer
> :: http://www.endian.com <http://www.endian.com/>  :: f.deldegan (AT) endian.com
> <http://endian.com/>
>
>


