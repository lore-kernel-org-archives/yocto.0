Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 766F4E00942; Fri, 23 Jan 2015 04:54:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D61BE00944
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 04:54:40 -0800 (PST)
Received: by mail-yh0-f44.google.com with SMTP id i57so3251944yha.3
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 04:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type:content-transfer-encoding;
	bh=ByZ5P8F4cxwJTuPOhFYB1HOnDzG1KGZrSPeSzGpeMoM=;
	b=0EOk1kcvJyfjDHIlsbXkoA/y55N3445Uf7QDdr5/1hg7D44zV+C2Nw8UwBlMBIljxa
	RJ9ME5WvZ3wt/EjHyFkFgNeKvd7zCtHp9AdF7qE/ezbytVV7qF9Ji8GPdFoYqTXWnP7u
	N8QbJxd/YM1MNMYHZVb0FIdBAp6jdMD1kjFFsEDpOX0MlS6FWQytLLvZBqUKVQh+u1uC
	4PCrpkOUn07I6sFg8t6nN9GosjoDpytZsshTTLTrt/ANMRW4Y3Ca+7o2+gYab+PXuJZZ
	Xk/22S3ZaOejQ0lJ2rQKnkjD0dUM7uxo96SxGffc1HFGoqLWhTJa7r9SgdVrDlIiPWoI
	HBGw==
MIME-Version: 1.0
X-Received: by 10.170.99.6 with SMTP id q6mr3367630yka.105.1422017679829; Fri,
	23 Jan 2015 04:54:39 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.123.143 with HTTP; Fri, 23 Jan 2015 04:54:39 -0800 (PST)
In-Reply-To: <54C17A37.9040104@gmx.de>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
	<CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>
	<54C17A37.9040104@gmx.de>
Date: Fri, 23 Jan 2015 10:54:39 -0200
X-Google-Sender-Auth: 7l9dir1-ATCY5o2B86OBEEOFsvo
Message-ID: <CAP9ODKr7+TXUaimhEv0kPRFh7CwkuXk5OaD+s6iZCF9VzOBS0g@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: =?UTF-8?Q?Dominic_Sacr=C3=A9?= <dominic.sacre@gmx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>, yocto <yocto@yoctoproject.org>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Fri, 23 Jan 2015 12:54:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2015 at 8:31 PM, Dominic Sacr=C3=A9 <dominic.sacre@gmx.de> =
wrote:
> On 2015-01-21 14:37, Otavio Salvador wrote:
>> The fw tools inside of U-Boot qualifies for both target and cross use
>> cases. When used in cross or crosssdk, it can be used to change things
>> in the generated image (sdcard for example) while in the target case
>> it can be used in the runtime system.
>
> I've been wondering about the "u-boot-fw-utils-cross" recipe myself.
> When I build the recipe I get what appear to be the correct binaries for
> the host architecture, located in the target-specific work directory
> (e.g. tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-fw-utils-cross).
> However, these binaries don't get installed anywhere other recipes (like
> my sdcard image) would be able to find them.
>
> My workaround so far has been to build a native package instead (by
> simply adding BBCLASSEXTEND =3D "native" to the regular "u-boot-fw-utils"
> recipe).
> This way the binaries get installed to the host's sysroot and are found
> just fine, but I feel like I'm missing something about how the cross
> recipe should be used properly for this purpose.
>
> Can anyone shed some light on this?

I sent a patch and seems to do the right thing. Can you test it?

--=20
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

