Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66EA1E009C5; Thu,  8 Oct 2015 10:12:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 697ABE009C5
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 10:12:42 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so38067824wic.0
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 10:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=O+1l/2SE9z1j8LAqn2EZqr9pM0hEedC5VZY9wTZXqic=;
	b=evqjBY8HESfMHioELJw6d0MQ1a+dWhP76hcneHaGHKZSIPAb4qaL91yGJUsSKQdNHB
	TcM3jHt3SaTb3q8KQgz6Ku9rZw0YsDqBNpabcGtCYakjCzyCkaCBSNp4qsP4S+ofb5pH
	Xr5IUNuw1uImOtRyuymc9+M+G8vNaORY+aAP73tqpCmDPUoWXd0merrvGIxkU5I8TQVm
	bpuQPsmG8fOBF4VmQb7MmCeB4TRzCvoWnc9ggHuj5NMEAurikKTNq08XccinlLUT1uuA
	gD6Szvq9GsNLnSV9yMoUH3faeH9FFBFawhSrIPDDN0VOor9tLWzj0gl1Fc2s/UTMFXmy
	mKOQ==
X-Received: by 10.180.105.33 with SMTP id gj1mr5176841wib.90.1444324361213;
	Thu, 08 Oct 2015 10:12:41 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	an4sm8947184wjc.36.2015.10.08.10.12.40
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 Oct 2015 10:12:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <D9E42333-6E09-4C07-B6B9-A64828201F3A@gmail.com>
Date: Thu, 8 Oct 2015 19:12:39 +0200
Message-Id: <9A87F556-6EB0-48AD-8E76-6831D9899A4F@gmail.com>
References: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
	<69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
	<E36BFEC6-6F32-4F29-A200-4CE84A535043@gmail.com>
	<FD12338D-82E7-4A3A-84F1-5AA7E9EFA8CD@gmail.com>
	<2AAE1454-4C74-4639-AB5E-C49D77DA98B7@gmail.com>
	<D9E42333-6E09-4C07-B6B9-A64828201F3A@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/7][meta-openembedded] Update nginx to 1.9.5
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
X-List-Received-Date: Thu, 08 Oct 2015 17:12:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> Am 08.10.2015 um 18:43 schrieb Khem Raj <raj.khem@gmail.com>:
>=20
>>=20
>> On Oct 8, 2015, at 9:13 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>>=20
>>=20
>>> Am 08.10.2015 um 17:05 schrieb Khem Raj <raj.khem@gmail.com>:
>>>=20
>>>>> [...]
>>>>> This is good info. Although a link to diff in cgit or web view of =
whatever SCM nginx uses would have done too.
>>>>=20
>>>> That's simply the Changelog. It's an update, not a fix for a =
critical issue.
>>>> Do you really ask me to list each fixed bug from nginx' ticket =
list?
>>>=20
>>> No, on the contrary, I said if the release published the link for =
all this changes somewhere then just include the link
>>> instead of enumerating changes here.
>>=20
>> Well, the Changelog changes depending what's published. Currently =
it's
>> http://nginx.org/en/CHANGES - but when a 1.10 or a 2.0 will be =
released,
>> it's going to be http://nginx.org/en/CHANGES-1.9 (but this file =
currently
>> doesn't exists :/)
>>=20
>> Aaand - even if http://nginx.org/en/CHANGES-1.9 would exists, it will
>> include even the changes for a potential 1.9.6, 1.9.7 ... regardless
>> we have updated to those versions =E2=80=A6
>>=20
>=20
> sometimes they have them published within the source code repo and =
that could
> be used but if thats not the case its ok.
>=20
>> I replace the changelog by any URI you prefer - but I favor for
>> such circumstances static text ;)
>>=20
>=20
> sure.

So I redo my 7 patches with -M and here and there better description and =
resent.
Start of next week or so ...

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


