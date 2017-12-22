Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DEB6E00DAA; Thu, 21 Dec 2017 21:00:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7F0E00D7C
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 21:00:33 -0800 (PST)
Received: by mail-pl0-f46.google.com with SMTP id s10so12318882plj.5
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 21:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HzLeRZZaBG+XeOHxZ2SErC1OUz2S9mdorCfcS1CqXc0=;
	b=b1S6UzPgklNiP5ZSfjduo1UyRz+gHFXgYVcxPgj/vqYUkSfWRa3N6hm+265ITwxGUQ
	xEhyCaJFy3lhaVqfbh6ummB9dxX5kWjvnoc1l9Obt3quAGVZtjA70lIhP+5GBpngG6k8
	+JdbJ8NbJkrNILiCsL4h0JO7Nl1dGtWw5Qo6fpKemDNRbqx9UOkH3JwXe5cBKOtiO1YH
	MoGM3hY7mYvCaWfK4KGf10IR4x+NRZjFjV49hNP6f93D6+MrKj9JBgkd6DbgS6J6IrgK
	6d3dF+EGZDkBKz+ED9nBuV1PJT5S2Zqh1ikCJmp4x2JDtFRBW1SqmGs+5pkDM6JMznDn
	mTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HzLeRZZaBG+XeOHxZ2SErC1OUz2S9mdorCfcS1CqXc0=;
	b=bv9xt4/WC0FSw4YlIEpwF2RpHoob8fgxAph1+Mqq3uSyQCb8/tPx1jbVpZsoHKtEql
	gcAMNMcv78DZHy4wXN9jxkDYkpw+6+PnmIBiHvbbX4lcC6PuM7hS5mwzniTYAyoh4LXl
	Atb9lXf5UbTG3bFyGu07WjtJ2XVLbLs5t3RxxsXSzNLDDaQmrSQP2RWgHYvz8UYnRk37
	dGGcD5eaJjfFVjVrS9LaHqvhbCKkXgPtWYvjTKMi7+k2M94OK5nx0cDaM9txBSCP6/hB
	dzRd6AAVRE56GRgMfz7gDHcZFN2WZOj++7oMJiGriQke3mZ20phmx5u2ef0gZ4XB+pxv
	8jNw==
X-Gm-Message-State: AKGB3mK6p1n2y8BgU+WBC/DsghRNLP6oi+jTXFPIAnEb6TTXhBFRC/Oo
	tbB8GXDC/CKYEu4RMKxnmiI6Xs+7lZ9rhBfZeWc=
X-Google-Smtp-Source: ACJfBosaRjY57LWf8sY+f5qF2NeKfWhvkXzAOHwMnz3DBNjyaDC01J2WJoASpTB8Q5L2/ijFhhAc39Hf3YxbTcix44w=
X-Received: by 10.84.130.37 with SMTP id 34mr13084269plc.379.1513918833401;
	Thu, 21 Dec 2017 21:00:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Thu, 21 Dec 2017 21:00:32 -0800 (PST)
In-Reply-To: <CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Fri, 22 Dec 2017 06:00:32 +0100
Message-ID: <CAPb0b+NJeNY9-yAX4UwAcQJMLG4-OHRVbpN=hqUAHJJZY1rrZw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Fri, 22 Dec 2017 05:00:35 -0000
Content-Type: multipart/alternative; boundary="94eb2c12f8ee48a4060560e6b232"

--94eb2c12f8ee48a4060560e6b232
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Andreas,

so i need to integrate it now into my meta layer. Because i am using the
meta-raspberry pi.
To put it into my local meta-layer:
should i copy the recipies-kernel->linux-raspberrypi4.9 only
is there some other files i need to copy?

I will be working with audio/wlan/bluetooth, no need for other tools.
what should i add to the local.conf, is it the following only?

#PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"
#PREFERRED_VERSION_linux-raspberrypi ?=3D "4.9%"

Do we need to add something to the kernel configuration?

thank you

On Thu, Dec 21, 2017 at 9:59 PM, Andreas M=C3=BCller <schnitzeltony@gmail.c=
om>
wrote:

