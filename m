Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7477AE0073A; Fri, 23 May 2014 11:44:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.191 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 May 2014 11:44:03 PDT
Received: from fallback-in2.mxes.net (unknown [216.86.168.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15FE9E00716
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 11:44:03 -0700 (PDT)
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by fallback-in1.mxes.net (Postfix) with ESMTP id 332F22FD7D2
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 14:38:04 -0400 (EDT)
Received: from [192.168.0.11] (unknown [50.52.13.108])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id CDA96509B8
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 14:38:00 -0400 (EDT)
Message-ID: <537F9583.50407@bsmucker.eu.org>
Date: Fri, 23 May 2014 11:37:55 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Yocto with Initial RamFS
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
X-List-Received-Date: Fri, 23 May 2014 18:44:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have an initial ramfs image that I want to convert to Yocto. That is 
in addition to the main yocto-based custom distro.

The initial ram fs is a tiny image based on uclibc (poky-tiny) and 
having busybox and two other compiled apps.  The main file system is 
eglibc-based.

How is this sort of thing typically done in the Yocto world?  Since the 
toolchain is totally different for the initial ramfs, do I need to have 
another distro and totally different directory for creating the 
initialramfs, giving two different distros and yocto directories?  Or 
can I somehow do it under the umbrella of one Yocto distro?

I would like some feedback on how this should be done.

Thanks,

Brian

