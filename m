Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC9AEE00C1E; Fri, 23 Nov 2018 08:30:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D79EE00A6B
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 08:30:13 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id n32so11013121qte.11
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 08:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=GoIETsunnVARPxheN1rxNr7DTOBZLCTAU7CDFsj74+8=;
	b=FlVp7zhdMhq6pxDZAjRIhcMjiKe4R2cIeAils+TabyKRx12GBaeEXRkuyYhKIKbadE
	YAPynmFA98C+yVkuBZYYu2SCWKPPCPHb4Cx6NYQ8eSBQrSzuK8e6L0AMX8O0exXy5mk4
	07FfGCqOqWP0pwysLjpMuGR3ivrJbD1xOEccOJEWbFY8Okyf9TJmGv8SPVmQnKe8pZjx
	VTf0ac2WSkoO2T//W6phs3GC6CjaPXACctcRmCz+7o4XQZiMyop8+50UwYRvaAyrmUec
	LaauFQXuUv6BePFg3b6JTxZEYbtulIDZ1xjgJfeczlY2yxixmN+GJLRC81quANMRpWVE
	E4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=GoIETsunnVARPxheN1rxNr7DTOBZLCTAU7CDFsj74+8=;
	b=OHFqzp4Y9n6bIX39I9WCbUwn5zvo1WUKJkyEc2ydkOy8PXy944APDG+JVWuHolnADU
	15m3cE7UOEC/eMY26uk3mPMEzbhvmcZpwzvZ9sitlW1SOW3Lyj59wyMfvwPIXPhmF6X4
	c4u6r4O9EtFkxZtTTNEe2aPR7E3b5JccMuNSaDI5Yzc/+s/mVaL+feCTLHLbh9YC1/Oi
	X7C59ujlcefx6vhKBTYIdHe49v3FSM0KJTJRnphhDx3uX9f2b9o/arrO5bvhgydIPKC+
	Kq2S/yQC4j9SIN+GaNWBOA2kWZMe82tLyiiDN9DxF/5yDpIBD0IpKQM1xhZq0BrwJiQ6
	P1ng==
X-Gm-Message-State: AA+aEWZx1q106hzcAeom3pc35bqLofPBIpqq2hSu9qpnwnCicgIVkObS
	FRY0TUGX+M2J8Y8fFPbfC7W0NyAR8cZ6SyQ5EuM=
X-Google-Smtp-Source: AJdET5fEQ6W+lY9A1ixCC0HZPsBaEgoNXBYAWjsmgG5ifFwkoQ4wTzvtTYRQTOmEEkduS1cl3P7U79vXCmnT6G/0EU0=
X-Received: by 2002:ac8:36ba:: with SMTP id a55mr14929363qtc.236.1542990612701;
	Fri, 23 Nov 2018 08:30:12 -0800 (PST)
MIME-Version: 1.0
References: <CAKfv=rdAwxX3JSBkf_Q78h_+Wt5qgW=c01AwFNdHHX7DcJAwyg@mail.gmail.com>
	<CAMKF1spFPyfuyVjCKUTf-88Gyqymiqjm1FnjthyN6akxd0j3oQ@mail.gmail.com>
	<CABOv41O-cGgR-imq8+rH3XQu1RtD+nK3BWrOq24cQB6mJbYTVg@mail.gmail.com>
In-Reply-To: <CABOv41O-cGgR-imq8+rH3XQu1RtD+nK3BWrOq24cQB6mJbYTVg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 23 Nov 2018 08:30:01 -0800
Message-ID: <CAMKF1srhWMgAb78RDOw4_6HBfsZL-Vd50vBskrPFLtnNFxB+rg@mail.gmail.com>
To: Gerson Fernando Budke <nandojve@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto on Atmel SAME70?
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
X-List-Received-Date: Fri, 23 Nov 2018 16:30:14 -0000
Content-Type: multipart/alternative; boundary="0000000000005ca560057b577f69"

