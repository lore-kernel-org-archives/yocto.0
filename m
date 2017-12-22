Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAA7E00D9D; Fri, 22 Dec 2017 05:26:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84091E00D7F
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 05:26:21 -0800 (PST)
Received: by mail-vk0-f66.google.com with SMTP id w75so16231711vkd.7
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 05:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rWLy3SHqEcDS0mYdTWzw/EOZghUUsfWiQYpqEq3tg/8=;
	b=oFOdCe+EQjdxaPj5HMWa6JHeKUv0KpDIbx7bSSyBddv7lC7k/ZWWRI+fCOAWVMzTH9
	VnczKUS39Av2dnVNpLQrIR7uwOs1BMURk1TSexFEgIbLDMa23iWEB3T3cJpe521FMFRr
	C9hMcdzJ8Z1dJd/MogqE+GaAV2etxtZIeREc0cRCttVfsRWfvvlXLUJS/jMfRmkJCToE
	uT0pLMCzaXnHJOhc48tyBmT/z5IoeCXImdoehDFDt5JtSbsm99nay0ggje+sp1BzxTL+
	S1L13rFi6toe6tfLoSWOo8sRY16mCGek78ShGVWqQ7HlsrI13DjSq+L8rd/HwwhKSup3
	8f+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rWLy3SHqEcDS0mYdTWzw/EOZghUUsfWiQYpqEq3tg/8=;
	b=fJsJTi6XOcTxOvbj/F9wjpu3miSLLDdH1cvXmoWvMBMt121Jn+zlKTIrjx2nI/eBCe
	2ufDmgKjXVchAUnw46Ee4YNhq1gly10ALjZU5u9NTClXiY99MQ4MNPyvJMkLI5rlYqDa
	Ucl3ibvPCcN40/ygj+qj9VbWh2p9+9fgLLlMIX7psorLc/4VVJ6MMfEUORevdxUC0LwO
	/3uOj+spGxb6MQrdKT+avbzbTjAQZtnBg5T45tOYby0aRSioGvJ7Oj1PdrIYA3IOrMk9
	zGKJDtUGHmWoayFvtJvO9gqZzbg25j1xlK/pGksIphYWdy2bpDfq4p8Wng1iyFKFohVn
	oT+Q==
X-Gm-Message-State: AKGB3mLyIE3hNwkWwBQSo1FK5W8zXr2cY82Gb/F+m+sFLTzbR+IIE56Q
	30lBKEHps6Dx11Y7AauSHjXL5vONf5ho1LHj1DZ6nw==
X-Google-Smtp-Source: ACJfBotM+zJ1e378zxWSM8V0Ipj4MzfqGniTe3qyUd73j+uEG2mN1Gu80rZ1bfU7T67OZjCVmfNdukCA4XK10zlOilA=
X-Received: by 10.31.83.193 with SMTP id h184mr1313640vkb.94.1513949180442;
	Fri, 22 Dec 2017 05:26:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.41 with HTTP; Fri, 22 Dec 2017 05:25:40 -0800 (PST)
X-Originating-IP: [86.140.154.13]
In-Reply-To: <CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 22 Dec 2017 13:25:40 +0000
Message-ID: <CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
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
X-List-Received-Date: Fri, 22 Dec 2017 13:26:23 -0000
Content-Type: multipart/alternative; boundary="001a114e4b281c10da0560edc385"

--001a114e4b281c10da0560edc385
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <schnitzeltony@gmail.c=
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

You will be suprised but all of us are busy and this is a side project
handled as good possible in our spare time. I do agree that there was a
time where this project was a little demoted in priority. But even if that
is the case, contributions are always welcomed - as you know.


>
> Why not simply one stable kernel with RT-patches applied if user decides
> by an option? That is what I am doing for >1 year now and meta-raspi-ligh=
t
> is the one which caused me least efforts/headaches of all. And yes I know=
 I
> made life easy here by removing userland completely and taking care for
> RPi2/3 only.
>
>
I will always advocate against forks but definitely that is an option too.
What I want to understand is why maintaining it in meta-raspberrypi was
painful. Basically, the question is how do you currently maintain, rebase
etc the rt patch? I would expect it to happen in a git tree as well. Isn't
that the case?

--
Andrei Gherzan

--001a114e4b281c10da0560edc385
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andreas,<br><div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_b=
lank">schnitzeltony@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><=
div><div class=3D"gmail-h5"><div class=3D"gmail_quote">On Thu, Dec 21, 2017=
 at 5:08 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@=
gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br=
><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div c=
lass=3D"gmail-m_7278621742380573472gmail-h5">On Thu, Dec 14, 2017 at 12:09 =
PM, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a href=3D"mailto:schnitzelto=
ny@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv class=3D"gmail_extra"><div class=3D"gmail_quote"><div><div class=3D"gmai=
l-m_7278621742380573472gmail-m_-1073619732399821538gmail-h5">On Thu, Dec 14=
, 2017 at 11:40 AM, Mirza Krak <span dir=3D"ltr">&lt;<a href=3D"mailto:mirz=
a.krak@gmail.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gma=
il-m_7278621742380573472gmail-m_-1073619732399821538gmail-m_-55826136799326=
33661gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt;<a href=3D"m=
ailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a=
>&gt;:<br>
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
<span class=3D"gmail-m_7278621742380573472gmail-m_-1073619732399821538gmail=
-m_-5582613679932633661gmail-HOEnZb"><font color=3D"#888888"><br>
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
king everybody happy :)<span class=3D"gmail-m_7278621742380573472gmail-m_-1=
073619732399821538gmail-HOEnZb"></span><br></div></div><br></blockquote><di=
v><br></div></div></div><div>I remember the discussion. Indeed that was the=
 reason and the recommendation was to maintain a separate linux-raspberry f=
ork where whoever has interest in this will maintain on top of linux-raspbe=
rrypi this patch. Obviously that didn&#39;t happen but I&#39;d like to see =
it landing.<br></div><div><br></div></div></div></div></div></blockquote></=
div></div></div>Yes that was one of the suggestions which made me say &#39;=
Thanks - this is just additional maintenance burden and will not work for l=
ong time - I do my own&#39;. FWIW: That suggestion came at a time when you =
(Andrei) seemed overworked totally (just to mention - PLEASE don&#39;t take=
 it as criticism - I know what I am talking of when it comes to &#39;overwo=
rked&#39;).<br></div></div></blockquote><div><br></div><div>You will be sup=
rised but all of us are busy and this is a side project handled as good pos=
sible in our spare time. I do agree that there was a time where this projec=
t was a little demoted in priority. But even if that is the case, contribut=
ions are always welcomed - as you know.<br></div><div>=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_extra"></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">Why not simply one stable kernel with RT-patches applied if user decid=
es by an option? That is what I am doing for &gt;1 year now and meta-raspi-=
light is the one which caused me least efforts/headaches of all. And yes I =
know I made life easy here by removing userland completely and taking care =
for RPi2/3 only.<br></div><div class=3D"gmail_extra"><br></div></div></bloc=
kquote><div><br></div><div>I will always advocate against forks but definit=
ely that is an option too. What I want to understand is why maintaining it =
in meta-raspberrypi was painful. Basically, the question is how do you curr=
ently maintain, rebase etc the rt patch? I would expect it to happen in a g=
it tree as well. Isn&#39;t that the case?<br></div><div><br></div></div><di=
v><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v>--</div>Andrei Gherzan</div></div></div></div></div></div></div></div>

--001a114e4b281c10da0560edc385--
