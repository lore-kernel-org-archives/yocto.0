Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBCA9E00DA4; Fri, 22 Dec 2017 06:17:35 -0800 (PST)
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
	*      [209.85.161.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E9DE00D94
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 06:17:33 -0800 (PST)
Received: by mail-yw0-f177.google.com with SMTP id z132so1490282ywd.9
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 06:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XF8sku7l2jwzqxww3el387xNq2tO0LNPsERfnzdSjCA=;
	b=iYAq5Wbp/f4JS+7mMV21nMIHUNNX8BFmBZC4AwL9yFQQcxbjXCe5eGuL8aHzP3KcF+
	1eXcUcjqm2dMhKcVURLdpyLnaoClV3k4anQQK0DZXrM9SEQIPmzIDcPjU0HAGJNgcYF6
	Qcrx4JmxjQPUG5fVvnao/InA9UYcJFjGD+0n6vEWtnnz16oTuLxd9ewCQgar1i6oavYB
	iLprzOqmYbERJ4qLI6dVFm/jZ7Qu21n0lywZw3ufNnB/LUmSIc1PptMWfqQUfHSQKLYK
	rLuyt15x7/xqAqfh8lWAUimKg93UR/E8BMUACZqN6RfgV9D+iKhQYtSNVMuJ3iSdzZvc
	owqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XF8sku7l2jwzqxww3el387xNq2tO0LNPsERfnzdSjCA=;
	b=cXQp9G7z7aFQ6P9O+K/+YTXqgWwfl8tKavzDtJ+B9CtX4VD+hq85nAgd3KB+yMzR91
	oc6fjfd7Jf1KaFv5GvtxzkoFwdXRXOku+hwGvuXo0n4A78lZz5aX1oh05RHH6U7il3LQ
	17D1pvEZPCkxpu8MKeGAQTiPa5LN4lBQ1QRgguCHAGeqCrzZWxQephoAmsyv4i1HnlKk
	qGBeZt73vBRE16ymHY5e+b3J9AjK1Tbl+IuEl97nopwbpDJq81rISrd6Vfz72g80xiAb
	KTTU4n4MKKpoaTuX6DAnQ2IHhGg9k41FKCuSGPqqJcPCIe7q3nF2IOqGxQxI2PpB0KCn
	AY0A==
X-Gm-Message-State: AKGB3mKUhgDYu+xXNuVfi9BFqRpxzvPoUNAfqlbeBN0fRg9c4hE4O55R
	QdsgswQkYzd1oBWN/tU9+1rtsBs98bdv+cMIOhw=
X-Google-Smtp-Source: ACJfBouCFG0FebJlL3FPN6jtVQT3/lAI9pCVmKuor0854FQU6eNq5wP+qiQYvjgHE5uJRE7UQQzkSbLTd7FQ6VZIwkk=
X-Received: by 10.129.158.149 with SMTP id v143mr10075870ywg.49.1513952253175; 
	Fri, 22 Dec 2017 06:17:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Fri, 22 Dec 2017 06:17:32 -0800 (PST)
In-Reply-To: <CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 22 Dec 2017 15:17:32 +0100
Message-ID: <CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 22 Dec 2017 14:17:35 -0000
Content-Type: multipart/alternative; boundary="94eb2c0bc05441ecdd0560ee7a16"

--94eb2c0bc05441ecdd0560ee7a16
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hi Andreas,
>
> On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <schnitzeltony@gmail=
.com>
> wrote:
>
>> On Thu, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <andrei@gherzan.ro>
>> wrote:
>>
>>> Hi all,
>>>
>>> On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <
>>> schnitzeltony@gmail.com> wrote:
>>>
>>>> On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <mirza.krak@gmail.com>
>>>> wrote:
>>>>
>>>>> 2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.co=
m>:
>>>>> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <
>>>>> sherifomran2000@gmail.com>
>>>>> > wrote:
>>>>> >>
>>>>> >> hey guys,
>>>>> >>
>>>>> >> any body tried the real time kernel? I get an error, it is snot in
>>>>> the
>>>>> >> compatibility list.
>>>>> >> can we skip it?
>>>>> >>
>>>>> >> thanks
>>>>> >>
>>>>> >> --
>>>>> >
>>>>> > Good news: I use RT kernel only together with VC4 graphics and have
>>>>> lots of
>>>>> > fun on PI2/3.
>>>>> > Bad news: As far as I know it is not in meta-raspberrypi but in my
>>>>> fork [1].
>>>>> > There were attempts to land the RT-patches in meta-raspberrypi but
>>>>> that was
>>>>> > denied for huge patch size :(
>>>>>
>>>>> If the patch size was the only problem one can pull it by doing the
>>>>> following in the recipe:
>>>>>
>>>>> SRC_URI +=3D " \
>>>>>     https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/patc
>>>>> h-4.9.65-rt56.patch.gz;name=3Drt-patch
>>>>> \
>>>>> "
>>>>>
>>>>> SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
>>>>> SRC_URI[rt-patch.sha256sum] =3D
>>>>> "47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"
>>>>>
>>>>> Note that above sums are "random" and not the for the actually file
>>>>> but are there for reference.
>>>>>
>>>>> That way you do not need to keep a copy of it in meta-raspberrypi.
>>>>>
>>>>> --
>>>>>
>>>> Hi Mirza,
>>>>
>>>> Problem is that patches need alignments sometimes either caused by
>>>> Raspberry-Pi-specific adjustments or versions not matching exactly - R=
T
>>>> kernel patch updates are less frequent than kernel updates. Anyway: gi=
t is
>>>> very good at maintaining huge text content and this should not be a pr=
oblem
>>>> these days. Another discussion about RT kernel was to have an extra ke=
rnel
>>>> for it and I never understood why. To me that seems nothing but an ext=
ra
>>>> maintenance burden.
>>>>
>>>> However - just wrote to Paul: I plan to be at FOSDEM and we can discus=
s
>>>> there how to get back to one layer only (not mine!) making everybody h=
appy
>>>> :)
>>>>
>>>>
>>> I remember the discussion. Indeed that was the reason and the
>>> recommendation was to maintain a separate linux-raspberry fork where
>>> whoever has interest in this will maintain on top of linux-raspberrypi =
this
>>> patch. Obviously that didn't happen but I'd like to see it landing.
>>>
>>> Yes that was one of the suggestions which made me say 'Thanks - this is
>> just additional maintenance burden and will not work for long time - I d=
o
>> my own'. FWIW: That suggestion came at a time when you (Andrei) seemed
>> overworked totally (just to mention - PLEASE don't take it as criticism =
- I
>> know what I am talking of when it comes to 'overworked').
>>
>
> You will be suprised but all of us are busy and this is a side project
> handled as good possible in our spare time. I do agree that there was a
> time where this project was a little demoted in priority. But even if tha=
t
> is the case, contributions are always welcomed - as you know.
>
>
>>
>> Why not simply one stable kernel with RT-patches applied if user decides
>> by an option? That is what I am doing for >1 year now and meta-raspi-lig=
ht
>> is the one which caused me least efforts/headaches of all. And yes I kno=
w I
>> made life easy here by removing userland completely and taking care for
>> RPi2/3 only.
>>
>>
> I will always advocate against forks but definitely that is an option too=
.
> What I want to understand is why maintaining it in meta-raspberrypi was
> painful. Basically, the question is how do you currently maintain, rebase
> etc the rt patch? I would expect it to happen in a git tree as well. Isn'=
t
> that the case?
>
> I maintained it this way:

* Set new kernel version
* Check if there is an update at RT-Kernel. If so update the patch.
* Rebuild the kernel. In case a patch does not apply cleanly, I use git
inside of oe work-shared folder, check/align for hunks failing and insert
them manually into original patch. From my experience there are usually
very few hunks to touch so this is no rocket science.

What do you think?

Some advertisement :) I would stand up to take care for RT and VC4 in the
future. This is what I need to build heavy heavy world builds with EGL/GLES
and able to mix/produce music..

