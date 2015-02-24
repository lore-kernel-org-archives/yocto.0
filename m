Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F980E0076F; Tue, 24 Feb 2015 13:58:04 -0800 (PST)
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
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD080E00477
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 13:58:02 -0800 (PST)
Received: by paceu11 with SMTP id eu11so39213385pac.7
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 13:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=BuZiBTYWrqha3HzAQcPVfNTTyit3uRgR+aTm4h5BCzE=;
	b=DnQxEG/BWusP+Iqqk6bO6D14pPMbLQYyr3fcVz9bI5szM+jkI7sIHT+T5GIM2WLpRw
	dtqrlkZEYIamnsEuciqjdMN4CQJ39oyDkY5WekZ6CicevDDizrJD5ndGCc9mL53tboRm
	Gn26/bIftY5MyjHCDlf3z8pPKKPO/T4B0skLFlfQvK+Suz03+87mB9NcJC0d8F/VGQ+r
	RzaboH9iEkGGKfmCGX4+vPfJMskSFKrS9Zxz76nhLp9LV/uZ6Iuquyma3pxoK19WbkLL
	deErAg0Fza+hAPkpPSW9wp4KvwcYwzMw5qzC0eBlk95fqY3WGqtwbPNK06k6rj9PvvTa
	cHIQ==
X-Received: by 10.66.186.65 with SMTP id fi1mr32076663pac.51.1424815082374;
	Tue, 24 Feb 2015 13:58:02 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:dce0:85c5:10b5:32ac?
	([2601:9:3580:84c:dce0:85c5:10b5:32ac])
	by mx.google.com with ESMTPSA id r8sm23601241pdp.10.2015.02.24.13.58.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 24 Feb 2015 13:58:01 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9D1FFBD5-9F30-42BF-8242-4C06614F9F34@gmail.com>
Date: Tue, 24 Feb 2015 13:58:00 -0800
Message-Id: <46DD4E72-0F8A-47CA-BC28-A2493089C0E7@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<1424455387.11836.57.camel@linuxfoundation.org>
	<1424510550.11836.66.camel@linuxfoundation.org>
	<9D1FFBD5-9F30-42BF-8242-4C06614F9F34@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
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
X-List-Received-Date: Tue, 24 Feb 2015 21:58:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Feb 23, 2015, at 10:59 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>>=20
>> On Feb 21, 2015, at 1:22 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>>=20
>> On Fri, 2015-02-20 at 18:03 +0000, Richard Purdie wrote:
>>> On Mon, 2015-02-02 at 02:02 -0800, Khem Raj wrote:
>>>> I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
>>>> upcoming ) on  a contrib branch ( top 2 patches) its has not got =
much
>>>> testing besides x86 qemu thus far.
>>>>=20
>>>> =
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-gl=
ibc-upgrade
>>>>=20
>>>> I would like to request some help in testing these out in your
>>>> respective environments and please report any issues you see so we =
can
>>>> start sorting them out at earlier and making its way into OE-Core.
>>>>=20
>>>> Thanks for your help
>>>=20
>>> For info, I've now merged the glibc part of this change now too.
>>>=20
>>> Khem: Thanks for the work on this!
>>=20
>> New issue that caught my eye:
>>=20
>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-qa-logrotate/bu=
ilds/204/steps/Running%20Sanity%20Tests/logs/stdio
>>=20
>> segfault in init within libc :/.
>=20
> I have booted core-image-minimal, for all arches and that have worked =
fine for both systemd and sysvinit and some of non-oe-core graphic =
images booted well too
> but here it seems its using core-image-sato wondering what changed =
there =E2=80=A6 can someone try it out and may be see what is it trying =
to launch during boot that is in addition
> to core image minimal.

My core-image-sato/sysvinit booted without crash too ( host is ubuntu =
15.04 x86_64)=

