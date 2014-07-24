Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46667E0078E; Thu, 24 Jul 2014 02:25:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_NONE, 
	RCVD_NUMERIC_HELO,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (babu.anoop[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.0 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08BF9E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 02:25:46 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XAFHS-00034H-6c
	for yocto@yoctoproject.org; Thu, 24 Jul 2014 11:25:42 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 11:25:42 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 11:25:42 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Thu, 24 Jul 2014 09:25:32 +0000 (UTC)
Message-ID: <loom.20140724T110713-636@post.gmane.org>
References: <loom.20140724T085712-749@post.gmane.org>
	<CAJTo0La0Gt-WarVLGDrbE67KD23AK-U9eR4pG1vAGpjNc5CxQQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153
	Safari/537.36)
Subject: Re: Bitbake error for elfutils-native
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
X-List-Received-Date: Thu, 24 Jul 2014 09:25:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Burton, Ross <ross.burton@...> writes:

> 
> On 24 July 2014 08:05, Anoop <babu.anoop@...> wrote:
> > Patch redhat-portability.diff does not apply (enforce with -f)
> 
> Please update your poky, this has been fixed already and the
> meta-tizen fork of Poky has already integrated this fix.
> 
> (poky commit 52a6d20519870103134166d91e22d21fd736195d)
> 
> Ross

Ross
many thanks for the valuable input.
I had been building tizen with yocto based on the following link.

https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto

For poky it is mentioned to use
git clone https://github.com/eurogiciel-oss/poky.git

I think the redhat-portability.diff file in the path 
/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils-0.158
as well as
/home/sfm/yocto_temp/poky/meta/recipes-devtools/elfutils/elfutils
might not have been updated based on the poky commit 
52a6d20519870103134166d91e22d21fd736195d.



