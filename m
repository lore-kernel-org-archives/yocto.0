Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4952E013FC
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:25:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3BFPgJW012788
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Apr 2012 08:25:42 -0700 (PDT)
Received: from msp-dhcp19.wrs.com (172.25.34.19) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Apr 2012 08:25:41 -0700
Message-ID: <4F85A274.8010906@windriver.com>
Date: Wed, 11 Apr 2012 10:25:40 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <1334157278.27917.25.camel@dongxiao-osel>
In-Reply-To: <1334157278.27917.25.camel@dongxiao-osel>
Cc: yocto <yocto@yoctoproject.org>,
	"scott.a.garman@intel.com" <scott.a.garman@intel.com>
Subject: Re: Installation order question with RPM backend
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
X-List-Received-Date: Wed, 11 Apr 2012 15:25:42 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/11/12 10:14 AM, Xu, Dongxiao wrote:
> Hi Mark,
>
> I met a strange issue while using RPM to generate the rootfs.
>
> In the installation list, if we have 2 RPM packages, say A.rpm and
> B.rpm. package A RDEPENDS on package B. While installing the two
> packages? Does RPM ensures to install B first and then install A?
>
> The real issue is: we have certain packages that need to run
> useradd/groupadd at rootfs time, for example, the dbus. However the
> useradd/groupadd bbclass RDEPENDS on base-files, which provides
> the /etc/group file. While installing the final image, sometimes we saw
> it installs dbus firstly and then base-files, causing the
> useradd/groupadd script error since it could not find /etc/group file.

it does enforce install order, however the /etc/group, /etc/passwd files (last 
time I checked) were being put into place by the post install scripts.  The 
scripting order is handled somewhat independently of the package install order. 
  (post install scripts get delayed intentionally for performance reasons. 
There is a way to hint a dependency for them as well...)

The passwd/group files are fairly unique files, and generally are installed 
-first- (individually) before any other packages on most RPM installations. 
After that the methods and install ordering works...

--Mark

> I tried ipk and it doesn't have problem since it ensures to install
> base-files firstly.
>
> Any comment is welcome.
>
> Thanks,
> Dongxiao
>


