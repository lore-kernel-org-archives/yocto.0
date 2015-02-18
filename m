Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81D3BE003A8; Wed, 18 Feb 2015 01:01:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52EA4E0034E
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 01:01:22 -0800 (PST)
Received: by pdjy10 with SMTP id y10so50073234pdj.13
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 01:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Jm7EQHuXSKQ0iZFtmJSiWqMG9VcDgPK3SDPxAxUUX8c=;
	b=XwqQrAD1OeaORLTBMppnyp6vXRRklWplO9aefwA5uvaHTREY9fqvTMQRp8oyZl7efK
	9ASjzxllTUb6vxvGjz+DwP1flS7qmmoKxhAoZO9LPsFeOiKnV9nxzNIfRMyUSSK0oiHU
	JQfAKDTkxTFRZvvfvp8uyN9SCgduhHNnRGHttZTHWTG8Eg4G2VBYqj3z4g3983hTUE14
	bmYPwm0QoeFYABqWtM9fJGQDnwQC6qBj58lz3hrFLyMHvEBjM8dfJJKeiDqd8H1rZHob
	rgAo/KKgOIBOChIn5iSL0L8XXv8486WWRxsErRG2HtFqAQ8tYPzDiHvn9/sdWyGPOF4V
	xHzQ==
X-Received: by 10.66.136.17 with SMTP id pw17mr56960593pab.33.1424250082540;
	Wed, 18 Feb 2015 01:01:22 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:b96a:7d9e:812f:646d?
	([2601:9:3580:84c:b96a:7d9e:812f:646d])
	by mx.google.com with ESMTPSA id c9sm20013292pdj.52.2015.02.18.01.01.21
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 18 Feb 2015 01:01:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1424245575.25541.19.camel@linuxfoundation.org>
Date: Wed, 18 Feb 2015 01:01:19 -0800
Message-Id: <BCB8524E-91CB-41F6-83C0-7B90E60BC82D@gmail.com>
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
X-List-Received-Date: Wed, 18 Feb 2015 09:01:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Feb 17, 2015, at 11:46 PM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Tue, 2015-02-17 at 23:15 -0800, Khem Raj wrote:
>> On Sat, Feb 14, 2015 at 2:06 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> Hi Khem,
>>>=20
>>> On Thu, 2015-02-12 at 15:35 +0800, Khem Raj wrote:
>>>> I have refreshed the branch to include the patch which moves the =
src
>>>> uri to use the newly released glibc 2.21 branch
>>>> and please run it via autobuilder ( top 5 commits )
>>>=20
>>> Its running on the autobuilder at the moment. Errors will be =
reported to
>>> the error reporting system and can be seen at:
>>>=20
>>> =
http://errors.yoctoproject.org/Errors/Search/?items=3D10&query=3Dbe29d13a8=
47d458efaf542ed302e48050f67a655
>>>=20
>>> Right now, poky-tiny failed due to warning are errors and unused
>>> symbols. Minnow failed due to SSE instruction issues. Full build =
logs
>>> are also available on the autobuilder:
>>>=20
>>> https://autobuilder.yoctoproject.org/main/tgrid
>>>=20
>>> as ross/mut-next. We do have other changes in the branch but the =
above
>>> are pretty clearly glibc.
>>>=20
>>> Other errors will go to the places above as the builds =
complete/fail.
>>=20
>> Thanks. So I see following errors categories and status
>>=20
>> 1. valgrind - Martin already sent a patch for that
>> 2. slang - I could not yet reproduce it on my active build (mips) (
>> seems specific to x86/ppc )
>> 3. poky-tiny - glibc build - ( pushed a fix for that in latest pull =
tree)
>> 4. minnow/qemux86 - glibc failure - ( pushed a fix for that in latest
>> pull tree )
>> 5. glibc build failure on qemuarm - need to reproduce here
>> 6. Image failures are probably due to above not building
>>=20
>> I might get slang reproduced soon on qemux86 if I do I will try to
>> push for a fix
>=20
> I think slang is a parallel make race from another patch so don't =
worry
> about that one, Robert will likely get that when he comes back.

OK thats why I am not seeing it on my qemux86 build.=20

this leaves us with only one problem - glibc/qemuarm issue

http://errors.yoctoproject.org/Errors/Details/8679/

I have seen this error with eglibc-2.19 and glibc 2.20 as well on x86 =
and arm as well in cases when using
toolchain from sstate and rebuilding glibc with that. I assume this =
could be  unrelated to glibc upgrade
and may be a latent problem. Could be missing dependency on a native =
tool or some such. I have been attributing it to gold
but that just might have been a red herring.

I will see if I can get to reproduce it.=

