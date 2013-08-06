Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34E5CE0156E
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 05:50:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r76CoVAE004236
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 6 Aug 2013 05:50:31 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 6 Aug 2013 05:50:31 -0700
Message-ID: <5200F116.2010108@windriver.com>
Date: Tue, 6 Aug 2013 07:50:30 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <87iozjfe3p.fsf@endian.com> <1711663.0D350BQnql@helios>
In-Reply-To: <1711663.0D350BQnql@helios>
Subject: Re: Package specific version dependencies
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
X-List-Received-Date: Tue, 06 Aug 2013 12:50:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/6/13 4:07 AM, Paul Eggleton wrote:
> Hi Francesco,
>
> On Tuesday 06 August 2013 09:55:06 Francesco Del Degan wrote:
>> Playing with RDEPENDS variable i'm facing the needs to
>> specify a dependency based on specific version of a package
>> (greather than, in my specific case).
>>
>> The underlying package managers supports declaring dependencies
>> including version relationships, for example:
>>
>> Rpm:  Requires: package_xxx >= 1.0.27
>> Deb:  Depends: libc6 (>= 2.2.1)
>> Okpg: Depends: xfree (>= 6.0), glib2
>>
>> Is this feature just missing in yocto or it's explicitly denied
>> for some reason?
>
> This should work, in fact we use it (with =) in conjunction with EXTENDPKGV
> when we want to force packages from the same recipe to upgrade in lock-step.

The format for RDEPENDS is slightly different from all three.

dep (= ver)
dep (< ver)
dep (> ver)
dep (<= ver)
dep (>= ver)

(For those familiar with deb style, >> and << is not supported by the oe-core 
dependency set.  This is to avoid confusion as > and < are a lot more obvious.)

The items above are then mapped into their respective format depending on the 
package manager you have selected.

Note:  The version dependency items are not evaluated by bitbake, it only pays 
attention to the package name when determining build dependencies.  You would 
also need to specify (in your distribution or local .conf file) a 
PREFERRED_VERSION_dep = "ver" to ensure the right version is built.

--Mark

> Have you tried adding these specifications to an RDEPENDS value?
>
> Cheers,
> Paul
>


