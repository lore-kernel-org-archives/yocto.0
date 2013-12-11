Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB557E007D5
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:23:39 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so6708429wgh.26
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:23:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BEyhkP3cNCrpwLs3hPX0jlIlGHYIa5HEX93z+rlsqOc=;
	b=ARfENBhj7l5unHRiu+BgKoO4s/JVRp6ijAwDDgsLrtg6mh4nGLV6Doz+puEE22pnml
	ulOX9MoAwptozGNBfs3mKz0Ol1stgGFsRXejkVbzQjF3WQ7ktCnR+dCUe1uqHmEjWJiZ
	osrJ+EFwbZak19hISJ+aXkfTZi1hhZSM+Kndpsj1rHY/tSZQIWz7LClPECUtv+BOOCO2
	SsZCJJQaxW/sXw2+B3p2foS/Fa8NmoFX7JmMd5X2PLEENHuSpYBcGGXJfsYGiIasK+NZ
	ZGEfb0ZhrGWbENLlWRMQ1pPwOayW/GHJ0n0BPWJJNtBIAGEZP5oz9ePvpNALnp7UAH+y
	5Uew==
X-Gm-Message-State: ALoCoQlJAfhVpEcg6Qroihc2VCH9jAxDNeWpCT14C0/2rQe5xMVyRpsw41qh+gcWVZMOzp4aUj9z
X-Received: by 10.180.103.193 with SMTP id fy1mr26097523wib.10.1386786218171; 
	Wed, 11 Dec 2013 10:23:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Wed, 11 Dec 2013 10:23:18 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <52A8AB88.8000107@mlbassoc.com>
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>
	<52A8AB88.8000107@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Dec 2013 20:23:18 +0200
Message-ID: <CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux: Update to 3.12.3 (latest RPI upstream)
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
X-List-Received-Date: Wed, 11 Dec 2013 18:23:40 -0000
Content-Type: multipart/alternative; boundary=f46d04428e3ae9f61c04ed465333

--f46d04428e3ae9f61c04ed465333
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-12-11 11:08, Andrei Gherzan wrote:
>
>>
>>
>>
>> On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com <mailto:
>> lists@philipp-wagner.com>> wrote:
>>
>>     From: Philipp Wagner <mail@philipp-wagner.com <mailto:
>> mail@philipp-wagner.com>>
>>
>>     Signed-off-by: Philipp Wagner <mail@philipp-wagner.com <mailto:
>> mail@philipp-wagner.com>>
>>     ---
>>       recipes-kernel/linux/linux-raspberrypi_3.12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb> | 6 ------
>>       recipes-kernel/linux/linux-raspberrypi_3.12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb> | 6 ++++++
>>
>>       2 files changed, 6 insertions(+), 6 deletions(-)
>>       delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb<
>> http://linux-raspberrypi_3.12.0.bb>
>>       create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.3.bb<
>> http://linux-raspberrypi_3.12.3.bb>
>>
>>     diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb> b/recipes-kernel/linux/linux-
>> raspberrypi_3.12.0.bb
>>     <http://linux-raspberrypi_3.12.0.bb>
>>
>>     deleted file mode 100644
>>     index 3631da5..0000000
>>     --- a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb>
>>
>>     +++ /dev/null
>>     @@ -1,6 +0,0 @@
>>     -SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
>>     -SRC_URI = "git://github.com/raspberrypi/
>> linux.git;protocol=git;branch=rpi-3.12.y <http://github.com/
>> raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y> \
>>
>>     -           file://sl030raspberrypii2ckernel.patch \
>>     -          "
>>     -
>>     -require linux-raspberrypi.inc
>>     diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb> b/recipes-kernel/linux/linux-
>> raspberrypi_3.12.3.bb
>>     <http://linux-raspberrypi_3.12.3.bb>
>>
>>     new file mode 100644
>>     index 0000000..304c1ad
>>     --- /dev/null
>>     +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb>
>>
>>     @@ -0,0 +1,6 @@
>>     +SRCREV = "7dac37b9865ab51f7a68b7703bf6792b698fee1b"
>>
>>
>>
>> As pointed in https://review.gherzan.ro:8443/#/c/27/, it seems this
>> SRCREV is invalid.
>>
>
> Since that note has little detail, are you sure that this is not
> just a case where the desired SRCREV is on a branch other than 'master'?
> With the latest bitbake master, you have to explicitly specify the branch
> if the desired revision is on a different branch.


I know. But the branch is already specified in SRC_URI. So most probably
upstream sqashed the repo?
---
SRC_URI = "git://
github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
---

-- 
*ag*

--f46d04428e3ae9f61c04ed465333
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On 2013-12-11 11:08, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
<br>
<br>
On Sun, Dec 8, 2013 at 2:17 PM, &lt;<a href=3D"mailto:lists@philipp-wagner.=
com" target=3D"_blank">lists@philipp-wagner.com</a> &lt;mailto:<a href=3D"m=
ailto:lists@philipp-wagner.com" target=3D"_blank">lists@philipp-wagner.<u><=
/u>com</a>&gt;&gt; wrote:<br>


