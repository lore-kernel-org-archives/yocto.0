Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6551E007A0; Mon, 15 Sep 2014 23:30:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED, RCVD_IN_DNSWL_LOW, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS,T_FSL_HELO_BARE_IP_2 autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ravikantsingh74[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FSL_HELO_BARE_IP_2 T_FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E688E00786
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 23:30:09 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XTmH6-0006pQ-PX
	for yocto@yoctoproject.org; Tue, 16 Sep 2014 08:30:05 +0200
Received: from 61.246.186.198 ([61.246.186.198])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 16 Sep 2014 08:30:04 +0200
Received: from ravikantsingh74 by 61.246.186.198 with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 16 Sep 2014 08:30:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ravikant <ravikantsingh74@gmail.com>
Date: Tue, 16 Sep 2014 06:24:03 +0000 (UTC)
Message-ID: <loom.20140916T081552-82@post.gmane.org>
References: <53E25433.5020003@dfki.de>
	<53E2572F.8020107@mlbassoc.com>	<53E3765A.10206@dfki.de>
	<53E379A8.9060108@mlbassoc.com> <53E4B764.4070702@dfki.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 61.246.186.198 (Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36
	(KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36)
Subject: Re: Building yocto for Odroid XU. No login after boot.
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
X-List-Received-Date: Tue, 16 Sep 2014 06:30:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello Markus,
I was going through the .bb files for odroid-3.8.y at the link given by 
you. It uses tools/hardkernel/genBscr.sh but somehow i am not able to 
find this file with the kernel code.
Can you please guide me on where to get this file and what it does? 
Just for trying i commented it out and in this case i get an error form 
do_deploy while executing copy for .scr files it does not find any .scr 
files. I am not sure if this problem is because of missing genBscr.sh.

Thanks a lot
Ravikant


