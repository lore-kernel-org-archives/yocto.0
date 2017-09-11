Return-Path: <usmanhaider89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74A85E00D1A; Mon, 11 Sep 2017 01:22:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,LOTS_OF_MONEY,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_MONEY_PERCENT autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (usmanhaider89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 LOTS_OF_MONEY Huge... sums of money
	*  0.0 T_MONEY_PERCENT X% of a lot of money for you
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6EB8E00C89
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:22:33 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id j141so21259480ioj.4
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OXPNwRzu4M5olZsWy17PsGfTbbIIouXirnHh8OAx5z4=;
	b=PaxEn1Dz2WMLSccAVzpZrFXqO9xICZvIH2VxJ0jFB8Y8OHpnzyrwtd6rMiDck6GFRm
	FtOzNxoawl5iXe8uatZltOrAFF4jA9yLwPeLngtR6UYS1/nGl26t65IQ39xrVA/k7qKB
	agiByJDcAgdwMAIeD1hQw8yhjvZRu+Y5VxZvKsc7I07GX3sU/rA2ZQGs+HimTINA8r4r
	WIBB2waC4Kzq1LhxhodKZOyN0Y7K+Rt78pVxtCNHDqc48qCyKdM1+9vUuRM1ZkLA5/1T
	yrKfnSGxYptOBOs0wR3KA3iYKxRO4MhqtFpxH8QF187oNyulJC8ZOQmaQChmYKhboPjJ
	97yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OXPNwRzu4M5olZsWy17PsGfTbbIIouXirnHh8OAx5z4=;
	b=qjY0qfhTDUkULOyojD/aGsVZXQ1YIb5tUkg6Xr+MK681UoP/DgHwO8DJ7sV3SEoIHt
	+ss4dH8OED28Gdrtf4BqbDZvx7cD6xxFEfNqcZqwKz4tdcyyAYSPTsnbXeWG9Na+HBYi
	ODvNPzzU/vkSWOhg9RoJrU+gtF2i9H7+GofolQhBfwkNf1kFFeLUM9jzW3S0MRTFCMLm
	Mnyz5pP2KlryHO+/qyyqvUF+JbEMxRNqdYaqWJje8liv+S1rDgQV9yGwfNyMQBHiOBFE
	9DCfctDjefVcg0PWyD4cgXTRor6JdS7JXw7WqTakCnLh4pnEq/zmtv7mI9kB6mw48dRH
	sFAQ==
X-Gm-Message-State: AHPjjUj3q8J2tvb+ni3yEhisaOPqU0AvcMFVyWhD0OsDVIu6QrFcczm3
	VLsrLjOn2YHGRB/tcAf/lckuNrhiazXhJio=
X-Google-Smtp-Source: AOwi7QDAGsDpuSsPrn1wCCyFb2W5LcoNgDVwHWLSdg2skrQuqAqKpoxGybOqYU6QYCs+GLi0yrCiwpoh21mLa3D6SXA=
X-Received: by 10.107.174.97 with SMTP id x94mr15927921ioe.114.1505118152837; 
	Mon, 11 Sep 2017 01:22:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.57.2 with HTTP; Mon, 11 Sep 2017 01:22:32 -0700 (PDT)
In-Reply-To: <446cff96-6e54-1f76-2aad-ddfb0e937270@dynamicdevices.co.uk>
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<df26f444-d0f3-ec02-49a3-bc565b175afa@windriver.com>
	<ea868d42-c5e1-3fa4-8c7d-f0775d941453@dynamicdevices.co.uk>
	<f6204bba-ab19-c34f-ee9a-498781e2473d@windriver.com>
	<73a79c9a-d9cb-825d-ac1b-340edd07dc5a@dynamicdevices.co.uk>
	<b286d9a2-fe98-a85b-d4cb-f17bbfad4846@windriver.com>
	<446cff96-6e54-1f76-2aad-ddfb0e937270@dynamicdevices.co.uk>
From: Usman Haider <usmanhaider89@gmail.com>
Date: Mon, 11 Sep 2017 13:22:32 +0500
Message-ID: <CANxWOTZEchADudXhdp3iQE_EPf9hQ-sfSv0+eMkxH6vMJqr8WA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Mon, 11 Sep 2017 08:22:36 -0000
Content-Type: multipart/alternative; boundary="001a114497e8d84f0d0558e5a095"

--001a114497e8d84f0d0558e5a095
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 11:51 AM, Alex Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

>
>
> On 11/09/2017 00:56, Mark Hatle wrote:
>
>> On 9/10/17 2:31 PM, Alex Lennon wrote:
>>
>>>
>>> On 10/09/2017 19:17, Mark Hatle wrote:
>>>
>>>> On 9/10/17 11:14 AM, Alex Lennon wrote:
>>>>
>>>>> On 10/09/2017 17:06, Mark Hatle wrote:
>>>>>
>>>>>> On 9/10/17 2:00 AM, Usman Haider wrote:
>>>>>>
>>>>>>> Hi,
>>>>>>>
>>>>>>> Can someone please recommend some good machine for yocto environment
>>>>>>> and
>>>>>>> building sdks. I am interested in RAM, hard disk space, processor.
>>>>>>>
>>>>>> You want fast I/O, as much RAM and as many (fast) cores as you can
>>>>>> afford.  I
>>>>>> don't think there is a single answer as what is 'best'.  It also
>>>>>> depends on
>>>>>> which Yocto Project versions, and which layers you are using as to
>>>>>> which
>>>>>> combination is best.
>>>>>>
>>>>>> I run builds on my laptop, 4-core/8-thread & SSD and 16 GB of ram
>>>>>> from a few
>>>>>> years ago.  It's fast, but I wouldn't want to do all of my
>>>>>> development on it.
>>>>>>
>>>>>> I've had 8-core/16-thread (32GB ram/standard disk), 16-core/32-thread
>>>>>> (72GB
>>>>>> ram/SAS-3 RAID), 24-core/48-thread (64GB ram/SATA - software RAID),
>>>>>> 72-core/144
>>>>>> thread (256 GB ram/hardware raid/SAS-3), and recently upgraded to
>>>>>> 96-core/192-thread (256 GB ram/hardware raid/SAS-3).
>>>>>>
>>>>>> I would not go below quad-core (8-thread) myself.  You can get a quad
>>>>>> core, good
>>>>>> quality machine for $1000 or less these day.  If you move up to the
>>>>>> larger
>>>>>> machines, you can even be able to get to a 24-core for less then
>>>>>> $5000.  By the
>>>>>> time you get to 96-core and all of the googles you are likely talking
>>>>>> $50000 or
>>>>>> more.
>>>>>>
>>>>>> By clock raid, the 24-core machine is the fastest..  While the
>>>>>> 96-core monster
>>>>>> can do the builds the quickest.  But when you figure out
>>>>>> cost/performance/etc..
>>>>>> the 24-core is probably the best performance per dollar, and with
>>>>>> adequate RAM
>>>>>> (I'd say at least 64GB if not 128GB), and fast I/O you'll probably
>>>>>> get the
>>>>>> lowest price for the best performance in that category.
>>>>>>
>>>>>> If you need sheer speed and price is no option, then the (4 CPU w/ 24
>>>>>> core each)
>>>>>> 96-core monster (or even better) is what you want to go with.  256GB
>>>>>> ram would
>>>>>> be a minimum with that configuration (I'm not sure if more is
>>>>>> actually helpful,
>>>>>> I rarely end up in swap -- but I go get into situations where more
>>>>>> then 50% of
>>>>>> ram is used.)  With that many cores, disk I/O starts to become
>>>>>> obvious.  So
>>>>>> faster the better... SSDs would be the fastest, but of course the
>>>>>> most expensive.
>>>>>>
>>>>>> If your employer is paying for the machine, you may be able to get a
>>>>>> better then
>>>>>> normal machine by explaining how much time a faster machine will save
>>>>>> and how
>>>>>> comparing to your salary a machine is inexpensive.  (If you are a
>>>>>> contractor or
>>>>>> student, that changes of course.)  :)
>>>>>>
>>>>>> So my point is really, figure out how much money you have to spend.
>>>>>> My rule of
>>>>>> thumb is roughly:
>>>>>>
>>>>>> 1) Buy as many cores as you can.  Try to get a CPU that has
>>>>>> Hyperthreading or
>>>>>> equivalent to double the effective core count.  Fastest processing
>>>>>> speed helps
>>>>>> in repetitive cases vs full system builds.
>>>>>>
>>>>>> So if the choice is a 24 core @ 2.2GHz vs 22 core @ 2.5, I'd probably
>>>>>> go with
>>>>>> the 22-core.  While if it was 24 core @ 2.2GHz vs 8 core @ 4.2 GHz,
>>>>>> I'd go with
>>>>>> the 24 core.
>>>>>>
>>>>>> 2) Try to get at least 1 GB of ram per thread (2 GB per core..)  You
>>>>>> can cut
>>>>>> back on the ram (if necessary) once you hit 72 threads or so.   (72
>>>>>> threads
>>>>>> right now seems to cover most of the parallelization in a full system
>>>>>> build.
>>>>>> There are points in the system where it can parallelize MUCH more,
>>>>>> but they are
>>>>>> fairly rare.)
>>>>>>
>>>>>> 3) You need fast disks.  Software RAID works fine, but you likely
>>>>>> need to buy at
>>>>>> least a couple of disk to boost performance.  SSDs are fast, but lots
>>>>>> of builds
>>>>>> take space, so fast SATA or even better SAS drives are the best
>>>>>> performance per
>>>>>> cost.
>>>>>>
>>>>> This brings to mind a related question I keep coming back to as to the
>>>>> economics of a docker (or similar) image running a fast Yocto build in
>>>>> the cloud.
>>>>>
>>>>> i.e. set config params -> bring up server image on plaform A/B/C ->
>>>>> perform build taking time X/Y/Z -> store output images -> bring down
>>>>> server  == $ ?
>>>>>
>>>>> I find myself asking what the optimal cost per-build would be using
>>>>> this
>>>>> approach...
>>>>>
>>>> I helped someone do some very -preliminary- figured a few years ago.
>>>> The
>>>> processing was 'cheap', but between storage and network transfer
>>>> costs.. it was
>>>> cheaper to buy a reasonable machine.. payback time was only a few
>>>> months.
>>>>
>>>> (cloud 'storage' is often very slow as well, because there are
>>>> expectations of
>>>> migration and things like that.)
>>>>
>>>> So as of a few years ago at least, the economics didn't factory the
>>>> cloud -- yet.
>>>>
>>>>
>>>> Yeah that is more or less my thinking. Although I do imagine that if a
>>> source mirror on an internal network leg could be set up then that might
>>> significantly reduce chargeable network b/w...
>>>
>> premirror for downloads and sstate-cache shared between multiple
>> customers could
>> reduce the network b/w far enough to make it economical.   But you would
>> need to
>> trust other vendors since the sstate-cache can be manipulated to provide
>> malicious software (in some cases).  (And strengthening the sstate-cache
>> checking can cause enough extra overhead to make it 'cheaper' to build
>> then use
>> sstate-cache in many cases.)
>>
>>
>>
> Interesting... Thanks for your thoughts.
>
> Cheers, Alex
>
>
Hi,

