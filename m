Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F6AE00953; Mon, 20 Apr 2015 09:03:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08CFAE00932
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 09:03:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 3864F61C2AB
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 12:03:29 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 2qqUMXm9xn1q for <yocto@yoctoproject.org>;
	Mon, 20 Apr 2015 12:03:28 -0400 (EDT)
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 5584561C29A
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 12:03:28 -0400 (EDT)
Received: by wgyo15 with SMTP id o15so184567663wgy.2
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 09:03:27 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.60.43 with SMTP id e11mr33288151wjr.36.1429545807092;
	Mon, 20 Apr 2015 09:03:27 -0700 (PDT)
Received: by 10.194.24.97 with HTTP; Mon, 20 Apr 2015 09:03:27 -0700 (PDT)
In-Reply-To: <CA+chaQeJ64oS8baJLS-L7fTPFBAWNBUCYSFU2OAD3_8mrExm3g@mail.gmail.com>
References: <CACgAsMcywJ-vWKqC5Sfm7r4mxdboqtKW-NqD32=24LkA3OuG1Q@mail.gmail.com>
	<CA+chaQeJ64oS8baJLS-L7fTPFBAWNBUCYSFU2OAD3_8mrExm3g@mail.gmail.com>
Date: Mon, 20 Apr 2015 12:03:27 -0400
Message-ID: <CACgAsMeejt=pUa_VoVEc9StzJOvsxU=EBBBdBpUfhPDcHUbjGw@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [daisy][powertop] powertop_2.5.bb, do_configure) failed with exit code '1'
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
X-List-Received-Date: Mon, 20 Apr 2015 16:03:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

thx, cleaner way then my temporary fix. I tested it and it's working fine.

git checkout 3ee4015f5b5264d69178f78f0408ab4a225d3877
meta/recipes-kernel/powertop/powertop_2.7.bb

Any thought when this will be backported to Daisy branch? I presume
for the next rc.

thx again,

-KA

ref:
http://cgit.openembedded.org/openembedded-core/commit/?id=3Da3e9b391e1024d6=
d2e256b75c214d34e6693e332
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D3ee4015f5b5264=
d69178f78f0408ab4a225d3877

On Sun, Apr 19, 2015 at 2:03 PM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> See
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-April/1038=
29.html
>
> The same fix is now needed in daisy branch.
>
>
> On Fri, Apr 17, 2015, 21:52 Kevyn-Alexandre Par=C3=A9 <kapare@rogue-resea=
rch.com>
> wrote:
>>
>> Hi,
>>
>> This was not a problem on 1.6.2 then udpated and I'm unable to
>> configure powertop. I tried to erase sstate & tmp folder without
>> success.
>>
>> The fix was to comment:
>> #LDFLAGS +=3D "${EXTRA_LDFLAGS}"
>>
>> in
>> poky/meta/recipes-kernel/powertop/powertop_2.5.bb
>>
>>
>> The logs show that the ${EXTRA_LDFLAGS} gets added during the configure?
>>
>> Any thoughts on why?
>>
>> I looks at commits from 1.6.2 to 1.6.3 and I don't see why this could
>> happen.
>>
>> Could it be a update on Ubuntu 14.04?
>>
>> thx,
>>
>> -KA
>>
>> Here's the complete logs:
>>
>> log.do_configure:
>> https://gist.github.com/kapare/971387ca3812c019a65f
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

