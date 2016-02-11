Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82C65E00BE1; Thu, 11 Feb 2016 04:10:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 04:10:01 PST
Received: from mailrelay8.public.one.com (mailrelay8.public.one.com
	[91.198.169.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FEEE00BC1
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 04:10:01 -0800 (PST)
X-HalOne-Cookie: ff2e8653bf94f3e6b1fed3250f7af40eb925daed
X-HalOne-ID: 3adef148-d0b8-11e5-882a-b82a72cffc46
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding;
	bh=sIv9paFf8cWoDVTlgGpgCT4iaXk8LbapBXQkclaLVh0=;
	b=J2amK6oLPAfO8Z0lWyxaT6s1ivxP94NAg2R1mivHp1yPhHAxzz8wWKD52jsreCsVcBroWrkiyzfP5
	cgEvFqlQmEMfEUTMh4zqjtqZUpcj9on5JaUS6368/UYUJcUSmHXoPRGo4Gd+rPnUlcleIJ7ogOvqdy
	67HvkHp05MprZfmk=
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter4.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 12:08:58 +0000 (UTC)
To: yocto@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <56BC79DB.6030108@visionweeding.com>
Date: Thu, 11 Feb 2016 13:08:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Adding SCM'ed files to image
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
X-List-Received-Date: Thu, 11 Feb 2016 12:10:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello world

I've been struggling a bit, but I'm sure there must be a generic 
solution to my problem (as a bbclass perhaps ??)

I'm building a bootable  image (NOT a distribution) for our product.

But I need a simple recipe to copy some files
I have a bunch of files (scripts, configuration files etc)  these files 
are under git control, I want the directory  structure in the 
repository, populated on to the image

so in my git I have something that could look  like this
.
├── bin
├── etc
│   └── file_in-etc
└── usr

I want it overlayed on the target image,

It proved surprisingly difficult when the files are not a precanned part 
of the recipe (in a files directory). the recipe doesn't know the dirs & 
files in advance.
I managed to get the structure  checked out in WORKDIR/git but getting 
from  her to  the image still troubles me


I'm sure somebody else had the same issues, but I can t find an elegant 
solution

any pointers will be highly appreciated

BR
-Lars









