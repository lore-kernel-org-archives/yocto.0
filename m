Return-Path: <prof7bit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6CC2E00CEF; Fri, 13 Oct 2017 01:57:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prof7bit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C4BE00CD1
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 01:57:42 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id u32so4837990uau.0
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 01:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=+Z9XvI2QTaD91uJNZf/okfieYvYenCL2afnutbWtX8c=;
	b=YhcHvue4kozWoh10QVtArvlpS3rRv0Co/vCPHGTlNuGyf1jSIqNkgUl6V2G14XIEzj
	NnaJtuHKM+xoxZE+4Up6JgrieXRq3eMQhL/X8iRbzhEiqV8GPBBHRSrEJRQ+aA4DzTB8
	bYBjzbTcw85s4NsoMR2bU49cGZlcd6I4/r0ODeJUSl+VaUinKmE7qiaxPzrM5OBCHebf
	mDJOLE+1lkhJHHB3tpON3Qmv5lfe6DO/FTpMSMSKgOeqQPPzL5XycC4th0hiBDZevWhp
	zvAtZkv07DwtBftftwRH2XhW7wXp0x3QQS1rCjSOuM0iHirF5cNjctGt/95DO7hKw4ae
	Eyjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=+Z9XvI2QTaD91uJNZf/okfieYvYenCL2afnutbWtX8c=;
	b=bvcannBHJqGWfrJsjGgkVAJ9SeYDF64bnh+UyCvxh7y1WNsWz553nkV+jFIFNIntRo
	3BMCJO6bDmguK4nc77eoxhq+Mh4zmh9BPaCHWUaBGseTnIHiz2Ptbj44aSfwVDi9pLTs
	cTlJobrcQDIGob32qryA6s1o4bC/kCQMPLd05NEpL8Sd/Dq+fTRwgG+6fKfThQjBq6RQ
	qbPpbyyXaptFB/FXAAb328QmSnaW5hKxQ+fRLoxvCgj25ke6HCnnHZpru6TzMd7K2zFh
	NUlRf/6Hl1Ef3bFHktE1wgdFxairx2MSYwNUtqwIjM6FWOSfubxk2vnRieN63+oLZNxH
	MSYg==
X-Gm-Message-State: AMCzsaVoc8gmiv98ek+74SpAx1X7PhuEfg7Da0teUrbPilQMpNtmHY0W
	+BW/58h4rUw3yL9b5fpO58Qv+JFSH/XvnVzeu7+DEg==
X-Google-Smtp-Source: AOwi7QCjADbYxWV1iSrZ2C0UQ1dxVc0wG039ldo7LEgKyWIixeJ9HRkiBDSsa0tjinU18YO5A8+i5Zi1JdItTNniK34=
X-Received: by 10.176.82.110 with SMTP id j43mr577708uaa.9.1507885061762; Fri,
	13 Oct 2017 01:57:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.178.15 with HTTP; Fri, 13 Oct 2017 01:57:41 -0700 (PDT)
In-Reply-To: <CAAkg2-mUN+sBNEiZJVy_awendratNpEa3cOGD+q7_tyaEp16HQ@mail.gmail.com>
References: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
	<d68b3cf0-ecd5-1bd2-3e27-e57687601202@embexus.com>
	<CAAkg2-=_7bYNdKohcMdANdW6OmOigADpgEkDBST5Uaac6hrT2A@mail.gmail.com>
	<4800f2be-4c12-d034-de99-44a3a1dcadda@embexus.com>
	<CAAkg2-mUN+sBNEiZJVy_awendratNpEa3cOGD+q7_tyaEp16HQ@mail.gmail.com>
From: Bernd <prof7bit@gmail.com>
Date: Fri, 13 Oct 2017 10:57:41 +0200
Message-ID: <CAAkg2-=msivgqgvDom=CWVW2KR_k2_ngveY2isx7-fBHU+fSmA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: possible to append or patch existing machine .conf file?
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
X-List-Received-Date: Fri, 13 Oct 2017 08:57:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have now combined the last 2 answers:

I did not want to put more customization than machine and distro into
my local.conf and since I already have my own distro conf I have now
put the include conf/machine/${MACHINE}-extra.conf into my own distro
conf file and made colibri-vf-extra.conf, both files are now inside my
own layer folder and under my project's version control so it won't
get lost. This works. Thank you

