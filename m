Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2DAAE00E40; Fri, 25 Sep 2015 15:03:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B643E00474
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 15:03:17 -0700 (PDT)
Received: by igbni9 with SMTP id ni9so18524447igb.0
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 15:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=hZBWayYqGTn7iUApkpTCPdIqYws/BAAg7p4nSBEpnMM=;
	b=EvAyC+BQsgSVsA3HLKaCxmgjV3rQxl1GuvPvCJZepBRBGFdPCn/50J8PxkiHRL+6Zy
	GBdRbJ3CfTit4W2wcE/3BO8o5eUitM1zyDo87CqDhRmZFbrnN+cd5dJfzwgyFY12MxsH
	nDkAzlx1BZmgO4dXg40SA66iAG5YWygcNoe47cjH4pYmyvrR7x8ythHIQ0fu5DaQLFs5
	ihUxV8oiHLjHZIakJq+pmUxB9QXykBZ6+5m9dymtFGMeJMntp2ffn+YgG8Y6RuqRl8vg
	6v0FCO65947H0f2Lp7tKAc0yOkH+Kd0DQYAPw5Ox0BcieOmvVJnzqGnEY7v8D0i83etI
	n4bQ==
X-Received: by 10.50.43.170 with SMTP id x10mr5055973igl.68.1443218597067;
	Fri, 25 Sep 2015 15:03:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Fri, 25 Sep 2015 15:02:57 -0700 (PDT)
In-Reply-To: <82D5505A-6D71-47BF-B4ED-AD2C117F4924@curtisembedded.com>
References: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
	<CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
	<3FA71175-E6BE-46FE-9DA4-8284FFB58F49@curtisembedded.com>
	<CABcZAN=ZtWwNp=Fv=8ox3KAxaFNdi=qduM8s4fM5wsOqOsmV8A@mail.gmail.com>
	<82D5505A-6D71-47BF-B4ED-AD2C117F4924@curtisembedded.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 25 Sep 2015 15:02:57 -0700
X-Google-Sender-Auth: -GK660T0VpDsshjtV9zMzIM8XwY
Message-ID: <CABcZAN=Z1A3Q51QpHfQA3g+205Aj2_jvb9KCNiexnLLV00yxnQ@mail.gmail.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Fri, 25 Sep 2015 22:03:20 -0000
Content-Type: multipart/alternative; boundary=089e01176cadcfca52052099832e

--089e01176cadcfca52052099832e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 25, 2015 at 11:52 AM, Allen Curtis <
allen.curtis@curtisembedded.com> wrote:

> On Fri, Sep 25, 2015 at 10:15 AM, Allen Curtis <
> allen.curtis@curtisembedded.com> wrote:
>
>> I am working with a BSP that has multiple image recipes.
>>>
>>> foo-hwbringup-image.bb
>>> foo-qt5demo-image.bb
>>>
>>> foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"
>>>
>>> However if I create foo-hwbringup-image.bbappend, it gets ignored.
>>>
>>> What are the rules with appending included recipes?
>>>
>>
>> bbappends do not append arbitrary files, only recipes (and in this case,
>> the inclusion treats them as an arbitrary file). They do not apply to
>> anything included or required, only the recipe itself. So you'll need to
>> bbappend every recipe that includes foo-hwbringup-image.bb in this case.
>>
>>
>> This is unfortunate since foo-hwbringup-image.bb is also a valid recipe.
>> It just doesn't contain the graphics support.
>>
>> Is there a better way to add your custom components to "core-image" I
>> guess=E2=80=A6..
>>
>
> You could always define custom features for use in IMAGE_FEATURES and add
> them to your images via EXTRA_IMAGE_FEATURES in local.conf, or bbappend o=
ne
> of the core images.
>
>
> How is bbappend a core image different from bbappend foo-hwbringup-image?
>
> If you follow the original post one more generation,
> foo-hwbringup-image.bb "inherit core-image"
>

It isn't. You asked how to add custom components to a core-image, that's
one way to do it, append every image involved. Whether that works for you
depends on your requirements, and wasn't part of the question nor the
answer.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01176cadcfca52052099832e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Sep 25, 2015 at 11:52 AM, Allen Curtis <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:allen.curtis@curtisembedded.com" target=3D"_blank">allen.curtis=
@curtisembedded.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D""><div><blockquote type=3D"cite"><div dir=3D"ltr"><div clas=
s=3D"gmail_extra"><div class=3D"gmail_quote">On Fri, Sep 25, 2015 at 10:15 =
AM, Allen Curtis <span dir=3D"ltr">&lt;<a href=3D"mailto:allen.curtis@curti=
sembedded.com" target=3D"_blank">allen.curtis@curtisembedded.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span><blockquote type=3D"cit=
e"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><=
blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex" class=
=3D"gmail_quote"><div style=3D"overflow:hidden">I am working with a BSP tha=
t has multiple image recipes.<br>
<br>
<a href=3D"http://foo-hwbringup-image.bb/" rel=3D"noreferrer" target=3D"_bl=
ank">foo-hwbringup-image.bb</a><br>
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" target=3D"_blan=
k">foo-qt5demo-image.bb</a><br>
<br>
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" target=3D"_blan=
k">foo-qt5demo-image.bb</a> contains &quot;require <a href=3D"http://foo-hw=
bringup-image.bb/" rel=3D"noreferrer" target=3D"_blank">foo-hwbringup-image=
.bb</a>&quot;<br>
<br>
However if I create foo-hwbringup-image.bbappend, it gets ignored.<br>
<br>
What are the rules with appending included recipes?</div></blockquote></div=
><br>bbappends do not append arbitrary files, only recipes (and in this cas=
e, the inclusion treats them as an arbitrary file). They do not apply to an=
ything included or required, only the recipe itself. So you&#39;ll need to =
bbappend every recipe that includes <a href=3D"http://foo-hwbringup-image.b=
b/" target=3D"_blank">foo-hwbringup-image.bb</a> in this case.<br></div></d=
iv></blockquote><br></span><div>This is unfortunate since <a href=3D"http:/=
/foo-hwbringup-image.bb/" target=3D"_blank">foo-hwbringup-image.bb</a> is a=
lso a valid recipe. It just doesn&#39;t contain the graphics support.</div>=
<div><br></div><div>Is there a better way to add your custom components to =
&quot;core-image&quot; I guess=E2=80=A6..</div><div></div></blockquote></di=
v><br>You could always define custom features for use in IMAGE_FEATURES and=
 add them to your images via EXTRA_IMAGE_FEATURES in local.conf, or bbappen=
d one of the core images.<br></div></div></blockquote><br></div></span><div=
>How is bbappend a core image different from bbappend foo-hwbringup-image?<=
/div><div><br></div><div>If you follow the original post one more generatio=
n, <a href=3D"http://foo-hwbringup-image.bb" target=3D"_blank">foo-hwbringu=
p-image.bb</a> &quot;inherit core-image&quot;</div></blockquote></div><br>I=
t isn&#39;t. You asked how to add custom components to a core-image, that&#=
39;s one way to do it, append every image involved. Whether that works for =
you depends on your requirements, and wasn&#39;t part of the question nor t=
he answer.<br>-- <br><div class=3D"gmail_signature">Christopher Larson<br>c=
larson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br=
>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--089e01176cadcfca52052099832e--
