Return-Path: <atamayoarbide@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DDFE01440
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 23:58:04 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so9053022iej.8
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 23:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vH5ZTVD0WbGeU6Om2b5oOL8hWHtg75OkFyntnhtans4=;
	b=fp0ezmHjjRve+z8EzCO5iwevW9rZwSKInEyEfVag12cMtjH9Y5Rw2Y23L7YimtDFXz
	4nzCqRHplGJ5yugFIYCpycr98TbMZKUVaTNoA/ZAk6JMWsjsC2L85Kuce6EOoKnNXvVt
	ObFCh6dn+psFBBN20D9J6GQuHkHUtV+hREGYqVHriQzPyhP3ZPaq0eoDb0pxdAkPYDTU
	nR0RjxForU0walQAtIZ1c+yOxl/DbFoBcs4zd1prGmafq+tzm3d26AeApSEOxQKiQsRe
	8azCxvfM3+HzOAkbQBmc4XxsTMSqNqHFcIo7ZEFkDi+wrsACvebI/tlLWx0JSAIbaP/4
	hCAg==
MIME-Version: 1.0
X-Received: by 10.43.172.138 with SMTP id ny10mr15784862icc.11.1378191484132; 
	Mon, 02 Sep 2013 23:58:04 -0700 (PDT)
Received: by 10.50.85.76 with HTTP; Mon, 2 Sep 2013 23:58:04 -0700 (PDT)
In-Reply-To: <52255596.8040705@gna.org>
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
	<1377881765.14029.4.camel@dvhart-mobl4.amr.corp.intel.com>
	<52235821.3070302@reliableembeddedsystems.com>
	<52255596.8040705@gna.org>
Date: Tue, 3 Sep 2013 08:58:04 +0200
Message-ID: <CAMZj-5Mpr5A6c-Qc0Q=i=jLh6oj5Kg4Qg13-W=X95kGJUfXNKQ@mail.gmail.com>
From: Asier <atamayoarbide@gmail.com>
To: Christian Gagneraud <chgans@gna.org>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Tue, 03 Sep 2013 06:58:07 -0000
Content-Type: multipart/alternative; boundary=001a11c3b1fcd823f704e57535de

--001a11c3b1fcd823f704e57535de
Content-Type: text/plain; charset=ISO-8859-1

> Does your RT-threads have access to the full linux userland?
> I'm thinking about D-BUS comms, Qt framework, networking stuff, ...
> Or do they live in their own shell and communicate with the non-rt world
via a dedicated system?
> As well, have you tried/use it in a multi core context, where one core
runs linux and the other one a RT kernel.
>
The real-time and non real-time processes communicate mainly through shared
memory, and most of the time this communication follows a client-server
schema. I try to keep the rt-side as simple as possible (no Qt libraries,
no rt networking...). I do use real-time drivers for the CAN communication.

I haven't yet used a multicore processor.

Regards,

Asier




2013/9/3 Christian Gagneraud <chgans@gna.org>

