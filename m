Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 62F0AE002AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 09:19:57 -0800 (PST)
Received: by mail-ee0-f52.google.com with SMTP id b15so2509760eek.11
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 09:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=z0ah8cnWYKGrGPhE5kBdhsR6Yz7+8BbP+RxzW9tBwU0=;
	b=Tfsd25qA2IGjovtb64nCsbqnsZKudozP4L6LkJOw2uqQOs+i0ZeTuo2cqaG+TUDmx6
	ySaaG87irLjHP33Dl8wUGFwUTuvzgNcLV9D4i+Lr+q8SxOIRhIaBa8/3xsexClnLNxRl
	zKdfelgGBe779wkiV5iXp+itqGvVeOSxgcb5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=z0ah8cnWYKGrGPhE5kBdhsR6Yz7+8BbP+RxzW9tBwU0=;
	b=Ffbn+I0u77MS8DBrm6YgllfraxlTMLtIYYRz1uc3r8irx40i6v5aDxy1c6reLmCd4G
	w4MqISu+9U+tpAzPwTHOgnd2RLbuBOmyzNvULhFf41WgM2zQbv8BInsilMKTqKHmgCJY
	gTXalNAkZkFBOpGjmSAajW76GnOKeL8MG81yK6r9zNFIBfdfd3FnrtrO+oeoZcpShSgB
	y+te/QSU4DJtpLe8M1TzxjBNCyHrgStCWxQFqcRRYQk/WMvOuUyyVSiYdHOYAo7Fm4XB
	94z7w/6ns0u3hO3PrZrEenqeCPKROxosvsfplEU2Pa9tI5FmfjFRx980d4sH7+D6GhV+
	tJig==
MIME-Version: 1.0
X-Received: by 10.14.0.135 with SMTP id 7mr51556601eeb.5.1361899194827; Tue,
	26 Feb 2013 09:19:54 -0800 (PST)
Received: by 10.223.127.70 with HTTP; Tue, 26 Feb 2013 09:19:54 -0800 (PST)
In-Reply-To: <CABTzgQ4gfaA+30UCG0ZfA2w1=en6QVf7_-mxR4Zmr33-dazo2w@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
	<CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
	<CAFyqS9pgGgZcacwqxiHGM2WSSH8xZea-tRjBWcNwqCr=DDhWsw@mail.gmail.com>
	<CABTzgQ5RL+Gu4T5my_NPxSJ+Qm8MeDuJPYoZgGQ9=nD0yPcqmw@mail.gmail.com>
	<CAFyqS9q3q+Ep2z2Ygk4oN5pS13DHnV0abQ3BvzV3-mq=HqBrJw@mail.gmail.com>
	<CABTzgQ6WrhzcQ4KKBG7Q3bMsgf8-uijzshHSv2FyCajHpiy-5Q@mail.gmail.com>
	<CABTzgQ7tS7+_64urm7NRBmXN+KT8M7W+8QOareJxOtXwfWt0Og@mail.gmail.com>
	<CABTzgQ54dEyDrbND5Kfy6M4mAGMoyU236V1dOZvW8oLVBWFyzg@mail.gmail.com>
	<CA+gsK-rGDzbKJjpgV7-DRQm826ErVoWNp6RsOS8eqx4m-FNDAQ@mail.gmail.com>
	<CABTzgQ4XWPOzDzM_dK6ja+3K1z=Z1M997UcWjxAZ_pkoRR6Xyg@mail.gmail.com>
	<CABTzgQ4gfaA+30UCG0ZfA2w1=en6QVf7_-mxR4Zmr33-dazo2w@mail.gmail.com>
Date: Tue, 26 Feb 2013 09:19:54 -0800
Message-ID: <CA+gsK-oLm+=Wsvx8U1rU=KD9djrdFZS4n0=8axCm66tfGnFw5Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQngU2Ki6559kZvtpf2rvGMZrc+CMdVPuIlb5Yx/m9xuOofoaJOnNWb6t9Vs+JaqSZtnNaCD
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Updating uboot to v2013.01
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Feb 2013 17:19:58 -0000
Content-Type: multipart/alternative; boundary=047d7b6050deba8be004d6a3ddf5

--047d7b6050deba8be004d6a3ddf5
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

As Hans said, you should not need to install any of these host packages
since Yocto is for most part all self-contained. If you think that you need
to install host packages then there may be something wrong with building a
particular tool for the development host. That is typically done with
BBCLASSEXTENDS =3D "native" or BBCLASSETENDS =3D "native native-sdk".

