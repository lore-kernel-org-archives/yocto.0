Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB64AE00D7C; Thu, 21 Dec 2017 12:59:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f195.google.com (mail-yb0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F32E00C0F
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 12:59:18 -0800 (PST)
Received: by mail-yb0-f195.google.com with SMTP id r4so17239523ybd.12
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 12:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PSvtRKr0wUaefUeRVYCtmJGnjv9fmHvQE0RGdaKuwp8=;
	b=RWJfn3yI4zL/LWmDxsfR0gQh3ysM4xTtbF5LDckM7Qa+tZgXGGaUOPjBRVkkg+Llw2
	kJrKazaiDkeXl0EdfWivvdn7r8McDtDRozbA36fqZElZogwqcPxKKOiu0W47QPRL8MlL
	ItIZ2dwcnV1ZPkn6IJHqFj5IJEGhPhb/va7AJ7c2bwcLIbjPt/TarHo1A980FJPsKbv9
	R1Fzynnal55sYlG4uMsUcq6pNxdM5JL7/gAlfFhKosPkFSZq5c22f8jC7m+T+LmgTVYP
	ND8/aT8jnYlPk9UGHMajhKpZzEcqkOzgDYxmZoCrLK98QOGXtoqkw0GpAPHrWqAFVQJk
	x3ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PSvtRKr0wUaefUeRVYCtmJGnjv9fmHvQE0RGdaKuwp8=;
	b=SI7elVv2fxF763GDdZ4DIm5WMHb5h3aAa/AGm42dbitjuawEfTk4UMjHdxQgGBz/lF
	KGn/RMsJeqkYTbCCYnjdoPMDgx+LmtbPxDlVNZ8INKobjDAUscgpPZGHr9YIbFlY2Ipi
	Dkcu2iMDU9ECWoC/0ADubDAfIFdRmRb1V7p+WFXBEuEOEUli8aW5lB5g1SaNB82OsTx8
	kApXRVEaZ9wynu+Pe+uS8cV+Y16P2o6ynti4Qpg2uPm1j+KQZ3WyJJFCkYfeIdAZSPVW
	TPTq6DJc6h/PtyoFyebp0rD/r4PM/2mbxyS4udwCM3EnXt40jRZqmS1vgAhCoKYA/pf0
	uFrw==
X-Gm-Message-State: AKGB3mJsKCXy6wlPmtICYJCTSXsjaFTWti3YDpDcbikkopGZlLGEY1I+
	Clew9aDwEfXePwiN3AVdFSP8gLbocUJDbKgyLLM=
X-Google-Smtp-Source: ACJfBotKvqnDkTYPq4ChBl3i/KX5B3K32iqNs25SOBgTm7vme1AOoUs3tWq+LGmJcWe+zNZe00PYjRuoz9ZMMAoHplY=
X-Received: by 10.37.46.80 with SMTP id b16mr3179755ybn.253.1513889957362;
	Thu, 21 Dec 2017 12:59:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Thu, 21 Dec 2017 12:59:16 -0800 (PST)
In-Reply-To: <CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 21 Dec 2017 21:59:16 +0100
Message-ID: <CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Thu, 21 Dec 2017 20:59:19 -0000
Content-Type: multipart/alternative; boundary="089e0828e2042340540560dff9d9"

--089e0828e2042340540560dff9d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hi all,
>
> On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <schnitzeltony@gmai=
l.com>
> wrote:
>
>> On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <mirza.krak@gmail.com>
>> wrote:
>>
>>> 2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.com>=
:
>>> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <
>>> sherifomran2000@gmail.com>
>>> > wrote:
>>> >>
>>> >> hey guys,
>>> >>
>>> >> any body tried the real time kernel? I get an error, it is snot in t=
he
>>> >> compatibility list.
>>> >> can we skip it?
>>> >>
>>> >> thanks
>>> >>
>>> >> --
>>> >
>>> > Good news: I use RT kernel only together with VC4 graphics and have
>>> lots of
>>> > fun on PI2/3.
>>> > Bad news: As far as I know it is not in meta-raspberrypi but in my
>>> fork [1].
>>> > There were attempts to land the RT-patches in meta-raspberrypi but
>>> that was
>>> > denied for huge patch size :(
>>>
>>> If the patch size was the only problem one can pull it by doing the
>>> following in the recipe:
>>>
>>> SRC_URI +=3D " \
>>>     https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/patc
>>> h-4.9.65-rt56.patch.gz;name=3Drt-patch
>>> \
>>> "
>>>
>>> SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
>>> SRC_URI[rt-patch.sha256sum] =3D
>>> "47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"
>>>
>>> Note that above sums are "random" and not the for the actually file
>>> but are there for reference.
>>>
>>> That way you do not need to keep a copy of it in meta-raspberrypi.
>>>
>>> --
>>>
>> Hi Mirza,
>>
>> Problem is that patches need alignments sometimes either caused by
>> Raspberry-Pi-specific adjustments or versions not matching exactly - RT
>> kernel patch updates are less frequent than kernel updates. Anyway: git =
is
>> very good at maintaining huge text content and this should not be a prob=
lem
>> these days. Another discussion about RT kernel was to have an extra kern=
el
>> for it and I never understood why. To me that seems nothing but an extra
>> maintenance burden.
>>
>> However - just wrote to Paul: I plan to be at FOSDEM and we can discuss
>> there how to get back to one layer only (not mine!) making everybody hap=
py
>> :)
>>
>>
> I remember the discussion. Indeed that was the reason and the
> recommendation was to maintain a separate linux-raspberry fork where
> whoever has interest in this will maintain on top of linux-raspberrypi th=
is
> patch. Obviously that didn't happen but I'd like to see it landing.
>
> Yes that was one of the suggestions which made me say 'Thanks - this is
just additional maintenance burden and will not work for long time - I do
my own'. FWIW: That suggestion came at a time when you (Andrei) seemed
overworked totally (just to mention - PLEASE don't take it as criticism - I
know what I am talking of when it comes to 'overworked').

Why not simply one stable kernel with RT-patches applied if user decides by
an option? That is what I am doing for >1 year now and meta-raspi-light is
the one which caused me least efforts/headaches of all. And yes I know I
made life easy here by removing userland completely and taking care for
RPi2/3 only.

Cheers,

Andreas

--089e0828e2042340540560dff9d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<br><div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote"><div><div class=3D"gmail-h5">On Thu, Dec 14, 2017 at 12:09 PM, Andr=
eas M=C3=BCller <span dir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@gmail=
.com" target=3D"_blank">schnitzeltony@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><div><div class=3D"gmail-m_-107=
3619732399821538gmail-h5">On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:mirza.krak@gmail.com" target=3D"_blank"=
>mirza.krak@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><span class=3D"gmail-m_-1073619732399821538gmail-m_-5=
582613679932633661gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt=
;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony=
@gmail.com</a>&gt;:<br>
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
<span class=3D"gmail-m_-1073619732399821538gmail-m_-5582613679932633661gmai=
l-HOEnZb"><font color=3D"#888888"><br>
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
king everybody happy :)<span class=3D"gmail-m_-1073619732399821538gmail-HOE=
nZb"></span><br></div></div><br></blockquote><div><br></div></div></div><di=
v>I remember the discussion. Indeed that was the reason and the recommendat=
ion was to maintain a separate linux-raspberry fork where whoever has inter=
est in this will maintain on top of linux-raspberrypi this patch. Obviously=
 that didn&#39;t happen but I&#39;d like to see it landing.<br></div><div><=
br></div></div></div></div></div></blockquote></div>Yes that was one of the=
 suggestions which made me say &#39;Thanks - this is just additional mainte=
nance burden and will not work for long time - I do my own&#39;. FWIW: That=
 suggestion came at a time when you (Andrei) seemed overworked totally (jus=
t to mention - PLEASE don&#39;t take it as criticism - I know what I am tal=
king of when it comes to &#39;overworked&#39;).<br></div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Why not simply one stable ker=
nel with RT-patches applied if user decides by an option? That is what I am=
 doing for &gt;1 year now and meta-raspi-light is the one which caused me l=
east efforts/headaches of all. And yes I know I made life easy here by remo=
ving userland completely and taking care for RPi2/3 only.<br></div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Cheers,</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Andreas<br></div>=
<div class=3D"gmail_extra"><br></div></div>

--089e0828e2042340540560dff9d9--