> On 02/09/13 03:07, Robert Berger wrote:
>
>> Hi,
>>
>> On 08/30/2013 07:56 PM, Darren Hart wrote:
>>
>>  Is there any Linux distribution based on the Yocto project that lets
>>>> me configure my embedded kernel with Xenomai? If not, has anybody got
>>>> any experinece in adding Xenomai to the Yocto project?
>>>>
>>>
>>> I am not aware of anyone using Xenomai with Yocto to date (although that
>>> doesn't mean nobody is). Our Real-Time focus has been on the PREEMPT_RT
>>> Linux kernel, which we do have recipes for.
>>>
>>
>> googling for meta-xenomai reveals:
>>
>> [1][2]
>>
>>
>>> It appears as though Xenomai has changed quite a bit over the years. If
>>> my quick re-reading of their material is correct, the Xenomai core is
>>> implemented as a Linux kernel module which can built in to a standard
>>> Linux kernel?
>>>
>>
>> ... kind of ...
>>
>> kernel space:
>>
>> You need to apply a patch to a certain kernel version and configure the
>> kernel afterwards.
>>
>> So for an ARM architecture there is a patch for the 3.8 kernel[3]
>>
>> user land:
>>
>> But unlike with preempt-rt you also need to build the Xenomai userland
>> stuff.
>>
>>
>>> Out of curiosity, what sort of real-time requirements do you have?
>>>
>>>
>> That's a good point. Shameless self promotion [4].
>>
>
> Does your RT-threads have access to the full linux userland?
> I'm thinking about D-BUS comms, Qt framework, networking stuff, ...
> Or do they live in their own shell and communicate with the non-rt world
> via a dedicated system?
> As well, have you tried/use it in a multi core context, where one core
> runs linux and the other one a RT kernel.
>
> Regards,
> Chris
>
>
>
>> Regards,
>>
>> Robert
>>
>> [1] https://github.com/nojgosu/**meta-xenomai<https://github.com/nojgosu/meta-xenomai>
>> [2] https://github.com/**DrunkenInfant/beaglebone-**xenomai<https://github.com/DrunkenInfant/beaglebone-xenomai>
>> [3]
>> http://git.xenomai.org/?p=**xenomai-head.git;a=tree;f=**
>> ksrc/arch/arm/patches;h=**c6045f00819318970d6bba65c39760**
>> 9052c9414e;hb=HEAD<http://git.xenomai.org/?p=xenomai-head.git;a=tree;f=ksrc/arch/arm/patches;h=c6045f00819318970d6bba65c397609052c9414e;hb=HEAD>
>> [4] http://www.**reliableembeddedsystems.com/**
>> pdfs/2010_03_04_rt_linux.pdf<http://www.reliableembeddedsystems.com/pdfs/2010_03_04_rt_linux.pdf>
>>
>>
>> ..."A language that doesn't affect the way you think about programming
>> is not worth knowing." - Anonymous
>>
>> My public pgp key is available,at:
>> http://pgp.mit.edu:11371/pks/**lookup?op=get&search=**0x90320BF1<http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--001a11c3b1fcd823f704e57535de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra">&gt; Does your RT-threads h=
ave access to the full linux userland?<br>&gt; I&#39;m thinking about D-BUS=
 comms, Qt framework, networking stuff, ...<br>
&gt; Or do they live in their own shell and communicate with the non-rt wor=
ld via a dedicated system?<br>&gt; As well, have you tried/use it in a mult=
i core context, where one core runs linux and the other one a RT kernel.<br=
>
&gt;<br></div><div class=3D"gmail_extra">The real-time and non real-time pr=
ocesses communicate mainly through shared memory, and most of the time this=
 communication follows a client-server schema. I try to keep the rt-side as=
 simple as possible (no Qt libraries, no rt networking...). I do use real-t=
ime drivers for the CAN communication. <br>
<br></div><div class=3D"gmail_extra">I haven&#39;t yet used a multicore pro=
cessor.<br><br></div><div class=3D"gmail_extra">Regards,<br><br>Asier<br></=
div><div class=3D"gmail_extra"><br><br><br><br><div class=3D"gmail_quote">2=
013/9/3 Christian Gagneraud <span dir=3D"ltr">&lt;<a href=3D"mailto:chgans@=
gna.org" target=3D"_blank">chgans@gna.org</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D""><div clas=
s=3D"h5">On 02/09/13 03:07, Robert Berger wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi,<br>
<br>
On 08/30/2013 07:56 PM, Darren Hart wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">

Is there any Linux distribution based on the Yocto project that lets<br>
me configure my embedded kernel with Xenomai? If not, has anybody got<br>
any experinece in adding Xenomai to the Yocto project?<br>
</blockquote>
<br>
I am not aware of anyone using Xenomai with Yocto to date (although that<br=
>
doesn&#39;t mean nobody is). Our Real-Time focus has been on the PREEMPT_RT=
<br>
Linux kernel, which we do have recipes for.<br>
</blockquote>
<br>
googling for meta-xenomai reveals:<br>
<br>
[1][2]<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
It appears as though Xenomai has changed quite a bit over the years. If<br>
my quick re-reading of their material is correct, the Xenomai core is<br>
implemented as a Linux kernel module which can built in to a standard<br>
Linux kernel?<br>
</blockquote>
<br>
... kind of ...<br>
<br>
kernel space:<br>
<br>
You need to apply a patch to a certain kernel version and configure the<br>
kernel afterwards.<br>
<br>
So for an ARM architecture there is a patch for the 3.8 kernel[3]<br>
<br>
user land:<br>
<br>
But unlike with preempt-rt you also need to build the Xenomai userland<br>
stuff.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Out of curiosity, what sort of real-time requirements do you have?<br>
<br>
</blockquote>
<br>
That&#39;s a good point. Shameless self promotion [4].<br>
</blockquote>
<br></div></div>
Does your RT-threads have access to the full linux userland?<br>
I&#39;m thinking about D-BUS comms, Qt framework, networking stuff, ...<br>
Or do they live in their own shell and communicate with the non-rt world vi=
a a dedicated system?<br>
As well, have you tried/use it in a multi core context, where one core runs=
 linux and the other one a RT kernel.<br>
<br>
Regards,<br>
Chris<div class=3D""><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
<br>
Robert<br>
<br>
[1] <a href=3D"https://github.com/nojgosu/meta-xenomai" target=3D"_blank">h=
ttps://github.com/nojgosu/<u></u>meta-xenomai</a><br>
[2] <a href=3D"https://github.com/DrunkenInfant/beaglebone-xenomai" target=
=3D"_blank">https://github.com/<u></u>DrunkenInfant/beaglebone-<u></u>xenom=
ai</a><br>
[3]<br>
<a href=3D"http://git.xenomai.org/?p=3Dxenomai-head.git;a=3Dtree;f=3Dksrc/a=
rch/arm/patches;h=3Dc6045f00819318970d6bba65c397609052c9414e;hb=3DHEAD" tar=
get=3D"_blank">http://git.xenomai.org/?p=3D<u></u>xenomai-head.git;a=3Dtree=
;f=3D<u></u>ksrc/arch/arm/patches;h=3D<u></u>c6045f00819318970d6bba65c39760=
<u></u>9052c9414e;hb=3DHEAD</a><br>

[4] <a href=3D"http://www.reliableembeddedsystems.com/pdfs/2010_03_04_rt_li=
nux.pdf" target=3D"_blank">http://www.<u></u>reliableembeddedsystems.com/<u=
></u>pdfs/2010_03_04_rt_linux.pdf</a><br>
<br>
<br>
...&quot;A language that doesn&#39;t affect the way you think about program=
ming<br>
is not worth knowing.&quot; - Anonymous<br>
<br>
My public pgp key is available,at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" target=3D"_blank">http://pgp.mit.edu:11371/pks/<u></u>lookup?op=3Dget=
&amp;search=3D<u></u>0x90320BF1</a><br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--001a11c3b1fcd823f704e57535de--
