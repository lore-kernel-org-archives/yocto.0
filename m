Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA55E0080C; Tue,  2 Dec 2014 12:48:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm13-vm4.bullet.mail.ne1.yahoo.com
	(nm13-vm4.bullet.mail.ne1.yahoo.com [98.138.91.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16CB1E0030B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 12:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1417553310; bh=oiSrFZnF4lt54+WqRDfXLJgJz2Q5YS4tc90njoncY4w=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=gZI6gEeJCUgMeccJCHCwVG0tE0IehSErgRcrI/OQQ4js+WAs3hJo4TmuVxUtd8SueCZDNaH7Ye6F8HjGr2EyZOe5vVOn91CwBeuixS2v8WTRldtWUW1B7aWAYcTFVhmHLjDZU8SnxdsNl3jYLNHJnhWBSP+k1KHVzyC6mcP4c1e25q8KW2dGNyA73PVPwc40kO7QU3rIPATPzokJqK24M9vU20HzhjNyBaHlQI0NmKlInrIgIKGkZ0fBKDmQ2DXwLgQ9tkYGwWlb5rAAqgrkLBtq81Kc/z9cPDMK0G1grqgUYiMdHiMLlt47IedQTB17E8aihofqYpPvxlNJc/p47A==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=Rxls0r0H82P9MEuIuN+QgZHhuBhEJauhaUgVa6rfTRHv9HuYpvrhovquKcBcGTLwROBs8pcXeTK71sRN0JjJ8eurWCOqN+UxF3JM8xPJNGhnFxJCBO1vU61I0y0w4k8NFxEI9xut0MYhphIndbc3De63M6Kbhi3A91Zl6DieJ8MpOIbnhx3HlfEUB/AOhNW1vq8dIPuNzU9XmIU7TpHWQO4qRj6u5TT3+YNu34hUzmnfR9M7uWu0lrSl28HswXehdhQHBFPUYIYB9xSqvXJ6OE2n4EM13cpY5mBqWaYIZACZEzEVke//BeVVeMSTfK1Ggp+uGc8LN4ky3iIZ+LIXKg==;
Received: from [98.138.226.180] by nm13.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 20:48:30 -0000
Received: from [98.138.87.9] by tm15.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 20:48:30 -0000
Received: from [127.0.0.1] by omp1009.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 20:48:30 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 844734.57502.bm@omp1009.mail.ne1.yahoo.com
X-YMail-OSG: I.Th9FQVM1n48hIyr7w2NMev.ykTdw8ZgXvXB3w3ne3pVSsqkoQnJkba4Jrw_VX
	pqwxrZ0L7i8KxAAfNy3743a8uUufY63TadJXLudLQRrFPMSZVFp9gGPUIqQLJfjtMr_OocRnXMNV
	G_SVMu.XjUA.Id_IJm12awu5Q9TfRtKB.VVlwkz9qZrAeOIg.EOjGHqmjhavWbFFAPLKdYTAOA1Y
	wsh8RB6QB5QYJgQaI0DqtcMdyIH9NkjMRIXS9IMxl4ewK6GDgcYJnH7XEX2iOHShD8RjLkKBO1wJ
	SXI_HFW30V9KTklLWB_y.TAy6eUqMfT2vOYjw6CteOxu1DG18IJsDI6.aZ8su03oPICkBTICqT7R
	PrY2z4l3g2hstlw2weBhv52jdwjFpOIGLsCcsLX6UuW9NneamfKpaIXK5iyrlJGLFhrLrWYsomDv
	BJHcJugEPr_XeUdF423UdB27qVgtiaMqlPCmTK84WW7MPVgpPRHtJpH9i5g.s3CYnaVWSungoNu0
	uCWpmdxTCzAygZ9CYZ6GWhHJWdPAbGVYRDlfu349_peqzE15c91dExRjxv1UNONHGxv1xf57C5PF
	wBhohyYlnNsQ4VouWu.tr5pRojUn0KcLz79xizJYWZ7AkLAhVIg--
Received: by 98.138.101.178; Tue, 02 Dec 2014 20:48:30 +0000 
Date: Tue, 2 Dec 2014 20:48:29 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	Joe MacDonald <Joe_MacDonald@mentor.com>, 
	Bian Naimeng <biannm@cn.fujitsu.com>
Message-ID: <1915399171.2453357.1417553309836.JavaMail.yahoo@jws100206.mail.ne1.yahoo.com>
In-Reply-To: <547E21F0.7060307@windriver.com>
References: <547E21F0.7060307@windriver.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 20:48:34 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2453356_268753968.1417553309826"

------=_Part_2453356_268753968.1417553309826
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Guys, lets keep Bian in the loop. though, so he does not loos the thread in=
formation.So to conclude:=20
1.) one of us(or anyone in the community) should find the time to investiga=
te if only one multipath tools recipe is applicable and if that is the case=
 keep one in the meta-oe, eventually update it.Since it it related to meta-=
cgl could take a step forward on this because there could be some bbappends=
 applicable for meta-cgl there, but it will take 2/3 weeks until I will be =
able to do this. So anyone else interested is welcomed to do it if they are=
 in a hurry.2.) We kind of torn apart Bian`s patches and maybe he will not =
be so willing to do redo the patch for drdb, Joe will you be able to do the=
 required changes for making sure his patch can be integrated inside meta-n=
etworking.
Thank you for your time and patience.

Alex Vaduva



     On Tuesday, December 2, 2014 10:33 PM, Bruce Ashfield <bruce.ashfield@=
windriver.com> wrote:
  =20

 On 14-12-02 03:17 PM, Joe MacDonald wrote:
> [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:49) Bruce =
Ashfield wrote:
>
>> On 14-12-02 02:37 PM, Joe MacDonald wrote:
>>> [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:03) Alex=
andru Vaduva wrote:
>>>
>>>> Hello Bian,
>>>>
>>>> Did you know that the multipath tools recipe was also available inside=
 the
>>>> meta-oe and meta-virtualization?
>>>> I do not have any problems with it being available in meta-cgl.=C2=A0 =
I just wanted
>>>> to hear other opinions because I would like to make sure we do not get=
 to that
>>>> point where we keep various versions of various recipes in a variety o=
f places.
>>>> It will be a nightmare to work with them in the future.
>>>
>>> I completely agree, and I that's mostly the consensus of the community.
>>> Since meta-cgl already has dependencies on both meta-virtualization and
>>> meta-oe, I think it makes the most sense to try to keep updates for the
>>> multipath recipes in one or both of those layers.=C2=A0 My recommendati=
on
>>> would be to update the meta-oe one as it has broader applicability, but
>>> of course that's up to the submitter and the layer maintainers to
>>> decide.=C2=A0 It may be that it's appropriate to maintain a bbappend fo=
r the
>>> recipe in meta-cgl, but I think it'd be good to send it for inclusion i=
n
>>> meta-oe first.
>>
>> I'm with Joe on this one.
>>
>> I only did a really quick check on the history of the two copies
>> that we have, but I see the meta-virt variant was added in January 2013
>> and what could be the first version in meta-oe in March the same year.
>
> I actually intended to say "update the meta-oe one as it has broader
> applicability and if you're feeling ambitious, send the same update to
> meta-virtualization" since I thought meta-virt didn't have dependencies
> on meta-oe and I can see an argument in favour of keeping a separate
> recipe if you're keeping the layer contained.=C2=A0 But it looks like tha=
t's
> not the case, so consolidation makes sense here.

Yep, there are dependencies on meta-oe where it makes sense, or if
there's a package in meta-virt that isn't particularly twitchy about
versions and update cadence.

>
>> The layer index may not have been as helpful back then (but honestly
>> I can't recall) .. either way we failed to coordinate as a wider communi=
ty
>> and managed to end up with two different recipes in the layers.
>>
>> There's no sense making this any worse than it already is, so I'd say
>> that we could spend the time looking at the two (three?) recipes, and
>> get a consolidated variant in meta-oe, and I'd be happy to drop the
>> one in meta-virtualization and bbappend the same way that Joe suggests.
>>
>> Thoughts ? We should figure out if someone is going to take a crack
>> at it, so we don't all go do the same thing :)
>
> It's not on my to-do list, so don't worry about me running in parallel.
> iscsi was (and is again) the only meta-networking one and libcap-ng (as
> discussed with Armin the other day) and swig are the meta-selinux ones.
>

Sounds good.

Bruce

> -J.
>
>>
>> Bruce
>>
>>
>>
>>>
>>> Just my thoughts on it.
>>> -J.
>>>
>>>> Once again, just to make it clear. I am ok with the patches, I will me=
rge all
>>>> three of them (corosync, multipath and drbd) but I just wanted to make=
 sure you
>>>> took this into consideration.
>>>> Also I like the idea of having drbd recipe inside and the fact that yo=
u like to
>>>> get involved in this initiative.
>>>> Hope to hear more from you and also that I will be able to help more.
>>>>
>>>>
>>>> Alex Vaduva
>>>>
>>>>
>>>> On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujitsu=
.com>
>>>> wrote:
>>>>
>>>>
>>>> Bian Naimeng (2):
>>>>=C2=A0 =C2=A0 [meta-cgl] device-mapper-multipath: add recipe
>>>>=C2=A0 =C2=A0 [meta-cgl]drbd: add recipe
>>>>
>>>> .../device-mapper-multipath/multipathd.init.patch=C2=A0 | 12 +++++
>>>> .../device-mapper-multipath_0.5.0.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 | 53 ++++++++++++++++++++
>>>> meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
>>>> meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb=C2=A0 =C2=A0 | 57 +++++=
+++++++++++++++++
>>>> 4 files changed, 134 insertions(+)
>>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath=
/
>>>> device-mapper-multipath/multipathd.init.patch
>>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath=
/
>>>> device-mapper-multipath_0.5.0.bb
>>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
>>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
>>>>
>>>> --
>>>> 1.9.1
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>>
>>
>



   

------=_Part_2453356_268753968.1417553309826
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"color:#000; background-color:#fff; font-family:HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12px=
"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1417547826221_34744"><span id=3D"yui_=
3_16_0_1_1417547826221_36426">Guys, lets keep Bian in the loop. though, so =
he does not loos the thread information.</span></div><div id=3D"yui_3_16_0_=
1_1417547826221_36427" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1417547826221_3=
6428">So to conclude: <br></span></div><div id=3D"yui_3_16_0_1_141754782622=
1_36438" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1417547826221_36428">1.) one =
of us(or anyone in the community) should find the time to investigate if on=
ly one multipath tools recipe is applicable and if that is the case keep on=
e in the meta-oe, eventually update it.</span></div><div id=3D"yui_3_16_0_1=
_1417547826221_36435" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1417547826221_36=
428">Since it it related to meta-cgl could take a step forward on this beca=
use there could be some bbappends applicable for meta-cgl there, but it wil=
l take 2/3 weeks until I will be able to do this. So anyone else interested=
 is welcomed to do it if they are in a hurry.</span></div><div id=3D"yui_3_=
16_0_1_1417547826221_37788" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1417547826=
221_36428">2.) We kind of torn apart Bian`s patches and maybe he will not b=
e so willing to do redo the patch for drdb, Joe will you be able to do the =
required changes for making sure his patch can be integrated inside meta-ne=
tworking.</span></div><div id=3D"yui_3_16_0_1_1417547826221_41785" dir=3D"l=
tr"><br><span id=3D"yui_3_16_0_1_1417547826221_36428"></span></div><div id=
=3D"yui_3_16_0_1_1417547826221_41786" dir=3D"ltr"><span id=3D"yui_3_16_0_1_=
1417547826221_36428">Thank you for your time and patience.</span></div><div=
 id=3D"yui_3_16_0_1_1417547826221_43094" dir=3D"ltr"><br><span id=3D"yui_3_=