Andreas

--94eb2c0bc05441ecdd0560ee7a16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Dec 22, 2017 at 2:25 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Andreas,=
<br><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><di=
v class=3D"h5">On Thu, Dec 21, 2017 at 8:59 PM, Andreas M=C3=BCller <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank"=
>schnitzeltony@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div><=
div class=3D"m_5647407648316123560gmail-h5"><div class=3D"gmail_quote">On T=
hu, Dec 21, 2017 at 5:08 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<br><div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote"><div><div class=3D"m_5647407648316123560gmail-m_7278621742380573472=
gmail-h5">On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <span dir=
=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">s=
chnitzeltony@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><div><div class=3D"m_5647407648316123560gmail-m_72786217=
42380573472gmail-m_-1073619732399821538gmail-h5">On Thu, Dec 14, 2017 at 11=
:40 AM, Mirza Krak <span dir=3D"ltr">&lt;<a href=3D"mailto:mirza.krak@gmail=
.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"m_5647407648316=
123560gmail-m_7278621742380573472gmail-m_-1073619732399821538gmail-m_-55826=
13679932633661gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt;<a =
href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gma=
il.com</a>&gt;:<br>
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
<span class=3D"m_5647407648316123560gmail-m_7278621742380573472gmail-m_-107=
3619732399821538gmail-m_-5582613679932633661gmail-HOEnZb"><font color=3D"#8=
88888"><br>
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
king everybody happy :)<span class=3D"m_5647407648316123560gmail-m_72786217=
42380573472gmail-m_-1073619732399821538gmail-HOEnZb"></span><br></div></div=
><br></blockquote><div><br></div></div></div><div>I remember the discussion=
. Indeed that was the reason and the recommendation was to maintain a separ=
ate linux-raspberry fork where whoever has interest in this will maintain o=
n top of linux-raspberrypi this patch. Obviously that didn&#39;t happen but=
 I&#39;d like to see it landing.<br></div><div><br></div></div></div></div>=
