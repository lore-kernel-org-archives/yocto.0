Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B2A61E006E9
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 08:02:35 -0800 (PST)
Received: by mail-lb0-f180.google.com with SMTP id q12so2335208lbc.39
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 08:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:x-mailer:from:subject:date
	:to; bh=GIwTknyknL0DEmSuXSvlMzZTzbFfWdbU51uL7a4Z9Zw=;
	b=xmVLjW+5Vy1HVaYGiea9oIpCUajqM36NHpp9qk12L5UssIsc9oLpRDI13rhBxEdFk3
	z1LJp/vaGWxxsQ4xLzOew8NJRNWikaC5Lb+utxFhkG5/SXM7U7vYwxR+JvlcL8Uc1kC2
	bm2zVk8gwgBHhbjaL7aEOe12hZkD+IMgCJ96dwTOr4ojK1okJnlM1HQT8lfbRat4JKFr
	JXMQfPbqZC42XNootrE9EmsEs1ajOffw0J93iWFH6qQ4av6Mkvq7Rr2vFv2G+WPRXy1V
	yqneDC9PS+PASdYwBsBWnwkgsT/A/dRzEQ1GdizhcPGRSowXl+Q/SsEKMe4NX1a0wzTH
	nXAg==
X-Received: by 10.112.17.41 with SMTP id l9mr4480448lbd.91.1361808153469;
	Mon, 25 Feb 2013 08:02:33 -0800 (PST)
Received: from [10.242.112.187] (c-5eeaaa76-74736162.cust.telenor.se.
	[94.234.170.118])
	by mx.google.com with ESMTPS id gm20sm7153290lab.7.2013.02.25.08.02.31
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 25 Feb 2013 08:02:32 -0800 (PST)
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
Mime-Version: 1.0 (1.0)
In-Reply-To: <CABTzgQ4gfaA+30UCG0ZfA2w1=en6QVf7_-mxR4Zmr33-dazo2w@mail.gmail.com>
Message-Id: <0A6CADCB-85FF-4392-8D09-BAF570C7D43C@gmail.com>
X-Mailer: iPhone Mail (10B146)
From: =?utf-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
Date: Mon, 25 Feb 2013 17:02:27 +0100
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
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
X-List-Received-Date: Mon, 25 Feb 2013 16:02:36 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-1B6A736B-B3B9-444E-8120-0AFC1F411954
Content-Transfer-Encoding: 7bit

--Apple-Mail-1B6A736B-B3B9-444E-8120-0AFC1F411954
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



25 feb 2013 kl. 16:56 skrev Satya Swaroop Damarla <swaroop.damarla@gmail.com=
>:

> Another important package that has to be installed in  the "apt-get instal=
l device-tree-compiler" package. This was adviced by the Thierry Reding, wh w=
rote the uboot config for Tamonten board.. Rudolf, may I ask you how did you=
 find the SRCREV values for the uboot packages ... It would be great to know=
 as there is not sufficient literature avilable to explain this on the inter=
net...
>=20
I do not get this. Why should you want to install this package? The dts comp=
iler should be part of any complete kernel! I think it is the wrong solution=
 to use the one from the host distro. You should use the one the specific ke=
rnel version provides.

>=20
> On Mon, Feb 25, 2013 at 3:58 PM, Satya Swaroop DAMARLA <swaroop@weisser.at=
> wrote:
>> Guys. I found the solution to this problem....
>>=20
>> I think if you already install uboot-tools or uboot-mkimage packes from U=
buntu repository then it is used instead of the one that is downloaded and w=
e should uninstall the packages and then rerun the build,,... Then IT WORKS.=
.. So, thank you for the time and enegry... I assume this thread is closed a=
nd this is the solution and if this doesnot work for some then please post i=
t and we may discuss the situation depending on the problem,
>>=20
>> Greetings & Regards,
>> Satya
>>=20
>>=20
>> On Thu, Feb 21, 2013 at 5:28 PM, Rudolf Streif <rstreif@linuxfoundation.o=
rg> wrote:
>>> Satya,
>>>=20
>>> I will look into it later today. I am currently at the Linux Foundation'=
s Embedded Linux Conference.
>>>=20
>>> Rudi
>>>=20
>>>=20
>>> On Thu, Feb 21, 2013 at 2:10 AM, Satya Swaroop DAMARLA <swaroop@weisser.=
at> wrote:
>>>> Hello Guys,
>>>>=20
>>>> I have not received any reply from you. If you can help me to figure ou=
t what the errors mean when adding a new .bb or recipe file then I can learn=
 the mistake and take care in the new recipes.... I request your time=20
