Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B09BE0080D; Fri,  7 Nov 2014 15:12:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB075E0079E
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 15:11:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 059C7129BC6
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 18:11:56 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id eMegYuHhE78s for <yocto@yoctoproject.org>;
	Fri,  7 Nov 2014 18:11:48 -0500 (EST)
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by mail.rogue-research.com (Postfix) with ESMTPSA id A2A0D129BAB
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 18:11:48 -0500 (EST)
Received: by mail-vc0-f179.google.com with SMTP id ij19so2353907vcb.10
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 15:11:47 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.52.145.164 with SMTP id sv4mr5750024vdb.50.1415401907953;
	Fri, 07 Nov 2014 15:11:47 -0800 (PST)
Received: by 10.31.3.220 with HTTP; Fri, 7 Nov 2014 15:11:47 -0800 (PST)
In-Reply-To: <545C0397.3030304@mlbassoc.com>
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
	<545C0397.3030304@mlbassoc.com>
Date: Fri, 7 Nov 2014 18:11:47 -0500
Message-ID: <CACgAsMe_ub+uGya_tkrFnJNdFBxfvxmkfD8eO94TzF205sx=ew@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Fri, 07 Nov 2014 23:12:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Gary,

On Thu, Nov 6, 2014 at 6:26 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2014-11-06 16:01, Kevyn-Alexandre Par=C3=A9 wrote:
>>
>>
>> ls
>> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms/a=
rmv7a_vfp_neon/
>> gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm
>> gtest-dev-1.7.0-r0.armv7a_vfp_neon.rpm
>
>
> Where is the gtest-1.7.0-r0.armv7a_vfp_neon.rpm??

This is a part that I don't yet understand about packaging... Why the
gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm is there and empty and and
other empty package are not? I think I have read that -dbg is always
there ? Anyone can point my to documentation about that didn't found
it.

>
> I suspect that the build didn't work correctly, or at least it generated
> no installable objects which by default will not generate an empty packag=
e.
>
>

hmm thx

-KA

