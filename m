Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98CB1E0085D; Wed, 24 May 2017 21:37:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2558CE00724
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 21:36:59 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A510C68A01C; Thu, 25 May 2017 05:36:58 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E144968A019;
	Thu, 25 May 2017 05:36:57 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 955156740575;
	Thu, 25 May 2017 06:36:57 +0200 (CEST)
To: yocto@yoctoproject.org
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
	<1752127.E0fXlp9gfm@peggleto-mobl.ger.corp.intel.com>
	<df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5bab30d1-19cd-e7f8-f01c-b4eb36b59416@mlbassoc.com>
Date: Thu, 25 May 2017 06:36:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
Subject: Re: sstate-cache question
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
X-List-Received-Date: Thu, 25 May 2017 04:37:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-23 07:27, Gary Thomas wrote:
> On 2017-05-22 22:35, Paul Eggleton wrote:
>> Hi Gary,
>>
>> On Tuesday, 23 May 2017 2:53:45 AM NZST Gary Thomas wrote:
>>> I have a build where I've never manually removed anything from
>>> the sstate-cache and this same build has been used for hundreds
>>> of builds over the last 18 months.  I just tried to find out why
>>> gcc-cross-arm had to be rebuilt (it seems to happen almost every
>>> time I update my Poky/Yocto tree (master)).  Here's what I got:
>>>
>>> $ bitbake-diffsigs -t gcc-cross-arm compile
>>> Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from
>> 208373dd9ae01101a26a9412eb50b110 to
>>> d65095d4b9aff89f6990bd17c0ab210b
>>> Unable to find matching sigdata for /local/poky-cutting-edge/meta/recipes-
>> devtools/gcc/gcc-cross_6.3.bb.do_configure
>>> with hashes 208373dd9ae01101a26a9412eb50b110 or
>> d65095d4b9aff89f6990bd17c0ab210b
>>>
>>> So if I didn't remove those files, where did they go?  Am I doing
>>> something wrong running this tool?  (running the same command for
>>> qemu-native seemed to work correctly)
>>
>> Is this with master, pyro, morty or some other version?
> 
> Poky master: 2568e18701fb20d7105eb6e4929f3aff4b9f9c06
> 
>>
>> If you search for files with those hashes in their name do they show up?
> 
> Only .siginfo files:
> $ find sstate-cache/ -name "*d65095d4b9aff89f6990bd17c0ab210b*"
> sstate-cache/universal/d6/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:6.3.0:r0:x86_64_arm:3:d65095d4b9aff89f6990bd17c0ab210b_configure.tgz.siginfo 
> 
> $ find sstate-cache -name "*208373dd9ae01101a26a9412eb50b110*"
> sstate-cache/universal/20/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:6.3.0:r0:x86_64_arm:3:208373dd9ae01101a26a9412eb50b110_configure.tgz.siginfo 
> 
> 
> However, I do find some in tmp/stamps:
> $ ls tmp/stamps/x86_64-linux/gcc-cross-arm
> 6.3.0-r0.do_build.41aca0d85971087f4675d2f504642ce4
> 6.3.0-r0.do_compile.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_compile.sigdata.9a06aa40225be30babaceb7673cef0a6
> 6.3.0-r0.do_compile.sigdata.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_configure.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_configure.sigdata.208373dd9ae01101a26a9412eb50b110
> 6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_fetch.1dd3c87b3e509c20fa4ffe61d6dc3b41
> 6.3.0-r0.do_gcc_stash_builddir.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.28144d3c18c0a09f23f3b0c5e80f049d
> 6.3.0-r0.do_install.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.f2e4d12289c5039854081a832dc8bc0e
> 6.3.0-r0.do_populate_lic_setscene.d2c9226ddb0de5277e2347b69ef84664
> 6.3.0-r0.do_populate_sysroot.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.a0c5b715ae9217f02318beff6987d169
> 6.3.0-r0.do_prepare_recipe_sysroot.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.4a528becf11832cc3b8f6fa479e98210
> 
> I guess the sstate-cache info alone is not sufficient to use 'bitbake diffsigs'?
> I do occasionally wipe tmp & downloads, so that may explain these errors.
> 

I just updated my Poky/Yocto master (a3d160f9e5826140cc8d6b2ed1b38bf022443b08) and it happened again.
I'm still interested in why gcc-cross-arm had to be rebuilt _again_, so I ran:

$ bitbake-diffsigs -t gcc-cross-arm compile
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 45466, PID: 7995
Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from d65095d4b9aff89f6990bd17c0ab210b to 
1378c7a11d96284c3d53894d6434b590
Unable to find matching sigdata for /local/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-cross_6.3.bb.do_configure 
with hashes d65095d4b9aff89f6990bd17c0ab210b or 1378c7a11d96284c3d53894d6434b590
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 45466, PID: 7995
NOTE: Terminating PRServer...
$ find tmp/stamps -name "*d65095d4b9aff89f6990bd17c0ab210b*" -or -name "*1378c7a11d96284c3d53894d6434b590*"
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.1378c7a11d96284c3d53894d6434b590
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_configure.1378c7a11d96284c3d53894d6434b590

So, a similar error/outcome, but in this case the necessary files
do seem to be present.  I did notice that the only files with those
signatures were for do_configure, so I tried:

$ bitbake-diffsigs -t gcc-cross-arm configure
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34530, PID: 8063
Hash for dependent task gcc/gcc-cross_6.3.bb.do_prepare_recipe_sysroot changed from 150112323551011e0e87f99f47ad79c4 to 
c45aaef0cb01f463f9a1b30bd815cd28
Unable to find matching sigdata for 
/local/poky-cutting-edge/meta/recipes-devtools/gcc/gcc-cross_6.3.bb.do_prepare_recipe_sysroot with hashes 
150112323551011e0e87f99f47ad79c4 or c45aaef0cb01f463f9a1b30bd815cd28
NOTE: Started PRServer with DBfile: /build/p0382_2016-01-13/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 34530, PID: 8063
NOTE: Terminating PRServer...
$ find tmp/stamps -name "*150112323551011e0e87f99f47ad79c4*" -or -name "*c45aaef0cb01f463f9a1b30bd815cd28*"
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_prepare_recipe_sysroot.c45aaef0cb01f463f9a1b30bd815cd28
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_prepare_recipe_sysroot.sigdata.c45aaef0cb01f463f9a1b30bd815cd28
tmp/stamps/x86_64-linux/gcc-cross-arm/6.3.0-r0.do_prepare_recipe_sysroot.sigdata.150112323551011e0e87f99f47ad79c4

Still not working :-(  What am I missing?  How do I track this down
(both the issues with bitbake-diffsigs as well as why gcc-cross-arm
is being rebuilt)?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