Rudi


On Mon, Feb 25, 2013 at 7:56 AM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> Another important package that has to be installed in  the "apt-get
> install device-tree-compiler" package. This was adviced by the Thierry
> Reding, wh wrote the uboot config for Tamonten board.. Rudolf, may I ask
> you how did you find the SRCREV values for the uboot packages ... It woul=
d
> be great to know as there is not sufficient literature avilable to explai=
n
> this on the internet...
>
>
> On Mon, Feb 25, 2013 at 3:58 PM, Satya Swaroop DAMARLA <swaroop@weisser.a=
t
> > wrote:
>
>> Guys. I found the solution to this problem....
>>
>> I think if you already install uboot-tools or uboot-mkimage packes from
>> Ubuntu repository then it is used instead of the one that is downloaded =
and
>> we should uninstall the packages and then rerun the build,,... Then IT
>> WORKS... So, thank you for the time and enegry... I assume this thread i=
s
>> closed and this is the solution and if this doesnot work for some then
>> please post it and we may discuss the situation depending on the problem=
,
>>
>> Greetings & Regards,
>> Satya
>>
>>
>> On Thu, Feb 21, 2013 at 5:28 PM, Rudolf Streif <
>> rstreif@linuxfoundation.org> wrote:
>>
>>> Satya,
>>>
>>> I will look into it later today. I am currently at the Linux
>>> Foundation's Embedded Linux Conference.
>>>
>>> Rudi
>>>
>>>
>>> On Thu, Feb 21, 2013 at 2:10 AM, Satya Swaroop DAMARLA <
>>> swaroop@weisser.at> wrote:
>>>
>>>> Hello Guys,
>>>>
>>>> I have not received any reply from you. If you can help me to figure
>>>> out what the errors mean when adding a new .bb or recipe file then I c=
an
>>>> learn the mistake and take care in the new recipes.... I request your =
time
>>>>
>>>>
>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <
>>>> swaroop.damarla@gmail.com> wrote:
>>>>
>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>> completely greek and latin to me.. Can you please help me..
>>>>>
>>>>>
>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop DAMARLA <
>>>>> swaroop@weisser.at> wrote:
>>>>>
>>>>>> hey Guys... I get the following error... which I attached.. Its
>>>>>> completely greek and latin to me.. Can you please help me..
>>>>>>
>>>>>>
>>>>>> On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=E9rus <
>>>>>> hans.beckerus@gmail.com> wrote:
>>>>>>
>>>>>>> On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
>>>>>>> <swaroop.damarla@gmail.com> wrote:
>>>>>>> > Hey hans, this is what he meant,
>>>>>>> >
>>>>>>> > In the machine config file add the following
>>>>>>> >
>>>>>>> > PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or
>>>>>>> PREFERRED_VERSION_u-boot ?=3D
>>>>>>> > "v2013.01.01%"
>>>>>>> >
>>>>>>> > By the way did you already complete the first part... There is
>>>>>>> also other
>>>>>>> > file called "u-boot-fw-utils_2012.04.01.bb" ... I think we should
>>>>>>> do the
>>>>>>> > same...
>>>>>>> >
>>>>>>> > Hans bytheway,  are you also working on the same board or
>>>>>>> diffferent board
>>>>>>> > with same problem?
>>>>>>> >
>>>>>>>
>>>>>>> Different board, same core, similar problem ;)
>>>>>>> Now I get it. Thanks. But still question remains how in earth I
>>>>>>> managed to build the kernel if not also having copied/renamed the
>>>>>>> mkimage .bb?
>>>>>>> Is the PREFERRED_VERSION_u-boot used to determine what mkimage and =
fw
>>>>>>> utils it picks up?
>>>>>>> Then it might be that since I/we build u-boot as a separate package=
,
>>>>>>> but kernel lifts in the mkimage stuff, it works but the wrong packa=
ge
>>>>>>> was used.
>>>>>>> In my case obviously compatible, but not recommended I guess. Also,=
 I
