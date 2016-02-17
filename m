Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0F6FE00BEC; Wed, 17 Feb 2016 13:31:53 -0800 (PST)
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
X-Greylist: delayed 45839 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Feb 2016 13:31:52 PST
Received: from delivery.mailspamprotection.com (se6.mailspamprotection.com
	[184.154.208.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B006BE00BE8
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 13:31:52 -0800 (PST)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se6.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aVxly-0003ZU-Tw
	for yocto@yoctoproject.org; Wed, 17 Feb 2016 02:47:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=PzJGxVlaS/jgEo1NKkVL67s9ExhkfoPHa3f7z5iYLVM=; 
	b=ShYcxv/B6YXN5BD4FlpoO+4nUadOqPUjS6uwXnDevSA5KNWtgldz5YPRyQv1B2MmcXbcvPrK5pJ2Xw73gjaZJQEq1ono5hGD4hV7/4PG/rx9aH5HRvxnQUiYD9O+PEy38VViI2+8mr2r6dHrdga4ha5wG9zTB1MwC+NaYuD1FVs=;
Received: from [127.0.0.1] (port=33430 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aVxly-0004ig-O5; Wed, 17 Feb 2016 02:47:46 -0600
MIME-Version: 1.0
Date: Wed, 17 Feb 2016 02:47:46 -0600
From: gmane@reliableembeddedsystems.com
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZmM_h3+KcuTeBPmwxGi0RiELLDcghrLhbDo7MEBiadTg@mail.gmail.com>
References: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
	<CAJTo0LZmM_h3+KcuTeBPmwxGi0RiELLDcghrLhbDo7MEBiadTg@mail.gmail.com>
Message-ID: <5c17683eb1b7ade5712032f603470aee@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.0.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFx5Z0Z1fM3V1ybzJa0otFuKxLIpQ/m+46HHpcXaPFLQYFz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYjHZtDR7Y/yi
	4hpwgyWGGizpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5Fu7ODt3ZWKSlwFFSRWYcA9b9
	uQzoZXMNnvsWYS0rza4pKpG8n4qX1ZkqL2zzaUF3Wh14AWL8xY0r3d0M+h3FvS4=
X-Report-Abuse-To: spam@quarantine.mailspamprotection.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJb0kolOUiviGeQyDsBgQ6PBA3cTUQ1R++keuE7RDJ8Kg3RbMLUalw1oC
	mj99/u+Poh38tEMU4IgC4sNz49qn3HHnhRv/ZJ3kEy8bfiAr+Fb/UpndEJ0YoaLytXXo8BMTaX2p
	Mk7LBarWD9Fj4R3eIu5amSKkALoA6KDzkQ8jq89Qglr+eUaqsXi6ilYykBRNmy1w3rhXI7ypWHcC
	zReLskSoC1jzfYuYzO5TaopJL1l0EkXKTCB9mgAH2nNvM1GFDcH5C2MO7hTENZJE35bUvwA=
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.22)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org, chris_larson@mentor.com,
	paul.eggleton-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
Subject: Re: jethro 2.0.1/ubi-utils not installed on target
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
X-List-Received-Date: Wed, 17 Feb 2016 21:31:54 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2016-02-16 05:40, Burton, Ross wrote:
Hi,

> On 16 February 2016 at 09:03, <gmane@reliableembeddedsystems.com>
> wrote:
> 
>> It seems to be insufficient to add mtd-utils to a packagegroup[1]
>> and add this to the image for it to be installed in the image.
>> The package is being built and I can install it afterwards e.g.
>> opkg install mtd-utils-ubifs_1.5.1+git0+9f107132a6-r0_armv7a
>> 
>> Is it intended to be like this?
> 
> Yes.  As you said the resulting package is called mtd-utils-ubifs, so
> that's the name you need to use in the packagegroup.

Thanks. I figured this out in the meantime;)

I looked into mtd-utils.bb and the packages built where I found 
mtd-utils-ubifs, which does not seem a very generic approach.

One recipe can result in more than one packages, so

-s, --show-versions   Show current and preferred versions of all 
recipes.

does not show all packages.

> bitbake -s | grep mtd
core-image-minimal-mtdutils                           :1.0-r0
mtd-utils                           :1.5.1+gitAUTOINC+9f107132a6-r0
mtd-utils-native                    :1.5.1+gitAUTOINC+9f107132a6-r0
mtdev                                               :1.1.5-r0

How can I get a list of all available packages? Maybe there are more 
hidden secrets;)

What I've found so far is[1], but still I don't get the complete list of 
available packages:

bb search-packages mtd
Parsing recipes..done.
Gathering preferred recipe filenames...done
core-image-minimal-mtdutils:
   Packages:
     core-image-minimal-mtdutils
mtd-utils-native:
   Packages:
     mtd-utils-native
mtd-utils:
   Packages:
     mtd-utils-misc
     mtd-utils-doc
     mtd-utils-jffs2
     mtd-utils-ubifs
     mtd-utils-staticdev
     mtd-utils-dev
     mtd-utils-locale
     mtd-utils
     mtd-utils-dbg
mtdev:
   Packages:
     mtdev-locale
     mtdev-dbg
     mtdev-staticdev
     mtdev-doc
     mtdev
     mtdev-dev

[1] https://github.com/kergoth/bb

> 
> Ross

Regards,

Robert

