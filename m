Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A86E7E008F6; Wed, 25 Mar 2015 10:31:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61044E008CF
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 10:31:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2PHVDKn009906
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Mar 2015 10:31:13 -0700 (PDT)
Received: from msp-dhcp8.wrs.com (172.25.34.8) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 25 Mar 2015 10:31:13 -0700
Message-ID: <5512F0DF.5030203@windriver.com>
Date: Wed, 25 Mar 2015 12:31:11 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Victor Rodriguez <vm.rod25@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
In-Reply-To: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
Subject: Re: GCC 4.9 to 5.0
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
X-List-Received-Date: Wed, 25 Mar 2015 17:31:19 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/25/15 11:28 AM, Victor Rodriguez wrote:
> HI everyone
> 
> Does anybody knows if there is a best known method/plan/test suite for
> moving from one version of gcc to another ?

Use the dejagnu test suite and other tests built into gcc, glibc, gdb, binutils,
and the prelinker..  (I've found the prelinker test suites sometime find obscure
issues relating to elf section handling.)

If those all pass, then most likely what you've done is in reasonably good shape.

--Mark

> I am in the middle of that painful task and wonder if yocto community
> has a plan every time yocto do this switch
> 
> Thanks a lot for all the help
> 
> Regards
> 
> Victor Rodriguez
> 


