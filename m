Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226E7E00C87
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 14:35:43 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id k15so4535190qaq.15
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 14:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sEXap1cpE/nFM64N5wdn6/bm58ko7N4fQGc8hqKprdo=;
	b=jWYnutyVC1obYfkav5zho6XZs7QD01NUJA9BBTwiyRripumwlfK8T3ioNCfmb2Dm6S
	e5xnNUs7St5TckLBYw50kPH/f0ysKnREeTipSxoxGacUPBznK31HaQ4Bjxzd+whvdXyv
	xizvjIs9YwIwuoQ65s5KTaZXrXyKrEDEaiyIkbOtXB1p5N9WZZ0HGcno6pOhw2rglyBK
	OEuMnCjUThdGIbY6xBewnuo0NYRf0oCoVJpLAvxqRVB513XYefYmDEkV7vALXTs+rA2b
	wk1tzfkIin/kQaIlbFwlK7HN7crHDysOGmhPLyOpovQ+/0gNYNXVlqZRjb020RQZEO0P
	6puw==
MIME-Version: 1.0
X-Received: by 10.224.44.17 with SMTP id y17mr1059062qae.36.1397165742618;
	Thu, 10 Apr 2014 14:35:42 -0700 (PDT)
Received: by 10.140.40.114 with HTTP; Thu, 10 Apr 2014 14:35:42 -0700 (PDT)
Received: by 10.140.40.114 with HTTP; Thu, 10 Apr 2014 14:35:42 -0700 (PDT)
In-Reply-To: <53452985.7020202@enea.com>
References: <534416F0.10109@enea.com>
	<9507315.eLP4En45Q5@peggleto-mobl5.ger.corp.intel.com>
	<53452733.2070806@enea.com>
	<33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>
	<53452985.7020202@enea.com>
Date: Thu, 10 Apr 2014 18:35:42 -0300
Message-ID: <CAMCfZKG4BdGfkwa-uhoLUe8m7PKc_NUC=ciDi2GXCsCqDmmi+Q@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
To: Vali Cobelea <valentin.cobelea@enea.com>
Cc: yocto@yoctoproject.org, Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Thu, 10 Apr 2014 21:35:46 -0000
Content-Type: multipart/alternative; boundary=047d7bdc88e4c8208204f6b6ff87

--047d7bdc88e4c8208204f6b6ff87
Content-Type: text/plain; charset=ISO-8859-1

Vali,

I'm excited to see CGL support for Yocto.
I'm going to test this layer as soon as possible.

One question, which branch of Yocto is it based on?

Regards,

--
*dS
Diego Sueiro
sent from mobile.
On Apr 9, 2014 11:05 AM, "Vali Cobelea" <valentin.cobelea@enea.com> wrote:

