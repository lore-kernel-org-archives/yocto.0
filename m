Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BD3E011B6
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 05:59:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7CCx4Sr021319
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Aug 2011 05:59:04 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 12 Aug 2011 05:59:04 -0700
Message-ID: <4E452396.1070506@windriver.com>
Date: Fri, 12 Aug 2011 08:59:02 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>	<4E446C74.9070807@intel.com>
	<4E4473A4.4060403@windriver.com>
	<B44F0C76-F163-4264-B052-BA9E4CC4CDC3@keylevel.com>
In-Reply-To: <B44F0C76-F163-4264-B052-BA9E4CC4CDC3@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Fri, 12 Aug 2011 12:59:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-12 04:20 AM, Chris Tapp wrote:
> Scott / Bruce,
>
>
> On 12 Aug 2011, at 00:57, Scott Garman wrote:
>
>>
>>> cp: cannot stat
>>> `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/recipes-kernel/linux/files/defconfig':
>>>
>>> No such file or directory
>>
>> It looks like this is where the file is expected.
>>
>> I believe also meta/recipes-kernel/linux/linux/defconfig should also
>> work.
>
> I should have mentioned that ;-) As the bbappend file is in my layer, I
> was expecting (and want) the defconfig file to be stored/found in it. I
> created this layer by copying another one that I've got. It's unpack log
> shows:

hah. For some reason that flew right over my head. Must be
the 500 email I read a day :)

>
> NOTE: Unpacking
> /home/chris/yocto/yocto-downloads/git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz
> to
> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux-wrs-2.6.34+git0+b67e060194a38c6331da1532bd06446087a42b3b_0+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>
> NOTE: Unpacking
> /home/chris/yocto/meta-keylevel-sjs/recipes/linux/linux-wrs/defconfig to
> /home/chris/yocto/sjs-build/tmp/work/LX800-poky-linux/linux-wrs-2.6.34+git0+b67e060194a38c6331da1532bd06446087a42b3b_0+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>

That does look right!

>
> I suspect I've got something configured wrong with the new layer, but...
>
> On 12 Aug 2011, at 01:28, Bruce Ashfield wrote:
>
>>> I believe also meta/recipes-kernel/linux/linux/defconfig should also
>>> work.
>>
>> Yep, bitbake is telling us where it is looking. The -wrs_git is the
>> extension to the recipe, so that isn't where it is looking.
>
> Sorry Bruce, that was a typo (see working log above for a layer that
> works). I've tried using:
>
> MyLayer/recipies/linux/defconfig
> MyLayer/recipies/linux/files/defconfig (with no FILESEXTRAPATHS)
> MyLayer/recipies/linux/linux-wrs/defconfig
>
>> On another note, there's been a lot of fixes to the kern tools to
>> improve the process for adding BSPs and extending the tree (and
>> one defconfig bug fix), so I'll be interested to hear how this
>> goes.
>
> I'm planning to give it a try after the next release. I'm currently just
> trying to migrate an existing (4.0.1) project to a new platform and
> decided to add a new layer rather than change version at the same time.

Sounds good.

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