16_0_1_1417547826221_36428"></span></div><div id=3D"yui_3_16_0_1_1417547826=
221_43093" dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_1417547826221_36428"></=
span></div><div id=3D"yui_3_16_0_1_1417547826221_43092" dir=3D"ltr"><span i=
d=3D"yui_3_16_0_1_1417547826221_36428">Alex Vaduva<br></span></div><div id=
=3D"yui_3_16_0_1_1417547826221_36439" dir=3D"ltr"><span id=3D"yui_3_16_0_1_=
1417547826221_36428"><br></span></div><div class=3D"qtdSeparateBR"><br><br>=
</div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"=
font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande=
, sans-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, =
Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16p=
x;"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Tuesday, Decembe=
r 2, 2014 10:33 PM, Bruce Ashfield &lt;bruce.ashfield@windriver.com&gt; wro=
te:<br> </font> </div>  <br><br> <div class=3D"y_msg_container">On 14-12-02=
 03:17 PM, Joe MacDonald wrote:<br clear=3D"none">&gt; [Re: [yocto] [PATCH =
0/2] Add some recipes] On 14.12.02 (Tue 14:49) Bruce Ashfield wrote:<br cle=
ar=3D"none">&gt;<br clear=3D"none">&gt;&gt; On 14-12-02 02:37 PM, Joe MacDo=
nald wrote:<br clear=3D"none">&gt;&gt;&gt; [Re: [yocto] [PATCH 0/2] Add som=
e recipes] On 14.12.02 (Tue 14:03) Alexandru Vaduva wrote:<br clear=3D"none=
">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Hello Bian,<br clear=3D"n=
one">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Did you know that =
the multipath tools recipe was also available inside the<br clear=3D"none">=
&gt;&gt;&gt;&gt; meta-oe and meta-virtualization?<br clear=3D"none">&gt;&gt=
;&gt;&gt; I do not have any problems with it being available in meta-cgl.&n=
bsp; I just wanted<br clear=3D"none">&gt;&gt;&gt;&gt; to hear other opinion=
s because I would like to make sure we do not get to that<br clear=3D"none"=
>&gt;&gt;&gt;&gt; point where we keep various versions of various recipes i=
n a variety of places.<br clear=3D"none">&gt;&gt;&gt;&gt; It will be a nigh=
tmare to work with them in the future.<br clear=3D"none">&gt;&gt;&gt;<br cl=
ear=3D"none">&gt;&gt;&gt; I completely agree, and I that's mostly the conse=
nsus of the community.<br clear=3D"none">&gt;&gt;&gt; Since meta-cgl alread=
y has dependencies on both meta-virtualization and<br clear=3D"none">&gt;&g=
t;&gt; meta-oe, I think it makes the most sense to try to keep updates for =
the<br clear=3D"none">&gt;&gt;&gt; multipath recipes in one or both of thos=
e layers.&nbsp; My recommendation<br clear=3D"none">&gt;&gt;&gt; would be t=
o update the meta-oe one as it has broader applicability, but<br clear=3D"n=
one">&gt;&gt;&gt; of course that's up to the submitter and the layer mainta=
iners to<br clear=3D"none">&gt;&gt;&gt; decide.&nbsp; It may be that it's a=
ppropriate to maintain a bbappend for the<br clear=3D"none">&gt;&gt;&gt; re=
cipe in meta-cgl, but I think it'd be good to send it for inclusion in<br c=
lear=3D"none">&gt;&gt;&gt; meta-oe first.<br clear=3D"none">&gt;&gt;<br cle=
ar=3D"none">&gt;&gt; I'm with Joe on this one.<br clear=3D"none">&gt;&gt;<b=
r clear=3D"none">&gt;&gt; I only did a really quick check on the history of=
 the two copies<br clear=3D"none">&gt;&gt; that we have, but I see the meta=