> On Thu, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <andrei@gherzan.ro> wrote=
:
>
>> Hi all,
>>
>> On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <schnitzeltony@gma=
il.com
>> > wrote:
>>
>>> On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <mirza.krak@gmail.com>
>>> wrote:
>>>
>>>> 2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.com=
>:
>>>> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <
>>>> sherifomran2000@gmail.com>
>>>> > wrote:
>>>> >>
>>>> >> hey guys,
>>>> >>
>>>> >> any body tried the real time kernel? I get an error, it is snot in
>>>> the
>>>> >> compatibility list.
>>>> >> can we skip it?
>>>> >>
>>>> >> thanks
>>>> >>
>>>> >> --
>>>> >
>>>> > Good news: I use RT kernel only together with VC4 graphics and have
>>>> lots of
>>>> > fun on PI2/3.
>>>> > Bad news: As far as I know it is not in meta-raspberrypi but in my
>>>> fork [1].
>>>> > There were attempts to land the RT-patches in meta-raspberrypi but
>>>> that was
>>>> > denied for huge patch size :(
>>>>
>>>> If the patch size was the only problem one can pull it by doing the
>>>> following in the recipe:
>>>>
>>>> SRC_URI +=3D " \
>>>>     https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/patc
>>>> h-4.9.65-rt56.patch.gz;name=3Drt-patch
>>>> \
>>>> "
>>>>
>>>> SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
>>>> SRC_URI[rt-patch.sha256sum] =3D
>>>> "47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"
>>>>
>>>> Note that above sums are "random" and not the for the actually file
>>>> but are there for reference.
>>>>
>>>> That way you do not need to keep a copy of it in meta-raspberrypi.
>>>>
>>>> --
>>>>
>>> Hi Mirza,
>>>
>>> Problem is that patches need alignments sometimes either caused by
>>> Raspberry-Pi-specific adjustments or versions not matching exactly - RT
>>> kernel patch updates are less frequent than kernel updates. Anyway: git=
 is
>>> very good at maintaining huge text content and this should not be a pro=
blem
>>> these days. Another discussion about RT kernel was to have an extra ker=
nel
>>> for it and I never understood why. To me that seems nothing but an extr=
a
>>> maintenance burden.
>>>
>>> However - just wrote to Paul: I plan to be at FOSDEM and we can discuss
>>> there how to get back to one layer only (not mine!) making everybody ha=
ppy
>>> :)
>>>
>>>
>> I remember the discussion. Indeed that was the reason and the
>> recommendation was to maintain a separate linux-raspberry fork where
>> whoever has interest in this will maintain on top of linux-raspberrypi t=
his
>> patch. Obviously that didn't happen but I'd like to see it landing.
>>
>> Yes that was one of the suggestions which made me say 'Thanks - this is
> just additional maintenance burden and will not work for long time - I do
> my own'. FWIW: That suggestion came at a time when you (Andrei) seemed
> overworked totally (just to mention - PLEASE don't take it as criticism -=
 I
> know what I am talking of when it comes to 'overworked').
>
> Why not simply one stable kernel with RT-patches applied if user decides
> by an option? That is what I am doing for >1 year now and meta-raspi-ligh=
t
> is the one which caused me least efforts/headaches of all. And yes I know=
 I
> made life easy here by removing userland completely and taking care for
> RPi2/3 only.
>
> Cheers,
>
> Andreas
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c12f8ee48a4060560e6b232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>hi Andreas,<br><br></di=
v>so i need to integrate it now into my meta layer. Because i am using the =
meta-raspberry pi.<br></div><div>To put it into my local meta-layer: <br></=
div>should i copy the recipies-kernel-&gt;linux-<wbr>raspberrypi4.9 only<br=
></div>is there some other files i need to copy?<br><br></div>I will be wor=
king with audio/wlan/bluetooth, no need for other tools.<br></div>what shou=
ld i add to the local.conf, is it the following only?<br><br>#PREFERRED_PRO=
VIDER_virtual/<wbr>kernel =3D &quot;linux-raspberrypi&quot;<br>#PREFERRED_V=
ERSION_linux-<wbr>raspberrypi ?=3D &quot;4.9%&quot;<br><br></div>Do we need=
 to add something to the kernel configuration?<br><br></div>thank you </div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 21, =
2017 at 9:59 PM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div><div class=3D"h5"><div class=3D"gmail_quote">On Thu=
, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"=
mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">Hi all,<br><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e"><div><div class=3D"m_1798998851730853924gmail-h5">On Thu, Dec 14, 2017 a=
t 12:09 PM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a href=3D"mailto:sch=
nitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><div class=
=3D"m_1798998851730853924gmail-m_-1073619732399821538gmail-h5">On Thu, Dec =
14, 2017 at 11:40 AM, Mirza Krak <span dir=3D"ltr">&lt;<a href=3D"mailto:mi=
rza.krak@gmail.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"m=
_1798998851730853924gmail-m_-1073619732399821538gmail-m_-558261367993263366=
1gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt;<a href=3D"mailt=
o:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a>&gt=
;:<br>
&gt; On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran &lt;<a href=3D"mailto:sh=
erifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hey guys,<br>
&gt;&gt;<br>
&gt;&gt; any body tried the real time kernel? I get an error, it is snot in=
 the<br>
