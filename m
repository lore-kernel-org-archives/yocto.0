Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48EC6E00CD8; Thu,  8 Oct 2015 08:46:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361DBE00C29
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 08:46:21 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZkDOc-0003yT-Fp
	for yocto@yoctoproject.org; Thu, 08 Oct 2015 17:46:18 +0200
Received: from 178.128.198.19.dsl.dyn.forthnet.gr ([178.128.198.19])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 17:46:18 +0200
Received: from gmane by 178.128.198.19.dsl.dyn.forthnet.gr with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 17:46:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 08 Oct 2015 18:46:06 +0300
Message-ID: <56168FBE.7010209@reliableembeddedsystems.com>
References: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 178.128.198.19.dsl.dyn.forthnet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
Subject: Re: can any one please tell the difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Thu, 08 Oct 2015 15:46:23 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/07/2015 09:10 AM, Vivek Per wrote:
> Hi,
>      Can any one please tell the what is the exact difference between
> DEPENDS and RDEPENDS . 

DEPENDS:
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DEPENDS

RDEPENDS:
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-RDEPENDS

> I am not able to get it . How these variables are
> exactly parsed.
> 

Do you need more info?

> 
> regards
> vivek
> 
> 
> -- 
> 

Regards,

Robert


...No matter what the problem is,it's always a people problem.- Jerry
Weinberg

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