>>>>=20
>>>>=20
>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <swaroop.damarla=
@gmail.com> wrote:
>>>>> hey Guys... I get the following error... which I attached.. Its comple=
tely greek and latin to me.. Can you please help me..
>>>>>=20
>>>>>=20
>>>>> On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop DAMARLA <swaroop@weisse=
r.at> wrote:
>>>>>> hey Guys... I get the following error... which I attached.. Its compl=
etely greek and latin to me.. Can you please help me..
>>>>>>=20
>>>>>>=20
>>>>>> On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=C3=A9rus <hans.beckerus@gm=
ail.com> wrote:
>>>>>>> On Wed, Feb 20, 2013 at 6:12 PM, Satya Swaroop Damarla
>>>>>>> <swaroop.damarla@gmail.com> wrote:
>>>>>>> > Hey hans, this is what he meant,
>>>>>>> >
>>>>>>> > In the machine config file add the following
>>>>>>> >
>>>>>>> > PREFERRED_VERSION_u-boot ?=3D "v2013.01%"  or PREFERRED_VERSION_u-=
boot ?=3D
>>>>>>> > "v2013.01.01%"
>>>>>>> >
>>>>>>> > By the way did you already complete the first part... There is als=
o other
>>>>>>> > file called "u-boot-fw-utils_2012.04.01.bb" ... I think we should d=
o the
>>>>>>> > same...
>>>>>>> >
>>>>>>> > Hans bytheway,  are you also working on the same board or difffere=
nt board
>>>>>>> > with same problem?
>>>>>>> >
>>>>>>>=20
>>>>>>> Different board, same core, similar problem ;)
>>>>>>> Now I get it. Thanks. But still question remains how in earth I
>>>>>>> managed to build the kernel if not also having copied/renamed the
>>>>>>> mkimage .bb?
>>>>>>> Is the PREFERRED_VERSION_u-boot used to determine what mkimage and f=
w
>>>>>>> utils it picks up?
>>>>>>> Then it might be that since I/we build u-boot as a separate package,=

>>>>>>> but kernel lifts in the mkimage stuff, it works but the wrong packag=
e
>>>>>>> was used.
>>>>>>> In my case obviously compatible, but not recommended I guess. Also, I=

>>>>>>> agree that the fw utils should probably be in sync similar to mkimag=
e.
>>>>>>>=20
>>>>>>> Hans
>>>>>>>=20
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> >
>>>>>>> > On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=C3=A9rus <hans.beckerus=
@gmail.com>
>>>>>>> > wrote:
>>>>>>> >>
>>>>>>> >> On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif
>>>>>>> >> <rstreif@linuxfoundation.org> wrote:
>>>>>>> >> > Satya,
>>>>>>> >> >
>>>>>>> >> > Simply look at the u-boot recipes in meta/recipes-bsp/u-boot su=
ch as
>>>>>>> >> > u-boot_2012.04.01.bb. You can simply copy it and name it
>>>>>>> >> > u-boot_2013.01.bb
>>>>>>> >> > and then modify SRCREV to the revision that corresponds to the t=
ag
>>>>>>> >> > 2013.01
>>>>>>> >> > or 2013.01.01 in git.denx.de:
>>>>>>> >> >
>>>>>>> >> > for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d
>>>>>>> >> > for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46
>>>>>>> >> >
>>>>>>> >> > Do the same for u-boot-mkimage and include the u-boot version w=
ith your
>>>>>>> >> > bsp.
>>>>>>> >> >
>>>>>>> >> > Rudi
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> Hi Rudi, sorry to chime in , but I have a similar problem but do n=
ot
>>>>>>> >> really get the last thing you said.
>>>>>>> >> What do you mean by including the u-boot version in the bsp? Also=
 is
