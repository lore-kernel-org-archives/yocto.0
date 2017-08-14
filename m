Return-Path: <Michal.Vokac@ysoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCC37E00CEC; Mon, 14 Aug 2017 06:11:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.19.3.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from uho.ysoft.cz (uho.ysoft.cz [81.19.3.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C25E00B72
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 06:11:10 -0700 (PDT)
Received: from APczBrno16.ysoft.local (apczbrno16.ysoft.local [10.0.0.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by uho.ysoft.cz (Postfix) with ESMTPS id 1AAACA82F3;
	Mon, 14 Aug 2017 15:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
	s=20160406-ysoft-com; t=1502716264;
	bh=LRCookytemqurydxGR0tOENZM+vfzgaPLoxqNdRGij0=;
	h=From:Subject:To:CC:References:Date:In-Reply-To:From;
	b=G78wGvOf4rWJL+T21fxA/nWlCpJG9daCXwU9ho4NlT8dE5rOtRqO9bEAvcIyPGr0B
	517PVsWfpygaqXUM2GNtjndkPGS5FSMwWmrzzv+XLfB+bK7hh4Sg46oo4PdXqVUC6k
	YhkvWmjsiOIYfH+1d9DU6+nlp2tNTnFMz9h4tsaY=
Received: from [10.1.8.241] (10.1.8.241) by APczBrno16.ysoft.local (10.0.0.90)
	with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Mon, 14 Aug 2017 15:11:08 +0200
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
To: Khem Raj <raj.khem@gmail.com>
References: <1502455978267.42486@ysoft.com>
	<CAMKF1sq7UyCVO4hW_D0Z==5AVi9Ua-R_bd+NhSj0LHykvY50Xw@mail.gmail.com>
Message-ID: <d2639fe8-813e-69e3-5e85-c1687e1663a4@ysoft.com>
Date: Mon, 14 Aug 2017 15:11:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq7UyCVO4hW_D0Z==5AVi9Ua-R_bd+NhSj0LHykvY50Xw@mail.gmail.com>
X-Originating-IP: [10.1.8.241]
X-ClientProxiedBy: APczBrno16.ysoft.local (10.0.0.90) To
	APczBrno16.ysoft.local (10.0.0.90)
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: [10.1.8.241]
X-GFI-SMTP-RemoteIP: 10.1.8.241
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate cpio.gz AND cpio.gz.u-boot image from single recipe?
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
X-List-Received-Date: Mon, 14 Aug 2017 13:11:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11.8.2017 18:31, Khem Raj wrote:
> On Fri, Aug 11, 2017 at 5:52 AM, Vok=C3=A1=C4=8D Michal <Michal.Vokac@yso=
ft.com> wrote:
>> Hi,
>>
>> I am in a process of upgrading our project from Jethro to Morty.
>> For a while I am trying to solve an issue with generating initramfs imag=
es.
>>
>> We have an image recipe that says:
>>
>> IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
>> inherit core-image
>> inherit image_types_uboot
>>
>> With the Jethro branch of the openembedded-core layer all thee defined i=
mage types are generated.
>>
>> After upgrade to Morty, the cpio.gz image is deleted somewhere in the pr=
ocess of generating
>> the cpio.gz.u-boot image (which is probably the right behavior of image_=
types_uboot.bbclass).
>>
>> I wonder why it worked before and how to make it work again, properly.
>
> it is intentional. See
> https://github.com/01org/luv-yocto/commit/09a5cb0cca109395a4835e25d483019=
ddd5e773c
>

Thank you Raj, that explain why the gziped image is being removed.

I still need to figure out, how to produce both image types from one recipe=
.
Lets imagine I went through these steps.

   1. I set up the recipe so that the tar.bz2 and cpio.gz images are genera=
ted.

   IMAGE_FSTYPES =3D "tar.bz2 cpio.gz"
   inherit core-image

   The tar is just for development debugging and the cpio.gz is packed into
   a FIT image that goes into production.

   2. After some unspecified time a need arose to produce also
   the cpio.gz.u-boot image that can be loaded manually in U-Boot during de=
velopment.

   I changed the recipe like this:

   IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
   inherit core-image
   inherit image_types_uboot

 From my point of view, the image_types_uboot class is removing
the cpio.gz image that was generated by someone else.
In my situation it is not "a middle file" as the commit you referenced says=
.

I would understand that the cpio.gz is removed when it is not stated in
the IMAGE_FSTYPES variable.

 From reading the IMAGE_FSTYPES variable documentation a user/developer can=
 never
get the idea that some image types can not be generated simultaneously.
IMHO a proper behavior would be to generate and preserve all supported imag=
e
types stated in the IMAGE_FSTYPES variable.

Any ideas how to achieve that?

________________________________

CONFIDENTIALITY NOTICE
This message is for the named person's use only. It may contain confidentia=
l, proprietary or legally privileged information.
If you receive this message in error, please immediately delete it and all =
copies of it from your system, destroy any hard copies of it and notify us =
by email to info@ysoft.com with a copy of this message. You must not, direc=
tly or indirectly, use, disclose, distribute, print or copy any part of thi=
s message if you are not the intended recipient. Y Soft and any of its subs=
idiaries each reserves the right to monitor all e-mail communications throu=
gh its networks.
Y Soft is neither liable for the proper, complete transmission of the infor=
mation contained in this communication nor any delay in its receipt. This e=
mail was scanned for the presence of computer viruses. In the unfortunate e=
vent of infection Y Soft does not accept liability.
Any views expressed in this message are those of the individual sender, exc=
ept where the message states otherwise and the sender is authorised to stat=
e them.

