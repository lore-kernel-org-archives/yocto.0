Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30892E00CE0; Thu,  1 Sep 2016 01:40:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56AEAE00CC3
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 01:40:24 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bfNXn-0006HB-4R
	for yocto@yoctoproject.org; Thu, 01 Sep 2016 10:40:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Thu, 01 Sep 2016 08:40:32 +0000
Message-ID: <87k2ewau7z.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:pv2qxRrKQ406HhR8mvNmBjJe/qY=
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
X-List-Received-Date: Thu, 01 Sep 2016 08:40:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Maciej Borzęcki
<maciej.borzecki@rndity.com> writes:

> On Wed, Aug 31, 2016 at 6:44 PM, Pietro <pulsarpietro@posteo.net> wrote:
>> Hi all,
>>
>> I am new to the Yocto building system and I could be talking nonsense. I
>> used to work with buildroot time ago and I remember there is an area
>> where compiled software/packages/tools previously built are "staged" and
>> used when building other packages.
>>
>> Is there something like that available with Yocto ? Specifically I would
>> like to add a package which uses the Google Protocol Buffer, I do not have
>> administrator rights on the machine and I can't install the packages I
>> need system wise.
>>
>> Is it possible to add recipes and use them at building time without
>> including them in the image being generated ?
>>
>> A good example for that would be the protoc, the protocol buffer description
>> file compiler.
>>
>
> There is a recipe for protobuf in meta-oe (2.6.1). All you need to do,
> is include meta-oe in your layers (bblayers.conf) and have
> protobuf-native listed in DEPENDS inside your package recipe.
>
> The protoc compiler will be available in the PATH when package is
> being built, so autotools checks like AC_CHECK_PROG/AC_PATH_PROG
> should be able to find it.
>
> Cheers,
> -- 
> Maciej Borzecki
> RnDity
Thanks a lot.

I have added the DEPENDS line and it indeed downloads and build the some
protobuf related stuff, where did you get the dependency name from ?
I can't see the protobuf-native as a recipe in the meta-oe website :

https://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/

I have just realised that GRPC (http://www.grpc.io/) is needed for my
project, it is a library which uses the protobuffers, is there a
recipe/package which provides them around or do I need to create my own
recipe ?

I would like to check the root filesystem being generated as part of the
build process, where is it ?



