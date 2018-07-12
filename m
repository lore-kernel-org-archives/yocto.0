Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4FC3E00E43; Thu, 12 Jul 2018 10:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 874B4E00E44
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 10:51:56 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id v8-v6so57392629oie.5
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 10:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cyq5mZOyD4DSEy76WcU3BR87kKZALD4l7+66zpgANkw=;
	b=fPaLy6oVjOAkESlOgpUB8v8cL7VKO0jsqyG1i2rHrrBznT2wSD5+mVeK504+H8kd5V
	bhvB81D5rTvYazw/IbdF8c8Wr6OBsxsyOlps3bb8TEEgDAUAdqk37uSWYQC8DVPYB/a+
	giKTM/CEf2YnRca88/1QhXBcBRKhMDtpr85YLH0b0JoD9/TyH+v3WLEr46VQGhGvwXze
	4BWd/9vbGGvGI0L/nJsmqLNEkUMWKe89fKO2KEwzfG0mCqIxHGUuR4xL3TJazykI6ISh
	vNTjVKm1noGcFTesCiaDYAy5Sb3zdPNZYdJ3/BcMrUQtmbV1S1HW/Tia2q6fbTfvJZZY
	1Cdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cyq5mZOyD4DSEy76WcU3BR87kKZALD4l7+66zpgANkw=;
	b=P2SUGTHAZ5qw+nVrIu4ey1UvMGUXJX0/h6LAj9B5pCNBYprJKC4eRxMkeUUUZeTfrq
	pR7FYfAoydu9bQY2ZlmQknB0nnB2P9USxDzKECVXPE87NIWAO311FZfJMa/pmlMSs/kf
	dPHZ0jC/aRSLxMKU1wui6TTZO75Ah3zrMRgD3gDQftQgnGTFpNQs8iS/M46o+J6D7tyl
	xJEsDHh4+yELyxrApIB5bHG+CbmeDAZSxiCiddq9MMwuXekF2v8Sbjgn3FaDmPA0FWJz
	+XS8LJukbKGrtT0sxIKL8CU67OHY/YXU3sgzDBn2e80TkSsJU/kdz0CWKe3iE7WYTs6+
	YfLg==
X-Gm-Message-State: AOUpUlHnRTWUg4/oHvDJInTfQqpGiJq5L0zImGR+9P5hTZ4d0AVONarb
	qUSTNUhsjDPBl1Gz4Oizttaldg8xc3kQwUKWD2m3rw==
X-Google-Smtp-Source: AAOMgpeBvQ2wCkhV8MDcLGYubNZfMtHBgtLr3nbzoT+yTPCKo6J2ApLyR0jJpxmJl37yzMZEK2OazDALpU2KsqHXV7M=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr3598732oig.245.1531417915886; 
	Thu, 12 Jul 2018 10:51:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Thu, 12 Jul 2018 10:51:35
	-0700 (PDT)
In-Reply-To: <CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
	<CAJTo0LaTeoEssFT8zy54AaSqgPgxE7ForzYZYWD8n5aVhGV_WQ@mail.gmail.com>
	<CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jul 2018 18:51:35 +0100
Message-ID: <CAJTo0LaBSZdOVh7QEWvtr=S+ft99J7W=dodXTK0OTJp9A9sDNA@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to download a recipe
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
X-List-Received-Date: Thu, 12 Jul 2018 17:51:57 -0000
Content-Type: multipart/alternative; boundary="000000000000e122f60570d104e6"

--000000000000e122f60570d104e6
Content-Type: text/plain; charset="UTF-8"

That's a bug in the tool, as meta-networking is a sublayer of meta-oe.  If
you look at the paths, they're the same file.

Ross

On 12 July 2018 at 18:49, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:

