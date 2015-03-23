Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 396FDE00837; Mon, 23 Mar 2015 10:42:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6888EE006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:42:14 -0700 (PDT)
Received: by weop45 with SMTP id p45so144019088weo.0
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:42:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/x6wf3dySk091/zjtiZBGrGyJMkr65YWcJPA6m/fBk0=;
	b=cowEKrcAfPJWLi2FJbBW65tPOmYn/ZQX9aDvi4S1e6HBnAU9avxEXOLnV92B5CxUnu
	/KYkhUi8ogcJ0r8XPKUaQgS95t7PgkzvF1oCgCbGPyHsLnji32yyg7QtPIhxUFzo/v8Q
	UVgGBq5bb5wlj50FILMnunjBBWwGS+6h0xVAyY6eEfE/q5aouKLpzcRQ7Pxo+UrB+BCg
	CtcIgKaeshaNZ3OwwSrc3We51sh0UBZPpUyx+ufQaktI2uV2UctLdcBr4dsR6QIBBemI
	+rUxNRrV0vGgMevbqRT/Urjs7VCNqbf89j2PzL22FUVyZ4xJr1yvg4ZqYcDcXqgT2nbQ
	3Zng==
X-Gm-Message-State: ALoCoQl+TA65Khl0KRTc26kT/iPAO/ru70SJy+ROUDtLw12eaTeoAynM60G3EneXIQhVfxzSwlZ6
X-Received: by 10.180.20.43 with SMTP id k11mr21086307wie.93.1427132534022;
	Mon, 23 Mar 2015 10:42:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.193 with HTTP; Mon, 23 Mar 2015 10:41:53 -0700 (PDT)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <55104E79.2060802@mlbassoc.com>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>
	<55103860.7010503@mlbassoc.com> <5510428C.4050606@dynamicdevices.co.uk>
	<55104898.4090400@mlbassoc.com> <551049D0.3060503@dynamicdevices.co.uk>
	<55104E79.2060802@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 23 Mar 2015 18:41:53 +0100
Message-ID: <CAK18fxEBSgqabe0_MP8TA6DaR1qt8+E7ZSgsETWekrH=Yb=+UQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Mon, 23 Mar 2015 17:42:23 -0000
Content-Type: multipart/alternative; boundary=bcaec53f3719bcf79a0511f82fa6

