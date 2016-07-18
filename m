Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64567E00D43; Mon, 18 Jul 2016 11:25:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FORGED_YAHOO_RCVD, FREEMAIL_FROM, NML_ADSP_CUSTOM_MED, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adnan_199[at]yahoo.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.6 FORGED_YAHOO_RCVD 'From' yahoo.com does not match 'Received'
	headers
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2858DE00D3F
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2016 11:25:16 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bPDE1-0004bS-PQ
	for yocto@yoctoproject.org; Mon, 18 Jul 2016 20:25:05 +0200
Received: from 91-118-92-18.static.inode.at ([91.118.92.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2016 20:25:05 +0200
Received: from adnan_199 by 91-118-92-18.static.inode.at with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2016 20:25:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: adnan <adnan_199@yahoo.com>
Date: Mon, 18 Jul 2016 16:39:57 +0000 (UTC)
Message-ID: <loom.20160718T183807-608@post.gmane.org>
References: <536A5249.9030907@galauner.de> <536A8B5E.2080409@windriver.com>
	<536B8B40.8060008@galauner.de> <536BA000.9030608@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 91.118.92.18 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75
	Safari/537.36)
Subject: Re: linux-yocto custom device tree in overlay
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
X-List-Received-Date: Mon, 18 Jul 2016 18:25:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Bruce Ashfield <bruce.ashfield@...> writes:

> 
> On 14-05-08 09:48 AM, Andreas Galauner wrote:
> > On 07/05/14 21:37, Bruce Ashfield wrote:
> >> So you can either patch it into the kernel, or do a bbappend with
> >> that copies it into the source tree
> >> (linux/arch/arm/boot/dts/mydevicetree.dts).
> >
> > Thx! That worked fine.
> 
> Glad to hear!
> 
> Bruce
> 
> >
> > For reference, this is what I added:
> >> do_install_prepend() {
> >> 	cp ${WORKDIR}/*.dts ${WORKDIR}/linux/arch/${ARCH}/boot/dts/
> >> }
> >
> > Cheers,
> > - Andy
> >
> 


Hi,
I am running into the same problem. Editing the existing dts files in 
the kernel source directory does not help. After some time, the files 
are restored again.

I added my own dts file which is located at a different location but the 
method you mentioned is not clear to me. Could you please specify where 
did you add this? In which file?

Thanks in advance.
Adnan


