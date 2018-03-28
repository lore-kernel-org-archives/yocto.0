Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CBDAE00B8D; Wed, 28 Mar 2018 07:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EA2E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 07:57:05 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id b16so1550837vka.5
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 07:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=05z5vGqhoQHIzjgtuR6kvVqrxwPCW8mxp8qcfq/BBIE=;
	b=z6fagsVzo7JdjAcBvZdScoNHdxLeFayD/nM2YUx0HkH0MSpViH0pdQSiqAklFiEcIt
	bqkghxj31nog8m2O10VgJ27rjwwGJEIfGKSFqAZNHX10BsnJxYjLPuWhhQOSEasJAYYt
	d3lbiKVf2SSQ543TS3s3nLS24C3lQKPbn9+0a6hu7kVfnFrzmn4lZe8IzlBqmmZAvXnq
	OIH1RjLDJprLZKzJDAV5kIT6d4B82d3cXKj6FW6LG7gus3FPfPLB98Wp3wtqrZkVTOMV
	bz5AytA8V/HIyJ7o6M08PnkUScCyjBUcjD+6YeoLVailnkuYliyGa+L/+LOEyNa9in8O
	M4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=05z5vGqhoQHIzjgtuR6kvVqrxwPCW8mxp8qcfq/BBIE=;
	b=fG4xXhOL4c6YFxVVd704TJ78gYL2m385wX2Ll3UQkzXJlOW6ismUuyQrd4HA3urNXB
	Ebozz+BfIex8rlOamH8HM/AvI5J7QONFhxDstNmHtbK9TRxUGWi2cFgjBLDHPtznm4f1
	db2z5SZMwMWEnMt+W846Dmr2nDqjIpb1q95P5kPQ8aoXq5m72GFvFzEGGKziyHn62f1P
	jQaQcmS9TK9Cv2qxXTetm+y6612sVnhli1NM5rwp87+dv3IYDnjwBmPXoQGhHQglsfRi
	GLwG4uxnOVsEcFKutbJHjVhB2Lj/2EaAbgDEhDGBC6KPyQhGTyzKrF/5xvDk4Bxr5xYy
	XBGg==
X-Gm-Message-State: AElRT7FLfZIGQ5jziCucSeHGefrJGSkAc7r9d6HC1GznaYQUpaR9p4jL
	G8GgashJRJS45JDoL+o/vkTbkq7uEOHrGrfmirXKAA==
X-Google-Smtp-Source: AIpwx49RScw5Tw1Bh8Gu6a+zGBELSxg6ety7PJcrNPXlSwDTsHjztLWX3zFulg7X1e6UaMv5X1NLcG6QwMyXjGmO9aI=
X-Received: by 10.31.55.11 with SMTP id e11mr2486062vka.192.1522249024348;
	Wed, 28 Mar 2018 07:57:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.96.145 with HTTP; Wed, 28 Mar 2018 07:56:23 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <CAK18fxHBomdRub=UJdSsfJBOHJsEvQ0KLMy-DN7L_--gW1s=ag@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
	<CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
	<CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
	<CAK18fxHBomdRub=UJdSsfJBOHJsEvQ0KLMy-DN7L_--gW1s=ag@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 28 Mar 2018 15:56:23 +0100
Message-ID: <CAK18fxHKqqBByLEdm99cOc7RywckF5H_qefCagAvUoyB+BeOBQ@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 14:57:06 -0000
Content-Type: multipart/alternative; boundary="001a114410a05b3bc405687a3857"

--001a114410a05b3bc405687a3857
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 28, 2018 at 2:57 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hi guys,
>
> On Wed, Mar 28, 2018 at 2:40 PM, Paul Barker <pbarker@toganlabs.com>
> wrote:
>
>> On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher <mans.zigher@gmail.com=
>
>> wrote:
>> > Hi,
>> >
>> > Thanks I will do that. But I have other layers that depend on the rock=
o
>> of
>> > meta-raspberrypi so I believe I will have to use the rocko at some
>> point but
>> > for testing I will try Morty. What is the reason for using Morty do yo=
u
>> > know? Is rocko unstable?
>> >
>>
>> Yea, we need to get this fixed in rocko. My test device for
>> raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us
>> out with testing here.
>>
>> Could you try out core-image-base built from master with just the
>> required layers? If that works then a kernel/firmware backport is
>> likely what's needed.
>>
>>
> Today I will have 3b+ support PR to master. Afterwards we can start
> backporting things as needed. I'm currently only interested in rocko but =
if
> other people are willing to do it, we can PR stuff in older versions too.
>
>
https://github.com/agherzan/meta-raspberrypi/pull/215

I tested this PR using rocko + meta-rpi master on rpi3b and rpi3b+. Boots
ok, wifi connectivity tested with NM and bluetooth pair with bluetoothctl.

--
Andrei Gherzan

--001a114410a05b3bc405687a3857
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Mar 28, 2018 at 2:57 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi guys,</di=
v><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"><span cla=
ss=3D"gmail-">On Wed, Mar 28, 2018 at 2:40 PM, Paul Barker <span dir=3D"ltr=
">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@to=
ganlabs.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><span>On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher &lt;<a =
href=3D"mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.c=
om</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
</span><span>&gt; Thanks I will do that. But I have other layers that depen=
d on the rocko of<br>
&gt; meta-raspberrypi so I believe I will have to use the rocko at some poi=
nt but<br>
&gt; for testing I will try Morty. What is the reason for using Morty do yo=
u<br>
&gt; know? Is rocko unstable?<br>
&gt;<br>
<br>
</span>Yea, we need to get this fixed in rocko. My test device for<br>
raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us<br>
out with testing here.<br>
<br>
Could you try out core-image-base built from master with just the<br>
required layers? If that works then a kernel/firmware backport is<br>
likely what&#39;s needed.<br>
<div class=3D"gmail-m_-746095387801869532HOEnZb"><div class=3D"gmail-m_-746=
095387801869532h5"><br></div></div></blockquote><div><br></div></span><div>=
Today I will have 3b+ support PR to master. Afterwards we can start backpor=
ting things as needed. I&#39;m currently only interested in rocko but if ot=
her people are willing to do it, we can PR stuff in older versions too.</di=
v><div><br></div></div></div></div></blockquote><div><br></div><div><a href=
=3D"https://github.com/agherzan/meta-raspberrypi/pull/215">https://github.c=
om/agherzan/meta-raspberrypi/pull/215</a><br></div><div><br></div><div>I te=
sted this PR using rocko + meta-rpi master on rpi3b and rpi3b+. Boots ok, w=
ifi connectivity tested with NM and bluetooth pair with bluetoothctl.</div>=
<div><br></div><div><div dir=3D"ltr" style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial">--</div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">Andrei Gherzan</span><br></=
div></div></div></div><br class=3D"gmail-Apple-interchange-newline"><br></d=
iv></div></div></div>

--001a114410a05b3bc405687a3857--
