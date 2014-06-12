Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03250E00BC2; Thu, 12 Jun 2014 03:55:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (atul.singh008[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines *  1.2 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18750E00B74
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 03:55:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wv2ew-0004fC-Qy
	for yocto@yoctoproject.org; Thu, 12 Jun 2014 12:55:07 +0200
Received: from 115.113.150.100.static-pune.vsnl.net.in
	([115.113.150.100.static-pune.vsnl.net.in])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:55:06 +0200
Received: from atul.singh008 by 115.113.150.100.static-pune.vsnl.net.in with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:55:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: ATUL KUMAR SINGH <atul.singh008@gmail.com>
Date: Thu, 12 Jun 2014 10:48:03 +0000 (UTC)
Message-ID: <loom.20140612T124639-390@post.gmane.org>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E3646FC@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<CAJTo0LaJXHHWBwVRr88N22J7vqMGMQbyCBa1EVBqpA5d05QBjw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.113.150.100 (Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;
	Trident/5.0))
Subject: Re: Yocto-1.4 Build error.
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
X-List-Received-Date: Thu, 12 Jun 2014 10:55:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Burton, Ross <ross.burton@...> writes:

> 
> On 15 July 2013 13:38, Amit Kumar <Amit.Kumar@...> wrote:
> >     Failed to fetch test data from the network. Please ensure your 
network
> > is configured correctly.
> 
> Assuming that you did have network connectivity, then the problem
> normally is that you need to have a proxy configured in the terminal.
> Exporting http_proxy=http://my-proxy/ (obviously fix that) in the
> terminal should sort it.
> 
> Ross
> 

Hi Ross,

I tried to do so by exproting the proxy setting into terminal but nothing 
much happen as still i am seeing the error.

Thanks and regards,
ATUL KUMAR SINGH