-virt variant was added in January 2013<br clear=3D"none">&gt;&gt; and what=
 could be the first version in meta-oe in March the same year.<br clear=3D"=
none">&gt;<br clear=3D"none">&gt; I actually intended to say "update the me=
ta-oe one as it has broader<br clear=3D"none">&gt; applicability and if you=
're feeling ambitious, send the same update to<br clear=3D"none">&gt; meta-=
virtualization" since I thought meta-virt didn't have dependencies<br clear=
=3D"none">&gt; on meta-oe and I can see an argument in favour of keeping a =
separate<br clear=3D"none">&gt; recipe if you're keeping the layer containe=
d.&nbsp; But it looks like that's<br clear=3D"none">&gt; not the case, so c=
onsolidation makes sense here.<br clear=3D"none"><br clear=3D"none">Yep, th=
ere are dependencies on meta-oe where it makes sense, or if<br clear=3D"non=
e">there's a package in meta-virt that isn't particularly twitchy about<br =
clear=3D"none">versions and update cadence.<br clear=3D"none"><br clear=3D"=
none">&gt;<br clear=3D"none">&gt;&gt; The layer index may not have been as =
helpful back then (but honestly<br clear=3D"none">&gt;&gt; I can't recall) =
.. either way we failed to coordinate as a wider community<br clear=3D"none=
">&gt;&gt; and managed to end up with two different recipes in the layers.<=
br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; There's no sense maki=
ng this any worse than it already is, so I'd say<br clear=3D"none">&gt;&gt;=
 that we could spend the time looking at the two (three?) recipes, and<br c=
lear=3D"none">&gt;&gt; get a consolidated variant in meta-oe, and I'd be ha=
ppy to drop the<br clear=3D"none">&gt;&gt; one in meta-virtualization and b=
bappend the same way that Joe suggests.<br clear=3D"none">&gt;&gt;<br clear=
=3D"none">&gt;&gt; Thoughts ? We should figure out if someone is going to t=
ake a crack<br clear=3D"none">&gt;&gt; at it, so we don't all go do the sam=
e thing :)<br clear=3D"none">&gt;<br clear=3D"none">&gt; It's not on my to-=
do list, so don't worry about me running in parallel.<br clear=3D"none">&gt=
; iscsi was (and is again) the only meta-networking one and libcap-ng (as<b=
r clear=3D"none">&gt; discussed with Armin the other day) and swig are the =
meta-selinux ones.<br clear=3D"none">&gt;<br clear=3D"none"><br clear=3D"no=
ne">Sounds good.<div class=3D"yqt6980525695" id=3D"yqtfd39497"><br clear=3D=
"none"><br clear=3D"none">Bruce<br clear=3D"none"><br clear=3D"none">&gt; -=
J.<br clear=3D"none">&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;=
&gt; Bruce<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=
=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt=
;&gt; Just my thoughts on it.<br clear=3D"none">&gt;&gt;&gt; -J.<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Once again, just =
to make it clear. I am ok with the patches, I will merge all<br clear=3D"no=
ne">&gt;&gt;&gt;&gt; three of them (corosync, multipath and drbd) but I jus=
t wanted to make sure you<br clear=3D"none">&gt;&gt;&gt;&gt; took this into=
 consideration.<br clear=3D"none">&gt;&gt;&gt;&gt; Also I like the idea of =
