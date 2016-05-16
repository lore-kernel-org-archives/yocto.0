Return-Path: <matt@madison.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19C23E00DDF; Mon, 16 May 2016 07:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 816ABE00DDA
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 07:47:11 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id m64so117501533lfd.1
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 07:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=madison-systems.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=glFtEcnqgLkGaUwwlLR6G35BRI6q9pCEBKIhKD7ZtLM=;
	b=laOsXVS5LWCAkOqD/mItXk/K01h71LjmW2fihSpg1zBta5pvQSPJ/nukDSsFueo1dQ
	G1wbVBrgcM8eqsQ3KGkYsE8+hACQOKQFc2433zRG6QYurPDa8IgeXa7ZoLwqnTDm+tYE
	K5W0WnIPFT+yrimMNXZgTRsWFwxxln2xX3SvVdkBQ0gaIzC6vxUDR+NAaNTqR7WZtp1G
	2Y+8Jpqr6SiEUdXt/LkROL7vHeKGoIGcWfsQ0Sdo5gvnwTapTEcl7h03rx0C16Ci6iBF
	K3D7GPWinxl/ZPZTEN2V9SLjRfVKAkNeyZ3MJUdDLeSABd+Ae2yzsOwA+YyF1DgTOqgg
	+74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=glFtEcnqgLkGaUwwlLR6G35BRI6q9pCEBKIhKD7ZtLM=;
	b=UBASP3dHr5eoJOsitQgXn/bLwa/V2Lxz0MpD4zDcSAFPEAaK4kMvrEO8TD0n2W4Fvz
	y1G9E8To/0D+8hFAWLM1u9Lo7VUuO4hVc2kaAYLgLdbW6tgZ5ai7WVKmAtkbNvLx2Mwz
	JBWu7vITPyUT3N/ObcX3RLnbwDrF56T5loDqbQib6DtuiDZsuFYDdFWCcQVeTLge9427
	mQec5gxV4i2iu+9QwHpY1ehCehncetk/sKiCBMBSEzap99mNW1z6F1FBMCsybuTQPdUu
	K5sS6sE+jqRAapfdfT91WDH4wGQwo2hnosmghyyh1c4uPgsFnxGLG4B9/p8QcKVfroBX
	vpuw==
X-Gm-Message-State: AOPr4FX7Ei9Bfl6PTIyNbBlWMmC9O8+qBZRPnHWqenicHDMJcWRBJN/gzlKfgdLQeXPVUTLJl4i11PTMtKy+wg==
MIME-Version: 1.0
X-Received: by 10.25.39.141 with SMTP id n135mr11460595lfn.98.1463410030345;
	Mon, 16 May 2016 07:47:10 -0700 (PDT)
Received: by 10.25.31.131 with HTTP; Mon, 16 May 2016 07:47:10 -0700 (PDT)
In-Reply-To: <d8eca3ae-86db-35c1-951e-696dbab4b901@balister.org>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
	<CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
	<2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
	<0F4D52DD-BB7E-4449-B5B2-5D90A683ABC3@madison.systems>
	<d8eca3ae-86db-35c1-951e-696dbab4b901@balister.org>
Date: Mon, 16 May 2016 07:47:10 -0700
Message-ID: <CAGgRHJq73XZ9FfRPLExVUQ7VXdychKSEL0h4JNfCWmsMNEQ_pQ@mail.gmail.com>
From: Matt Madison <matt@madison.systems>
To: Philip Balister <philip@balister.org>
Cc: yocto@yoctoproject.org
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Mon, 16 May 2016 14:47:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 16, 2016 at 6:09 AM, Philip Balister <philip@balister.org> wrot=
e:
> On 05/15/2016 01:29 PM, Matt Madison wrote:
>> On 15 May 2016, at 04:25 , Jack Mitchell <ml@embed.me.uk> wrote:
>>>
>>> On 14/05/16 23:46, Paul Knopf wrote:
>>>> This is what I am thinking.
>>>>
>>>> DEFAULTTUNE =3D "cortexa9hf"
>>>> require conf/machine/include/tune-cortexa9.inc
>>>>
>>>> Does this sound right? I am using "hf" because in the crosstools-ng
>>>> has CT_ARCH_FLOAT=3D"hard", and cortexa9 because of
>>>> CT_ARCH_CPU=3D"cortex-a9" and CT_ARCH_TUNE=3D"cortex-a9".
>>>>
>>>> Sorry, I'm that familiar with embedded processors. Any guidance would
>>>> be greatly appreciated.
>>>> <snip>
>>>
>>> Someone has already started having a go.
>>>
>>> https://github.com/watatuki/meta-jetson-tx1
>>>
>>> Easiest way to check for support in OE is to google meta + devboard nam=
e. Usually turns something up :)
>>
>> There=E2=80=99s also https://github.com/madisongh/meta-tegra.
>
> Please add your layers to the layer index as soon as possible so people
> can search there. This helps prevent duplicate layers.

Thanks for reminding me.  I held off initially, until I had enough
content and testing done, but it's in not-too-bad shape right now.  I
just submitted this and another layer I've been working on.

Thanks,
-Matt

> Any chance the TX1 people can combine efforts so we only have one bsp
> for this board?
>
> Philip
>
>
>
>
>>
>> -Matt
>>
>>
>>>
>>> Cheers,
>>> Jack.
>>>
>>> ---
>>> Jack Mitchell
>>> Embedded Linux Consultant
>>> www.tuxable.co.uk
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>