> OK Paul, that indeed makes sense, I really did not knew that preliminary
> versions of layers are accepted.
> I will discuss around here and if everything goes OK we will start the
> move in the "public" layer index.
> I also do agree with an all-together strategy, no matter for the layer
> state.
>
>
> Much appreciated,
> Vali
>
>
> On 04/09/2014 02:01 PM, Paul Eggleton wrote:
>
>> On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:
>>
>>> On 04/09/2014 01:51 PM, Paul Eggleton wrote:
>>>
>>>> On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:
>>>>
>>>>> Here at ENEA we decided to take the initiative regarding the CGL
>>>>> compliance when it comes to the Yocto Project.
>>>>> For this we started the work on a dedicated layer called 'meta-cgl'
>>>>>
>>>>> which can be accessed / cloned from here:
>>>>>     http://git.enea.com/git/?p=linux/meta-cgl.git
>>>>>     git clone git@git.enea.com:linux/meta-cgl
>>>>>
>>>>> Have a look of the things we got there so far, please remember that
>>>>> there is still plenty of work to be done (layer architecture, CGL
>>>>> requirements coverage mode and so on).
>>>>> It is a little bit more than a stub layer, consider it a starting point
>>>>> for the direction we would like to have with this layer.
>>>>>
>>>>> Any input is much appreciated, lets keep the discussion by this email
>>>>> thread and see where it goes.
>>>>>
>>>> I don't have anything to offer on the layer contents, but I would say in
>>>> order to make it easy for people to find this layer I would strongly
>>>> encourage you to>
>>>> submit it to the OpenEmbedded layer index:
>>>>     http://layers.openembedded.org/layerindex/submit/
>>>>
>>> Thank you for the input.
>>> We will keep the layer for a short period of time at the current
>>> location while getting other ideas regarding the content / architecture.
>>> The layer initiative will also be raised up in the board advisory
>>> meeting, in order to get even more input.
>>> After which we will make it easier to find, access and use for anyone,
>>> exactly as you suggested.
>>>
>> OK, as the maintainer it's totally up to you.
>>
>> I would say though generally that I'd like to see more people adding their
>> work-in-progress layers to the layer index, even if at some time later
>> they
>> will be moved elsewhere or absorbed into another layer - it just makes it
>> easier to point people to the layer index so they can find recipes that
>> have
>> already been written, rather than having to re-write them from scratch.
>>
>> Cheers,
>> Paul
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bdc88e4c8208204f6b6ff87
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Vali, </p>
<p dir=3D"ltr">I&#39;m excited to see CGL support for Yocto. <br>
I&#39;m going to test this layer as soon as possible. </p>
<p dir=3D"ltr">One question, which branch of Yocto is it based on? </p>
<p dir=3D"ltr">Regards, </p>
<p dir=3D"ltr">--<br>
*dS<br>
Diego Sueiro<br>
sent from mobile. </p>
<div class=3D"gmail_quote">On Apr 9, 2014 11:05 AM, &quot;Vali Cobelea&quot=
; &lt;<a href=3D"mailto:valentin.cobelea@enea.com">valentin.cobelea@enea.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
OK Paul, that indeed makes sense, I really did not knew that preliminary ve=
rsions of layers are accepted.<br>
I will discuss around here and if everything goes OK we will start the move=
 in the &quot;public&quot; layer index.<br>
I also do agree with an all-together strategy, no matter for the layer stat=
e.<br>
<br>
<br>
Much appreciated,<br>
Vali<br>
<br>
<br>
On 04/09/2014 02:01 PM, Paul Eggleton wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 04/09/2014 01:51 PM, Paul Eggleton wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Here at ENEA we decided to take the initiative regarding the CGL<br>
compliance when it comes to the Yocto Project.<br>
For this we started the work on a dedicated layer called &#39;meta-cgl&#39;=
<br>
<br>
which can be accessed / cloned from here:<br>
=A0 =A0 <a href=3D"http://git.enea.com/git/?p=3Dlinux/meta-cgl.git" target=
=3D"_blank">http://git.enea.com/git/?p=3D<u></u>linux/meta-cgl.git</a><br>
=A0 =A0 git clone git@git.enea.com:linux/meta-<u></u>cgl<br>
<br>
Have a look of the things we got there so far, please remember that<br>
there is still plenty of work to be done (layer architecture, CGL<br>
requirements coverage mode and so on).<br>
It is a little bit more than a stub layer, consider it a starting point<br>
for the direction we would like to have with this layer.<br>
<br>
Any input is much appreciated, lets keep the discussion by this email<br>
thread and see where it goes.<br>
</blockquote>
I don&#39;t have anything to offer on the layer contents, but I would say i=
n<br>
order to make it easy for people to find this layer I would strongly<br>
encourage you to&gt;<br>
submit it to the OpenEmbedded layer index:<br>
=A0 =A0 <a href=3D"http://layers.openembedded.org/layerindex/submit/" targe=
t=3D"_blank">http://layers.openembedded.<u></u>org/layerindex/submit/</a><b=
r>
</blockquote>
Thank you for the input.<br>
We will keep the layer for a short period of time at the current<br>
location while getting other ideas regarding the content / architecture.<br=
>
The layer initiative will also be raised up in the board advisory<br>
meeting, in order to get even more input.<br>
After which we will make it easier to find, access and use for anyone,<br>
exactly as you suggested.<br>
</blockquote>
OK, as the maintainer it&#39;s totally up to you.<br>
<br>
I would say though generally that I&#39;d like to see more people adding th=
eir<br>
work-in-progress layers to the layer index, even if at some time later they=
<br>
will be moved elsewhere or absorbed into another layer - it just makes it<b=
r>
easier to point people to the layer index so they can find recipes that hav=
e<br>
already been written, rather than having to re-write them from scratch.<br>
<br>
Cheers,<br>
Paul<br>
<br>
</blockquote>
<br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--047d7bdc88e4c8208204f6b6ff87--