>>>>>>> >> it a must to also copy the mkimage .bb or will the system find a
>>>>>>> >> suitable one automatically?
>>>>>>> >> The thing is that I only copied/edited the u-boot .bb but never t=
he
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
>>>>>>> >> >> I need support for uboot on Tamonten board but the version on i=
t is
>>>>>>> >> >> v2012.04 but I came to know that v2012.10 or v2013.01 supports=
 the
>>>>>>> >> >> Tamontenboard through some guys here..
>>>>>>> >> >>
>>>>>>> >> >> It would be great if you can tell me how can I accomplish v201=
3.01 or
>>>>>>> >> >> v2012.10 into the build system and make it available so that I=
 can
>>>>>>> >> >> compile
>>>>>>> >> >> the and get uImage
>>>>>>> >> >>
>>>>>>> >> >> (Tamonten board is a derivative of harmony board with some cha=
nges and
>>>>>>> >> >> has
>>>>>>> >> >> arm cortexa9 processor without neon extentions )
>>>>>>> >> >>
>>>>>>> >> >> I am kind of new to add new .bb files and help is really appre=
ciated as
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
>>>>>>> >> > Linux Foundation Training Schedule: training.linuxfoundation.or=
g
>>>>>>> >> >
>>>>>>> >> >
>>>>>>> >> > _______________________________________________
>>>>>>> >> > yocto mailing list
>>>>>>> >> > yocto@yoctoproject.org
>>>>>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>>>>>> >> >
>>>>>>> >
>>>>>>> >
>>>=20
>>>=20
>>>=20
>>> --=20
>>> --=20
>>> Rudolf J. Streif
>>> Director of Embedded Solutions
>>> The Linux Foundation
>>>=20
>>> rudolf.streif@linux.com
>>> Phone: +1.619.631.5383
>>> Skype: rudolfstreif
>>> PGP: RSA 2048/2048 D6E7D28B
>>>=20
>>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>>=20
>>>=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>=20

--Apple-Mail-1B6A736B-B3B9-444E-8120-0AFC1F411954
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><br></div><div><br>25 feb 2013 kl. 16:=
56 skrev Satya Swaroop Damarla &lt;<a href=3D"mailto:swaroop.damarla@gmail.c=
om">swaroop.damarla@gmail.com</a>&gt;:<br><br></div><blockquote type=3D"cite=
"><div><div dir=3D"ltr">Another important package that has to be installed i=
n &nbsp;the "apt-get install device-tree-compiler" package. This was adviced=
 by the Thierry Reding, wh wrote the uboot config for Tamonten board.. Rudol=
f, may I ask you how did you find the SRCREV values for the uboot packages .=
.. It would be great to know as there is not sufficient literature avilable t=
o explain this on the internet...</div>
<div class=3D"gmail_extra"><br></div></div></blockquote>I do not get this. W=
hy should you want to install this package? The dts compiler should be part o=
f any complete kernel! I think it is the wrong solution to use the one from t=
he host distro. You should use the one the specific kernel version provides.=
<div><br><blockquote type=3D"cite"><div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Mon, Feb 25, 2013 at 3:58 PM, Satya Swaroop DAMARLA <=
span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" target=3D"_blank"=
>swaroop@weisser.at</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">Guys. I found the solution to=
 this problem....<div><br></div><div>I think if you already install uboot-to=