>>>>>>> agree that the fw utils should probably be in sync similar to
>>>>>>> mkimage.
>>>>>>>
>>>>>>> Hans
>>>>>>>
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> > On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus <
>>>>>>> hans.beckerus@gmail.com>
>>>>>>> > wrote:
>>>>>>> >>
>>>>>>> >> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>>>>>>> >> <rstreif@linuxfoundation.org> wrote:
>>>>>>> >> > Satya,
>>>>>>> >> >
>>>>>>> >> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot
>>>>>>> such as
>>>>>>> >> > u-boot_2012.04.01.bb. You can simply copy it and name it
>>>>>>> >> > u-boot_2013.01.bb
>>>>>>> >> > and then modify SRCREV to the revision that corresponds to the
>>>>>>> tag
>>>>>>> >> > 2013.01
>>>>>>> >> > or 2013.01.01 in git.denx.de:
>>>>>>> >> >
>>>>>>> >> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>>>>>>> >> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>>>>>>> >> >
>>>>>>> >> > Do the same for u-boot-mkimage and include the u-boot version
>>>>>>> with your
>>>>>>> >> > bsp.
>>>>>>> >> >
>>>>>>> >> > Rudi
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> Hi Rudi, sorry to chime in , but I have a similar problem but do
>>>>>>> not
>>>>>>> >> really get the last thing you said.
>>>>>>> >> What do you mean by including the u-boot version in the bsp? Als=
o
>>>>>>> is
>>>>>>> >> it a must to also copy the mkimage .bb or will the system find a
>>>>>>> >> suitable one automatically?
>>>>>>> >> The thing is that I only copied/edited the u-boot .bb but never
>>>>>>> the
>>>>>>> >> mkimage. Still my kernel successfully builds the kernel uImage!?
>>>>>>> >> Some magic that I have missed :)
>>>>>>> >>
>>>>>>> >> Hans
>>>>>>> >>
>>>>>>> >>
>>>>>>> >> > On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla
>>>>>>> >> > <swaroop.damarla@gmail.com> wrote:
>>>>>>> >> >>
>>>>>>> >> >> Hi Guys,
>>>>>>> >> >>
>>>>>>> >> >> I need support for uboot on Tamonten board but the version on
>>>>>>> it is
>>>>>>> >> >> v2012.04 but I came to know that v2012.10 or v2013.01 support=
s
>>>>>>> the
>>>>>>> >> >> Tamontenboard through some guys here..
>>>>>>> >> >>
>>>>>>> >> >> It would be great if you can tell me how can I accomplish
>>>>>>> v2013.01 or
>>>>>>> >> >> v2012.10 into the build system and make it available so that =
I
>>>>>>> can
>>>>>>> >> >> compile
>>>>>>> >> >> the and get uImage
>>>>>>> >> >>
>>>>>>> >> >> (Tamonten board is a derivative of harmony board with some
>>>>>>> changes and
>>>>>>> >> >> has
>>>>>>> >> >> arm cortexa9 processor without neon extentions )
>>>>>>> >> >>
>>>>>>> >> >> I am kind of new to add new .bb files and help is really
>>>>>>> appreciated as
>>>>>>> >> >> I
>>>>>>> >> >> am not able to figure out how to add
>>>>>>> >> >>
>>>>>>> >> >> Greetings & Regards,
>>>>>>> >> >> Swaroop
>>>>>>> >> >>
>>>>>>> >> >> _______________________________________________
>>>>>>> >> >> yocto mailing list
>>>>>>> >> >> yocto@yoctoproject.org
>>>>>>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>> >> >>
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> > --
>>>>>>> >> > --
>>>>>>> >> > Rudolf J. Streif
>>>>>>> >> > Director of Embedded Solutions
>>>>>>> >> > The Linux Foundation
>>>>>>> >> >
>>>>>>> >> > rudolf.streif@linux.com
>>>>>>> >> > Phone: +1.619.631.5383
>>>>>>> >> > Skype: rudolfstreif
>>>>>>> >> > PGP: RSA 2048/2048 D6E7D28B
>>>>>>> >> >
>>>>>>> >> > Linux Foundation Events Schedule:  events.linuxfoundation.org
>>>>>>> >> > Linux Foundation Training Schedule:
>>>>>>> training.linuxfoundation.org
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> > _______________________________________________
>>>>>>> >> > yocto mailing list
>>>>>>> >> > yocto@yoctoproject.org
>>>>>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>>>>> >> >
>>>>>>> >
>>>>>>> >
>>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>>
>>> --
>>> --
>>> *Rudolf J. Streif*
>>> Director of Embedded Solutions
>>> The Linux Foundation
>>>
>>> rudolf.streif@linux.com
>>> Phone: +1.619.631.5383
>>> Skype: rudolfstreif
>>> PGP: RSA 2048/2048 D6E7D28B
>>>
>>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>


