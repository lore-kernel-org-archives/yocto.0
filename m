Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E573DE0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:50:00 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id cy12so960823veb.6
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=PoLe+aI2CJlqkSHS90s43m21wR6PXGKKRiPO2XcsB6Q=;
	b=TLqsCENvBLsomHan71JlT4JFTxq3cBohJSsmi8mMnk+3jPmI9jx3KT94Niwp7Via3T
	r30QAXe3ch0BXkQGHkdACcVGpi2hFvbJ+we4fK+HLsiBa5Te1nX8ffNIklK0hnEL62Yy
	qUjQAsZFVdWGD88i5v2X8qkwW8IAalHSrNnDpbmCs9KNqQWZBM2C9N1pqoQM/ZLYyRxZ
	qZcC4JXY+w/mjxYokDNwQ1W0i2IUQ2TtnzPgrr2odcWut2hCSrpGwY2AlGFik5bfAYRd
	PuvF/IU1pYmTeq9XfpAOyvqPmuP0zbL5ybE1WoXe70u6hnTOmcaFCKyLi4GVlnWpyzTg
	8ghg==
X-Received: by 10.52.91.212 with SMTP id cg20mr7631767vdb.63.1363197000396;
	Wed, 13 Mar 2013 10:50:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:49:40 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxFeUPynNQHfXninFirr2C=d7svFf5eLXxerSMHvk4QFtA@mail.gmail.com>
References: <1360518927-20296-1-git-send-email-andrei@gherzan.ro>
	<51238619.4010206@philipp-wagner.com>
	<CAK18fxFeUPynNQHfXninFirr2C=d7svFf5eLXxerSMHvk4QFtA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:49:40 +0200
Message-ID: <CAK18fxEY9nJiR4JkEvzxqaYVG_5-cK6W3KKtsX7d0gPS_PpUVw@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQmqM6F6JonbRjAdhF0kf9QVFBD5zNLj1uwEOYhdtSh3eM9DhpGHjgmkYi6+62Z/TWYM9Kfw
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] rpi-first-run-wizard: Fix RDEPENDS warning
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
X-List-Received-Date: Wed, 13 Mar 2013 17:50:01 -0000
Content-Type: multipart/alternative; boundary=20cf307c9deef7bc9404d7d208f3

--20cf307c9deef7bc9404d7d208f3
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Wed, Feb 20, 2013 at 1:16 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Thanks.
>
>
> On Tue, Feb 19, 2013 at 4:03 PM, Philipp Wagner <lists@philipp-wagner.com>wrote:
>
>> Am 10.02.2013 18:55, schrieb Andrei Gherzan:
>>
>>  WARNING: QA Issue: [...]/rpi-first-run-wizard.bb:
>>> Variable RDEPENDS is set as not being package specific, please fix this.
>>>
>>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>>> ---
>>>   recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>|    4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>b/recipes-extra/startup/
>>> rpi-**first-run-wizard.bb <http://rpi-first-run-wizard.bb>
>>> index c5cef7c..6ede56e 100644
>>> --- a/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>
>>> +++ b/recipes-extra/startup/rpi-**first-run-wizard.bb<http://rpi-first-run-wizard.bb>
>>> @@ -3,11 +3,11 @@ LICENSE = "GPLV2"
>>>   LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;**md5=**
>>> b234ee4d69f5fce4486a80fdaf4a42**63"
>>>
>>>   DEPENDS = "zenity dbus"
>>> -RDEPENDS = "slim sudo zenity dbus"
>>> +RDEPENDS_${PN} = "slim sudo zenity dbus"
>>>
>>>   COMPATIBLE_MACHINE = "raspberrypi"
>>>
>>> -PR = "r1"
>>> +PR = "r2"
>>>
>>>   SRC_URI = " \
>>>             file://LICENSE \
>>>
>>>
>> I've applied this patch and it works as expected.
>>
>> Philipp
>>
>
>
>
> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307c9deef7bc9404d7d208f3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Feb 20, 2013 at 1:16 PM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks.</div><div class=3D"=
gmail_extra"><div><div class=3D"h5"><br><br><div class=3D"gmail_quote">On T=
ue, Feb 19, 2013 at 4:03 PM, Philipp Wagner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@philipp-wagner=
.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Am 10.02.2013 18:55, schrieb Andrei Gherzan:=
<div><div><br>
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
I&#39;ve applied this patch and it works as expected.<span><font color=3D"#=
888888"><br>
<br>
Philipp<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div></div=
></div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br><div dir=3D"lt=
r"><div style=3D"text-align:center"></div><div style=3D"text-align:center">=
<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium">


<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a hre=
f=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.74=
4.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162=
812" target=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:center=
"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-s=
ize:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--20cf307c9deef7bc9404d7d208f3--
