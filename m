Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B766E00B18; Fri, 16 Jun 2017 03:53:42 -0700 (PDT)
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
	*      [108.163.243.190 listed in list.dnswl.org]
X-Greylist: delayed 6850 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Jun 2017 03:53:38 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [108.163.243.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB72E009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 03:53:38 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se7.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dLn6D-0007hW-SQ
	for yocto@yoctoproject.org; Fri, 16 Jun 2017 03:59:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=4oT2z+2JlfT2GVDNmv29p2rzjVgQWnDHkOtGPWq6JBc=;
	b=tlXtpvboqy5Qi9/EjTRuKfKTvb
	fhgGwObSCOG5xGLLBczUSlEP/+Ra/o6/3EKoaPp1TVIWXFe/3KynuS7kRPZIbVAEJp6+Sl89XhAVT
	LTtMWIq+8HE2Z2SPjrt8ttvZ4VMBPpiVq3Wgg5PWJ5U+rgP8ZtSEnfT+W/EhQD/rOwus=; 
Received: from [127.0.0.1] (port=41080 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dLn6D-0004R1-KN
	for yocto@yoctoproject.org; Fri, 16 Jun 2017 03:59:25 -0500
MIME-Version: 1.0
Date: Fri, 16 Jun 2017 03:59:22 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <fff9a0ea0d8fad1a87f7b225d156247f@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.2.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.24)
X-Recommended-Action: accept
X-Filter-ID: PqwsvolAWURa0gwxuN3S5YEa3T7JuZT23fGO2rGt3ZiyjRQMq/9i4iWHcjs8RzD2aGtE0dfAIfYa
	Qvus/y73JeY+cOwWH6M1dCDk1AASqMkRFZ4oobg8BBg3Jq+ntzj0X68zEnbGnvrYdyQzqDJ0j6O3
	1+J8jV5SV1jCgFpVQTz560jdfdOSNZfLpLc5iXoUgjDPqyJRXXYYqhcH/uWBpMH2GLXHHHdbLYXg
	Zazxi+SikH7bWdTVCUXFsfolkZGHwJIARfsyqhSKUBAZBC1HAOFVQ95PAtIuOIMddq3XEhGFCKls
	by0IAmLjJ21medzN17NirEYyqwqMBGrw8ELiqGK0YZEa2I47p7r3S27A7c4E/Xy9bqh2t87xwDNJ
	1ZQnSb/5IXQq2Zh5neD9Z1tSvXmNepvn4Y9+GT3fA0nP6C8LoA0p3Dy4TftU1Qe9fHxy2pp4m/V+
	0PUzdn4O8oTHMMMAyRiA5MaFxW2w11OjRY6V55pJITqQaEWLkQbszDeZp7FiDM3ZqWvUJ2i/D6oV
	CUfVaxoYA7Jgbd9maoZfKEyVHp12fC4f9WMDnucWwvt4U/60dZdcvfW+lwlA6+GfmQugDSncPLhN
	+1TVB718fHIuoIA4xfyWGgPeUeM9Wgvzsi7X4v6Jh66A1fDg93ihVhcq7VVuCmkUlEahcsQPuYfR
	gEMC/kY0h+kdERoQ0yFbO3Dsock/nYDYOg1tEuSdcQEiRQv+PVjjwa+Z5RFCOMT4na2y9hQ3oOfu
	yUZqJiuouyFVyE6T4damSOOkc9derIKfdeiwn3pc/ih8yIg++NQjKSrtmIlfFj7689xuMnI8KSfY
	LT0TB+P1fKhgD5IPZs+36zB7DT0cpWAJD72NR7bUDhfdParZHEW77nGASHP0oXE5du/NcrbDfz2u
	JkH4leewTxQljgjmqg2sMaC0hnn2OKHH5lr9xXvSM4nM3avg
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Fri, 16 Jun 2017 10:53:42 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2017-06-15 17:52, Thomas A. F. Thorne MEng AUS MIET wrote:
> Good afternoon,
> 
> I am putting together a meta-company-name layer to hold some internal
> code.  This will contain a few BSPs for our units, some internally
> developed applications and a few config file patches.  I am having
> trouble getting recipes to be related to the proprietary license.
> 

I am doing something very similar which seems to work:

1) I create a custom-licenses dir in my layer which contains custom 
licenses

2) add custom license path to layer.conf:
LICENSE_PATH += " ${LAYERDIR}/custom-licenses"

3) In the recipe I do this:
LICENSE = "hello-license"
LIC_FILES_CHKSUM = 
"file://${THISDIR}/../../custom-licenses/hello-license;beginline=5;endline=12;md5=36e6988a930e054886e6af19372edb07"

But I don't think that the beginline,endline makes a difference.

Can you try pointing at ${THISIR}/../../<where ever your custom-licenses 
dir is> and see if this makes any difference?

> ERROR: recipe-0.1-r0 do_configure: QA Issue: recipe: LIC_FILES_CHKSUM
> points to an invalid file:
> /home/thomasthorne/work/yocto/build-lib/tmp/work/all-poky-linux/recipe/0.1-r0/companyname
> [license-checksum]

Regards,

Robert

