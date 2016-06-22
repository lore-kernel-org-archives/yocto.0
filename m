Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D9AAE009CF; Wed, 22 Jun 2016 05:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B3DE009BF
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:48:40 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id j2so60261063vkg.2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fyDWtRc1FaQ5W/vlC0U6jG5XOEHUvAmF+Bt8cymWac0=;
	b=Idd1YDjOf9US5kVDRed+b7ImaDJujnjxNbSumGv1Gah0AWhPs1L+85H8hoXx7SGxUc
	Q97Z/7lhHMNr/nlm1iAIEokEeiR82slvqIZgjpLfj0cpCN6GrHS3B5kxsWTjU348CllI
	q0MufVL3oDkjrlsISpCpiLoat9CGpFZK0PDmEWUaUyc4ILMiVJMnDHYyrdvvLoQuGNIW
	Jh/nlNMQKxuFhp+rPQoFnwRhtX649S+eeyon3nmimiTFGJRZq0FO3fSbRlFJOSkss1Vs
	VWGLGZRF2+KDYjUSO6+E4qao+v4Txf4MyNkfiLufGYKh2pQXqs2dLEjz1grobSXlbY78
	C5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fyDWtRc1FaQ5W/vlC0U6jG5XOEHUvAmF+Bt8cymWac0=;
	b=BnfETQfOZCVDTRzc4kZ0i6djHc7N9n0SRTHkChcgZRaffvHr5QW9yGBZ6tYsE61WNI
	yoF0gdD2T4QRw3nZZTma1ExYQoqzUkZDKPXVjsSu9AdSeX7cnYQRTXj+7FPJFiapatcL
	CIV3hsX+O5eGHaFCyDNDC+0R5P71+4HfK2yJ0yuUe+qLL7H2fU9jSeWWt4GvKoI25UU3
	YGdsHC5kojwAhSIAqSsfSJ/07CRnggxHQunn2ezq8+tjl8k7UkcPU7dqGHs8MMFFPt1W
	48QXi13ivtKgshMkCTb0B+WXsSFGC0tiecfm+leqN2YDk3K5ZozVGd1XjfDWAiWnVYFm
	ebXQ==
X-Gm-Message-State: ALyK8tL3gBjQguZvoZ9NPzdz2pN847wzQdwQTl24qFYciOEUUvh6svmDX2Qzjp+fRwaCIy1KEwFu9u5iB2Wjjw==
X-Received: by 10.31.227.196 with SMTP id a187mr12838094vkh.116.1466599719188; 
	Wed, 22 Jun 2016 05:48:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 22 Jun 2016 05:48:38 -0700 (PDT)
In-Reply-To: <OF946BB221.73033BCE-ONC1257FDA.0024A422-C1257FDA.00263E68@esa-grimma.de>
References: <OFBE39B056.C95DF73C-ONC1257FD9.002D81E4-C1257FD9.002F013D@esa-grimma.de>
	<CAF3SDA78SR_MBTry3r4FFgea38aJFKOBOZX+OeRnOi8eFtf5iA@mail.gmail.com>
	<OF946BB221.73033BCE-ONC1257FDA.0024A422-C1257FDA.00263E68@esa-grimma.de>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 22 Jun 2016 09:48:38 -0300
Message-ID: <CAF3SDA4noa-YYu5ME-j38FNefsyfeoUHJaDMx6si3qdRQ0ERjQ@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: installation of kernel modules
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
X-List-Received-Date: Wed, 22 Jun 2016 12:48:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

Can you share your log.do_rootfs?

Regards,

2016-06-22 3:57 GMT-03:00  <S.Jaritz@esa-grimma.de>:
> Hej  Daniel,
>
> Building the modules as rpm works fine but it fails for deb. The deb
> generation process seems a little buggy. I have discovered problems with
> naming recipes (the QA tries to find the license by a "lowercased" link).
>
> I checked the package dir. It is fine. The 3 files (a.ko, b.ko, & c.ko) a=
re
> placed rightfully. The splitting into packages produces 3 kernel module
> packages and the 6 standard packages(like dev, static, local, etc). I thi=
nk
> the problem is that the module will be compiled and deployed together wit=
h
> the kernel and the common packages later at the do_rootfs. That's why the
> myKernelModules recipe is deployed at the tmp/wok/<kernel> dir (and not a=
t
> the tmp/work/<rootfs>).
>
> Regards,
>
>
> Stefan Jaritz
>
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet:
> www.esa-grimma.de
>
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
>
>
>
> Von:        "Daniel." <danielhilst@gmail.com>
> An:        S.Jaritz@esa-grimma.de
> Kopie:        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Datum:        21.06.2016 20:15
> Betreff:        Re: [yocto] installation of kernel modules
> ________________________________
>
>
>
> Take a look at deploy folder if your packages (rpm in my case) are
> being created. I have faced problems where files go to -dev.rpm
> packages and the yocto silently refuses to create empty .rpm package.
>
> Regards,
>
> 2016-06-21 5:33 GMT-03:00  <S.Jaritz@esa-grimma.de>:
>> Hej
>>
>> I have a problem when running do_rootfs() with some own kernel drivers
>> included.
>>
>> My kernel recipe builds some easy GPIO drivers.
>>
>> # They come as one package:
>> myKernelModules:
>>         -> a.ko
>>         -> b.ko
>>         -> c.ko
>>
>> # I build a recipe which creates:
>> myKernelModules.bb
>>         -> packages-split/myKernelModules
>>         -> packages-split/kernel-module-a
>>         -> packages-split/kernel-module-b
>>         -> packages-split/kernel-module-c
>>         -> packages-split/myKernelModules-.....
>>
>> # I try to pack/install my Module by adding to layer.conf:
>>
>> IMAGE_INSTALL_append=3D" myKernelModules"
>>
>> When I try to build the rootfs I got that error:
>>
>> The following packages have unmet dependencies:
>>  myKernelModules : Depends: kernel-module-a but it is not installable
>>                Depends: kernel-module-b but it is not installable
>>                Depends: kernel-module-c but it is not installable
>> E: Unable to correct problems, you have held broken packages.
>>
>> Any idea how to fix this problem?
>>
>> Regards!
>>
>> Stefan Jaritz
>>
>> ------------------------------------------------------------
>> ESA Elektroschaltanlagen Grimma GmbH
>> Broner Ring 30
>> 04668 Grimma
>> Telefon: +49 3437 9211 176
>> Telefax: +49 3437 9211 26
>> E-Mail: s.jaritz@esa-grimma.de
>> Internet: www.esa-grimma.de
>>
>>
>> Gesch=C3=A4ftsf=C3=BChrer:
>> Dipl.-Ing. J=C3=B6rg Gaitzsch
>> J=C3=B6rg Reinker
>>
>> Sitz der Gesellschaft: Grimma
>> Ust.-ID: DE 141784437
>> Amtsgericht: Leipzig, HRB 5159
>> Steuernummer: 238/108/00755
>>
>>
>> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzt=
e
>> Informationen.
>> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCml=
ich
>> erhalten
>> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie di=
ese
>> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
>> Mail
>> ist nicht gestattet.
>>
>> This e-mail may contain confidential and/or privileged information. If y=
ou
>> are
>> not the intended recipient (or have received this e-mail in error) pleas=
e
>> notify the sender immediately and destroy this e-mail. Any unauthorized
>> copying, disclosure or distribution of the material in this e-mail is
>> strictly
>> forbidden.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Do or do not. There is no try"
>  Yoda Master
>



--=20
"Do or do not. There is no try"
  Yoda Master

