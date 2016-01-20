Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 719F4E00BB7; Wed, 20 Jan 2016 09:15:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (deepak.mtech2006[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0010]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines *  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CBC6E00B83
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 09:15:06 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1aLwLX-0004cR-I6
	for yocto@yoctoproject.org; Wed, 20 Jan 2016 18:15:04 +0100
Received: from 51.17-broadband.acttv.in ([51.17-broadband.acttv.in])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 18:15:03 +0100
Received: from deepak.mtech2006 by 51.17-broadband.acttv.in with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 18:15:03 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: DEEPAK N PAWATE <deepak.mtech2006@gmail.com>
Date: Wed, 20 Jan 2016 17:11:50 +0000 (UTC)
Message-ID: <loom.20160120T173432-777@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 106.51.17.69 (Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36
	(KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36)
Subject: 2 step solution to ERROR: QA Issue: Files/directories were installed but not shipped
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
X-List-Received-Date: Wed, 20 Jan 2016 17:15:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Folks,

Below is the simple 2 step solution for 

ERROR: QA Issue: Files/directories were installed but not shipped

WARNING: QA Issue: Files/directories were installed but not shipped
  /usr/lib/lib-0.29/lib-gstreamer.so
  /usr/lib/lib-0.29/lib-multi.so
  /usr/lib/lib-0.29/lib-pulse.so

Problem statement:
Above error occurs during installation
This scenario happens when files have been installed but not shipped in 
any package

Solution:

Step1 :
Please open Bitbake.conf in meta/conf path:
when bitbake runs bitbake.conf is parsed. This file is present in 
meta/conf & includes config variables that are used in metadata, bb 
files.
Kindly go through this file to understand

Example :
export prefix = "/usr"
libdir = "${prefix}/lib"

Step 2:
Files that do not appear in any package such as 
directories/files in this path /usr/lib (as stated in error above)

Add the files to FILES to include in package

Open the meta files
example :
pulseaudio-meta.bb

Add  below line
FILES_${PN} += "${libdir}/*"

Hope it helped you to resolve the warning.
See you soon with more discussions on solutions.

Thank-you,

Regards,
Deepak


 

 


