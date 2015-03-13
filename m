Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A15F3E00873; Thu, 12 Mar 2015 22:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2FDE0085D
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:29:49 -0700 (PDT)
Received: by qcvs11 with SMTP id s11so24217749qcv.6
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 22:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=O0pWxfYrPM0niNsu1jtYOEUDapTwrqEY5l4rnZujGmo=;
	b=zgFlQBEdR6BNYqRQuZna2GTPhmb8GXrkirEsjk+Eau4C6A6wskrAETTOn/FAewUGj9
	GoaqjZAvarNSQD5JkRa4nlEo2QAbd4taonyXg+opWpCeAuzqoaSpxe7EykL4ZzY92zzs
	fdCNgRotATuNNroy5bFi7BrnRmw/D7rs1ngBOSUAx3xDWUhx2YQKtZD5yZjvIajpgw7B
	UUzh3TiDel2nYJ24PVWSLbdpiidXgrswIi0oDtRzwfnePpNczBaoVBUYEh/Nuc06mLHV
	nOfLPJUtYjTlPPSg/Hc/Rczfr0Q+SopofFeFyO1U8z8onJLI4QLrOTHY4vHZpZ3SmVuQ
	63Sw==
X-Received: by 10.140.238.78 with SMTP id j75mr18456604qhc.96.1426224589149;
	Thu, 12 Mar 2015 22:29:49 -0700 (PDT)
Received: from 10.25.240.109-ra01.westchester.pa.bo.comcast.net
	([68.87.42.115])
	by mx.google.com with ESMTPSA id 69sm762622qgh.5.2015.03.12.22.29.47
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Mar 2015 22:29:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACjDgAM6f_jOsxY4o9ADRrf5MRTJ1hYm_8LYJpGsKvD5W-7nyA@mail.gmail.com>
Date: Thu, 12 Mar 2015 22:29:44 -0700
Message-Id: <0F917B7D-E542-4C47-BA24-1C83837BE6D6@gmail.com>
References: <CACjDgAMTi_5Jk-p4n8F80XaZzaZ637q+5pvErr=ZfsSb2n5D2w@mail.gmail.com>
	<A01D920D-DAC8-44A6-9FD4-82B54C4B8E55@gmail.com>
	<CACjDgAM6f_jOsxY4o9ADRrf5MRTJ1hYm_8LYJpGsKvD5W-7nyA@mail.gmail.com>
To: Albert K <alberk@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dizzy branch with Linux Kernel 3.19
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
X-List-Received-Date: Fri, 13 Mar 2015 05:29:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Mar 12, 2015, at 10:25 PM, Albert K <alberk@gmail.com> wrote:
>=20
> Hi,
>=20
> I am a bit confused as the 3.19 is listed in
> http://git.yoctoproject.org.   BTW, how do I check which kernel
> version is supported by a specific branch of yocto (eg dizzy, daisy).
> Thanks.
>=20

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-kernel/li=
nux?h=3Ddizzy

> Regards,
> Albert.
>=20
> On Fri, Mar 13, 2015 at 12:43 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>>> On Mar 12, 2015, at 9:21 PM, Albert K <alberk@gmail.com> wrote:
>>>=20
>>> Dear all,
>>>=20
>>> I would like to know if it is possible to do a compile with Linux
>>> Kernel 3.19.  I have tried the  =
PREFERRED_VERSION_linux-yocto_qemux86
>>> =3D "3.19%"  in the local.conf and it does not work.
>>>=20
>>> If possible, what need to be done to the this going.  Thanks.
>>>=20
>>=20
>>=20
>> you need to back port or write recipes for 3.19 kernel first
>>=20
>>> Regards,
>>> Albert.
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