Thanks all for your inputs.  As I am a beginner in Yocto and I'll be paying
myself so after going through all your emails and IRC chat Iam thinking of
going with something like 6core/12threads 16GB RAM and 1TB or more hard
disk with clock of 3.x GHz.  I'll be building for Rpi, beaglebone and Zynq.

Now looking for tutorials and documentation for starters :)

Thanks again.

Regards,
Usman

--001a114497e8d84f0d0558e5a095
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Sep 11, 2017 at 11:51 AM, Alex Lennon <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dy=
namicdevices.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 11/09/2017 00:56, Mark Hatle wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 9/10/17 2:31 PM, Alex Lennon wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
On 10/09/2017 19:17, Mark Hatle wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 9/10/17 11:14 AM, Alex Lennon wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 10/09/2017 17:06, Mark Hatle wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 9/10/17 2:00 AM, Usman Haider wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
Can someone please recommend some good machine for yocto environment and<br=
>
building sdks. I am interested in RAM, hard disk space, processor.<br>
</blockquote>
You want fast I/O, as much RAM and as many (fast) cores as you can afford.=
=C2=A0 I<br>
don&#39;t think there is a single answer as what is &#39;best&#39;.=C2=A0 I=
t also depends on<br>
which Yocto Project versions, and which layers you are using as to which<br=
>
combination is best.<br>
<br>
I run builds on my laptop, 4-core/8-thread &amp; SSD and 16 GB of ram from =
a few<br>
years ago.=C2=A0 It&#39;s fast, but I wouldn&#39;t want to do all of my dev=
elopment on it.<br>
<br>
I&#39;ve had 8-core/16-thread (32GB ram/standard disk), 16-core/32-thread (=
72GB<br>
ram/SAS-3 RAID), 24-core/48-thread (64GB ram/SATA - software RAID), 72-core=
/144<br>
thread (256 GB ram/hardware raid/SAS-3), and recently upgraded to<br>
96-core/192-thread (256 GB ram/hardware raid/SAS-3).<br>
<br>
I would not go below quad-core (8-thread) myself.=C2=A0 You can get a quad =
core, good<br>
quality machine for $1000 or less these day.=C2=A0 If you move up to the la=
rger<br>
machines, you can even be able to get to a 24-core for less then $5000.=C2=
=A0 By the<br>
time you get to 96-core and all of the googles you are likely talking $5000=
0 or<br>
more.<br>
<br>
By clock raid, the 24-core machine is the fastest..=C2=A0 While the 96-core=
 monster<br>