--=20
--=20
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b6050deba8be004d6a3ddf5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>As Hans said, you should not need to install any of t=
hese host packages since Yocto is for most part all self-contained. If you =
think that you need to install host packages then there may be something wr=
ong with building a particular tool for the development host. That is typic=
ally done with BBCLASSEXTENDS =3D &quot;native&quot; or BBCLASSETENDS =3D &=
quot;native native-sdk&quot;.<br>
<br></div>Rudi<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Mon, Feb 25, 2013 at 7:56 AM, Satya Swaroop Damarla <span dir=
=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank"=
>swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Another important package t=
hat has to be installed in =A0the &quot;apt-get install device-tree-compile=
r&quot; package. This was adviced by the Thierry Reding, wh wrote the uboot=
 config for Tamonten board.. Rudolf, may I ask you how did you find the SRC=
REV values for the uboot packages ... It would be great to know as there is=
 not sufficient literature avilable to explain this on the internet...</div=
>
<div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Feb 2=
5, 2013 at 3:58 PM, Satya Swaroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"=
mailto:swaroop@weisser.at" target=3D"_blank">swaroop@weisser.at</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Guys. I found the solution =
to this problem....<div><br></div><div>I think if you already install uboot=
-tools or uboot-mkimage packes from Ubuntu repository then it is used inste=
ad of the one that is downloaded and we should uninstall the packages and t=
hen rerun the build,,... Then IT WORKS... So, thank you for the time and en=
egry... I assume this thread is closed and this is the solution and if this=
 doesnot work for some then please post it and we may discuss the situation=
 depending on the problem,</div>


<div><br></div><div>Greetings &amp; Regards,</div><div>Satya</div></div><di=
v><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu=
, Feb 21, 2013 at 5:28 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoundatio=
n.org</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Satya,<div><br></div><div>I=
 will look into it later today. I am currently at the Linux Foundation&#39;=
s Embedded Linux Conference.</div>


<div><br></div><div>Rudi</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Feb 21, 2013 at 2:10 AM, Satya S=
waroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" =
target=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">



<div dir=3D"ltr">Hello Guys,<div><br></div><div>I have not received any rep=
ly from you. If you can help me to figure out what the errors mean when add=
ing a new .bb or recipe file then I can learn the mistake and take care in =
the new recipes.... I request your time=A0</div>




</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop=
.damarla@gmail.com</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div dir=3D"ltr"><span style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">hey Guys... I get the following error=
... which I attached.. Its completely greek and latin to me.. Can you pleas=
e help me..</span><br>




</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Feb 20, 2013 at 7:19 PM, Satya S=
waroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" =
target=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">





<div dir=3D"ltr">hey Guys... I get the following error... which I attached.=
. Its completely greek and latin to me.. Can you please help me..</div><div=
><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">
On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmai=
l.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Wed, Feb 20, 2013 at 6:12 PM, Satya =
Swaroop Damarla<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.=
damarla@gmail.com</a>&gt; wrote:<br>
&gt; Hey hans, this is what he meant,<br>
&gt;<br>
&gt; In the machine config file add the following<br>
&gt;<br>
&gt; PREFERRED_VERSION_u-boot ?=3D &quot;v2013.01%&quot; =A0or PREFERRED_VE=
RSION_u-boot ?=3D<br>
&gt; &quot;v2013.01.01%&quot;<br>
&gt;<br>
&gt; By the way did you already complete the first part... There is also ot=
her<br>
&gt; file called &quot;<a href=3D"http://u-boot-fw-utils_2012.04.01.bb" tar=
get=3D"_blank">u-boot-fw-utils_2012.04.01.bb</a>&quot; ... I think we shoul=
d do the<br>
&gt; same...<br>
&gt;<br>
&gt; Hans bytheway, =A0are you also working on the same board or diffferent=
 board<br>
