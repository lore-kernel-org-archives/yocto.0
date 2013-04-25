Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23B77E013C3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 15:28:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3PMSdel024905
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 15:28:39 -0700 (PDT)
Received: from msp-dhcp5.wrs.com (172.25.34.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 25 Apr 2013 15:28:39 -0700
Message-ID: <5179AE16.5070201@windriver.com>
Date: Thu, 25 Apr 2013 17:28:38 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
In-Reply-To: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
Subject: Re: Compliance program questions
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
X-List-Received-Date: Thu, 25 Apr 2013 22:28:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/25/13 10:36 AM, Nicolas Dechesne wrote:
> Hi there,
>
> I have a couple of questions regarding the compliance program. If
> there is a better place for asking such questions, please let me know.
>
> I have studied the Yocto compliance documentation, [1] on the website,
> and I have the following questions:

Below are my opinions, but I've been working on compliance issues for a while on 
our products.

>   - is there any 'practical' guide with "do's and don'ts" to help make
> a sucessful Yocto Project Compatible registration?

There probably should be.  I see Jeffro has already responded about this.

>   - i understand that while the project should build with the OE core
> toolchain, it is not required to use the OE core toolchain 'by
> default', so we should be able to provide our own modified/customized
> toolchain in our layers, is my understanding correct?

The intention is that you aren't doing anything that will make it difficult to 
work with the oe-core toolchain.  But we understand that new architectures may 
require a custom toolchain.  Also custom toolchains may be provided by the 
vendor for optimization and other reasons.  When I do my testing my rule is, 
everything must build with the oe-core toolchain, unless it's not implemented or 
has the same bug in the community.  (Not implemented is the case where an 
optimization or architecture doesn't existing in oe-core.)

>   - it is recommended, but not mandatory not use the Yocto kernel, so
> we can use any mainline version in our BSP layers, right?

You can, but I've been told this is in the process of being revised.  The reason 
for using the Yocto Project kernel is that it provides a common foundation for 
YP participants.  This common foundation should allow people familiar with the 
kernel tooling to make better use of the kernel sources and do things in a more 
reusable way.  It's only recommended currently because it's clear that the 
overall embedded community was not ready to embrace the tooling and versions 
selected by the Yocto Project at the time the guidelines were written.

>   - is it tolerated to change the versions of some components from
> OE-core or meta-oe? Not just add patches through .bbappend, but
> actually use an older or a more recent version of components, let's
> say Gstreamer for example?

If you change an upstream repository, oe-core, meta-oe, meta-yocto, etc.. You 
should submit the patch to the appropriate upstream.  If the 'change' has been 
backported from a newer version then it's already been submitted upstream. 
(Good process here is to document the commit ID of what you backported, so it's 
easy to show compliance.)

This holds true on .bbappends and new versions of things.  Note: if you put your 
new version of the code in your own custom layer, you don't need to submit it 
upstream for compliance.  (But I recommend you do as it will make long term 
maintenance much easier!)

>   - can we included new recipes for software programs not already
> included in oe-core or meta-oe in our layers, or do we have to
> contribute them back into oe-core or meta-oe before registration?

Your layers are your own responsibility.  There is nothing that forces you to 
provide anything in your layer to an upstream location.  You just have to verify 
that it works with a suitable version of oe-core.

The contribution requirement is geared toward people who repackage oe-core and 
other open source layers for their customers.  It will help ensure that someone 
isn't hiding or playing games with their local version of oe-core to make it 
incompatible with other versions.  (Sure they can do that, but whatever they did 
to make it incompatible will have at least been sent to the public.)

>   - the Yocto project compatible registration is made against a
> specific version of Yocto. What happens when a new Yocto version is
> released? Should we go through the registration process again?

Yes.  The registration process will have to be repeated.

--Mark

>
> thanks a lot!
>
> nicolas
>
>
> [1] https://www.yoctoproject.org/ecosystem/yocto-project-compliance-program
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