can do the builds the quickest.=C2=A0 But when you figure out cost/performa=
nce/etc..<br>
the 24-core is probably the best performance per dollar, and with adequate =
RAM<br>
(I&#39;d say at least 64GB if not 128GB), and fast I/O you&#39;ll probably =
get the<br>
lowest price for the best performance in that category.<br>
<br>
If you need sheer speed and price is no option, then the (4 CPU w/ 24 core =
each)<br>
96-core monster (or even better) is what you want to go with.=C2=A0 256GB r=
am would<br>
be a minimum with that configuration (I&#39;m not sure if more is actually =
helpful,<br>
I rarely end up in swap -- but I go get into situations where more then 50%=
 of<br>
ram is used.)=C2=A0 With that many cores, disk I/O starts to become obvious=
.=C2=A0 So<br>
faster the better... SSDs would be the fastest, but of course the most expe=
nsive.<br>
<br>
If your employer is paying for the machine, you may be able to get a better=
 then<br>
normal machine by explaining how much time a faster machine will save and h=
ow<br>
comparing to your salary a machine is inexpensive.=C2=A0 (If you are a cont=
ractor or<br>
student, that changes of course.)=C2=A0 :)<br>
<br>
So my point is really, figure out how much money you have to spend.=C2=A0 M=
y rule of<br>
thumb is roughly:<br>
<br>
1) Buy as many cores as you can.=C2=A0 Try to get a CPU that has Hyperthrea=
ding or<br>
equivalent to double the effective core count.=C2=A0 Fastest processing spe=
ed helps<br>
in repetitive cases vs full system builds.<br>
<br>
So if the choice is a 24 core @ 2.2GHz vs 22 core @ 2.5, I&#39;d probably g=
o with<br>
the 22-core.=C2=A0 While if it was 24 core @ 2.2GHz vs 8 core @ 4.2 GHz, I&=
#39;d go with<br>
the 24 core.<br>
<br>
2) Try to get at least 1 GB of ram per thread (2 GB per core..)=C2=A0 You c=
an cut<br>
back on the ram (if necessary) once you hit 72 threads or so.=C2=A0 =C2=A0(=
72 threads<br>
right now seems to cover most of the parallelization in a full system build=
.<br>
There are points in the system where it can parallelize MUCH more, but they=
 are<br>
fairly rare.)<br>
<br>
3) You need fast disks.=C2=A0 Software RAID works fine, but you likely need=
 to buy at<br>
