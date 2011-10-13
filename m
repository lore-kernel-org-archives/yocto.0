Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC1DE012FD
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 08:34:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9DFYhP1028004
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 08:34:50 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 13 Oct 2011 08:34:48 -0700
Message-ID: <4E970517.9080207@windriver.com>
Date: Thu, 13 Oct 2011 10:34:47 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1318498649.1352.11.camel@localhost.localdomain>
In-Reply-To: <1318498649.1352.11.camel@localhost.localdomain>
Subject: Re: about symbol link of library
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
X-List-Received-Date: Thu, 13 Oct 2011 15:34:52 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/13/11 4:37 AM, Ni Qingliang wrote:
> hello all.
> 
> I have added 2 packages, one is lib, and the other is bin.
> 
> the lib will generate 2 files:
> 	libx.so.1.0.1
> 	libx.so -> libx.so.1.0.1
> the latter linked to the other one.
> 
> the bin package will link to the libx.so.
> 
> compile/install are all OK, but when populate rootfs, I got error:
> error: Failed dependencies:
> | 	libx.so is needed by bin......

I suspect your libx.so.1.0.1 is missing an SONAME.  One should be added to it
that matches the filename of the "real" library.  (It's possible that it has an
soname already, it just doesn't match the filename.)

Once that is done, then the dynamic linker should be able to find it w/o the
libx.so link.

(The links should only ever be used for development.  This is a somewhat common
bug, and a good way to find these problems.)

I'd also suggest we add a sanity check for this condition, so it will be easier
for people to identify in the future.

--Mark

> after checked the rpm, the libx.so is located in libx-dev, but not in
> libx.
> 
> what is the right way to resolve this problem?
> 
> 
> 
> 


