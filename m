Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1149E0034A; Wed, 18 Feb 2015 16:23:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62838E0033D
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 16:23:17 -0800 (PST)
Received: by padbj1 with SMTP id bj1so5169919pad.5
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 16:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=eETRexsQo0FwWf+e9eUvAhE0XGz79ou6Jw/Xvwcdua4=;
	b=qLvWR3yN4mFvLUpfUFSnYS2wS3RDExW/c7gSIOl3IHLtmKYFJcBmAcr6CvjL5We30l
	iuJq8NE08K2A4hKwNBNoeNVsx5dsKvTQa8MACgJwsYhOjZt45CL6WdgF/dWzhY3wdPJD
	ns9ScWYt+nX9In6MKr/+jRKTSOo92jcRYOoiW/DaTZprNxhCzkkCywud934Jdtcq17Wg
	+zGA9Y7y2P6eutLRWH/WzS1FUT9Sofraq+E4k2pGJ4zO7SGzmBZuqIHDbiuc7PCG4FzX
	4aMtaeHxp4t/CQzH7iUGadeIxqa5Z3xW4iFbq1FoXKPlJWbhOqV+lGZLVtLlk3hipgJA
	QvMQ==
X-Received: by 10.66.142.100 with SMTP id rv4mr3217701pab.84.1424305397642;
	Wed, 18 Feb 2015 16:23:17 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:ac05:bc97:a5e3:53c?
	([2601:9:3580:84c:ac05:bc97:a5e3:53c])
	by mx.google.com with ESMTPSA id
	pu10sm17223479pdb.27.2015.02.18.16.23.15
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 18 Feb 2015 16:23:16 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1424295668.11836.19.camel@linuxfoundation.org>
Date: Wed, 18 Feb 2015 16:23:14 -0800
Message-Id: <E5ADEF30-DBC9-4250-ACA4-F889D8CFDA89@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
	<CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
	<CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
	<1423908404.20217.100.camel@linuxfoundation.org>
	<CAMKF1sofS7MteZnPsTYRNAcMwrrh=T3FP+ASmAOGDMhcwyXB4g@mail.gmail.com>
	<1424245575.25541.19.camel@linuxfoundation.org>
	<BCB8524E-91CB-41F6-83C0-7B90E60BC82D@gmail.com>
	<1424260309.25541.23.camel@linuxfoundation.org>
	<1424264807.11836.1.camel@linuxfoundation.org>
	<3F6EFBD4-AC35-4CE0-B52C-0ABDA0D17838@gmail.com>
	<1424295668.11836.19.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Dan McGregor <danismostlikely@gmail.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Thu, 19 Feb 2015 00:23:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Feb 18, 2015, at 1:41 PM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Wed, 2015-02-18 at 10:38 -0800, Khem Raj wrote:
>>> On Feb 18, 2015, at 5:06 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>>> On Wed, 2015-02-18 at 11:51 +0000, Richard Purdie wrote:
>>>> On Wed, 2015-02-18 at 01:01 -0800, Khem Raj wrote:
>>> The series needs:
>>>=20
>>> TUNE_CCARGS_x86 :=3D "${@oe_filter_out('-mfpmath=3Dsse', =
'${TUNE_CCARGS}', d)}"
>>> +TUNE_CCARGS_x86-64 :=3D "${@oe_filter_out('-mfpmath=3Dsse', =
'${TUNE_CCARGS}', d)}=E2=80=9D
>>>=20
>>=20
>> hmmm I assumed x86 was common across 32bit and 64bit x86 but seems =
not so I replaced the old patch instead of appending it=20
>=20
> Thanks, I'll update the patch for the next round.
>=20
>>=20
>>> since the x86 override doesn't cover x86_64. I'll queue that and run =
yet
>>> another build. We do have another poky-tiny issue too:
>>>=20
>>> =
https://autobuilder.yoctoproject.org/main/builders/poky-tiny/builds/204
>>>=20
>>=20
>> OK. I am creating a local config to use tiny config for libc and weed =
out remaining build issues for tiny config=20
>=20
> Cool, thanks.
>=20
> The next build is in progress and looking greener than the last. Next =
up
> it appears we still have multilib issues:

I have pushed a new patchset to same branch. That should fix the tiny =
build issues.

>=20
> =
https://autobuilder.yoctoproject.org/main/builders/nightly-multilib/builds=
/201


| dcigettext.c: In function '__dcigettext':
| dcigettext.c:856:30: error: '__libc_setlocale_lock' undeclared (first =
use in this function)
|         __libc_rwlock_unlock (__libc_setlocale_lock);

is what I see.

I have fixed this in the latest patchset. So lets start with the new =
patchset.


> There is a possibility this "from sstate" build may have run into a
> problem with sstate but something looks to be wrong with glibc in some
> regard.
>=20
> Cheers,
>=20
> Richard
>=20


