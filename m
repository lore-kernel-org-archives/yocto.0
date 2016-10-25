Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22F04E009F0; Tue, 25 Oct 2016 06:34:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8745E009B1
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 06:34:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9PDY9sc013840
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 25 Oct 2016 06:34:09 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 25 Oct 2016 06:34:08 -0700
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, "Bipnesh, Abhinav
	(Abhinav)" <abhinavbipnesh@avaya.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
	<313b3229-3de6-63d9-5782-cb238b922bd5@linux.intel.com>
	<F38A866CD026F746A3BF0928A84397BE3E7DC7BB@AZ-FFEXMB01.global.avaya.com>
	<ceae93d6-de2f-8871-e0ed-8c832d52adc4@linux.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <ca42020d-895f-4798-31c1-ce8532f2d75c@windriver.com>
Date: Tue, 25 Oct 2016 08:34:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <ceae93d6-de2f-8871-e0ed-8c832d52adc4@linux.intel.com>
Subject: Re: Requires section of RPM Spec
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
X-List-Received-Date: Tue, 25 Oct 2016 13:34:16 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/25/16 6:49 AM, Alexander Kanavin wrote:
> On 10/25/2016 02:42 PM, Bipnesh, Abhinav (Abhinav) wrote:
>> Basically when we try to install these package on the image using RPM
>> package management i.e. rpm -ivh <package name> the dependency checks
>> fails as the rootfs doesn't contain RPM database from where the check
>> be made. So below is sample output
> 
> If the image doesn't have the RPM database, then you should not use rpm 
> at all. Add the package to your image during image creation, for example 
> like this:
> 
> IMAGE_INSTALL_append = " <package>"
> 
> Or you can enable the rpm database on the image by adding 
> 'package-management' to your IMAGE_FEATURES.

Alternatively if you want to use 'rpm' as a container, but have no database on
the target.  Use 'rpm2cpio <package> | cpio -id' to extract it.

But if you do want to use rpm, it's best to enable 'package-management' if you
intend to install packages onto the target.

--Mark

> Alex
> 


