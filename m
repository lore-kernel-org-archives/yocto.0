Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 14CB9E012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:16:30 -0800 (PST)
Received: by mail-ve0-f169.google.com with SMTP id 15so6718134vea.14
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:16:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=b21fTF0D2m4JdluFVImrbxl6gZuRyvVfzB8QCBQBkjU=;
	b=pb8lI51dQEnUOyf8SMkdcqRpBhqoJ+sgtxOrkzj/tpGbYKX/moi9AAC7KKQX5Q3m6Y
	zT/xKJ2aO+fG8HDTQ34C1lsIGjCN+r03SLpXUWeGXzFM0O0EUjSQCBCZVUljAxyC14JM
	aDhBAKJzznQzyu95Tb4MeXr5GpbOtwFrIuJl+7b7x/yzCuoLwsieOP5oCtn3MUaRbJ9u
	swSuSqhGFMlpeBX4+A/2C0JTCO4FU0rqPqezUxJ+DWp+x94AINK+8jidKEzp+4te8e6Z
	UaZb9oVMjsvV5YELnO8ZNTgdvouF8oshIhUR7lUjmWFOh+Khu0bMTN9rpttm6NEX6GMk
	gKHg==
X-Received: by 10.220.241.80 with SMTP id ld16mr25388539vcb.5.1361358989799;
	Wed, 20 Feb 2013 03:16:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.75.9 with HTTP; Wed, 20 Feb 2013 03:16:09 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <51238820.3080500@philipp-wagner.com>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<51238820.3080500@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 20 Feb 2013 13:16:09 +0200
Message-ID: <CAK18fxH2fx9vemkJsLtZxxxEuHft2by2eFOchVHn6p0v+KnS6A@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQn2EAubEO3XJxGl73qG/VdN/BrxY6bgiKqHZ7P/mFqXzaw5VuwIqRxjPYskPYxEpRJwoLF8
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/7] rpi-default-providers: Remove virtual/libgl provider
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
X-List-Received-Date: Wed, 20 Feb 2013 11:16:31 -0000
Content-Type: multipart/alternative; boundary=14dae9cfc850ffb00104d626163f

--14dae9cfc850ffb00104d626163f
Content-Type: text/plain; charset=ISO-8859-1

Thank you. You hint is OK and will apply patches with your suggestion.

Thanks.


On Tue, Feb 19, 2013 at 4:11 PM, Philipp Wagner <lists@philipp-wagner.com>wrote:

> Hi Andrei,
>
> I applied and tested all 7 patches and they work as the binary firmware
> did before. Maybe in a later patch a pkgconfig file can be added (I think
> it was there before, but I'm not using it yet, so I'm not really sure).
>
> I don't like the name "userland" (it's not really describing that we're
> actually talking about graphics libraries), but that's just a nitpick.
> Maybe it can be renamed to rpi-graphics-userland or something more
> descriptive like that?
>
> Philipp
>
> Am 09.02.2013 23:11, schrieb Andrei Gherzan:
>
>  There are no libgl binary shipped in raspberrypi firmware repo.
>>
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>   conf/machine/include/rpi-**default-providers.inc |    1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/conf/machine/include/rpi-**default-providers.inc
>> b/conf/machine/include/rpi-**default-providers.inc
>> index ce963b3..6abab60 100644
>> --- a/conf/machine/include/rpi-**default-providers.inc
>> +++ b/conf/machine/include/rpi-**default-providers.inc
>> @@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/**kernel = "linux-raspberrypi"
>>   PREFERRED_PROVIDER_virtual/**xserver = "xserver-xorg"
>>   PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>>   PREFERRED_PROVIDER_virtual/**libgles2 ?= "vc-graphics-hardfp"
>> -PREFERRED_PROVIDER_virtual/**libgl ?= "vc-graphics-hardfp"
>>   PREFERRED_PROVIDER_linux-libc-**headers ?= "linux-libc-headers-**
>> raspberrypi"
>>
>>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--14dae9cfc850ffb00104d626163f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you. You hint is OK and will apply patches with your=
 suggestion.=A0<div><br></div><div>Thanks.</div></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">On Tue, Feb 19, 2013 at 4:11 PM, P=
hilipp Wagner <span dir=3D"ltr">&lt;<a href=3D"mailto:lists@philipp-wagner.=
com" target=3D"_blank">lists@philipp-wagner.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Andrei,<br>
<br>
I applied and tested all 7 patches and they work as the binary firmware did=
 before. Maybe in a later patch a pkgconfig file can be added (I think it w=
as there before, but I&#39;m not using it yet, so I&#39;m not really sure).=
<br>


<br>
I don&#39;t like the name &quot;userland&quot; (it&#39;s not really describ=
ing that we&#39;re actually talking about graphics libraries), but that&#39=
;s just a nitpick. Maybe it can be renamed to rpi-graphics-userland or some=
thing more descriptive like that?<br>


<br>
Philipp<br>
<br>
Am 09.02.2013 23:11, schrieb Andrei Gherzan:<div class=3D"HOEnZb"><div clas=
s=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
There are no libgl binary shipped in raspberrypi firmware repo.<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" targ=
et=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0 conf/machine/include/rpi-<u></u>default-providers.inc | =A0 =A01 -<br>
=A0 1 file changed, 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rpi-<u></u>default-providers.inc b/conf/m=
achine/include/rpi-<u></u>default-providers.inc<br>
index ce963b3..6abab60 100644<br>
--- a/conf/machine/include/rpi-<u></u>default-providers.inc<br>
+++ b/conf/machine/include/rpi-<u></u>default-providers.inc<br>
@@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/<u></u>kernel =3D &quot;linux-ra=
spberrypi&quot;<br>
=A0 PREFERRED_PROVIDER_virtual/<u></u>xserver =3D &quot;xserver-xorg&quot;<=
br>
=A0 PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-graphics-hardfp&quot;<br>
=A0 PREFERRED_PROVIDER_virtual/<u></u>libgles2 ?=3D &quot;vc-graphics-hardf=
p&quot;<br>
-PREFERRED_PROVIDER_virtual/<u></u>libgl ?=3D &quot;vc-graphics-hardfp&quot=
;<br>
=A0 PREFERRED_PROVIDER_linux-libc-<u></u>headers ?=3D &quot;linux-libc-head=
ers-<u></u>raspberrypi&quot;<br>
<br>
</blockquote>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman=
&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--14dae9cfc850ffb00104d626163f--