2017-10-13 10:56 GMT+02:00 Bernd <prof7bit@gmail.com>:
> sorry, the gmail user interface sent the reply not to the list by
> default, I did not notice it
>
> 2017-10-13 10:43 GMT+02:00 Ayoub Zaki <ayoub.zaki@embexus.com>:
>> Hi Bernd,
>>
>>
>> Glad that it worked  :-)
>>
>> Please post your answers to the ML.
>>
>> Best regards
>>
>>
>> --
>> Ayoub Zaki
>> Embedded Systems Consultant
>>
>> Vaihinger Stra=C3=9Fe 2/1
>> D-71634 Ludwigsburg
>>
>> Tel.     : +4971415074546
>> Mobile   : +4917662901545
>> Email    : ayoub.zaki@embexus.com
>> Homepage : https://embexus.com
>>
>>
>> On 13.10.2017 10:33, Bernd wrote:
>>>
>>> I have now combined the last 2 answers:
>>>
>>> I did not want to put more customization than machine and distro into
>>> my local.conf and since I already have my own distro conf I have now
>>> put the include conf/machine/${MACHINE}-extra.conf into my own distro
>>> conf file and made colibri-vf-extra.conf, both files are now inside my
>>> own layer folder and under my project's version control so it won't
>>> get lost. This works. Thank you
>>>
>>>
>>> 2017-10-12 20:32 GMT+02:00 Ayoub Zaki <ayoub.zaki@embexus.com>:
>>>>
>>>> Hi,
>>>>
>>>> On 12.10.2017 12:32, Bernd wrote:
>>>>>
>>>>> Suppose I have the following bugfix patch for a 3rd party machine con=
f
>>>>> file I am using:
>>>>>
>>>>> diff --git a/conf/machine/colibri-vf.conf b/conf/machine/colibri-vf.c=
onf
>>>>> index 3ddef79..ba47488 100644
>>>>> --- a/conf/machine/colibri-vf.conf
>>>>> +++ b/conf/machine/colibri-vf.conf
>>>>> @@ -35,6 +35,6 @@ MKUBIFS_ARGS =3D " -c 8112 -e 124KiB -m 2KiB -F"
>>>>>    UBINIZE_ARGS =3D " -p 128KiB -m 2048 -s 2048"
>>>>>    UBI_VOLNAME =3D "rootfs"
>>>>>
>>>>> -SERIAL_CONSOLE ?=3D "115200 ttyLP0"
>>>>> +SERIAL_CONSOLE =3D "115200 ttyLP0"
>>>>>
>>>>>    MACHINE_FEATURES +=3D "usbgadget usbhost vfat alsa touchscreen"
>>>>>
>>>>> Is there a proper way to somehow temporarily add something to my laye=
r
>>>>> to apply this patch until it makes its way upstream and into the
>>>>> branch I am using? Or should I make my own machine file, include the
>>>>> original one and then change the variable?
>>>>
>>>> you can add to local.conf or distro.conf :
>>>>
>>>> include conf/machine/${MACHINE}-extra.conf
>>>>
>>>> then create in your meta layer or bsp layer :
>>>>
>>>> conf/machine/beaglebone-extra.conf
>>>> conf/machine/rasberrypi-extra.conf
>>>> conf/machine/xyz-extra.conf
>>>>
>>>> which contains overrides for your machine settings.
>>>> Note that is an include and not require, which means that if you machi=
ne
>>>> has
>>>> no *extra.conf then it's simply skkiped ( no overrides)
>>>>
>>>>> So far I have not found any elegant way to otherwise force this
>>>>> variable to its correct value in my image recipe, the only way I have
>>>>> found to work around this bug is to .bbappend the inittab recipe wher=
e
>>>>> this variable is actually used and change the value of another
>>>>> variable (SERIAL_CONSOLES, note the S at the end) which is derived
>>>>> from SERIAL_CONSOLE right there in this bbappend file. This seems to
>>>>> help.
>>>>>
>>>>> But while doing this I have also noticed a strange anomaly in the
>>>>> output of bitbake -e:
>>>>>
>>>>> * When I change the variable in my image recipe then bitbake -e will
>>>>> show another "set" access and both variables SERIAL_CONSOLE and
>>>>> SERIAL_CONSOLES will have the correct value as intended by me but the
>>>>> produced image will have the **wrong** entry in its inittab.
>>>>>
>>>>> * When I bbappend the inittab recipe to set SERIAL_CONSOLES right
>>>>> there where it is used then my final image will have a correct initta=
b
>>>>> and the serial console will work bit there is **no** mention of that
>>>>> variable change in the output of bitbake -e
>>>>>
>>>>> * Only when I change the machine conf file iitself to set the variabl=
e
>>>>> then bitbake -e and the produced image both show the correct entry.
>>>>> Why does it behave that way?
>>>>
>>>>
>>>> --
>>>> Ayoub Zaki
>>>> Embedded Systems Consultant
>>>>
>>>> Vaihinger Stra=C3=9Fe 2/1
>>>> D-71634 Ludwigsburg
>>>>
>>>> Tel.     : +4971415074546
>>>> Mobile   : +4917662901545
>>>> Email    : ayoub.zaki@embexus.com
>>>> Homepage : https://embexus.com
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

