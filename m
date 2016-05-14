Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D8E3E0088C; Sat, 14 May 2016 15:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF7DFE00849
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:14:21 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id f66so175794117vkh.2
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=k+DX9R6//nv1F9gxGj+MunZzE0Ba227zYFgK59cG+Y0=;
	b=seROgfP+7MPsS/60sdAVbXA1IHLlAe2hEmOd9hh8QZDd/qPttl4IMK6jZ6/cOOFIKM
	MnQdgrDeD4CH0p/Rd/80iOd58yBaa2yxhg3/XC1VbRldeEOt/f3j23aVIYdRUrtpJe7y
	+m+0XnTKmEcYhFGE9wF/k3w0lFvoBoFe2cdAKA4LPi+vykFZUS7hZAR1wmHGQdbHNCbh
	O6cX8DKZOwhyFfPNu39KiZAi5qDbHn2AmIZ4+prv5M9CVpafrelLPPckTUDugbqbXLfc
	9oQqHz4hNxICCJG+3oxfMq89muUGZwI3jzc3vXtnMjUNMMpfpBa4TM45SLGvs4+FQzJV
	cO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=k+DX9R6//nv1F9gxGj+MunZzE0Ba227zYFgK59cG+Y0=;
	b=dik+NrRx5kCwPzNdJVzcC+qX4XQIp5dH3AhUdMREdSaCKGb5TytJCEANBwEeH72koL
	o7dN0EeYIYNGWfblLmmnR6u6M545UlhSQPNLuI9QaO8EXhMj9r5tDP4JfT1SmzsyhcS2
	R/3mpaqfGQInsKx9TXIP/p++wCXbxe3jeraAYYYpJpKA4dzCtJTAKW8Mrz4hJ+XDGENI
	fPL+baIKCBMGvsi4WCGIkhp/DsR6/KwSNsL3NPYpMRsnHHm8Hwy+4xh473jlZMXPCAR5
	2A2Gtxr/ABXQbtCaKoGJPoRXg+SqXL352hI/53zi55+/GVex9UxT2Z8dSiYnYWO1X0Du
	6tLQ==
X-Gm-Message-State: AOPr4FU96G3Ul4ZUXhWq77tsJkeLkPrwS26pAPXMS+nB7fl9Tyb+O0+8IQ3JemT6O64YwHGVkP3b5SiN1ANjfg==
MIME-Version: 1.0
X-Received: by 10.176.2.14 with SMTP id 14mr11574420uas.10.1463264060683; Sat,
	14 May 2016 15:14:20 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sat, 14 May 2016 15:14:20 -0700 (PDT)
In-Reply-To: <CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
Date: Sat, 14 May 2016 18:14:20 -0400
Message-ID: <CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Sat, 14 May 2016 22:14:23 -0000
Content-Type: multipart/alternative; boundary=001a113ed1a28cd1810532d4b6de

--001a113ed1a28cd1810532d4b6de
Content-Type: text/plain; charset=UTF-8

They are using "require conf/machine/include/tune-cortexa15.inc" for the
TK1, but the TX1 uses a Cortex A57, not a A15. There is no "tune-cortexa57".

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

On Sat, May 14, 2016 at 6:08 PM, Khem Raj <raj.khem@gmail.com> wrote:

> Look at kraj/meta-jetson-tk1 on github
> On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:
>
>> What configs do I need to include in my machine.conf to support this
>> processor?
>>
>> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
>>
>> "require conf/machine/include/arm/arch-*.inc" ?
>>
>> Thanks,
>> Paul Knopf
>> Software Engineer
>> Med X Change, Inc
>> pknopf@medxchange.com
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

--001a113ed1a28cd1810532d4b6de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">They are using &quot;require conf/machine/include/tune-cor=
texa15.inc&quot; for the TK1, but the TX1 uses a=C2=A0Cortex A57, not a A15=
. There is no &quot;tune-cortexa57&quot;.</div><div class=3D"gmail_extra"><=
br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>=
Thanks,</div><div>Paul Knopf</div><div>Software Engineer</div><div>Med X Ch=
ange, Inc</div><div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_bla=
nk">pknopf@medxchange.com</a></div></div></div></div>
<br><div class=3D"gmail_quote">On Sat, May 14, 2016 at 6:08 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><p dir=3D"ltr">Look at kraj/meta-jetson-tk1 on github</p>
<div class=3D"gmail_quote"><div><div class=3D"h5">On May 14, 2016 2:17 PM, =
&quot;Paul Knopf&quot; &lt;<a href=3D"mailto:pknopf@medxchange.com" target=
=3D"_blank">pknopf@medxchange.com</a>&gt; wrote:<br type=3D"attribution"></=
div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D=
"ltr"><div>What configs do I need to include in my machine.conf to support =
this processor?</div><div><br></div><div><a href=3D"http://www.nvidia.com/o=
bject/jetson-tx1-dev-kit.html" target=3D"_blank">http://www.nvidia.com/obje=
ct/jetson-tx1-dev-kit.html</a><br></div><div><br></div><div>&quot;require c=
onf/machine/include/arm/arch-*.inc&quot; ?<br></div><div><br></div><div><di=
v><div dir=3D"ltr"><div>Thanks,</div><div>Paul Knopf</div><div>Software Eng=
ineer</div><div>Med X Change, Inc</div><div><a href=3D"mailto:pknopf@medxch=
ange.com" target=3D"_blank">pknopf@medxchange.com</a></div></div></div></di=
v>
</div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div>
</blockquote></div><br></div>

--001a113ed1a28cd1810532d4b6de--
