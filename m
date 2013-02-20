Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D1C8FE0144D
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:16:47 -0800 (PST)
Received: by mail-vb0-f52.google.com with SMTP id fa15so4795289vbb.25
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 03:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Y4yRKOjTlXjF5w0FQeOtpFliDwMlLI5f88NCQefLTr0=;
	b=NwcwF/k721dUHUme+zucU6XJidU2eW55NpGrVPtYMYI2LJkNiL0hQiesYervFrdNZr
	0Fxrz2atQkwe9u7cxvcdISf039GEXKtg8uCQuOMJwNrqIJtAdB3eVsGfMtT4kZR88lGi
	DdvacdqoEPgtlMBSY05Su3yxzJz+K85soskvGT0ga4Epq87rn89UDhJTm5br250EN/9t
	fq4Olkp3/ak0nruAFSggDC223Jpx5Qa+ZvJVKOJvrAh4fDZCZ/5doUBgERMGLAmwdeDW
	5LhCnT5FCf/HcFoHWqNAkiQ/I6P5ReFuqYkv/WDj3rT4DeWoMi+gs0V7YmIc5lk36sFO
	71wQ==
X-Received: by 10.52.26.40 with SMTP id i8mr22001313vdg.113.1361359006694;
	Wed, 20 Feb 2013 03:16:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.75.9 with HTTP; Wed, 20 Feb 2013 03:16:26 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <51238619.4010206@philipp-wagner.com>
References: <1360518927-20296-1-git-send-email-andrei@gherzan.ro>
	<51238619.4010206@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 20 Feb 2013 13:16:26 +0200
Message-ID: <CAK18fxFeUPynNQHfXninFirr2C=d7svFf5eLXxerSMHvk4QFtA@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQlxw26XNptgbouuZEn0wI5HEo2pAFbSxtyKobctB/dIRSw2X96/lZAXEiJNj3Qas9oUOHrT
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] rpi-first-run-wizard: Fix RDEPENDS warning
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
X-List-Received-Date: Wed, 20 Feb 2013 11:16:48 -0000
Content-Type: multipart/alternative; boundary=20cf307cfd96017c6404d62618fe

--20cf307cfd96017c6404d62618fe
Content-Type: text/plain; charset=ISO-8859-1

Thanks.


On Tue, Feb 19, 2013 at 4:03 PM, Philipp Wagner <lists@philipp-wagner.com>wrote:

> Am 10.02.2013 18:55, schrieb Andrei Gherzan:
>
>  WARNING: QA Issue: [...]/rpi-first-run-wizard.bb:
>> Variable RDEPENDS is set as not being package specific, please fix this.
>>
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>   recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>|    4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>b/recipes-extra/startup/
>> rpi-**first-run-wizard.bb <http://rpi-first-run-wizard.bb>
>> index c5cef7c..6ede56e 100644
>> --- a/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>
>> +++ b/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>
>> @@ -3,11 +3,11 @@ LICENSE = "GPLV2"
>>   LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;**md5=**
>> b234ee4d69f5fce4486a80fdaf4a42**63"
>>
>>   DEPENDS = "zenity dbus"
>> -RDEPENDS = "slim sudo zenity dbus"
>> +RDEPENDS_${PN} = "slim sudo zenity dbus"
>>
>>   COMPATIBLE_MACHINE = "raspberrypi"
>>
>> -PR = "r1"
>> +PR = "r2"
>>
>>   SRC_URI = " \
>>             file://LICENSE \
>>
>>
> I've applied this patch and it works as expected.
>
> Philipp
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307cfd96017c6404d62618fe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Tue, Feb 19, 2013 at 4:03 PM, Philipp Wagner <span dir=
=3D"ltr">&lt;<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">=
lists@philipp-wagner.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Am 10.02.2013 18:55, schrieb Andrei Gherzan:=
<div><div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
WARNING: QA Issue: [...]/<a href=3D"http://rpi-first-run-wizard.bb" target=
=3D"_blank">rpi-first-run-wizard.bb</a>:<br>
Variable RDEPENDS is set as not being package specific, please fix this.<br=
>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" targ=
et=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0 recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" target=
=3D"_blank">rpi-<u></u>first-run-wizard.bb</a> | =A0 =A04 ++--<br>
=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.b=
b" target=3D"_blank">rpi-<u></u>first-run-wizard.bb</a> b/recipes-extra/sta=
rtup/<a href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank">rpi-<u></=
u>first-run-wizard.bb</a><br>


index c5cef7c..6ede56e 100644<br>
--- a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-<u></u>first-run-wizard.bb</a><br>
+++ b/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-<u></u>first-run-wizard.bb</a><br>
@@ -3,11 +3,11 @@ LICENSE =3D &quot;GPLV2&quot;<br>
=A0 LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/LICENSE;<u></u>md5=3D<u></=
u>b234ee4d69f5fce4486a80fdaf4a42<u></u>63&quot;<br>
<br>
=A0 DEPENDS =3D &quot;zenity dbus&quot;<br>
-RDEPENDS =3D &quot;slim sudo zenity dbus&quot;<br>
+RDEPENDS_${PN} =3D &quot;slim sudo zenity dbus&quot;<br>
<br>
=A0 COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<br>
-PR =3D &quot;r1&quot;<br>
+PR =3D &quot;r2&quot;<br>
<br>
=A0 SRC_URI =3D &quot; \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://LICENSE \<br>
<br>
</blockquote>
<br></div></div>
I&#39;ve applied this patch and it works as expected.<span class=3D"HOEnZb"=
><font color=3D"#888888"><br>
<br>
Philipp<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--20cf307cfd96017c6404d62618fe--
