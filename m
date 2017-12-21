Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 130E1E00D9E; Thu, 21 Dec 2017 08:08:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44932E00D07
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:08:47 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id q22so5921150uaa.9
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S1MHu8HUmDEATiZ7MsPauWpU9vQL2K8fV1YH92ZOGU8=;
	b=H+PzNqn2leRfYwP8JJIFUwZj75oWpi4gItXkDWQkz6LrN7mRBHH69XWxBHCEjL/FmO
	FxIqj5fKyC6YNG7FPo6kfbEZH4U7UcatxW4W8+EQFQWhi7WYPYFgBrCHGR/Y8j8DkhIy
	qYGW0x88iIHZinCbkVV2r6U4Uq2eyB+yImzBdYvId1FXMy6lPPxlq17kNVHVH0sOmd3+
	aKaTcsUwWn7xs9ttlkxZAgWiuFXvRJHFLOvjzgiGH1Ylbb7I6WEPD0z0ZmyXKMkviiYN
	JK506LaEZkruij7pEjB77SNAW0xrTMpQX6ciVr0tfVpaxsCRWVhgEhSzDKd+nN8EAeqa
	bgmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S1MHu8HUmDEATiZ7MsPauWpU9vQL2K8fV1YH92ZOGU8=;
	b=FEEewYKByKHBO+z5IeOGwZkxIozzea/Ytnnn2P7aJ/5Bg1Ft8HTklWUvmt2Eld3JNM
	9n7jQzivbyrc4lAXKON7QPJCkMRbLtbmq02beoMYJshwoGPfHrVDxoNzTjeFs/b8R2fj
	C8vjmZd0mQMJvADfC/ZqPOi5XUufbxRfPYcdashwJcMbbUfcnvRPvX8srj6bThdTkc47
	fM5fdza2jUENjRpItk7HllBhfkWfh0vSBDQJ0VMBBBf9ELQwic7KJE/5anwqKvy2J18h
	ugedb2K1stgPf9TAZALOKCYx2AKJ+UrAqpGwsfYHQSqnsUItzHTB9Af1wVQ8RSGYtJ5/
	ITvQ==
X-Gm-Message-State: AKGB3mJHk1a95+wtCJc0r9Y/Zh1UqyJKjOgfH4umTKtB7HlBGZIDak7I
	T2uWFuFaXoSLMjORmopxQKncwDH7onia9PPdtzW7Ew==
X-Google-Smtp-Source: ACJfBotljgTCeg3pg/PKy8/iRnCfAeLNssmOmuDQ4rxoFW0DerdbsqSygLR24xEChcFhXTFq73lW5gRlRU1sgXGqhbE=
X-Received: by 10.159.57.195 with SMTP id p3mr12301795uag.39.1513872527069;
	Thu, 21 Dec 2017 08:08:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.41 with HTTP; Thu, 21 Dec 2017 08:08:06 -0800 (PST)
X-Originating-IP: [86.140.154.13]
In-Reply-To: <CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 21 Dec 2017 16:08:06 +0000
Message-ID: <CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Dec 2017 16:08:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a24923636d10560dbeabd"

--94eb2c1a24923636d10560dbeabd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <schnitzeltony@gmail.=
com>
wrote:

> On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <mirza.krak@gmail.com> wrote=
:
>
>> 2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.com>:
>> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <
>> sherifomran2000@gmail.com>
>> > wrote:
>> >>
>> >> hey guys,
>> >>
>> >> any body tried the real time kernel? I get an error, it is snot in th=
e
>> >> compatibility list.
>> >> can we skip it?
>> >>
>> >> thanks
>> >>
>> >> --
>> >
>> > Good news: I use RT kernel only together with VC4 graphics and have
>> lots of
>> > fun on PI2/3.
>> > Bad news: As far as I know it is not in meta-raspberrypi but in my for=
k
>> [1].
>> > There were attempts to land the RT-patches in meta-raspberrypi but tha=
t
>> was
>> > denied for huge patch size :(
>>
>> If the patch size was the only problem one can pull it by doing the
>> following in the recipe:
>>
>> SRC_URI +=3D " \
>>     https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/patc
>> h-4.9.65-rt56.patch.gz;name=3Drt-patch
>> \
>> "
>>
>> SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
>> SRC_URI[rt-patch.sha256sum] =3D
>> "47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"
>>
>> Note that above sums are "random" and not the for the actually file
>> but are there for reference.
>>
>> That way you do not need to keep a copy of it in meta-raspberrypi.
>>
>> --
>>
> Hi Mirza,
>
> Problem is that patches need alignments sometimes either caused by
> Raspberry-Pi-specific adjustments or versions not matching exactly - RT
> kernel patch updates are less frequent than kernel updates. Anyway: git i=
s
> very good at maintaining huge text content and this should not be a probl=
em
> these days. Another discussion about RT kernel was to have an extra kerne=
l
> for it and I never understood why. To me that seems nothing but an extra
> maintenance burden.
>
> However - just wrote to Paul: I plan to be at FOSDEM and we can discuss
> there how to get back to one layer only (not mine!) making everybody happ=
y
> :)
>
>
I remember the discussion. Indeed that was the reason and the
recommendation was to maintain a separate linux-raspberry fork where
whoever has interest in this will maintain on top of linux-raspberrypi this
patch. Obviously that didn't happen but I'd like to see it landing.

--
Andrei Gherzan

--94eb2c1a24923636d10560dbeabd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Dec 14, 2017 at 12:09 PM, Andreas M=C3=BCller <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_bla=
nk">schnitzeltony@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote"><div><div class=3D"gmail-h5">On Thu, Dec 14, 2017 a=
t 11:40 AM, Mirza Krak <span dir=3D"ltr">&lt;<a href=3D"mailto:mirza.krak@g=
mail.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-m_-55=
82613679932633661gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt;=
<a href=3D"mailto:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@=
gmail.com</a>&gt;:<br>
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
tc<wbr>h-4.9.65-rt56.patch.gz;name=3D<wbr>rt-patch</a><br>
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
<span class=3D"gmail-m_-5582613679932633661gmail-HOEnZb"><font color=3D"#88=
8888"><br>
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
king everybody happy :)<span class=3D"gmail-HOEnZb"></span><br></div></div>=
<br></blockquote><div><br></div><div>I remember the discussion. Indeed that=
 was the reason and the recommendation was to maintain a separate linux-ras=
pberry fork where whoever has interest in this will maintain on top of linu=
x-raspberrypi this patch. Obviously that didn&#39;t happen but I&#39;d like=
 to see it landing.<br></div><div><br clear=3D"all"><div><div class=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Ghe=
rzan</div></div></div></div></div>=C2=A0</div></div><br></div></div></div>

--94eb2c1a24923636d10560dbeabd--