--bcaec53f3719bcf79a0511f82fa6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 23, 2015 at 6:33 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-03-23 11:13, Alex J Lennon wrote:
>
>>
>>
>> On 23/03/2015 18:08, Gary Thomas wrote:
>>
>>> On 2015-03-23 10:42, Alex J Lennon wrote:
>>>
>>>>
>>>>
>>>> On 23/03/2015 16:59, Gary Thomas wrote:
>>>>
>>>>> On 2015-03-22 14:21, Andreas M=C3=BCller wrote:
>>>>>
>>>>>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>>>>>> ---
>>>>>>     ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>>>>> ++++++++++++++++++++++
>>>>>>     recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>>>>     2 files changed, 43 insertions(+), 3 deletions(-)
>>>>>>     create mode 100644
>>>>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-
>>>>>> during-boot-by-compiling-SND_BCM2835-int.patch
>>>>>>
>>>>>>
>>>>> I tried this patch (which downloaded very strangely using Thunderbird=
)
>>>>> and the
>>>>> kernel rebuilt fine.  I now have the audio detected, but still no
>>>>> sound :-(
>>>>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>>>>
>>>>> Just to prove a point on the [brand new] hardware, I installed
>>>>> OpenELEC (XBMC)
>>>>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian
>>>>> and Ubuntu
>>>>> there was no sound either...
>>>>>
>>>>> Were you (Andreas) able to get any sound with this patch?
>>>>>
>>>>
>>>> Sorry to jump in on your conversation Gary but I am also doing some bi=
ts
>>>> and pieces with meta-raspberrypi myself to test out my new-ish RPiv2.
>>>>
>>>> I'll have a look at changing the kernel configuration here later, but =
I
>>>> did also try changing TEST_MODE in the config.txt which is billed as
>>>> giving analogue audio and video out at startup. Sure enough I hear the
>>>> startup beeps.
>>>>
>>>> Perhaps this would enable you to verify the hardware is working too?
>>>>
>>>
>>> Verified - this works.  Still no sound when I boot Poky/Yocto.
>>>
>>> Have you tried audio output from Linux?
>>>
>>
>> OK that's something then. I'm in the middle of some i.MX6 builds at the
>> minute but will look at this with the meta-raspberrypi kernel later and
>> come back to you. I suspect I will see the same as you.
>>
>> I don't have anything capable of HDMI audio about here so will output a
>> wav file or something to the analogue jack. What's your simplest test
>> case?
>>
>
> Use gstreamer:
>   # gst-launch audiotestsrc ! alsasink


I think I tested sound with omxplayer on rpi2... this is pretty strange.

--=20
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--bcaec53f3719bcf79a0511f82fa6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 23, 2015 at 6:33 PM, Gary Thomas <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>On 2015-03-23 1=
1:13, Alex J Lennon wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 23/03/2015 18:08, Gary Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2015-03-23 10:42, Alex J Lennon wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 23/03/2015 16:59, Gary Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2015-03-22 14:21, Andreas M=C3=BCller wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Signed-off-by: Andreas M=C3=BCller &lt;<a href=3D"mailto:schnitzeltony@goog=
lemail.com" target=3D"_blank">schnitzeltony@googlemail.com</a>&gt;<br>
---<br>
=C2=A0 =C2=A0 ...-during-boot-by-compiling-<u></u>SND_BCM2835-int.patch | 3=
8<br>
++++++++++++++++++++++<br>
=C2=A0 =C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18=
.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.18.bb</a>=C2=A0 =C2=A0 =
=C2=A0|=C2=A0 8 +++--<br>
=C2=A0 =C2=A0 2 files changed, 43 insertions(+), 3 deletions(-)<br>
=C2=A0 =C2=A0 create mode 100644<br>
recipes-kernel/linux/linux-<u></u>raspberrypi/0001-start-sound-<u></u>durin=
g-boot-by-compiling-SND_<u></u>BCM2835-int.patch<br>
<br>
</blockquote>
<br>
I tried this patch (which downloaded very strangely using Thunderbird)<br>
and the<br>
kernel rebuilt fine.=C2=A0 I now have the audio detected, but still no<br>
sound :-(<br>
Again I&#39;ve tried the internal (phono) speakers as well as HDMI audio.<b=
r>
<br>
Just to prove a point on the [brand new] hardware, I installed<br>
OpenELEC (XBMC)<br>
and it works fine using the HDMI audio.=C2=A0 Sadly when I tried Raspbian<b=
r>
and Ubuntu<br>
there was no sound either...<br>
<br>
Were you (Andreas) able to get any sound with this patch?<br>
</blockquote>
<br>
Sorry to jump in on your conversation Gary but I am also doing some bits<br=
>
and pieces with meta-raspberrypi myself to test out my new-ish RPiv2.<br>
<br>
I&#39;ll have a look at changing the kernel configuration here later, but I=
<br>
did also try changing TEST_MODE in the config.txt which is billed as<br>
giving analogue audio and video out at startup. Sure enough I hear the<br>
startup beeps.<br>
<br>
Perhaps this would enable you to verify the hardware is working too?<br>
</blockquote>
<br>
Verified - this works.=C2=A0 Still no sound when I boot Poky/Yocto.<br>
<br>
Have you tried audio output from Linux?<br>
</blockquote>
<br>
OK that&#39;s something then. I&#39;m in the middle of some i.MX6 builds at=
 the<br>
minute but will look at this with the meta-raspberrypi kernel later and<br>
come back to you. I suspect I will see the same as you.<br>
<br>
I don&#39;t have anything capable of HDMI audio about here so will output a=
<br>
wav file or something to the analogue jack. What&#39;s your simplest test c=
ase?<br>
</blockquote>
<br></div></div>
Use gstreamer:<br>
=C2=A0 # gst-launch audiotestsrc ! alsasink</blockquote><div><br></div><div=
>I think I tested sound with omxplayer on rpi2... this is pretty strange. =
=C2=A0</div></div><div><br></div>-- <br><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter"><div align=3D"left"><b style=3D"font-family:Arial;font-size:small;col=
or:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></div><div align=
=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51)=
;text-align:center">e: </b><span style=3D"font-family:Arial;font-size:small=
;color:rgb(51,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan=
.ro" target=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"=
left"><span style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);=
text-align:center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" targe=
t=3D"_blank">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div></div>

--bcaec53f3719bcf79a0511f82fa6--