ols or uboot-mkimage packes from Ubuntu repository then it is used instead o=
f the one that is downloaded and we should uninstall the packages and then r=
erun the build,,... Then IT WORKS... So, thank you for the time and enegry..=
. I assume this thread is closed and this is the solution and if this doesno=
t work for some then please post it and we may discuss the situation dependi=
ng on the problem,</div>

<div><br></div><div>Greetings &amp; Regards,</div><div>Satya</div></div><div=
 class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">On Thu, Feb 21, 2013 at 5:28 PM, Rudolf Streif <span di=
r=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blan=
k">rstreif@linuxfoundation.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">Satya,<div><br></div><div>I w=
ill look into it later today. I am currently at the Linux Foundation's Embed=
ded Linux Conference.</div>

<div><br></div><div>Rudi</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Feb 21, 2013 at 2:10 AM, Satya Sw=
aroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" ta=
rget=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">


<div dir=3D"ltr">Hello Guys,<div><br></div><div>I have not received any repl=
y from you. If you can help me to figure out what the errors mean when addin=
g a new .bb or recipe file then I can learn the mistake and take care in the=
 new recipes.... I request your time&nbsp;</div>



</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote=
">On Wed, Feb 20, 2013 at 7:19 PM, Satya Swaroop Damarla <span dir=3D"ltr">&=
lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.da=
marla@gmail.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div><div dir=3D"ltr"><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">hey Guys... I get the following error...=
 which I attached.. Its completely greek and latin to me.. Can you please he=
lp me..</span><br>



</div></div><div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Feb 20, 2013 at 7:19 PM, Satya Sw=
aroop DAMARLA <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop@weisser.at" ta=
rget=3D"_blank">swaroop@weisser.at</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">




<div dir=3D"ltr">hey Guys... I get the following error... which I attached..=
 Its completely greek and latin to me.. Can you please help me..</div><div><=
div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">
On Wed, Feb 20, 2013 at 6:46 PM, Hans Beck=C3=A9rus <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gma=
il.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div>On Wed, Feb 20, 2013 at 6:12 PM, Satya Sw=
aroop Damarla<br>
&lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.d=
amarla@gmail.com</a>&gt; wrote:<br>
&gt; Hey hans, this is what he meant,<br>
&gt;<br>
&gt; In the machine config file add the following<br>
&gt;<br>
&gt; PREFERRED_VERSION_u-boot ?=3D "v2013.01%" &nbsp;or PREFERRED_VERSION_u-=
boot ?=3D<br>
&gt; "v2013.01.01%"<br>
&gt;<br>
&gt; By the way did you already complete the first part... There is also oth=
er<br>
&gt; file called "<a href=3D"http://u-boot-fw-utils_2012.04.01.bb" target=3D=
"_blank">u-boot-fw-utils_2012.04.01.bb</a>" ... I think we should do the<br>=

&gt; same...<br>
&gt;<br>
&gt; Hans bytheway, &nbsp;are you also working on the same board or difffere=
nt board<br>
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
&gt; On Wed, Feb 20, 2013 at 6:01 PM, Hans Beck=C3=A9rus &lt;<a href=3D"mail=
to:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Feb 20, 2013 at 5:16 PM, Rudolf Streif<br>
&gt;&gt; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank=
">rstreif@linuxfoundation.org</a>&gt; wrote:<br>
&gt;&gt; &gt; Satya,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Simply look at the u-boot recipes in meta/recipes-bsp/u-boot s=
uch as<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2012.04.01.bb" target=3D"_blank">u-bo=
ot_2012.04.01.bb</a>. You can simply copy it and name it<br>
&gt;&gt; &gt; <a href=3D"http://u-boot_2013.01.bb" target=3D"_blank">u-boot_=
2013.01.bb</a><br>
&gt;&gt; &gt; and then modify SRCREV to the revision that corresponds to the=
 tag<br>
