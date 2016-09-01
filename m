Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57891E00B5F; Thu,  1 Sep 2016 07:40:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl
	[149.210.149.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D62CFE00B46
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 07:40:31 -0700 (PDT)
Received: from submission6.mail.transip.nl (submission6.mail.transip.nl
	[149.210.149.10])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 3sQ4fz08b3zYwm1;
	Thu,  1 Sep 2016 16:40:27 +0200 (CEST)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission6.mail.transip.nl (Postfix) with ESMTPA id
	3sQ4fy2gJYz12LjQ; Thu,  1 Sep 2016 16:40:26 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 01 Sep 2016 16:40:26 +0200
From: Herman van Hazendonk <me@herrie.org>
To: Pietro <pulsarpietro@posteo.net>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <87zinraduo.fsf@posteo.net>
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
Message-ID: <2470b2c489daa8d6863159ea44d04367@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google protobuffer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Sep 2016 14:40:35 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

If it takes the wrong version, it could be your layers aren't in the 
right order. That's the first thing to check.

You might want to try to run bitbake with

-f protobuf -c cleanall or -f protobuf-native -c cleanall

This will remove all locally ;)

Then rebuild it... I haven't played much with the -native bits, so not 
sure how those work.



On 2016-09-01 16:34, Pietro wrote:
> Herman van Hazendonk <me@herrie.org>
> writes:
> 
>> Hi Pietro,
>> 
>> You shouldn't need to specify a version. DEPENDS = "protobuf" or
>> DEPENDS = "protobuf-native" should do :)
>> 
>> Herrie
>> 
>> 
>> 
> 
> Indeed my recipe gets built first and I can see 
> do_protobuf_3.0.0[..](),
> nonetheless when my package, which depends on libprotobuf compiles it
> fails since it does not find the right version of the library.
> 
> It still finds the older version
> 
> You don't have protoc 3.0.0 installed in your path.
> | Please install Google protocol buffers 3.0.0 and its compiler.
> | You can find it here:
> |
> |    https://github.com/google/protobuf/releases/tag/v3.0.0
> |
> | Here is what I get when trying to evaluate your version of protoc:
> |
> | protoc --version
> | libprotoc 2.4.1
> | make: [system-check] Error 1 (ignored)
> |
> 
> The version should be 3.0.0. What am I doing wrong ?
> 
> 
> 
> 
> 
>> On 2016-09-01 15:40, Pietro wrote:
>>> Pietro <pulsarpietro@posteo.net> writes:
>>> 
>>>> Jussi Kukkonen <jussi.kukkonen@intel.com>
>>>> writes:
>>>> 
>>>>> On 1 September 2016 at 13:21, Herman van Hazendonk
>>>>> <me@herrie.org> wrote:
>>>>> 
>>>>>     Hi Pietro,
>>>>> 
>>>>>     You can override the recipe by adding a recipe for version 
>>>>> 3.0.0+
>>>>>     in your own layer and making sure your layer has a higher
>>>>> priority
>>>>>     in bblayers.conf. See for example what we do in our project:
>>>>> 
>>>>>     
>>>>> https://github.com/webOS-ports/webos-ports-setup/blob/testing/conf/bblayers.conf
>>>>> 
>>>>> 
>>>>>     openembedded-core provides ofono 1.1.7 for example with
>>>>>     
>>>>> https://github.com/openembedded/openembedded-core/tree/krogoth/meta/recipes-
>>>>>    connectivity/ofono
>>>>> 
>>>>>     However we want to use ANOTHER version of ofono (1.1.7 based, 
>>>>> but
>>>>>     from a different repo/project).
>>>>> 
>>>>>     So we have our own .bbappend at
>>>>>     
>>>>> https://github.com/webOS-ports/meta-webos-ports/blob/krogoth/meta-luneos/recipes-connectiv
>>>>>    ity/ofono/ofono_git.bbappend where we specify the different repo
>>>>>     etc to use.
>>>>> 
>>>>>     This doesn't apply 1:1 in your case, but you could simply add a
>>>>>     protobuf_3.0.0.bb in your own layer and it should build that
>>>>>     instead. Just make sure you have your layer at a higher 
>>>>> position
>>>>>     compared to meta-openembedded in your bblayers.conf
>>>> 
>>>> Thanks a lot.
>>>> I have written my own repice and added it into my own layer, it
>>>> does not compile though :
>>>> 
>>>> |
>>>> | autoreconf: configure.ac: tracing
>>>> |
>>>> | autoreconf: configure.ac: subdirectory gmock not present
>>>> | autoreconf: configure.ac: not using Libtool
>>>> | autoreconf: running:
>>>> |
>>>> /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/autoconf
>>>> |
>>>> --include=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/proto
>>>> buf/3.0.0-r0/git/m4/ --force
>>>> |
>>>> | configure.ac:93: error: possibly undefined macro: AC_PROG_LIBTOOL
>>>> |
>>>> |       If this token and others are legitimate, please use
>>>> |       m4_pattern_allow.
>>>> |       See the Autoconf documentation.
>>>> |
>>>> | autoreconf:
>>>> |
>>>> /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/autoconf
>>>> | failed with exit status: 1
>>>> |
>>>> | + bbfatal autoreconf execution failed.
>>>> 
>>>> I understand this is a completely different matter now, but has
>>>> anybody else seen this before ? I have tried to compile the same
>>>> revision on my local machine "natively" and it's built fine.
>>>> 
>>>> That library should be a dependency for another package/recipe I am
>>>> working on, is it allowed to specify a version inside the DEPENDS
>>>> recipe's clause ? I have tried to google the problem but I haven't
>>>> found
>>>> a working example as yet.
>>>> 
>>>> Cheers,
>>>> P.
>>> Forget about it, I was pointing to a broken commit it.
>>> My recipe name is protobuf_3.0.0.bb, how do I make it a dependency of
>>> another package ?
>>> 
>>> I have tried many solution but none of them is working :
>>> DEPENDS = "protobuf > 3.0.0" ... "protobuf_3.0.0" ... etc etc
>>> 
>>> Any thoughts ?
>>> 
>>> P.


