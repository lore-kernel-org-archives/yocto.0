Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D77E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 10:37:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGIbeTs019737
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 10:37:40 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 10:37:40 -0800
Message-ID: <4EC402F3.9080201@windriver.com>
Date: Wed, 16 Nov 2011 12:37:39 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <DB6E482E89290547898851B8CC9D81108F6183B1@AUSX7MCPS302.AMER.DELL.COM>
	<1321412775.23774.26.camel@phenom.localdomain>
In-Reply-To: <1321412775.23774.26.camel@phenom.localdomain>
Subject: Re: rpm dependency errors
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
X-List-Received-Date: Wed, 16 Nov 2011 18:37:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/11 9:06 PM, Michael E Brown wrote:
> On Mon, 2011-11-14 at 22:16 -0600, Michael E Brown wrote:
>> I've now run across this same error in two different contexts, and am
>> having difficulty trying to figure out what is going on
>>
>> First, while building meta-toolchain-sdk, I ran into
>> http://pastebin.com/BT02UYk1
>>   ... cut ...
>> Processing task-core-standalone-gmae-sdk-target-dbg...
>> | error: Failed dependencies:
>> |       libgthread-2.0.so.0 is needed by libgupnp-1.0-3-0.16.1-r0.sh4
>> |       libresolv.so.2 is needed by libgupnp-1.0-3-0.16.1-r0.sh4
>>
>> I've confirmed that the libgupnp rpm has only SH4 binaries in it.
>>
>> Next, while building a custom image, I ran across the same error with
>> portmap and tcp-wrappers:
>>
>> http://pastebin.com/dRb5Dum8
>>
>> Note in the pastebin I extracted tcp-wrappers and 'file' says that
>> everything is SH4.
>
> As a bit more information, I found that when I changed to "package_ipk"
> vs rpm in my local.conf, I was able to do image build and sdk builds
> without incident. So this problem looks like something specific to rpm
> package builds. Is there any solution to this other than just not using
> rpm?

RPM packages contain more dependency information then ipk and deb packages. 
This is not a bug, but a feature.  When using RPM packages not only are 
specified dependencies there, but also soname and file level dependencies.

There is an outstanding item to add these soname and file level dependencies to 
the OE/Yocto deb and ipk implementations as well.

Trust me, if the dependency is failing, then there is something wrong with the 
packages or the binaries within the packages (or they're not compatible with the 
elfutils mechanisms used to dump that information.)

You really do need to understand the actual files present in the packages, and 
if they have the corresponding sonames that the dependent packages are looking for.

If you post your layer somewhere, I can attempt to reproduce the problem.

--Mark

> --
> Michael
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