&gt;&gt; &gt; 2013.01<br>
&gt;&gt; &gt; or 2013.01.01 in <a href=3D"http://git.denx.de" target=3D"_bla=
nk">git.denx.de</a>:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d<br>
&gt;&gt; &gt; for 2013.01.01: e8ae0fa5edd152b2b29c470b88429be4cdcd2c46<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do the same for u-boot-mkimage and include the u-boot version w=
ith your<br>
&gt;&gt; &gt; bsp.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Rudi<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; Hi Rudi, sorry to chime in , but I have a similar problem but do no=
t<br>
&gt;&gt; really get the last thing you said.<br>
&gt;&gt; What do you mean by including the u-boot version in the bsp? Also i=
s<br>
&gt;&gt; it a must to also copy the mkimage .bb or will the system find a<br=
>
&gt;&gt; suitable one automatically?<br>
&gt;&gt; The thing is that I only copied/edited the u-boot .bb but never the=
<br>
&gt;&gt; mkimage. Still my kernel successfully builds the kernel uImage!?<br=
>
&gt;&gt; Some magic that I have missed :)<br>
&gt;&gt;<br>
&gt;&gt; Hans<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_bl=
ank">swaroop.damarla@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Guys,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I need support for uboot on Tamonten board but the version=
 on it is<br>
&gt;&gt; &gt;&gt; v2012.04 but I came to know that v2012.10 or v2013.01 supp=
orts the<br>
&gt;&gt; &gt;&gt; Tamontenboard through some guys here..<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It would be great if you can tell me how can I accomplish v=
2013.01 or<br>
&gt;&gt; &gt;&gt; v2012.10 into the build system and make it available so th=
at I can<br>
&gt;&gt; &gt;&gt; compile<br>
&gt;&gt; &gt;&gt; the and get uImage<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; (Tamonten board is a derivative of harmony board with some=
 changes and<br>
&gt;&gt; &gt;&gt; has<br>
&gt;&gt; &gt;&gt; arm cortexa9 processor without neon extentions )<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I am kind of new to add new .bb files and help is really a=
ppreciated as<br>
&gt;&gt; &gt;&gt; I<br>
&gt;&gt; &gt;&gt; am not able to figure out how to add<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Greetings &amp; Regards,<br>
&gt;&gt; &gt;&gt; Swaroop<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
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
&gt;&gt; &gt; <a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">r=
udolf.streif@linux.com</a><br>
&gt;&gt; &gt; Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+16196315383=
" target=3D"_blank">+1.619.631.5383</a><br>
&gt;&gt; &gt; Skype: rudolfstreif<br>
&gt;&gt; &gt; PGP: RSA 2048/2048 D6E7D28B<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Linux Foundation Events Schedule: &nbsp;<a href=3D"http://even=
ts.linuxfoundation.org" target=3D"_blank">events.linuxfoundation.org</a><br>=

&gt;&gt; &gt; Linux Foundation Training Schedule: <a href=3D"http://training=
.linuxfoundation.org" target=3D"_blank">training.linuxfoundation.org</a><br>=

&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>-=
-&nbsp;<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</=
b></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>


<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font>=
</div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><div=
><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=3D"=
arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>


<div><font face=3D"arial, helvetica, sans-serif">Phone: <a href=3D"tel:%2B1.=
619.631.5383" value=3D"+16196315383" target=3D"_blank">+1.619.631.5383</a></=
font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstr=
eif</font></div>

<div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 2048/2048 D6E7D28B=
</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gara=
mond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);=
font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collapse:=
collapse">Linux Foundation Events Schedule: &nbsp;<a href=3D"http://events.l=
inuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">event=
s.linuxfoundation.org</a><br>


Linux Foundation Training Schedule:&nbsp;<a href=3D"http://training.linuxfou=
ndation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.lin=
uxfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);fo=
nt-family:arial,sans-serif;font-size:13px"><br>


</span></font></div>
</div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></blockquote></div></body></html>=

--Apple-Mail-1B6A736B-B3B9-444E-8120-0AFC1F411954--