&gt;&gt; compatibility list.<br>
&gt;&gt; can we skip it?<br>
&gt;&gt;<br>
&gt;&gt; thanks<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;<br>
&gt; Good news: I use RT kernel only together with VC4 graphics and have lo=
ts of<br>
&gt; fun on PI2/3.<br>
&gt; Bad news: As far as I know it is not in meta-raspberrypi but in my for=
k [1].<br>
&gt; There were attempts to land the RT-patches in meta-raspberrypi but tha=
t was<br>
&gt; denied for huge patch size :(<br>
<br>
</span>If the patch size was the only problem one can pull it by doing the<=
br>
following in the recipe:<br>
<br>
SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 <a href=3D"https://cdn.kernel.org/pub/linux/kernel/projects/r=
t/4.9/patch-4.9.65-rt56.patch.gz;name=3Drt-patch" rel=3D"noreferrer" target=
=3D"_blank">https://cdn.kernel.org/pub/lin<wbr>ux/kernel/projects/rt/4.9/pa=
tc<wbr>h-4.9.65-rt56.patch.gz;name=3Drt<wbr>-patch</a><br>
\<br>
&quot;<br>
<br>
SRC_URI[rt-patch.md5sum] =3D &quot;9caa7b541d8c84c2d5c5f58985982<wbr>e95&qu=
ot;<br>
SRC_URI[rt-patch.sha256sum] =3D<br>
&quot;47dfb518c78d8cbaafd4ab9130eb2<wbr>6fe0170be9189b580ab26209ef6793<wbr>=
09539&quot;<br>
<br>
Note that above sums are &quot;random&quot; and not the for the actually fi=
le<br>
but are there for reference.<br>
<br>
That way you do not need to keep a copy of it in meta-raspberrypi.<br>
<span class=3D"m_1798998851730853924gmail-m_-1073619732399821538gmail-m_-55=
82613679932633661gmail-HOEnZb"><font color=3D"#888888"><br>
--</font></span><br></blockquote></div></div><div>Hi Mirza,<br></div><div>=
=C2=A0</div></div>Problem is that patches need alignments sometimes either =
caused by Raspberry-Pi-specific adjustments or versions not matching exactl=
y - RT kernel patch updates are less frequent than kernel updates. Anyway: =
git is very good at maintaining huge text content and this should not be a =
problem these days. Another discussion about RT kernel was to have an extra=
 kernel for it and I never understood why. To me that seems nothing but an =
extra maintenance burden.<br></div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">However - just wrote to Paul: I plan to be at FOSDE=
M and we can discuss there how to get back to one layer only (not mine!) ma=
king everybody happy :)<span class=3D"m_1798998851730853924gmail-m_-1073619=
732399821538gmail-HOEnZb"></span><br></div></div><br></blockquote><div><br>=
</div></div></div><div>I remember the discussion. Indeed that was the reaso=
n and the recommendation was to maintain a separate linux-raspberry fork wh=
ere whoever has interest in this will maintain on top of linux-raspberrypi =
this patch. Obviously that didn&#39;t happen but I&#39;d like to see it lan=
ding.<br></div><div><br></div></div></div></div></div></blockquote></div></=
div></div>Yes that was one of the suggestions which made me say &#39;Thanks=
 - this is just additional maintenance burden and will not work for long ti=
me - I do my own&#39;. FWIW: That suggestion came at a time when you (Andre=
i) seemed overworked totally (just to mention - PLEASE don&#39;t take it as=
 criticism - I know what I am talking of when it comes to &#39;overworked&#=
39;).<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Why not simply one stable kernel with RT-patches applied if user decide=
s by an option? That is what I am doing for &gt;1 year now and meta-raspi-l=
ight is the one which caused me least efforts/headaches of all. And yes I k=
now I made life easy here by removing userland completely and taking care f=
or RPi2/3 only.<br></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Cheers,</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Andreas<br></div><div class=3D"gmail_extra"><br></div></di=
v>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c12f8ee48a4060560e6b232--
