Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 277FEE00A48; Mon, 15 Jun 2015 17:19:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CBB8E009A1
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 17:19:04 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3E677F811E3; Mon, 15 Jun 2015 18:19:04 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B4E8AF811D9;
	Mon, 15 Jun 2015 18:19:03 -0600 (MDT)
Message-ID: <557F6B89.5010506@mlbassoc.com>
Date: Mon, 15 Jun 2015 18:19:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <557ED498.50406@mlbassoc.com>
	<20150615142110.GC2398@jama>	<557F0E5B.90408@mlbassoc.com>
	<20150615174613.GD2398@jama> <557F287D.6010406@mlbassoc.com>
In-Reply-To: <557F287D.6010406@mlbassoc.com>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Tue, 16 Jun 2015 00:19:08 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-15 13:33, Gary Thomas wrote:
> On 2015-06-15 11:46, Martin Jansa wrote:
>> On Mon, Jun 15, 2015 at 11:41:47AM -0600, Gary Thomas wrote:
>>> On 2015-06-15 08:21, Martin Jansa wrote:
>>>> On Mon, Jun 15, 2015 at 07:35:20AM -0600, Gary Thomas wrote:
>>>>> I'm working with i.MX6 targets (meta-fsl-arm*).  For these
>>>>> targets, some packages are "special" in that they use i.MX6
>>>>> specific graphics support.  This ends up with an additional
>>>>> layer of stratification, so my tmp/work tree has:
>>>>>      all-amltd-linux
>>>>>      cortexa9hf-vfp-neon-amltd-linux-gnueabi
>>>>>      cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
>>>>>      teton_p0382-amltd-linux-gnueabi
>>>>>      x86_64-amltd-linux-gnueabi
>>>>>      x86_64-linux
>>>>>
>>>>> The packages that are built in tmp/work/cortex* are architecture
>>>>> specific, not target specific, hence my question:
>>>>>
>>>>>      If I build for two i.MX6 targets, identical in every way
>>>>>      except for the ${MACHINE} name, if I use sstate to share
>>>>>      the builds from target A when building for target B, why
>>>>>      are the packages built in cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
>>>>>      not shared by sstate?  I can see that they are present in
>>>>>      the sstate cache, but they are always rebuilt for target B.
>>>>>      I consider this incorrect behaviour as these are the same
>>>>>      architecture and so they should be sharable via sstate.
>>>>>
>>>>> Am I missing something here?  How can I determine why the
>>>>> package from target A (sstate cache) is not usable by target B?
>>>>
>>>> Use openembedded-core/scripts/sstate-diff-machines.sh to check if the
>>>> signatures of the recipes you expect to be re-used are the same.
>>>>
>>>
>>> How can I use this if the two targets have their own tmp/ tree?
>>
>> call it twice (once in each tmp tree) and compare resulting list.M files
>>
>
> Sadly, that script seems to destroy all of the .sigdata files which
> are needed to actually track down the culprit(s).
>

I followed this down to an i.MX6 specific package which is
in DEPENDS:
   Variable PROVIDES value changed from
   '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1 virtual/libgles2'
    to
   '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1 virtual/libgles2 virtual/libgl virtual/libgles1 
virtual/libgles2'

Why aren't these considered the same (duplicate elements and/or order)
should not matter for PROVIDES.  Is there some way we could get bitbake
to collapse this and remove the duplicates?

I found that this happens in meta-fsl-arm:recipes-graphics/imx-gpu-viv/imx-gpu-viv.inc
which contains these lines:
   PROVIDES += "virtual/wayland-egl virtual/libgal-x11 virtual/egl virtual/libopenvg virtual/libg2d"
   PROVIDES_append_mx6q  = " virtual/libgl virtual/libgles1 virtual/libgles2"
   PROVIDES_append_mx6dl  = " virtual/libgl virtual/libgles1 virtual/libgles2"
   PROVIDES_append_mx6sx  = " virtual/libgl virtual/libgles1 virtual/libgles2"

Some i.MX6 targets, nitrogen6x in particular, has overrides for both mx6q and mx6dl,
hence the duplication.

Note: I removed the extra override (for testing) and found that
now the packages built by target A can be shared via sstate with
target B (at least the few I tested)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

