Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81BB04C801D0
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 18:02:24 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5SN2NYw005646
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 16:02:23 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 28 Jun 2011 16:02:23 -0700
Message-ID: <4E0A5D7E.4040901@windriver.com>
Date: Tue, 28 Jun 2011 18:02:22 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
	<1309301423.20015.325.camel@rex>
In-Reply-To: <1309301423.20015.325.camel@rex>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my build
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
X-List-Received-Date: Tue, 28 Jun 2011 23:02:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/28/11 5:50 PM, Richard Purdie wrote:
> On Tue, 2011-06-28 at 18:29 +0100, O'donoghue, Bryan wrote:
>> ASSUME_PROVIDED += "m4-native tcl-native gettext-native libtool-native
>> quilt-native autoconf-native automake-native perl-native
>> sqlite3-native tar-replacement-native pseudo-native"
> 
> I don't know about the pseudo issue, the system really wasn't designed
> to allow for a system provided pseudo since few systems would actually
> have that.

pseudo is expected to be built for each build directory and each host system.
It's a VERY small binary so it should be quick... (you may be required to have
sqlite3 from the build though, the problem you have might simply be you can't
use the "host" version for pseudo.... this could be an enhancement request.)

We build pseudo for every host / build directory, because it has to learn the
system capabilities, and specifically the glibc capabilities in order to
determine what functions to intercept.  Unfortunately different versions of
glibc require slightly different intercepting code.

> I'm almost certain you're going to hit issues with the line above from
> perl-native, libtool-native and autoconf-native and automake-native
> though as you won't have key patches applied.
> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


