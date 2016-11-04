Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC95E009FA; Thu,  3 Nov 2016 22:38:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1D11E00912
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 22:38:29 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9C1CA68A01A; Fri,  4 Nov 2016 05:38:28 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 3FB4768A019;
	Fri,  4 Nov 2016 05:38:27 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id AB5B767400C9;
	Fri,  4 Nov 2016 06:38:26 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
	<fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
	<1539248.F6glg5RPsy@peggleto-mobl.ger.corp.intel.com>
Message-ID: <a6b42251-5ef9-3265-2a56-98331ba44c11@mlbassoc.com>
Date: Fri, 4 Nov 2016 06:38:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1539248.F6glg5RPsy@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Fri, 04 Nov 2016 05:38:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-04 04:41, Paul Eggleton wrote:
> On Wed, 02 Nov 2016 07:25:13 Gary Thomas wrote:
>> I've tested your patches for this (from the OE-core mailing list)
>> and I can now build and use the eSDK for my board :-)
>
> Great!
>
>> I do have a couple observations/questions:
>>
>> * I added my missing tool with this line in my local.conf
>>       TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
>>    Why did this cause many of the nativesdk tools to have to be rebuilt?
>
> So just FYI this will only work for the standard SDK, it's not the right way
> to add these tools for the eSDK - in fact it may break the eSDK due to
> bringing things into the native sysroot that shouldn't be there.
>
> At the moment I think the only way to properly add this to the eSDK is to do
> this:
>
> SDK_TARGETS += "ti-cgt-pru-native:do_populate_sysroot"
>
> We don't document this, and it's a little awkward in any case. I'll work on
> it.

I'll change my setup to use this.  Hopefully you can find a prettier way to
do it in the future and document how.

>
>> * When I built 'nativesdk-ti-cgt-pru', I got a number of scary looking
>> errors - here are a few: ERROR: nativesdk-ti-cgt-pru-2.1.1-r0 do_configure:
>> Taskhash mismatch eb0229a8c364c4c399fc2e84f4dfaf91 versus
>> b5d16aa43836f3832200af39aba5b796 for
>> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cg
>> t-pru_2.1.1.bb.do_configure ERROR: Taskhash mismatch
>> eb0229a8c364c4c399fc2e84f4dfaf91 versus b5d16aa43836f3832200af39aba5b796
>> for
>> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-c
>> gt-pru_2.1.1.bb.do_configure ERROR: nativesdk-ti-cgt-pru-2.1.1-r0
>> do_compile: Taskhash mismatch bc0d6bb3a62f58875962d4ccf1b60dd9 versus
>> 9e207a5a6aa53512135b5ea3a0610bf3 for
>> virtual:nativesdk:/local/poky-cutting-edge/meta-ti/recipes-ti/devtools/ti-cg
>> t-pru_2.1.1.bb.do_compile
>
> Where did you build this? Just in your normal build?

I got this when I built nativesdk-ti-cgt-pru directly from the command line.
The ti-cgt-pru-native package had already been built indirectly by pru-icss.

>
> This kind of error indicates that a variable value is changing while bitbake
> is running - often this is caused by date/time values in variables. Looking in
> meta-ti I can't see anything that would cause this though. Was it only showing
> up for nativesdk-ti-cgt-pru ?
>
>> * When I installed the eSDK on a machine other than where I
>>    built it, I also got a lot (865) of messages like these:
>>
>> WARNING: The quilt-native:do_configure sig is computed to be
>> 315b89079a159e1d4e43d3199c487bdb, but the sig is locked to
>> a9909bdcc4c81106eb42c21bb0d760fc in SIGGEN_LOCKEDSIGS_t-x86-64
>> The quilt-native:do_compile sig is computed to be
>> be128011cc1f47157898f513dc4e9bbb, but the sig is locked to
>> fa83446de41fe9e7c2c49c2745438a8d in SIGGEN_LOCKEDSIGS_t-x86-64
>> The quilt-native:do_install sig is computed to be
>> 85c8be820a93b84901dd7528eb61840e, but the sig is locked to
>> 6caa366055ef06147ef64cbe7d83c608 in SIGGEN_LOCKEDSIGS_t-x86-64
>> The quilt-native:do_populate_sysroot sig is computed to be
>> 5b0f52254aa8548fa406b806dae000cb, but the sig is locked to
>> d3cf7e526716d0286ce596c44c6b9936 in SIGGEN_LOCKEDSIGS_t-x86-64
>> The glibc:do_patch sig is computed to be 373272e62465460928320aa7643f9916,
>> but the sig is locked to 712620a3943887e11d9730013d1e07f0 in
>> SIGGEN_LOCKEDSIGS_t-armv7ahf-neon
>
> Right. Are you using uninative? If not, you probably should (and I just sent a
> patch to disable building the eSDK without it).

I'll give that a go and see if it helps.

>
>> All that said, it is now working for me, time to learn to use it!
>> Thanks for your help.  Feel free to add my Acked-by or Signed-off-by
>> to your patches if you wish.
>>
>> Acked-by: Gary Thomas <gary@mlbassoc.com>
>> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
>
> Thanks!
>
> Cheers,
> Paul
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