</div></blockquote></div></div></div>Yes that was one of the suggestions wh=
ich made me say &#39;Thanks - this is just additional maintenance burden an=
d will not work for long time - I do my own&#39;. FWIW: That suggestion cam=
e at a time when you (Andrei) seemed overworked totally (just to mention - =
PLEASE don&#39;t take it as criticism - I know what I am talking of when it=
 comes to &#39;overworked&#39;).<br></div></div></blockquote><div><br></div=
></div></div><div>You will be suprised but all of us are busy and this is a=
 side project handled as good possible in our spare time. I do agree that t=
here was a time where this project was a little demoted in priority. But ev=
en if that is the case, contributions are always welcomed - as you know.<br=
></div><span class=3D""><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"></div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Why not simply one s=
table kernel with RT-patches applied if user decides by an option? That is =
what I am doing for &gt;1 year now and meta-raspi-light is the one which ca=
used me least efforts/headaches of all. And yes I know I made life easy her=
e by removing userland completely and taking care for RPi2/3 only.<br></div=
><div class=3D"gmail_extra"><br></div></div></blockquote><div><br></div></s=
pan><div>I will always advocate against forks but definitely that is an opt=
ion too. What I want to understand is why maintaining it in meta-raspberryp=
i was painful. Basically, the question is how do you currently maintain, re=
base etc the rt patch? I would expect it to happen in a git tree as well. I=
sn&#39;t that the case?<br></div><div><br></div></div></div></div></div></b=
lockquote><div>I maintained it this way:</div><div><br></div><div>* Set new=
 kernel version</div><div>* Check if there is an update at RT-Kernel. If so=
 update the patch.</div><div>* Rebuild the kernel. In case a patch does not=
 apply cleanly, I use git inside of oe work-shared folder, check/align for =
hunks failing and insert them manually into original patch. From my experie=
nce there are usually very few hunks to touch so this is no rocket science.=
</div><div><br></div><div>What do you think? <br></div><div><br></div><div>=
Some advertisement :) I would stand up to take care for RT and VC4 in the f=
uture. This is what I need to build heavy heavy world builds with EGL/GLES =
and able to mix/produce music..<br></div><div><br></div><div></div><div>And=
reas<br></div></div></div></div>

--94eb2c0bc05441ecdd0560ee7a16--