> for grpc, there are 2 of them:
>
> http://layers.openembedded.org/layerindex/recipe/72419/
> Layer meta-oe
> <http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/>
> (master branch)
>
>
> and
> http://layers.openembedded.org/layerindex/recipe/86424/
> Layer meta-networking
> <http://layers.openembedded.org/layerindex/branch/master/layer/meta-networking/>
> (master branch)
>
>
> which one do I choose?
>
>
>
> On Thu, Jul 12, 2018 at 12:42 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> Using postgresql as an example, searching for it will take you to the
>> recipe page:
>>
>> http://layers.openembedded.org/layerindex/recipe/5558/
>>
>> This tells you that the recipe is in the meta-oe layer, so click on that:
>>
>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/
>>
>> That tells you where the layer is hosted:
>>
>> http://cgit.openembedded.org/meta-openembedded
>>
>> You use git to clone that layer and add it to BBLAYERS.
>>
>> Ross
>>
>> On 12 July 2018 at 17:19, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
>> > Hi,
>> >
>> > I simple question.
>> >
>> > How do you download a recipe from ?
>> >
>> > http://layers.openembedded.org/layerindex/branch/master/recipes/
>> >
>> > ??
>> >
>> > Do I copy past the bb into a text file or there is a way to download the
>> > actual file?
>> >
>> > Thanks,
>> > S
>> >
>> >
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--000000000000e122f60570d104e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s a bug in the tool, as meta-networking is a subl=
ayer of meta-oe.=C2=A0 If you look at the paths, they&#39;re the same file.=
<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On 12 July 2018 at 18:49, Simon Chamlian <span dir=3D"lt=
r">&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">simon.ch=
amlian@mpbc.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div>for grpc, there are 2 of them:</div><div><br></div><div><=
a href=3D"http://layers.openembedded.org/layerindex/recipe/72419/" target=
=3D"_blank">http://layers.openembedded.<wbr>org/layerindex/recipe/72419/</a=
></div><div><table class=3D"m_-9057344777037403397gmail-table m_-9057344777=
037403397gmail-table-striped m_-9057344777037403397gmail-table-bordered"><t=
body><tr><th>Layer</th>
                            <td><a href=3D"http://layers.openembedded.org/l=
ayerindex/branch/master/layer/meta-oe/" target=3D"_blank">meta-oe</a> (mast=
er branch)</td></tr></tbody></table></div><div><br></div><div><br></div><di=
v>and</div><div><a href=3D"http://layers.openembedded.org/layerindex/recipe=
/86424/" target=3D"_blank">http://layers.openembedded.<wbr>org/layerindex/r=
ecipe/86424/</a></div><div><table class=3D"m_-9057344777037403397gmail-tabl=
e m_-9057344777037403397gmail-table-striped m_-9057344777037403397gmail-tab=
le-bordered"><tbody><tr><th>Layer</th>
                            <td><a href=3D"http://layers.openembedded.org/l=
ayerindex/branch/master/layer/meta-networking/" target=3D"_blank">meta-netw=
orking</a> (master branch)</td></tr></tbody></table><br></div><div><br></di=
v><div><br></div><div>which one do I choose?</div><div><br></div><div><br><=
/div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Thu, Jul 12, 2018 at 12:42 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Using postgresql as an example, searching for it will take y=
ou to the<br>
recipe page:<br>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/recipe/5558/" rel=3D"n=
oreferrer" target=3D"_blank">http://layers.openembedded.org<wbr>/layerindex=
/recipe/5558/</a><br>
<br>
This tells you that the recipe is in the meta-oe layer, so click on that:<b=
r>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/branch/master/layer/me=
ta-oe/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.org=
<wbr>/layerindex/branch/master/laye<wbr>r/meta-oe/</a><br>
<br>
That tells you where the layer is hosted:<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded" rel=3D"noreferre=
r" target=3D"_blank">http://cgit.openembedded.org/m<wbr>eta-openembedded</a=
><br>
<br>
You use git to clone that layer and add it to BBLAYERS.<br>
<br>
Ross<br>
<div class=3D"m_-9057344777037403397HOEnZb"><div class=3D"m_-90573447770374=
03397h5"><br>
On 12 July 2018 at 17:19, Simon Chamlian &lt;<a href=3D"mailto:simon.chamli=
an@mpbc.ca" target=3D"_blank">simon.chamlian@mpbc.ca</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I simple question.<br>
&gt;<br>
&gt; How do you download a recipe from ?<br>
&gt;<br>
&gt; <a href=3D"http://layers.openembedded.org/layerindex/branch/master/rec=
ipes/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.org<=
wbr>/layerindex/branch/master/reci<wbr>pes/</a><br>
&gt;<br>
&gt; ??<br>
&gt;<br>
&gt; Do I copy past the bb into a text file or there is a way to download t=
he<br>
&gt; actual file?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; S<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"m_-9057344777037403397HOEnZb"><font color=3D"#88=
8888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000e122f60570d104e6--
