Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC300E0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 13:17:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBFLHbc4003214
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 13:17:37 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 15 Dec 2011 13:17:36 -0800
Message-ID: <4EEA63F0.4000000@windriver.com>
Date: Thu, 15 Dec 2011 15:17:36 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: prelink-cross project update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Dec 2011 21:17:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

A new version of the prelink-cross has been pushed to the repository.

There are no upstream changes to the main prelink component, all changes are 
specific to the cross functionality.  Below is the Changelog:

2011-12-08  Mark Hatle <mark.hatle@windriver.com>
         * rtld/rtld.c: Fix an issue where missing objects would trigger
           an assert in dl-version.c
         * rtld/rtld.h: Add _dl_new_object prototype
         * rtld/rtld.c: Add support for $ORIGIN, $PLATFORM and $LIB.
           Note: $PLATFORM = ""