--0000000000005ca560057b577f69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 22, 2018 at 2:26 PM Gerson Fernando Budke <nandojve@gmail.com>
wrote:

> I believe YOCTO currently don't support MMU less like SAME70 MCU.
> If someone have YOCTO with MMU less I'm very interested :D
>

That=E2=80=99s right although OE at one point did support nommu and that ha=
s not
been deleted but is not maintained either

>
> GFB
>
> Em qui, 22 de nov de 2018 =C3=A0s 04:46, Khem Raj <raj.khem@gmail.com>
> escreveu:
>
>> atmel boards are supported through meta-atmel BSP layer
>>
>> see
>>
>> https://github.com/linux4sam/meta-atmel
>>
>> sample images
>> https://github.com/linux4sam/meta-atmel/tree/sumo/recipes-atmel/images
>> On Wed, Nov 21, 2018 at 8:30 PM rz charger <rzcharger@gmail.com> wrote:
>> >
>> > Hi everyone,
>> >
>> > Good day.
>> >
>> > Currently our team is using Yocto on CM3 Raspberry Pi. We are planning
>> to port our current Yocto project into Atmel SAME70. However we are not
>> sure whether it is possible or not. We have few questions hopefully some=
one
>> has some experience with this can enlighten us.
>> >
>> > 1. Is it possible and recommended to implement Yocto into Atmel SAME70
>> for IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory
>> Size: 2048 KB)
>> > 2. Any example/past project of Yocto running on Atmel SAME70?
>> >
>> >  Appreciate your time.Thank you
>> >
>> > Regards,
>> > Rz Charger
>> > Malaysia
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000005ca560057b577f69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu,=
 Nov 22, 2018 at 2:26 PM Gerson Fernando Budke &lt;<a href=3D"mailto:nandoj=
ve@gmail.com">nandojve@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>I believe YOCTO curren=
tly don&#39;t support MMU less like SAME70 MCU.</div><div>If someone have Y=
OCTO with MMU less I&#39;m very interested :D</div></div></div><div dir=3D"=
ltr"><div dir=3D"ltr"><div></div></div></div></blockquote><div dir=3D"auto"=
><br></div><div dir=3D"auto">That=E2=80=99s right although OE at one point =
did support nommu and that has not been deleted but is not maintained eithe=
r=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r"><div><br></div><div>GFB</div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">Em qui, 22 de nov de 2018 =C3=A0s 04:46, Khem Raj &lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">atmel boards are supp=
orted through meta-atmel BSP layer<br>
<br>
see<br>
<br>
<a href=3D"https://github.com/linux4sam/meta-atmel" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/linux4sam/meta-atmel</a><br>
<br>
sample images<br>
<a href=3D"https://github.com/linux4sam/meta-atmel/tree/sumo/recipes-atmel/=
images" rel=3D"noreferrer" target=3D"_blank">https://github.com/linux4sam/m=
eta-atmel/tree/sumo/recipes-atmel/images</a><br>
On Wed, Nov 21, 2018 at 8:30 PM rz charger &lt;<a href=3D"mailto:rzcharger@=
gmail.com" target=3D"_blank">rzcharger@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; Good day.<br>
&gt;<br>
&gt; Currently our team is using Yocto on CM3 Raspberry Pi. We are planning=
 to port our current Yocto project into Atmel SAME70. However we are not su=
re whether it is possible or not. We have few questions hopefully someone h=
as some experience with this can enlighten us.<br>
&gt;<br>
&gt; 1. Is it possible and recommended to implement Yocto into Atmel SAME70=
 for IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory S=
ize: 2048 KB)<br>
&gt; 2. Any example/past project of Yocto running on Atmel SAME70?<br>
&gt;<br>
&gt;=C2=A0 Appreciate your time.Thank you<br>
&gt;<br>
&gt; Regards,<br>
&gt; Rz Charger<br>
&gt; Malaysia<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000005ca560057b577f69--