having drbd recipe inside and the fact that you like to<br clear=3D"none">&=
gt;&gt;&gt;&gt; get involved in this initiative.<br clear=3D"none">&gt;&gt;=
&gt;&gt; Hope to hear more from you and also that I will be able to help mo=
re.<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<b=
r clear=3D"none">&gt;&gt;&gt;&gt; Alex Vaduva<br clear=3D"none">&gt;&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
 On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng &lt;<a shape=3D"rect" =
ymailto=3D"mailto:biannm@cn.fujitsu.com" href=3D"mailto:biannm@cn.fujitsu.c=
om">biannm@cn.fujitsu.com</a>&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; wrote:=
<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<br c=
lear=3D"none">&gt;&gt;&gt;&gt; Bian Naimeng (2):<br clear=3D"none">&gt;&gt;=
&gt;&gt;&nbsp; &nbsp; [meta-cgl] device-mapper-multipath: add recipe<br cle=
ar=3D"none">&gt;&gt;&gt;&gt;&nbsp; &nbsp; [meta-cgl]drbd: add recipe<br cle=
ar=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; .../device-=
mapper-multipath/multipathd.init.patch&nbsp; | 12 +++++<br clear=3D"none">&=
gt;&gt;&gt;&gt; .../device-mapper-multipath_0.5.0.bb&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; | 53 ++++++++++++++++++++<br clear=3D"none">&gt;&=
gt;&gt;&gt; meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++<b=
r clear=3D"none">&gt;&gt;&gt;&gt; meta-cgl-common/recipes-cgl/drbd/drbd_8.4=
.4.bb&nbsp; &nbsp; | 57 ++++++++++++++++++++++<br clear=3D"none">&gt;&gt;&g=
t;&gt; 4 files changed, 134 insertions(+)<br clear=3D"none">&gt;&gt;&gt;&gt=
; create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/<b=
r clear=3D"none">&gt;&gt;&gt;&gt; device-mapper-multipath/multipathd.init.p=
atch<br clear=3D"none">&gt;&gt;&gt;&gt; create mode 100644 meta-cgl-common/=
recipes-cgl/device-mapper-multipath/<br clear=3D"none">&gt;&gt;&gt;&gt; dev=
ice-mapper-multipath_0.5.0.bb<br clear=3D"none">&gt;&gt;&gt;&gt; create mod=
e 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service<br clear=3D"non=
e">&gt;&gt;&gt;&gt; create mode 100644 meta-cgl-common/recipes-cgl/drbd/drb=
d_8.4.4.bb<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
;&gt; --<br clear=3D"none">&gt;&gt;&gt;&gt; 1.9.1<br clear=3D"none">&gt;&gt=
;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; --<br clear=3D"none">&gt;&gt;&=
gt;&gt; _______________________________________________<br clear=3D"none">&=
gt;&gt;&gt;&gt; yocto mailing list<br clear=3D"none">&gt;&gt;&gt;&gt; <a sh=
ape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none">&gt;&gt;&gt=
;&gt; <a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br =
clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;<br clear=3D"non=
e"><br clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div>

------=_Part_2453356_268753968.1417553309826--
