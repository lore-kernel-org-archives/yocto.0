Return-Path: <rajanpatha34@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFD9EE0050E
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:23:32 -0800 (PST)
Received: by mail-pb0-f41.google.com with SMTP id jt11so5447582pbb.0
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=zSbBJk4Fp5GWpihPb2pd42qSjL/d3Ls4I3bCO0WYyrk=;
	b=ZXNEroxGdOEo2mZp/65Hjv/x/LFeWftl1cXn0nK4WWoL7gsLo6h2P8KyBz24KeyQsi
	uvjFXi75MhHDrIoyZjV7Iv6Uo4myiptOpP8Ye8kEphR7BR9XpPpH/sYbuDbOY/CunYYW
	Y9HJkwVEWxQZPFO/1sbKsgZaUwqjyeUVBZXumUQsH1crUKc6yLcJ42dy69vqFfQcFarb
	4ko0+I3x2lwj4ofmR6vl4Ctw9SqjEa0+X35bPAy+w3FcEzQLK++ZLVl+eKeiitqsQuTA
	phYAa00OR6M1UbI0p0F8E/EDYTtrtbzFnx7Athta2Jt+EgvnfbviaJRMtSgnDe0VjljE
	RK4g==
MIME-Version: 1.0
X-Received: by 10.67.14.231 with SMTP id fj7mr7109325pad.115.1385375011735;
	Mon, 25 Nov 2013 02:23:31 -0800 (PST)
Received: by 10.68.146.106 with HTTP; Mon, 25 Nov 2013 02:23:31 -0800 (PST)
In-Reply-To: <CACXtFMi8yXSbZcPh392PW9Q-ZfRELHdvKHQ8CgdboSizBSGEhg@mail.gmail.com>
References: <CACXtFMicMSJZ=H1+UMgOrcKZnoKK=9VmUbPbEbnWF8Mk1hQv7A@mail.gmail.com>
	<CALEed8bT5pH_StnPcYnbHDRPJ-74rtzE9_A2yt6W3AtTdcazTw@mail.gmail.com>
	<CACXtFMi8yXSbZcPh392PW9Q-ZfRELHdvKHQ8CgdboSizBSGEhg@mail.gmail.com>
Date: Mon, 25 Nov 2013 15:53:31 +0530
Message-ID: <CACXtFMhm=iG7cxXbcSBTKv=cVKd8RuzkKJeA7+OBnLWX4tpAHw@mail.gmail.com>
From: rajan pathak <rajanpatha34@gmail.com>
To: Bernard Mentink <bmentink@gmail.com>, yocto@yoctoproject.org, 
	Khem Raj <raj.khem@gmail.com>
Subject: Re: Changing /etc/shadow file
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
X-List-Received-Date: Mon, 25 Nov 2013 10:23:32 -0000
Content-Type: multipart/alternative; boundary=001a113453ec74910904ebfdc1b4

--001a113453ec74910904ebfdc1b4
Content-Type: text/plain; charset=ISO-8859-1

Running out of idea

Any would like to give some suggestion here?

Thanks


On Sun, Nov 24, 2013 at 3:37 PM, rajan pathak <rajanpatha34@gmail.com>wrote:

