Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47F5AE00C22; Thu, 18 Feb 2016 02:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [108.163.201.230 listed in list.dnswl.org]
X-Greylist: delayed 66237 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Feb 2016 02:34:20 PST
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [108.163.201.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15A38E00C1C
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 02:34:20 -0800 (PST)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se2.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aW4gF-0002yC-UZ
	for yocto@yoctoproject.org; Wed, 17 Feb 2016 10:10:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=08YFyLjDMpX862jvdlKiIoNEa+iVO4NhDRi8bErInMU=; 
	b=h14yo41FN6uRVM4gniQQA+HwPxjCT4UU0BC9xhKyp1hMCEBiNYGlsYnVsqS835q0z4yc7CTZzSkSTY+RBHPe9ECTmuzeoldfeGbL3kWmJLbPsXt2DHWxJV7JOu8D4g0z7ZCV+P2OPzSkEObf7zRfQtcn9hcSFJwdevOpS1jhLYk=;
Received: from [127.0.0.1] (port=36270 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1aW4gD-0002t1-14; Wed, 17 Feb 2016 10:10:17 -0600
MIME-Version: 1.0
Date: Wed, 17 Feb 2016 10:10:16 -0600
From: gmane@reliableembeddedsystems.com
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3066941.Zu6KT7nLmM@peggleto-mobl.ger.corp.intel.com>
References: <b30acf5cbe7f661029158ab7e80a2ba4@reliableembeddedsystems.com>
	<CAJTo0LZmM_h3+KcuTeBPmwxGi0RiELLDcghrLhbDo7MEBiadTg@mail.gmail.com>
	<5c17683eb1b7ade5712032f603470aee@reliableembeddedsystems.com>
	<3066941.Zu6KT7nLmM@peggleto-mobl.ger.corp.intel.com>
Message-ID: <445e5a3625b0edb293ac3cb07da6728e@reliableembeddedsystems.com>
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
	8WfReHqUOdh1n/PPcFyFbPA+npozUehHFsrk+yhUB6M2CfxcqFgY3O1mYqB0B1z1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYmrveHWGqmrm
	KHH4pzVsBPjpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5FiJjFf1NgFCarWv3c1m+15y4
	+f2bl5T8yciCn5WQ8LLiTKlMEeT1N6wcSlD/nRGK6zJBq66m5xNeLi+XiDcbSiw=
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
X-SpamExperts-Outgoing-Evidence: Combined (0.19)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org, chris_larson@mentor.com
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
X-List-Received-Date: Thu, 18 Feb 2016 10:34:27 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-02-17 04:07, Paul Eggleton wrote:
> Hi Robert,
> 
> 
> If you want the complete list of packages you can only get it after a 
> recipe
> has been built, at which time oe-pkgdata-util can be used:
> 
> $ oe-pkgdata-util list-pkgs -p mtd-utils
> mtd-utils-jffs2
> mtd-utils-ubifs
> mtd-utils-misc
> mtd-utils-dbg
> mtd-utils-dev
> mtd-utils-doc
> mtd-utils
> 
> The reason this is only available after building (strictly speaking, 
> after
> do_packagedata has executed for the recipe in question) is that often 
> the list
> of packages isn't determined until then; for example, kernel module 
> packages
> are completely dynamic based on those modules that are enabled.
> 
> Cheers,
> Paul

Thanks.

So would something I hacked up quickly like this work?

test.sh:
-->
bitbake -s |  awk '{ print $1}' > test.txt
tail -n +6 test.txt > test1.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
     echo "-->"
     echo "oe-pkgdata-util list-pkgs -p $line"
     oe-pkgdata-util list-pkgs -p $line 2> /dev/null
     echo "<--"
done < test1.txt
<--

./test.sh | grep mtd
oe-pkgdata-util list-pkgs -p core-image-minimal-mtdutils
oe-pkgdata-util list-pkgs -p mtd-utils
mtd-utils-jffs2
mtd-utils-ubifs
mtd-utils-misc
mtd-utils-dbg
mtd-utils-dev
mtd-utils-doc
mtd-utils
oe-pkgdata-util list-pkgs -p mtd-utils-native
oe-pkgdata-util list-pkgs -p mtdev
mtdev-dbg
mtdev-staticdev
mtdev-dev
mtdev

> 
> PS if you wish to email me could you please use my email address rather 
> than
> the gmane alias you're currently using.

I'll try. Now I reply with your regular email (hoping gmane will not 
scramble it)

Regards,

Robert

