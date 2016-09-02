Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B63FE00E7B; Fri,  2 Sep 2016 01:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2DA2E00E41
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 01:08:18 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bfjWG-0004ge-V2
	for yocto@yoctoproject.org; Fri, 02 Sep 2016 10:08:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Fri, 02 Sep 2016 08:08:22 +0000
Message-ID: <87oa46afm1.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
	<87bn07bw9s.fsf@posteo.net> <874m5zbuwl.fsf@posteo.net>
	<5ab4fbf1a8106fa4a5d7db3b457db8fb@herrie.org>
	<87zinraduo.fsf@posteo.net>
	<2470b2c489daa8d6863159ea44d04367@herrie.org>
	<87shtjaaje.fsf@posteo.net>
	<CAD4b0_KE4c3EFan96E7FzaNofJgB7mYjD3VDV=Wr4MwD0fXC-A@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:1ctqeH/UmRNVNlvpuhdx6ud6hUY=
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
X-List-Received-Date: Fri, 02 Sep 2016 08:08:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Maciej Borzęcki
<maciej.borzecki@rndity.com> writes:

> On Thu, Sep 1, 2016 at 5:45 PM, Pietro <pulsarpietro@posteo.net> wrote:
>> Herman van Hazendonk <me@herrie.org>
>> writes:
>>
>>> If it takes the wrong version, it could be your layers aren't in the
>>> right order. That's the first thing to check.
>>>
>>> You might want to try to run bitbake with
>>>
>>> -f protobuf -c cleanall or -f protobuf-native -c cleanall
>>>
>>> This will remove all locally ;)
>>>
>>> Then rebuild it... I haven't played much with the -native bits, so not
>>> sure how those work.
>>>
>> I needed to specify DEPENDS = "protobuf-native" to get it working, I
>> would be really interested to understand exactly what that does, but I
>> must admit to myself I can't understand everything in a single shot.
>
> Quoting my first email:
>>> All you need to do,
>>>is include meta-oe in your layers (bblayers.conf) and have
>>> protobuf-native listed in DEPENDS inside your package recipe.
>
> DEPENDS lists build time dependencies, like libraries, tools etc.
> protobuf-native, by convention, means that the package was built for
> your build host. This enables you to run protoc during the build to
> generate proper language bindings.
>
Where are all these "native" binaries stored ? Is it "sysroot" ?

How can I declare run-time dependencies ?

Such library should be cross-compiled in order to successfully
link my package's binaries against it, on the other hand when building
the "protoc" the target should be the host machine as such tool will be
run on the host machine when required.

I wonder if is the "native" keyword in the DEPENDS statement to draw the
line, so in a recipe A:

i) DEPENDS = "protobuf"
   tells that the recipe depends on the protobuf at run-time - namely during
   the linking and when the binary resulting from A is executed.
   So protobuf is cross-compiled.
   
ii) DEPENDS = "protobuf-native"
    tells that the recipe depends on the prottobuf at build-time and a
    result of that protobuf is NOT cross compiled.

>>
>> So never mind.
>>
>> I still have another question :-)
>>
>> I am about to create another recipe for the gprc library for C++, to
>> build it on my local machine has been pretty simple:
>>
>> $ git clone -b $(curl -L http://grpc.io/release)
>> https://github.com/grpc/grpc
>> $ cd grpc
>> $ git submodule update --init
>> $ make
>> $ [sudo] make install
>>
>> The recipe I have created so far would clone/checkout the source code
>> from a GIT repo or something similar and then the build process could
>> start straight away.
>>
>> In my case I have an additional step:
>>
>> git submodule update --init
>>
>
> There's a submodule fetcher, when setting SRC_URI use `gitsm://`
> instead of `git://` see
> https://www.yoctoproject.org/docs/2.1/bitbake-user-manual/bitbake-user-manual.html#gitsm-fetcher
> for details.
>
> Cheers,
> -- 
> Maciej Borzecki
> RnDity
Thanks, I'll give to it a go.


