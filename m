Return-Path: <wd@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE739E00B70; Wed, 21 May 2014 05:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 457 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 05:41:14 PDT
Received: from mail-out.m-online.net (unknown [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF0EE00AFD
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 05:41:14 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3gYYKX3wnGz3hhgV
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 14:33:36 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3gYYKW6YwczbbrM
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 14:33:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id uLvlKApnUHex for <yocto@yoctoproject.org>;
	Wed, 21 May 2014 14:33:34 +0200 (CEST)
X-Auth-Info: lPQQIVuKY/H+Dhl+8RQktp/tDREzLOc40Hbc9nKSX7I=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 14:33:34 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 6E4281AAA77
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 14:33:34 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 3B0AA3803F4
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 14:33:34 +0200 (MEST)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Wed, 21 May 2014 14:33:34 +0200
Message-Id: <20140521123334.3B0AA3803F4@gemini.denx.de>
Subject: kernel-yocto.bbclass ignoring SRCREV?
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
X-List-Received-Date: Wed, 21 May 2014 12:41:17 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hi,

is my understanding of kernel-yocto.bbclass correct that it
effectively completely ignores any specific git commit ID that was
gien in SRCREV, but instead always checks out and uses the HEAD of the
respective branch?

Or am I missing something here?  My expectation was that we specify a
git commit ID (as the only reliable, truly unique identifier for a
specific source code version) in SRCREV, but instead it appears that
this information is effectively being ignored?

I can understand that there are situations where automatically using
the top commit of a branch (say, the latest stable version of some
package) may be useful, but should there not be some different way to
do that?

I mean, how can we make sure to ever be able to reproduce the very
same build if the git commit ID specified in SRCREV will not be used
for the checkout?

Thanks in advance.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"More software projects have gone awry for lack of calendar time than
for all other causes combined."
                         - Fred Brooks, Jr., _The Mythical Man Month_

