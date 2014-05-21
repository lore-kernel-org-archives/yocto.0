Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93BC7E00B88; Wed, 21 May 2014 13:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 467 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 13:34:40 PDT
Received: from mail-ig0-f171.google.com (unknown [209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5994AE00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:34:40 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id c1so6736224igq.4
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DMyYhS2OqoZgfD1fbfNG9WpLmThmrznIKViGq2OR1hY=;
	b=R/XzXfRQOx75i9e5iwecMI0PiHi2s50ZlHy9PdCwy28TO/TCHU+dRZpYSSK2/0UaUq
	oFAIn7U7SqDSp6hBtmaOF1x0osijBVxt7NpiQelIKpnDyQZPR4Z3Dxm2J/4UBgcvHSQ9
	y060TSmx5uzS87XNLzuFpOElYVjKcmK3XoFaFiw357xwp7A6C4egGe9qqI8YMFQR50q/
	l4QLuOf3+2SMeOFxaZu7Q3VetziNHQ6GsHp49vVnJrgjTma9qBN8tAbjLBR4RwhpDrtJ
	iNa6Ias3PgJNtzV/scrLlLKPsO8a96YMfSa5w2m0ZIjuJNVwv2j16o71+pbPgVDqrnvc
	Vffg==
X-Received: by 10.42.87.3 with SMTP id w3mr47996520icl.27.1400704012595; Wed,
	21 May 2014 13:26:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Wed, 21 May 2014 13:26:31 -0700 (PDT)
In-Reply-To: <537D0964.9090208@dynamicdevices.co.uk>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
	<537CF707.4060506@mlbassoc.com>
	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
	<537D0964.9090208@dynamicdevices.co.uk>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 21 May 2014 16:26:31 -0400
Message-ID: <CAAPegz3zMndcWPi_cmsStAaLH3yTTjA+11yq+P8zm2MdU-q6=Q@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Wed, 21 May 2014 20:34:46 -0000
X-Groupsio-MsgNum: 19746
Content-Type: multipart/mixed; boundary=20cf30223d3d1b7f4404f9eed1d2

--20cf30223d3d1b7f4404f9eed1d2
Content-Type: text/plain; charset=UTF-8

On Wed, May 21, 2014 at 4:15 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 21/05/2014 20:07, Chris Morgan wrote:
>> On Wed, May 21, 2014 at 2:57 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2014-05-21 12:25, Chris Morgan wrote:
>>>> Hello.
>>>>
>>>> I'm trying to build core-image-mono for the bbb. Layers configuration:
>>>>
>>>> Build Configuration:
>>>> BB_VERSION        = "1.23.1"
>>>> BUILD_SYS         = "x86_64-linux"
>>>> NATIVELSBSTRING   = "Fedora-20"
>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>>>> MACHINE           = "beaglebone"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.6+snapshot-20140521"
>>>> TUNE_FEATURES     = "arm armv7a vfp neon"
>>>> TARGET_FPU        = "vfp-neon"
>>>> meta              = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>>> meta-bbb          = "master:8318556523a747b7e9c97326bef14922a154e8a2"
>>>> common-bsp        =
>>>> "(detachedfrome7dc54e):e7dc54e66f4b5c2982a30bef5c67d734e9c759f5"
>>>> meta-yocto
>>>> meta-yocto-bsp    = "master:8293f564685d0f587ab63a107285625dc4f98f1c"
>>>> meta-mono         = "master:e2d2b8a518403a255822022c9e15f116c91b5dd1"
>>>>
>>>> This is basically master of Poky and meta-mono.
>>>>
>>>>
>>>> | DEBUG: Executing shell function do_configure
>>>> | grep: configure.in: No such file or directory
>>>> |
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>>> line 125: mono/mini/Makefile.am: No such file or directory
>>>> |
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/mono-3.4.0/autogen.sh:
>>>> line 126: mono/metadata/Makefile.am: No such file or directory
>>>> | Running aclocal -I m4 -I .  ...
>>>> | aclocal: error: 'configure.ac' is required
>>>> |
>>>> | **Error**: aclocal failed. This may mean that you have not
>>>> | installed all of the packages you need, or you may need to
>>>> | set ACLOCAL_FLAGS to include "-I $prefix/share/aclocal"
>>>> | for the prefix where you installed the packages whose
>>>> | macros were not found
>>>> | NOTE: mono-native failed to autogen.sh
>>>> | sed: can't read acinclude.m4: No such file or directory
>>>> | WARNING:
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/run.do_configure.24402:1
>>>> exit 2 from
>>>> |   sed -e "s|slash\}libtool|slash\}x86_64-linux-libtool|" -i acinclude.m4
>>>> | ERROR: Function failed: do_configure (log file is located at
>>>>
>>>> /home/cmorgan/projects/yocto_poky/build/tmp/work/x86_64-linux/mono-native/3.4.0-r0/temp/log.do_configure.24402)
>>>> ERROR: Task 687
>>>>
>>>> (/home/cmorgan/projects/yocto_poky/meta-mono/recipes-mono/mono/mono-native_3.4.0.bb,
>>>> do_configure) failed with exit code '1'
>>>>
>>>>
>>>> It looks like the issue is due to autogen.sh assuming several files
>>>> are located in the current working directory, for instance on lines
>>>> 102, 129 and 130 of autogen.sh there is no use of the $srcdir variable
>>>> before files like configure.in or mono/metadata/Makefile.am.in etc.
>>>>
>>>> Not sure if something has changed on the yocto side to change this
>>>> assumption about where autogen.sh is being run from.
>>>
>>> Look at your recipe(s).  The simple way to fix this is to change
>>> 'inherit autotools' to 'inherit autotools-brokensep'
>>>
>>> You could also look at the recipe more deeply and figure out
>>> where it assumes that ${S} == ${B} because of a recent change
>>> in OE-core, this is no longer true when you inherit autotools.
>>>
>> Testing now with autotools-brokensep in mono-3.4.0.inc.
>>
>> I did look a bit and it looked like there were several places where
>> source and build were assumed but I'm not confident that it would be
>> easy to figure out what to fix and then create a patch for it but I
>> could look at that and feeding it back to the mono guys. Let me do
>> that and see how I make out.
>>
>> Chris
>
> Strange. I've been building pretty regularly recently with daisy on
> Ubuntu 12.04 without problems.
>
> There have been issues with Linux Mint, x64 hosts, and host
> installations of Mono, but I thought I had finally addressed those. It's
> starting to feel a little like a game of whack-a-mole.
>
> Can you provide me your local.conf and I'll have a look at what happens
> here with your hashes for  bbb on a Fedora box.
>
> Thanks,
>
> Alex
>

After this email if you still want to go down the path of getting my
configuration we can do that. I'm just using git.pokylinux.org and
meta-beaglebone from Koei with some minor changes in my local.conf to
enable systemd and force my own packages into any image that is built.

The attached patch fixes things for me here which matches what Gary
mentioned. I did not test 3.2 build, only the 3.4 one, I presume the
issue in autogen.sh is present for the older branch/version as well.

I also emailed the mono guys and Zoltan replied saying that autogen.sh
has to be run from within tree. I suspect this could be corrected by
use of $srcdir in autogen.sh but I'm not sure if I'm super
enthusiastic about going down that route if the mono guys aren't.

http://lists.ximian.com/pipermail/mono-devel-list/2014-May/041537.html

Chris

--20cf30223d3d1b7f4404f9eed1d2
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-Switch-from-autotools-to-autotools-brokensep-to-hand.patch"
Content-Disposition: attachment; 
	filename="0001-Switch-from-autotools-to-autotools-brokensep-to-hand.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hvh2wylu0

RnJvbSA5NDZjMzEwMWI5ODAxNzk3YzJjMDJlZmM1MDAzYTc5OWQwMDYwMzAwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDaHJpcyBNb3JnYW4gPGNobW9yZ2FuQGdtYWlsLmNvbT4KRGF0
ZTogV2VkLCAyMSBNYXkgMjAxNCAxNjoyMTo0NyAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIFN3aXRj
aCBmcm9tIGF1dG90b29scyB0byBhdXRvdG9vbHMtYnJva2Vuc2VwIHRvIGhhbmRsZSBNb25vJ3MK
IGF1dG9nZW4uc2ggcmVxdWlyaW5nIGl0IGJlIHJ1biBmcm9tIGluc2lkZSBvZiB0aGUgc291cmNl
IHRyZWUKClNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdhbiA8Y2htb3JnYW5AZ21haWwuY29tPgot
LS0KIHJlY2lwZXMtbW9uby9tb25vL21vbm8tMy4yLjguaW5jIHwgMiArLQogcmVjaXBlcy1tb25v
L21vbm8vbW9uby0zLjQuMC5pbmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9yZWNpcGVzLW1vbm8vbW9uby9tb25v
LTMuMi44LmluYyBiL3JlY2lwZXMtbW9uby9tb25vL21vbm8tMy4yLjguaW5jCmluZGV4IDBmZDc5
YWEuLjA0ZWEwNGYgMTAwNjQ0Ci0tLSBhL3JlY2lwZXMtbW9uby9tb25vL21vbm8tMy4yLjguaW5j
CisrKyBiL3JlY2lwZXMtbW9uby9tb25vL21vbm8tMy4yLjguaW5jCkBAIC03LDcgKzcsNyBAQCBM
SUNFTlNFID0gIkdQTHYyIgogCiBMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HLkxJ
QjttZDU9ODA4NjJmM2ZkMGUxMWE1ZmEwMzE4MDcwYzU0NDYxY2UiCiAKLWluaGVyaXQgYXV0b3Rv
b2xzIAoraW5oZXJpdCBhdXRvdG9vbHMtYnJva2Vuc2VwCiAKIFNSQ19VUkkgPSAiaHR0cDovL2Rv
d25sb2FkLm1vbm8tcHJvamVjdC5jb20vc291cmNlcy9tb25vL21vbm8tJHtQVn0udGFyLmJ6MiBc
CiAJICAgZmlsZTovL2RsbG1hcC1jb25maWcuaW4uZGlmZiBcCmRpZmYgLS1naXQgYS9yZWNpcGVz
LW1vbm8vbW9uby9tb25vLTMuNC4wLmluYyBiL3JlY2lwZXMtbW9uby9tb25vL21vbm8tMy40LjAu
aW5jCmluZGV4IDU5YjlhZjcuLjFjM2RiZjMgMTAwNjQ0Ci0tLSBhL3JlY2lwZXMtbW9uby9tb25v
L21vbm8tMy40LjAuaW5jCisrKyBiL3JlY2lwZXMtbW9uby9tb25vL21vbm8tMy40LjAuaW5jCkBA
IC03LDcgKzcsNyBAQCBMSUNFTlNFID0gIkdQTHYyIgogCiBMSUNfRklMRVNfQ0hLU1VNID0gImZp
bGU6Ly9DT1BZSU5HLkxJQjttZDU9ODA4NjJmM2ZkMGUxMWE1ZmEwMzE4MDcwYzU0NDYxY2UiCiAK
LWluaGVyaXQgYXV0b3Rvb2xzIAoraW5oZXJpdCBhdXRvdG9vbHMtYnJva2Vuc2VwCiAKIFNSQ19V
UkkgPSAiaHR0cDovL2Rvd25sb2FkLm1vbm8tcHJvamVjdC5jb20vc291cmNlcy9tb25vL21vbm8t
JHtQVn0udGFyLmJ6MiBcCiAJICAgZmlsZTovL2RsbG1hcC1jb25maWcuaW4uZGlmZiBcCi0tIAox
LjkuMAoK

--20cf30223d3d1b7f4404f9eed1d2--