least a couple of disk to boost performance.=C2=A0 SSDs are fast, but lots =
of builds<br>
take space, so fast SATA or even better SAS drives are the best performance=
 per<br>
cost.<br>
</blockquote>
This brings to mind a related question I keep coming back to as to the<br>
economics of a docker (or similar) image running a fast Yocto build in<br>
the cloud.<br>
<br>
i.e. set config params -&gt; bring up server image on plaform A/B/C -&gt;<b=
r>
perform build taking time X/Y/Z -&gt; store output images -&gt; bring down<=
br>
server=C2=A0 =3D=3D $ ?<br>
<br>
I find myself asking what the optimal cost per-build would be using this<br=
>
approach...<br>
</blockquote>
I helped someone do some very -preliminary- figured a few years ago.=C2=A0 =
The<br>
processing was &#39;cheap&#39;, but between storage and network transfer co=
sts.. it was<br>
cheaper to buy a reasonable machine.. payback time was only a few months.<b=
r>
<br>
(cloud &#39;storage&#39; is often very slow as well, because there are expe=
ctations of<br>
migration and things like that.)<br>
<br>
So as of a few years ago at least, the economics didn&#39;t factory the clo=
ud -- yet.<br>
<br>
<br>
</blockquote>
Yeah that is more or less my thinking. Although I do imagine that if a<br>
source mirror on an internal network leg could be set up then that might<br=
>
significantly reduce chargeable network b/w...<br>
</blockquote>
premirror for downloads and sstate-cache shared between multiple customers =
could<br>
reduce the network b/w far enough to make it economical.=C2=A0 =C2=A0But yo=
u would need to<br>
trust other vendors since the sstate-cache can be manipulated to provide<br=
>
malicious software (in some cases).=C2=A0 (And strengthening the sstate-cac=
he<br>
checking can cause enough extra overhead to make it &#39;cheaper&#39; to bu=
ild then use<br>
sstate-cache in many cases.)<br>
<br>
<br>
</blockquote>
<br></div></div>
Interesting... Thanks for your thoughts.<br>
<br>
Cheers, Alex<br>
<br>
</blockquote></div><br></div><div class=3D"gmail_extra">Hi,<br><br></div><d=
iv class=3D"gmail_extra">Thanks all for your inputs.=C2=A0 As I am a beginn=
er in Yocto and I&#39;ll be paying myself so after going through all your e=
mails and IRC chat Iam thinking of going with something like 6core/12thread=
s 16GB RAM and 1TB or more hard disk with clock of 3.x GHz.=C2=A0 I&#39;ll =
be building for Rpi, beaglebone and Zynq.<br></div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Now looking for tutorials and docum=
entation for starters :)<br><br></div><div class=3D"gmail_extra">Thanks aga=
in.<br><br></div><div class=3D"gmail_extra">Regards,<br></div><div class=3D=
"gmail_extra">Usman<br></div></div>

--001a114497e8d84f0d0558e5a095--