> Thanks Bernard
>
> I tried patching the shadow file but couldn't make it work
>
> My requirement is specific ,wanted to modify /etc/shadow file of rootfs
>
> I don't know how /etc/shadow file is getting generated in my rootfs,though
> I know the whole
> Process of how /etc/passwd file is generated in my roofs .
>
> Inside poky I have a recipe file which will generally fetches the
> passwd.master from web and copy it to
> /etc/passwd file of my rootfs .
>
> But couldn't find any such process for /etc/shadow file
>
> I have to disable one of the user account and that requires asterisk(*) to
> be put in second column of user-specific line.
>
> For example in /etc/shadow have to change
>
> my_user::0:0....
>
> to
>
> my_ user:*:0:0...
>
> + Khem Raj here as he made most of work of shadow packaging in poky
>
> Thanks
> Rajan
>
>
>
>
> On Sun, Nov 24, 2013 at 5:19 AM, Bernard Mentink <bmentink@gmail.com>wrote:
>
>> Just make a /recipe-extended/ directory in your layer so it looks the
>> same as the original. Then add a"files" directory with your new file, then
>> add in a .bbappend file that
>> looks for extra files in "files", then you are done.
>>
>> Have a look in other .bbappend of how to just add in new files, you will
>> find lot's of examples in other layers ..
>>
>> Cheers,
>> bernie
>>
>>
>> On Sun, Nov 24, 2013 at 2:14 AM, rajan pathak <rajanpatha34@gmail.com>wrote:
>>
>>> I have to make some changes to my /etc/shadow file,
>>>
>>> I Can see shadow  file is from poky/meta/recipe-extended,so to change
>>> this file
>>> do I have to apply patch or what?
>>>
>>> Thanks
>>> Rajan
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a113453ec74910904ebfdc1b4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Running out of idea<div><br></div><div style>Any would lik=
e to give some suggestion here?</div><div style><br></div><div style>Thanks=
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Sun, Nov 24, 2013 at 3:37 PM, rajan pathak <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rajanpatha34@gmail.com" target=3D"_blank">rajanpatha34@gmail.com=
</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><d=
iv><div><div><div><div><div><div><div>Thanks Bernard<br><br></div>I tried p=
atching the shadow file but couldn&#39;t make it work<br>
<br></div>My requirement is specific ,wanted to modify /etc/shadow file of =
rootfs<br>
<br></div>I don&#39;t know how /etc/shadow file is getting generated in my =
rootfs,though I know the whole<br></div>Process of how /etc/passwd file is =
generated in my roofs .<br><br></div>Inside poky I have a recipe file which=
 will generally fetches the passwd.master from web and copy it to <br>

</div>/etc/passwd file of my rootfs .<br><br></div>But couldn&#39;t find an=
y such process for /etc/shadow file<br><br></div>I have to disable one of t=
he user account and that requires asterisk(*) to be put in second column of=
 user-specific line.<br>

<br></div>For example in /etc/shadow have to change <br><br></div>my_user::=
0:0....<br><br></div><div>to <br><br></div>my_ user:*:0:0...<br><br></div><=
div>+ Khem Raj here as he made most of work of shadow packaging in poky<br>

</div><div><br></div>Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><=
br></font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">Rajan=
<br><div><div><div><div><div><div><div><div>=A0<br><div><div><div><br></div=
></div>
</div></div></div></div></div></div></div></div></div></font></span></div><=
div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><br><=
div class=3D"gmail_quote">
On Sun, Nov 24, 2013 at 5:19 AM, Bernard Mentink <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:bmentink@gmail.com" target=3D"_blank">bmentink@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">Just make a /recipe-extended/ directory in your layer so i=
t looks the same as the original. Then add a&quot;files&quot; directory wit=
h your new file, then add in a .bbappend file that<div>looks for extra file=
s in &quot;files&quot;, then you are done.</div>


<div><br></div><div>Have a look in other .bbappend of how to just add in ne=
w files, you will find lot&#39;s of examples in other layers ..</div><div><=
br></div><div>Cheers,</div><div>bernie=A0</div></div><div class=3D"gmail_ex=
tra">


<br><br><div class=3D"gmail_quote"><div><div>On Sun, Nov 24, 2013 at 2:14 A=
M, rajan pathak <span dir=3D"ltr">&lt;<a href=3D"mailto:rajanpatha34@gmail.=
com" target=3D"_blank">rajanpatha34@gmail.com</a>&gt;</span> wrote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div>
<div dir=3D"ltr"><div><div><div><div>I have to make some changes to my /etc=
/shadow file,<br><br></div>I Can see shadow=A0 file is from poky/meta/recip=
e-extended,so to change this file<br></div>do I have to apply patch or what=
?<br>



<br></div>Thanks<span><font color=3D"#888888"><br></font></span></div><span=
><font color=3D"#888888">Rajan<br></font></span></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113453ec74910904ebfdc1b4--
