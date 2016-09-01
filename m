Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF51E00D3F; Thu,  1 Sep 2016 08:45:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86708E00D2E
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 08:45:43 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bfUBQ-0001ES-0j
	for yocto@yoctoproject.org; Thu, 01 Sep 2016 17:45:40 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Thu, 01 Sep 2016 15:45:41 +0000
Message-ID: <87shtjaaje.fsf@posteo.net>
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
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:8Z2SfNeQT2UX0pDv9Ud0e4QCNsE=
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
X-List-Received-Date: Thu, 01 Sep 2016 15:45:47 -0000
Content-Type: text/plain

Herman van Hazendonk <me@herrie.org>
writes:

> If it takes the wrong version, it could be your layers aren't in the
> right order. That's the first thing to check.
>
> You might want to try to run bitbake with
>
> -f protobuf -c cleanall or -f protobuf-native -c cleanall
>
> This will remove all locally ;)
>
> Then rebuild it... I haven't played much with the -native bits, so not
> sure how those work.
>
I needed to specify DEPENDS = "protobuf-native" to get it working, I
would be really interested to understand exactly what that does, but I
must admit to myself I can't understand everything in a single shot.

So never mind.

I still have another question :-)

I am about to create another recipe for the gprc library for C++, to
build it on my local machine has been pretty simple:

$ git clone -b $(curl -L http://grpc.io/release)
https://github.com/grpc/grpc
$ cd grpc
$ git submodule update --init
$ make
$ [sudo] make install

The recipe I have created so far would clone/checkout the source code
from a GIT repo or something similar and then the build process could
start straight away.

In my case I have an additional step:

git submodule update --init

Is there a function/hook I can override in the recipe ?

Thanks,
P.


