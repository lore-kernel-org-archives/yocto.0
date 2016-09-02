Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46624E00E7A; Fri,  2 Sep 2016 01:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B9AE00E41
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 01:38:09 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id l94so172263272ual.0
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 01:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=1/9V4qeh3v3Bhb9LTo2K/Di/1LJ0psmv6GgFjEjvjTk=;
	b=z531jMyRz6Cfz5avJedLI/4fzKzEATWw8nsXypjwrwyOasshxL/mjawaGZgO/zQBe3
	bAtKINh6bDiDFo2Okh4PVelLnPEPrJhEX26xmV0n0vG+cfVmlsfBPaRGJZaa9bwcebFx
	wqb/r7FaA9lMVMavVtt8dCrFpnIVHgZATOfiKsMjv8TRiofqPcuY3QsopL7wJeCXCF1c
	ru7w3iiUb/qjGsI4lU6e9m5+UWcXN7PTPCHjg/UfZdksc12dPNTYoGc9Z8c0fvsVv2vF
	ScnJzssY0x4yM1H0mRmJ/kyOx9DEEJERwJvk7m5xbVarqyh8DVVwhVczMRyZD9pPhn9z
	f8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=1/9V4qeh3v3Bhb9LTo2K/Di/1LJ0psmv6GgFjEjvjTk=;
	b=h4lc2okmO24Z8nlu8PWhODN3guCb0HPtLI7nM5zjUgrNk4JZOzcrpHiKske1DVmoRk
	in3QHdDLR2eSQ9BG2MW6jlQCHsOxSmOvKMt2V/CXdS/9/NXtyppX1yR57Cox1lGgOEG6
	ikHywqc/IMiuKXK09Uh9MgJQEkCQtq77lcbiyhkPzg1vSvDZbNfoYkxX0kSLKSwiUES2
	/2AaFqCMkb9ad0w7mHjKWeQgh4i3BJVQ5/UMjo2QV5lc0wr0QyS0EaUR56Xir8h37E1U
	HkzkJggfSAFN/vzM6P59YNs84jOxrvTkc35R3snR6IdDUoTVGns193s1O2pTo40U+GM0
	cSVQ==
X-Gm-Message-State: AE9vXwP34G/inhGlUe2pcG6hRcrBsmEJNarmfBDoZEUjxpRyA55EWFYGI+eMd+kqvHCZ/u5oCRNBzVkxnDFb4g==
X-Received: by 10.176.64.66 with SMTP id h60mr2038009uad.102.1472805488937;
	Fri, 02 Sep 2016 01:38:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.73.23 with HTTP; Fri, 2 Sep 2016 01:37:48 -0700 (PDT)
In-Reply-To: <87oa46afm1.fsf@posteo.net>
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
	<87oa46afm1.fsf@posteo.net>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Fri, 2 Sep 2016 10:37:48 +0200
Message-ID: <CAD4b0_JR+Bh2mfypTwDzHUO=zy5AhzGeDEOk7d540tQd-+m0gA@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 02 Sep 2016 08:38:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2016 at 10:08 AM, Pietro <pulsarpietro@posteo.net> wrote:
> Maciej Borz=C4=99cki
> <maciej.borzecki@rndity.com> writes:
>
>> On Thu, Sep 1, 2016 at 5:45 PM, Pietro <pulsarpietro@posteo.net> wrote:
>>> Herman van Hazendonk <me@herrie.org>
>>> writes:
>>>
>>>> If it takes the wrong version, it could be your layers aren't in the
>>>> right order. That's the first thing to check.
>>>>
>>>> You might want to try to run bitbake with
>>>>
>>>> -f protobuf -c cleanall or -f protobuf-native -c cleanall
>>>>
>>>> This will remove all locally ;)
>>>>
>>>> Then rebuild it... I haven't played much with the -native bits, so not
>>>> sure how those work.
>>>>
>>> I needed to specify DEPENDS =3D "protobuf-native" to get it working, I
>>> would be really interested to understand exactly what that does, but I
>>> must admit to myself I can't understand everything in a single shot.
>>
>> Quoting my first email:
>>>> All you need to do,
>>>>is include meta-oe in your layers (bblayers.conf) and have
>>>> protobuf-native listed in DEPENDS inside your package recipe.
>>
>> DEPENDS lists build time dependencies, like libraries, tools etc.
>> protobuf-native, by convention, means that the package was built for
>> your build host. This enables you to run protoc during the build to
>> generate proper language bindings.
>>
> Where are all these "native" binaries stored ? Is it "sysroot" ?
>
> How can I declare run-time dependencies ?

RDEPENDS, see https://www.yoctoproject.org/docs/latest/ref-manual/ref-manua=
l.html#var-RDEPENDS

Libraries should be taken care of automatically (at least for ELF
binaries), so you will only need to list other services or packages
that are needed during runtime.

>
> Such library should be cross-compiled in order to successfully
> link my package's binaries against it, on the other hand when building
> the "protoc" the target should be the host machine as such tool will be
> run on the host machine when required.
>
> I wonder if is the "native" keyword in the DEPENDS statement to draw the
> line, so in a recipe A:
>
> i) DEPENDS =3D "protobuf"
>    tells that the recipe depends on the protobuf at run-time - namely dur=
ing
>    the linking and when the binary resulting from A is executed.
>    So protobuf is cross-compiled.

So the protobuf recipe (meta-oe one) splits the package into 2 parts,
protobuf (libraries that are used by generated bindings) and
protobuf-compiler (one that generates bindings).
The build system will figure out that your package RDEPENDS on
protobuf (not protobuf-compiler).

The other package, protobuf-compiler, is not really needed in your
target filesystem, unless you want to generate bindings on the target
(as in on your ARM board or similar). It is generally a good practice
to spllt your packages so that the user does not have to pay the cost
for things they don't need.

>
> ii) DEPENDS =3D "protobuf-native"
>     tells that the recipe depends on the prottobuf at build-time and a
>     result of that protobuf is NOT cross compiled.

Yes. You need protoc to generate bindings at build time, hence you
need a version of protobuf that can be run by your native host (hence
-native).

--=20
Maciej Borzecki
RnDity

