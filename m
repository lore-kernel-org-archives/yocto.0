Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B89A9E00F08; Fri, 25 Sep 2015 07:20:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davewolaver[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521F4E007C9
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 07:20:07 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZfTr1-0006i0-Cd
	for yocto@yoctoproject.org; Fri, 25 Sep 2015 16:20:03 +0200
Received: from c-76-109-88-21.hsd1.fl.comcast.net ([76.109.88.21])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 16:20:03 +0200
Received: from davewolaver by c-76-109-88-21.hsd1.fl.comcast.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 16:20:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Dave Wolaver <davewolaver@gmail.com>
Date: Fri, 25 Sep 2015 14:12:05 +0000 (UTC)
Message-ID: <loom.20150925T160727-227@post.gmane.org>
References: <55ECF934.80902@gmail.com>
	<31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
	<55ED3F5A.2060903@gmail.com>
	<DBXPR03MB1588505B5901171124C0CFAEE530@DBXPR03MB158.eurprd03.prod.outlook.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 76.109.88.21 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99
	Safari/537.36)
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Fri, 25 Sep 2015 14:20:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Michael Fainstein <Michael.Fainstein@...> writes:

> 
> I saw such behavior in 'expr' when I upgraded bash 3.1 - it started 
printing floats instead of integers.
> You can solve it using awk's OFMT:  awk '{OFMT="%.0f";print $1}'
> 
> Michael
> 


This worked for me, but it needed one small tweak... Need to add +0 so 
that awk actually applies the format.

You can solve it using awk's OFMT:  awk '{OFMT="%.0f";print $1+0}'

Thanks Michael!




