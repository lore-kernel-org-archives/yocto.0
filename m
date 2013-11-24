Return-Path: <rajanpatha34@gmail.com>
Received: from mail-pb0-f66.google.com (mail-pb0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D86CE00723
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 02:07:29 -0800 (PST)
Received: by mail-pb0-f66.google.com with SMTP id md12so1575692pbc.1
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2013 02:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=77cpzcbaxnsSC5JA6Ac3INXzpsVf9OREVxmVAiOAY8I=;
	b=b6HbQ0hM+OxH5BaDM0hpAFPGE9USShbrMHt7Sp7rL1uZRkcFRy3i7HnJWg8xsxy17Z
	VoloFNPkTFbSqUAf6iIl4uml7MlTQUI0nNyqOs4g7K+gEtTAXw8oNsczvqJalaBM17OP
	JO4EPbbn6ZKot9ekVz6ttVIJWsHWLTTa5rcJqiPQ+mzXfDv9+tez8+FZ0LekhdySewxS
	Toyd/x6hrhNzv5qHpskuG3T7DRSCqKTO1zfxpzEdI1dCWkdErSnG878jUV2de8+tcmIm
	uLKvWRxz1BRhrJ6vv0JnziBqwTCvONACphRfakkhtb3qaBEBSiFzLA9FZo2atrzReD5y
	o9LQ==
MIME-Version: 1.0
X-Received: by 10.68.231.105 with SMTP id tf9mr12818738pbc.4.1385287648984;
	Sun, 24 Nov 2013 02:07:28 -0800 (PST)
Received: by 10.68.146.106 with HTTP; Sun, 24 Nov 2013 02:07:28 -0800 (PST)
In-Reply-To: <CALEed8bT5pH_StnPcYnbHDRPJ-74rtzE9_A2yt6W3AtTdcazTw@mail.gmail.com>
References: <CACXtFMicMSJZ=H1+UMgOrcKZnoKK=9VmUbPbEbnWF8Mk1hQv7A@mail.gmail.com>
	<CALEed8bT5pH_StnPcYnbHDRPJ-74rtzE9_A2yt6W3AtTdcazTw@mail.gmail.com>
Date: Sun, 24 Nov 2013 15:37:28 +0530
Message-ID: <CACXtFMi8yXSbZcPh392PW9Q-ZfRELHdvKHQ8CgdboSizBSGEhg@mail.gmail.com>
From: rajan pathak <rajanpatha34@gmail.com>
To: Bernard Mentink <bmentink@gmail.com>, yocto@yoctoproject.org,
	raj.khem@gmail.com
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
X-List-Received-Date: Sun, 24 Nov 2013 10:07:30 -0000
Content-Type: multipart/alternative; boundary=047d7b33cac83ac2e004ebe96ae8

--047d7b33cac83ac2e004ebe96ae8
Content-Type: text/plain; charset=ISO-8859-1

Thanks Bernard

I tried patching the shadow file but couldn't make it work

My requirement is specific ,wanted to modify /etc/shadow file of rootfs

I don't know how /etc/shadow file is getting generated in my rootfs,though
I know the whole
Process of how /etc/passwd file is generated in my roofs .

Inside poky I have a recipe file which will generally fetches the
passwd.master from web and copy it to
/etc/passwd file of my rootfs .

But couldn't find any such process for /etc/shadow file

I have to disable one of the user account and that requires asterisk(*) to
be put in second column of user-specific line.

For example in /etc/shadow have to change

my_user::0:0....

to

my_ user:*:0:0...

+ Khem Raj here as he made most of work of shadow packaging in poky

Thanks
Rajan




On Sun, Nov 24, 2013 at 5:19 AM, Bernard Mentink <bmentink@gmail.com> wrote:

> Just make a /recipe-extended/ directory in your layer so it looks the same
> as the original. Then add a"files" directory with your new file, then add
> in a .bbappend file that
> looks for extra files in "files", then you are done.
>
> Have a look in other .bbappend of how to just add in new files, you will
> find lot's of examples in other layers ..
>
> Cheers,
> bernie
>
>
> On Sun, Nov 24, 2013 at 2:14 AM, rajan pathak <rajanpatha34@gmail.com>wrote:
>
>> I have to make some changes to my /etc/shadow file,
>>
>> I Can see shadow  file is from poky/meta/recipe-extended,so to change
>> this file
>> do I have to apply patch or what?
>>
>> Thanks
>> Rajan
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--047d7b33cac83ac2e004ebe96ae8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div><di=
v><div>Thanks Bernard<br><br></div>I tried patching the shadow file but cou=
ldn&#39;t make it work<br><br></div>My requirement is specific ,wanted to m=
odify /etc/shadow file of rootfs<br>
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
</div><div><br></div>Thanks<br></div>Rajan<br><div><div><div><div><div><div=
><div><div>=A0<br><div><div><div><br></div></div></div></div></div></div></=
div></div></div></div></div></div><div class=3D"gmail_extra"><br><br><div c=
lass=3D"gmail_quote">
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

<br><br><div class=3D"gmail_quote"><div><div class=3D"h5">On Sun, Nov 24, 2=
013 at 2:14 AM, rajan pathak <span dir=3D"ltr">&lt;<a href=3D"mailto:rajanp=
atha34@gmail.com" target=3D"_blank">rajanpatha34@gmail.com</a>&gt;</span> w=
rote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
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

--047d7b33cac83ac2e004ebe96ae8--
