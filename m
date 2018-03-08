Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7472E00DFB; Thu,  8 Mar 2018 13:17:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80B1E00D91
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 13:17:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w28LGtCD008852
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 8 Mar 2018 13:17:10 -0800
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 8 Mar 2018 13:16:10 -0800
To: <yocto@yoctoproject.org>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <4e5155da-e5fa-e19e-969f-bed685faa3e8@windriver.com>
Date: Thu, 8 Mar 2018 15:16:44 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Thu, 08 Mar 2018 21:17:22 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/8/18 3:00 PM, Marcelo E. Magallon wrote:
> Sorry to go off on a tangent:
> 
> On Fri, Mar 04, 2016 at 04:12:54PM -0800, robert_joslyn@selinc.com wrote:
> 
>>>> root@test:~# btrfs scrub start /
>>>> scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd
>> (pid=333)
>>>> libgcc_s.so.1 must be installed for pthread_cancel to work
>>>>
>>>> I can solve this by adding libgcc to RDEPENDS for btrfs-tools.
> 
> I ran into the same thing with my device, different package. I 
> don't understand the fix:
> 
>> Signed-off-by: Robert Joslyn <robert_joslyn@selinc.com>
>> ---
>> diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>> b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>> index 37c622b..cc2ccfc 100644
>> --- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>> +++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>> @@ -11,6 +11,7 @@ LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=fcb02dc552a041dee27e4b85c7396067"
>> SECTION = "base"
>> DEPENDS = "util-linux attr e2fsprogs lzo acl"
>> +RDEPENDS_${PN} = "libgcc"
> 
> What is this doing?
> 
> My understanding until a couple of days ago is that this will 
> simply pull the "libgcc" package into the image, add a dependency 
> in the binary package and NOTHING more. It won't change the way 
> binaries are linked, it won't change flags passed to the 
> compiler, etc.
> 
> I'm confused because in my case libgcc_s.so.1 is already in the 
> image, before this change, but this change seems to be fixing the 
> issue, and I don't understand why.

RDEPENDS are automatically promoted to DEPENDS (build-time).  I would normally
expect libgcc_s.so.1 to be present via the typical default depends.  Does your
recipe have an INHIBIT_DEFAULT_DEPENDS (I think that is it?) defined?  If so,
you would need to manually add all build dependencies then.

An executable or library with a stated library dependency (soname) will
automatically get an RDEPENDS.  The only time you should have to do an
RDEPENDS_${PN} of a library is when that library is 'dlopened'.  (This is the
case for things like pam modules.)

--Mark

> Any clues?
> 
> Thanks!
> 
> Marcelo
> 


