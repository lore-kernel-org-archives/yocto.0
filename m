Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53338E00731
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 07:41:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p83Eewxb012102
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 3 Sep 2011 07:40:58 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.8) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 3 Sep 2011 07:40:58 -0700
Message-ID: <4E623C78.4090401@windriver.com>
Date: Sat, 3 Sep 2011 10:40:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.21) Gecko/20110830 Thunderbird/3.1.13
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>	<CAEsOVNd2i3Mn4zPdW5c1jRjKVwURUv9fYD3c_ghy+9gqsNgnsQ@mail.gmail.com>
	<41FBF1EF-619F-46D8-846F-58AF0A4123F9@keylevel.com>
In-Reply-To: <41FBF1EF-619F-46D8-846F-58AF0A4123F9@keylevel.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>, yocto@yoctoproject.org
Subject: Re: Splitting processor and target in BSPs
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
X-List-Received-Date: Sat, 03 Sep 2011 14:41:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-03 7:32 AM, Chris Tapp wrote:
> On 2 Sep 2011, at 16:49, McClintock Matthew-B29882 wrote:
>
>> On Fri, Sep 2, 2011 at 2:26 AM, Chris Tapp <opensource@keylevel.com>
>> wrote:
>>> However, kernel configuration becomes a little bit more complicated
>>> as this
>>> is done by machine name. A kernel recipe will be needed for each machine
>>> (e.g. for the different sound drivers), but I can't work out how to
>>> do this
>>> using a base configuration for the SoCs that are shared and then adding
>>> machine specific parts. I can do it using (for example) a .defconfig for
>>> each machine, but that would require updates to multiple files to
>>> change the
>>> SoC configuration.
>>>
>>> I guess what I'm really asking is, is it possible to have a base CPU
>>> configuration and add a machine configuration to this ?
>>>
>>> I've recently seen discussion of .cfg kernel fragment files. Are
>>> these what
>>> I should be looking at? Are these available in the releases or only
>>> in the
>>> development branch?
>>
>> I think this is a good solution for you. It's a little confusing to
>> find were this work is but you can look in the linux-yocto kernel tree
>> - then the actual cfg fragment stuff on different branches.
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/
>>
>> meta branch contains meta/ which contains a lot of the cfg fragments,
>> and patches, etc.
>
> Thanks, I can see what they look like now ;-)
>
> What are 'the rules' for cfg files? I.e.:
>
> 1) Does adding #CONFIG_this_bit not set
> disable a node and its dependencies? For example, if I turn off usb
> serial support do the usb serial drivers get disabled as well or do I
> have to do this manually?

There's no extra processing on top of what LKC gets you, so yes,
that's how it would work. If you disable a top level option in
your fragment, lkc will then disable everything that depends on it.

>
> 2) Similarly, if a node is enabled what happens to the dependent nodes?
> Do they all need to be covered, or only the ones that need to be enabled?

Same as #1. If you select FOO, you can now select anything that
depends on FOO. If FOO has its own "select BAR" statements in it,
they'll be enabled in the final .config.

So just cover what needs to be enabled.

>
> I've also noticed that there are scc files. These seem to pull features
> in to sets? How do these work?

It's best to check the yocto kernel manual for some desriptions on
this, rather than me writing it all here. I also have an updated set
of docs for 1.1 that I can send along shortly.

The .scc files are feature descriptions that cover patches (if you
have any), git operations (if you have any) and configuration. They
allow a feature and configuration to be kept together and associated.
Once in a .scc file, that feature + config can be re-use and imported
by other features.

>
> meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg contains
>
> CONFIG_ATH5K
> CONFIG_ATH_COMMON
> ...
> CONFIG_SERIAL_8250_CONSOLE
>
> It seems as if this file does something else, as these don't look like
> valid kernel configuration options.

Covered in some of the docs, but there is a kernel configuation audit that
runs at the end. It is intended to let the user know if something they
didn't expect happened. i.e.:

   - you had CONFIG_FOO=y in your fragment, but the final .config didn't
     or had it as another value.
   - high level configuration fragments are supposed to set non-hardware
     options that are a 'policy' for the system. And BSPs should be setting
     hardware options. These are the "kconf hardware <foo>.cfg" and
     "kconf non-hardware <bar>.cfg" that you see in the files. If a BSP
     option overrides a system policy (and hence may behave differently
     in an important way), you get a warning.
   - if an option is repeated you get a warning
   - if a BSP sets a non-hardware option you get a warning. The config
     audit has 'buckets' for options that are hardware and non-hardware,
     so it can emit this warning. But that's not perfect. If a BSP developer
     says 'hey, this IS hardware for my board', you can list those options
     in "hardware.cfg" in your BSP dir and the audit system will leave
     these options out of testing.

>
>> There is also a document in the git repo as well which is worth a look.
>
> I couldn't see one, but there's a lot in there ;-)
>
> Sorry for all the questions, but there's a lot to understand for someone
> new :-)

Check the docs of the yocto twiki page for some theory and examples. And
I'm happy to fill in any blanks (since those would be doc gaps, and I'll
write something up).

Bruce

>
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


