Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B466E009ED; Wed, 22 Jul 2015 11:04:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.90.71 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm8.bullet.mail.ne1.yahoo.com (nm8.bullet.mail.ne1.yahoo.com
	[98.138.90.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33454E00957
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 11:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1437588260; bh=35iBxA9Tm9NOQTloi3w2kLFxMaNd7pqUnd9zbZvd8Z0=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=KV4cmPSy8HO34NMX2ooB24QxMKd0OKhp+z8gaxF40yCZ/+aGdmEKD4Mr9BhfEtJKXGeJKj2zWtMf0uq97wpcUGy4TZoQ+2jzsr6BmGk9ZO/NP3F+NYvfWYborQETTqZl8hbNpeuDIw5r/ik418YF9cduO2tA4v4TGIZekS190T2g1skfsMxKYKTZtV8x1IhCDs6Px8JRROjkIF6iQu5wcjf71KGVWZ7cjTpvmJYSm/OcISCAnCS1aajyG6qMN1Vfu1S4CDsgtX6g53Uzv2H0NIZCnud/cU9Di/skstDUwDJ88kWZa58zI1WdSUFXaGgzcK0Td835y/WKD9nVbtrkLQ==
Received: from [98.138.100.102] by nm8.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 18:04:20 -0000
Received: from [98.138.87.8] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 18:04:20 -0000
Received: from [127.0.0.1] by omp1008.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2015 18:04:20 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 266106.19158.bm@omp1008.mail.ne1.yahoo.com
X-YMail-OSG: 82Owa7EVM1lBHdqurubskRxtUloBmqex78tFeOrTphLVdrZ4p349dCrb6RsveBm
	8rhO1dK5ELM.aI9ck4gOCTQBmvukgJnABH8iqCDa1SpfoVzfoXw08oJHU7FPrOqFxmA6iBtxWOTX
	V_B5dieeBLcMm6MhCQX0_hp__hKV.SDfgpWG5bgSjN6s_WlNp03TmWrnNNzIi1M09tbLCxUsw3CX
	gWrGbNCeRWc2oqlmx_tzl.Tu6_CPC35CW7_gjmic3kfSjOSyzqgb_NOqDXQWvK8PR4Nz_tBM3hi1
	Wnc0rSXjI5Gm36a04RaRU8vHEBxX6HhBBLO2AhSAMm9ypuhzAZphFTs_t00wVjIKg76GOwUHFvzO
	KV.uuVgi1hm9yHeVlJ0Tm6vCQzpv6cC9tyP7B0QuQ762ss9pTHdJhvyi_r83ADOLa.99Bi4vCTjN
	PpsIOGds7JdqbZBgu9Y73vKdx0P1UjNBFZCZXVF_PXlj7ZX4W_13ODrCoTTtkhiQwnA2WtrP5gjM
	uPZhHLbCeaJQLzDyaHAGI
Received: by 98.138.105.208; Wed, 22 Jul 2015 18:04:19 +0000 
Date: Wed, 22 Jul 2015 18:04:19 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Aws Ismail <aws.ismail@gmail.com>, 
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Message-ID: <1606200634.506247.1437588259456.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAMHMu0OjT4hVy65YJgNaFWg-jx0he2x+J-3WTh9S6k9kYGDEbw@mail.gmail.com>
References: <CAMHMu0OjT4hVy65YJgNaFWg-jx0he2x+J-3WTh9S6k9kYGDEbw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl] Any plans about adding pcs and/or crmsh as	bb recipes ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Jul 2015 18:04:25 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_506246_540493275.1437588259451"

------=_Part_506246_540493275.1437588259451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Good luck with your work.
If you consider appropriate you can send the patch and maybe me or other guys from the community could help. 


     On Wednesday, July 22, 2015 8:29 PM, Aws Ismail <aws.ismail@gmail.com> wrote:
   

 On Wed, Jul 22, 2015 at 11:04 AM, Alexandru Vaduva
<Alexandru.Vaduva@enea.com> wrote:
> For the moment we are concentration on meeting the P1 requirements for CGL.
> If you would like to add your contribution to this layer you are more than welcomed.
> Also if you would like, we could also provide the help and guidance necessary for doing this.
>
>
> Alex V.
>

Thanks Alex. I am looking into pcs right now. I have a crmsh recipe
but I have not fully tested it yet.

AI\

> -----Original Message-----
> From: Aws Ismail [mailto:aws.ismail@gmail.com]
> Sent: Tuesday, July 21, 2015 10:58 PM
> To: yocto@yoctoproject.org
> Cc: Alexandru Vaduva
> Subject: [meta-cgl] Any plans about adding pcs and/or crmsh as bb recipes ?
>
> Hi,
>
> Are there any plans with regards to adding the pcs cli utility and/or the crmsh utility to the meta-cgl layer in the future ?
>
> I have searched the layer index but can't find a mention of those.
> Building pacemaker/corosync from the meta-cgl layer does not provide those utilities either.
>
> Regards,
>
> AI\
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_506246_540493275.1437588259451
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1437582017529_22981">Good luck with y=
our work.<br></div><div id=3D"yui_3_16_0_1_1437582017529_22980">If you cons=
ider appropriate you can send the patch and maybe me or other guys from the=
 community could help.</div><div id=3D"yui_3_16_0_1_1437582017529_22743"><s=
pan></span></div>  <br><div class=3D"qtdSeparateBR"><br><br></div><div styl=
e=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; f=
ont-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=
=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Wednesday, July 22, 2015 8:29=
 PM, Aws Ismail &lt;aws.ismail@gmail.com&gt; wrote:<br> </font> </div>  <br=
><br> <div class=3D"y_msg_container">On Wed, Jul 22, 2015 at 11:04 AM, Alex=
andru Vaduva<br clear=3D"none">&lt;<a shape=3D"rect" ymailto=3D"mailto:Alex=
andru.Vaduva@enea.com" href=3D"mailto:Alexandru.Vaduva@enea.com">Alexandru.=
Vaduva@enea.com</a>&gt; wrote:<br clear=3D"none">&gt; For the moment we are=
 concentration on meeting the P1 requirements for CGL.<br clear=3D"none">&g=
t; If you would like to add your contribution to this layer you are more th=
an welcomed.<br clear=3D"none">&gt; Also if you would like, we could also p=
rovide the help and guidance necessary for doing this.<br clear=3D"none">&g=
t;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Alex V.<br clear=3D"none">=
&gt;<br clear=3D"none"><br clear=3D"none">Thanks Alex. I am looking into pc=
s right now. I have a crmsh recipe<br clear=3D"none">but I have not fully t=
ested it yet.<br clear=3D"none"><br clear=3D"none">AI\<div class=3D"yqt5245=
568879" id=3D"yqtfd75589"><br clear=3D"none"><br clear=3D"none">&gt; -----O=
riginal Message-----<br clear=3D"none">&gt; From: Aws Ismail [mailto:<a sha=
pe=3D"rect" ymailto=3D"mailto:aws.ismail@gmail.com" href=3D"mailto:aws.isma=
il@gmail.com">aws.ismail@gmail.com</a>]<br clear=3D"none">&gt; Sent: Tuesda=
y, July 21, 2015 10:58 PM<br clear=3D"none">&gt; To: <a shape=3D"rect" ymai=
lto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a><br clear=3D"none">&gt; Cc: Alexandru Vaduva<br=
 clear=3D"none">&gt; Subject: [meta-cgl] Any plans about adding pcs and/or =
crmsh as bb recipes ?<br clear=3D"none">&gt;<br clear=3D"none">&gt; Hi,<br =
clear=3D"none">&gt;<br clear=3D"none">&gt; Are there any plans with regards=
 to adding the pcs cli utility and/or the crmsh utility to the meta-cgl lay=
er in the future ?<br clear=3D"none">&gt;<br clear=3D"none">&gt; I have sea=
rched the layer index but can't find a mention of those.<br clear=3D"none">=
&gt; Building pacemaker/corosync from the meta-cgl layer does not provide t=
hose utilities either.<br clear=3D"none">&gt;<br clear=3D"none">&gt; Regard=
s,<br clear=3D"none">&gt;<br clear=3D"none">&gt; AI\<br clear=3D"none">-- <=
br clear=3D"none">_______________________________________________<br clear=
=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"rect" ymailto=3D=
"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" href=3D"https://=
lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoct=
oproject.org/listinfo/yocto</a><br clear=3D"none"></div><br><br></div>  </d=
iv> </div>  </div></div></body></html>

------=_Part_506246_540493275.1437588259451--