&gt; with same problem?<br>
&gt;<br>
<br>
</div>Different board, same core, similar problem ;)<br>
Now I get it. Thanks. But still question remains how in earth I<br>
managed to build the kernel if not also having copied/renamed the<br>
mkimage .bb?<br>
Is the PREFERRED_VERSION_u-boot used to determine what mkimage and fw<br>
utils it picks up?<br>
Then it might be that since I/we build u-boot as a separate package,<br>
but kernel lifts in the mkimage stuff, it works but the wrong package<br>
was used.<br>
In my case obviously compatible, but not recommended I guess. Also, I<br>
agree that the fw utils should probably be in sync similar to mkimage.<br>
<div><div><br>
Hans<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=E9rus &lt;<a href=3D"mailto=
:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com</a>&gt;=
<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif<br>
&gt;&gt; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blan=
k">rstreif@linuxfoundation.org</a>&gt; wrote:<br>
&gt;&gt; &gt; Satya,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Simply look at the u-boot recipes in meta/recipes-bsp/u-boot =
such as<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2012.04.01.bb" target=3D"_blank">u-b=
oot_2012.04.01.bb</a>. You can simply copy it and name it<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2013.01.bb" target=3D"_blank">u-boot=
_2013.01.bb</a><br>
&gt;&gt; &gt; and then modify SRCREV to the revision that corresponds to th=
e tag<br>
&gt;&gt; &gt; 2013.01<br>
&gt;&gt; &gt; or 2013.01.01 in <a href=3D"http://git.denx.de" target=3D"_bl=
ank">git.denx.de</a>:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d<br>
&gt;&gt; &gt; for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do the same for u-boot-mkimage and include the u-boot version=
 with your<br>
&gt;&gt; &gt; bsp.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Rudi<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; Hi Rudi, sorry to chime in , but I have a similar problem but do n=
ot<br>
&gt;&gt; really get the last thing you said.<br>
&gt;&gt; What do you mean by including the u-boot version in the bsp? Also =
is<br>
&gt;&gt; it a must to also copy the mkimage .bb or will the system find a<b=
r>
&gt;&gt; suitable one automatically?<br>
&gt;&gt; The thing is that I only copied/edited the u-boot .bb but never th=
e<br>
&gt;&gt; mkimage. Still my kernel successfully builds the kernel uImage!?<b=
r>
&gt;&gt; Some magic that I have missed :)<br>
&gt;&gt;<br>
&gt;&gt; Hans<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_b=
lank">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I need support for uboot on Tamonten board but the versio=
n on it is<br>
&gt;&gt; &gt;&gt; v2012.04 but I came to know that v2012.10 or v2013.01 sup=
ports the<br>
&gt;&gt; &gt;&gt; Tamontenboard through some guys here..<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It would be great if you can tell me how can I accomplish=
 v2013.01 or<br>
&gt;&gt; &gt;&gt; v2012.10 into the build system and make it available so t=
hat I can<br>
&gt;&gt; &gt;&gt; compile<br>
&gt;&gt; &gt;&gt; the and get uImage<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; (Tamonten board is a derivative of harmony board with som=
e changes and<br>
&gt;&gt; &gt;&gt; has<br>
&gt;&gt; &gt;&gt; arm cortexa9 processor without neon extentions )<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I am kind of new to add new .bb files and help is really =
appreciated as<br>
&gt;&gt; &gt;&gt; I<br>
&gt;&gt; &gt;&gt; am not able to figure out how to add<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Greetings &amp; Regards,<br>
&gt;&gt; &gt;&gt; Swaroop<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Rudolf J. Streif<br>
&gt;&gt; &gt; Director of Embedded Solutions<br>
&gt;&gt; &gt; The Linux Foundation<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">=
rudolf.streif@linux.com</a><br>
&gt;&gt; &gt; Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+1619631538=
3" target=3D"_blank">+1.619.631.5383</a><br>
&gt;&gt; &gt; Skype: rudolfstreif<br>
&gt;&gt; &gt; PGP: RSA 2048/2048 D6E7D28B<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Linux Foundation Events Schedule: =A0<a href=3D"http://events=
.linuxfoundation.org" target=3D"_blank">events.linuxfoundation.org</a><br>
&gt;&gt; &gt; Linux Foundation Training Schedule: <a href=3D"http://trainin=
g.linuxfoundation.org" target=3D"_blank">training.linuxfoundation.org</a><b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b=
></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>



<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>



<div><font face=3D"arial, helvetica, sans-serif">Phone: <a href=3D"tel:%2B1=
.619.631.5383" value=3D"+16196315383" target=3D"_blank">+1.619.631.5383</a>=
</font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolf=
streif</font></div>


<div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 2048/2048 D6E7D28=
B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>



Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>



</span></font></div>
</div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>--=A0<br><f=
ont face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><di=
v><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solution=
s</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b6050deba8be004d6a3ddf5--