<br>
=A0 =A0 From: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wagner.com"=
 target=3D"_blank">mail@philipp-wagner.com</a> &lt;mailto:<a href=3D"mailto=
:mail@philipp-wagner.com" target=3D"_blank">mail@philipp-wagner.<u></u>com<=
/a>&gt;&gt;<br>


<br>
=A0 =A0 Signed-off-by: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wa=
gner.com" target=3D"_blank">mail@philipp-wagner.com</a> &lt;mailto:<a href=
=3D"mailto:mail@philipp-wagner.com" target=3D"_blank">mail@philipp-wagner.<=
u></u>com</a>&gt;&gt;<br>


=A0 =A0 ---<br>
=A0 =A0 =A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0=
.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.0.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.0.bb</a>&gt; | 6 ------<br>


=A0 =A0 =A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.3=
.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.3.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.3.bb</a>&gt; | 6 ++++++<div class=3D"im">

<br>
=A0 =A0 =A0 2 files changed, 6 insertions(+), 6 deletions(-)<br></div>
=A0 =A0 =A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux=
-raspberrypi_3.12.0.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.0.b=
b</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">=
http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt;<br>


=A0 =A0 =A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux=
-raspberrypi_3.12.3.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.3.b=
b</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">=
http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt;<br>


<br>
=A0 =A0 diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberry=
pi_3.12.0.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.0.bb</a> &lt;=
<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">http://lin=
ux-raspberrypi_3.<u></u>12.0.bb</a>&gt; b/recipes-kernel/linux/<a href=3D"h=
ttp://linux-raspberrypi_3.12.0.bb" target=3D"_blank">linux-<u></u>raspberry=
pi_3.12.0.bb</a><br>


=A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank=
">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt;<div class=3D"im"><br>
=A0 =A0 deleted file mode 100644<br>
=A0 =A0 index 3631da5..0000000<br></div>
=A0 =A0 --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12=
.0.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.0.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.0.bb</a>&gt;<div class=3D"im">

<br>
=A0 =A0 +++ /dev/null<br>
=A0 =A0 @@ -1,6 +0,0 @@<br>
=A0 =A0 -SRCREV =3D &quot;<u></u>839f349b6ed2a63a2bff0b5f0d718a<u></u>7b07c=
a2316&quot;<br></div>
=A0 =A0 -SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/l=
inux.git;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">github.com/r=
aspberrypi/<u></u>linux.git;protocol=3Dgit;branch=3D<u></u>rpi-3.12.y</a> &=
lt;<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-3.12.y" target=3D"_blank">http://github.com/<u></u>raspberrypi/linux=
.git;<u></u>protocol=3Dgit;branch=3Drpi-3.12.y</a><u></u>&gt; \<div class=
=3D"im">

<br>
=A0 =A0 - =A0 =A0 =A0 =A0 =A0 file://<u></u>sl030raspberrypii2ckernel.<u></=
u>patch \<br>
=A0 =A0 - =A0 =A0 =A0 =A0 =A0&quot;<br>
=A0 =A0 -<br>
=A0 =A0 -require linux-raspberrypi.inc<br></div>
=A0 =A0 diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberry=
pi_3.12.3.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.3.bb</a> &lt;=
<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">http://lin=
ux-raspberrypi_3.<u></u>12.3.bb</a>&gt; b/recipes-kernel/linux/<a href=3D"h=
ttp://linux-raspberrypi_3.12.3.bb" target=3D"_blank">linux-<u></u>raspberry=
pi_3.12.3.bb</a><br>


=A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank=
">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt;<div class=3D"im"><br>
=A0 =A0 new file mode 100644<br>
=A0 =A0 index 0000000..304c1ad<br>
=A0 =A0 --- /dev/null<br></div>
=A0 =A0 +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12=
.3.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.3.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.3.bb</a>&gt;<div class=3D"im">

<br>
=A0 =A0 @@ -0,0 +1,6 @@<br>
=A0 =A0 +SRCREV =3D &quot;<u></u>7dac37b9865ab51f7a68b7703bf679<u></u>2b698=
fee1b&quot;<br>
<br>
<br>
<br>
As pointed in <a href=3D"https://review.gherzan.ro:8443/#/c/27/" target=3D"=
_blank">https://review.gherzan.ro:<u></u>8443/#/c/27/</a>, it seems this SR=
CREV is invalid.<br>
</div></blockquote>
<br>
Since that note has little detail, are you sure that this is not<br>
just a case where the desired SRCREV is on a branch other than &#39;master&=
#39;?<br>
With the latest bitbake master, you have to explicitly specify the branch<b=
r>
if the desired revision is on a different branch.</blockquote><div><br></di=
v><div>I know. But the branch is already specified in SRC_URI. So most prob=
ably upstream sqashed the repo?</div><div>---</div><div>SRC_URI =3D &quot;g=
it://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-3.12.y">github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Dr=
pi-3.12.y</a> \=A0<br>

</div></div>---<br clear=3D"all"><div><br></div>--=A0</div><div class=3D"gm=
ail_extra"><b style=3D"color:rgb(51,51,51);font-family:Arial;text-align:cen=
ter">ag</b>
</div></div>

--f46d04428e3ae9f61c04ed465333--
