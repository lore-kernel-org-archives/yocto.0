Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D87E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 16:28:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7FNSoql010895
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 16:28:50 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 15 Aug 2013 16:28:49 -0700
Message-ID: <520D6431.2080105@windriver.com>
Date: Thu, 15 Aug 2013 18:28:49 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
	<520D242A.6040103@linux.intel.com>
	<D4677E29EEA744F99ECD3BF698767C89@PAULD>
In-Reply-To: <D4677E29EEA744F99ECD3BF698767C89@PAULD>
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 23:28:52 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/15/13 2:30 PM, Paul D. DeRocco wrote:
>> From: Saul Wold
>>
>>> On 08/15/2013 11:37 AM, Paul D. DeRocco wrote:
>>> I've done exactly this in a different Yocto-based project,
>>> and it worked.
>>> Now I'm trying to do the same thing in a Gumstix build, and it's not
>>> working. I have a dumb little recipe that merely copies
>>> some files into
>>> particlar places in the rootfs. It adds a systemd service
>>> unit, as well as
>>> .bashrc and .inputrc to /home/root.
>>>
>>> The build logs show the recipe being processed, including
>>> the do_install
>>> task which copies the files. No errors are produced. If I
>>> rummage through
>>> build/tmp/work, I can find the fragment of the rootfs containing the
>>> /home/root and /etc/systemd/system directories with my
>>> files in them. Yet no
>>> matter what I try, these things never wind up in the final rootfs.
>>>
>>> I've tried clean and cleansstate on the recipe, as well as
>>> on my top-level
>>> recipe. I've bumped PR from r0 to r1. It dutifully
>>> reprocesses my recipe,
>>> with no errors, and I end up with a perfectly functioning
>>> rootfs without
>>> these particular files.
>>>
>>> This is a slightly modified version of
>>> gumstix-console-image. I believe it's
>>> based on Danny, as the gumstix Dylan stuff is still a work
>>> in progress.
>>>
>>> What could conceivably be wrong?
>>>
>> Where do you add your recipe's generated packages to the image, this
>> could be in your custom image with an RDEPENDS or via something in
>> local.conf like CORE_IMAGE_EXTRA_INSTALL_append = " <packagename>".
>>
>> Do you have other recipes that DEPEND or RDEPEND on your recipe?
>>
>> That might point you in the right direction.
>
> My top level recipe uses IMAGE_INSTALL to add a bunch of packages, including
> one whose name matches the name of the recipe that's being processed but
> whose output is being ignored. This is exactly what I did in a different
> Yocto project, to get a similar recipe to install some similar files, and it
> all worked fine.
>
> I've attached the top level recipe and the problematic one, only changing
> the project name to "foo" for proprietary reasons.
>

A simple way to diagnose if your package is even in the install list is to do 
bitbake -e <image>, then scan the output for "PACKAGE_INSTALL".  If your package 
is not listed there, then something has either cleared your configuration or you 
have a typo.

IMAGE_INSTALL_append = " my_package" should work, and generally won't be cleared 
by a recipe.

(Note you should modify IMAGE_INSTALL, which is transformed by the system into 
PACKAGE_INSTALL... modifying PACKAGE_INSTALL can lead to problems.)

--Mark

>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


