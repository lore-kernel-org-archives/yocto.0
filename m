Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 217A6E00CDC; Thu,  1 Sep 2016 02:34:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CEB6E00C51
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 02:33:56 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bfONa-00007I-P8
	for yocto@yoctoproject.org; Thu, 01 Sep 2016 11:33:50 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Thu, 01 Sep 2016 09:34:02 +0000
Message-ID: <87fupkarqt.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:uhpjHGdcmM5UIgOq0yK6bwByYT4=
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 09:34:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Maciej Borzęcki
<maciej.borzecki@rndity.com> writes:

> On Thu, Sep 1, 2016 at 10:40 AM, Pietro <pulsarpietro@posteo.net> wrote:
>> Maciej Borzęcki
>> <maciej.borzecki@rndity.com> writes:
>>
>>> On Wed, Aug 31, 2016 at 6:44 PM, Pietro <pulsarpietro@posteo.net> wrote:
>>>> Hi all,
>>>>
>>>> I am new to the Yocto building system and I could be talking nonsense. I
>>>> used to work with buildroot time ago and I remember there is an area
>>>> where compiled software/packages/tools previously built are "staged" and
>>>> used when building other packages.
>>>>
>>>> Is there something like that available with Yocto ? Specifically I would
>>>> like to add a package which uses the Google Protocol Buffer, I do not have
>>>> administrator rights on the machine and I can't install the packages I
>>>> need system wise.
>>>>
>>>> Is it possible to add recipes and use them at building time without
>>>> including them in the image being generated ?
>>>>
>>>> A good example for that would be the protoc, the protocol buffer description
>>>> file compiler.
>>>>
>>>
>>> There is a recipe for protobuf in meta-oe (2.6.1). All you need to do,
>>> is include meta-oe in your layers (bblayers.conf) and have
>>> protobuf-native listed in DEPENDS inside your package recipe.
>>>
>>> The protoc compiler will be available in the PATH when package is
>>> being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PROG
>>> should be able to find it.
>>>
>>> Cheers,
>>> --
>>> Maciej Borzecki
>>> RnDity
>> Thanks a lot.
>>
>> I have added the DEPENDS line and it indeed downloads and build the some
>> protobuf related stuff, where did you get the dependency name from ?
>> I can't see the protobuf-native as a recipe in the meta-oe website :
>>
>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/
>
> It's just a mechanism that allows for building the native (i.e. for
> the host) packages, and these are autmatically named ${PN}-native.
> There should a BBCLASSEXTEND = "..native.." stanza inside the protobuf
> recipe that enables this feature.
>
>>
>> I have just realised that GRPC (http://www.grpc.io/) is needed for my
>> project, it is a library which uses the protobuffers, is there a
>> recipe/package which provides them around or do I need to create my own
>> recipe ?
>
> You can try searching for a recipe at http://layers.openembedded.org
> If there's none, try to write your own. This might be a good changes
> to get yourself acquainted with `devtool` tool that will help you in
> the process.
>
>>
>> I would like to check the root filesystem being generated as part of the
>> build process, where is it ?
>>
>
> ${TMPDIR}/<machine>_<distro?>/<imagename>/../rootfs
>
> for instance, for my current build:
>
> tmp/work/vexpress_qemu-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs
>
> -- 
> Maciej Borzecki
> RnDity

Thanks, much appreciated.

Do you know where the software which is not included in the image - such
us protoc - is it stored ?

It turns out the recipe for the protobuffer uses version 2.6 while I
would need version 3.0.0 to be used, is there a way to partially
"override" a recipe ?

http://cgit.openembedded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-devtools/protobuf/protobuf_2.6.1.bb?h=master

Thanks a lot.
P.


