Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C1A9E00596; Mon,  9 Feb 2015 15:48:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1733BE00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 15:48:11 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id hm9so10133611wib.5
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 15:48:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=T3gp4KEw/WMMMadXQeTQ7Q3dLg+TRKl3jr+c9wdBYN4=;
	b=WEymzG0dr3qW9V0ZOAacbFJpOrxVuugU8SG66kk2IuAwUCfzB6ZEJf3jld7KhEVXgO
	rATuyfstur5xqn141jDTxgOz6/Pr8OdMuBfDY0pybxyI80aoXLmYxpjIusWD9ChQI5v8
	S3XAwf8cwXkXGROMmY9he8g6hpZv2B4Nb8Xv8P96Nkq1d0H4WFVSi+nbJYEPmWmPQh31
	/tmedRiHZ3zv43WgGaEYGvVIsqC1aYMvnku/dFdJ3OK8LRoCipwdwVIptDfkzi54fcz8
	gzgKJqZLxbiZWD9T6W7GUMyXYXmZGkQK3MZ/NwbdxKs52zVsR/FFamoW6t9HtEvevA/L
	MM9A==
X-Gm-Message-State: ALoCoQltBHPyEsibwG1yYXMJvLWWpE+QY1uvnFNXzF/onbuQo6kyMUT3skkYVMmuYWTwL3Lhtxch
X-Received: by 10.194.86.135 with SMTP id p7mr47966797wjz.89.1423525690344;
	Mon, 09 Feb 2015 15:48:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.162.2 with HTTP; Mon, 9 Feb 2015 15:47:50 -0800 (PST)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <54D92F56.6000202@technux.se>
References: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
	<54D92F56.6000202@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Feb 2015 00:47:50 +0100
Message-ID: <CAK18fxGbpqx8AVksBhgCDbkvXRP_WsxL-nT1eTSWNsWKmaPrmA@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Refactor kernel recipes
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
X-List-Received-Date: Mon, 09 Feb 2015 23:48:15 -0000
Content-Type: multipart/alternative; boundary=089e0102e4981a1ae7050eb06788

--089e0102e4981a1ae7050eb06788
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 9, 2015 at 11:06 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

> Hmm the formatting in my previous mail looks weird, I try to send this
> again.. See my comment inline.
>
> Cheers
> Petter
>
>
> On 02/08/2015 12:58 PM, Andrei Gherzan wrote:
>
>> We use this to simplify the update process. Updating a kernel version
>> will not
>> require renaming the recipe but only tweaking LINUX_VERSION.
>>
>> Update kernel version:
>>          - bump SRCREV
>>          - bump LINUX_VERSION if needed
>>
>> [Support #26]
>>
>> Change-Id: I7565ddd1f03cc34c34aa5da92664a0057b415c9a
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>   recipes-kernel/linux/linux-raspberrypi.inc        | 2 +-
>>   recipes-kernel/linux/linux-raspberrypi_3.10.38.bb | 6 ------
>>   recipes-kernel/linux/linux-raspberrypi_3.10.bb    | 8 ++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.12.36.bb | 6 ------
>>   recipes-kernel/linux/linux-raspberrypi_3.12.bb    | 8 ++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.16.5.bb  | 6 ------
>>   recipes-kernel/linux/linux-raspberrypi_3.16.bb    | 8 ++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.18.5.bb  | 5 -----
>>   recipes-kernel/linux/linux-raspberrypi_3.18.bb    | 8 ++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.6.11.bb  | 6 ------
>>   recipes-kernel/linux/linux-raspberrypi_3.6.bb     | 8 ++++++++
>>   recipes-kernel/linux/linux-raspberrypi_3.8.13.bb  | 6 ------
>>   recipes-kernel/linux/linux-raspberrypi_3.8.bb     | 8 ++++++++
>>   13 files changed, 49 insertions(+), 36 deletions(-)
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.bb
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.5.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.18.bb
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
>>   delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>>   create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
>> b/recipes-kernel/linux/linux-raspberrypi.inc
>> index ff0c5ce..c00128d 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -11,7 +11,7 @@ SRC_URI +=3D " \
>>     COMPATIBLE_MACHINE =3D "raspberrypi"
>>   -PV_append =3D "+git${SRCREV}"
>> +PV =3D "${LINUX_VERSION}+git${SRCREV}"
>>     # NOTE: For now we pull in the default config from the RPi kernel GI=
T
>> tree.
>>   KERNEL_DEFCONFIG =3D "bcmrpi_defconfig"
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
>> b/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
>> deleted file mode 100644
>> index a0c5012..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.10.38.bb
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -SRCREV =3D "1b49b450222df26e4abf7abb6d9302f72b2ed386"
>> -SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3D
>> rpi-3.10.y \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> -
>> -require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.bb
>> b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
>> new file mode 100644
>> index 0000000..e5d5bf2
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
>> @@ -0,0 +1,8 @@
>> +LINUX_VERSION ?=3D "3.10.38"
>> +
>> +SRCREV =3D "1b49b450222df26e4abf7abb6d9302f72b2ed386"
>> +SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3D
>> rpi-3.10.y \
>> +           file://sl030raspberrypii2ckernel.patch \
>> +          "
>> +
>> +require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
>> b/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
>> deleted file mode 100644
>> index e9e9ad7..0000000
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.12.36.bb
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -SRCREV =3D "90fa5df724d147564149c7b79cb1ffc571a345ec"
>> -SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3D
>> rpi-3.12.y \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> -
>> -require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.bb
>> b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
>> new file mode 100644
>> index 0000000..08be83e
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.bb
>> @@ -0,0 +1,8 @@
>> +LINUX_VERSION ?=3D "3.12.26"
>> +
>>
>
> Small typo here. It should be "3.12.36".


Good catch. Thanks.



--=20
*Andrei Gherzan*

--089e0102e4981a1ae7050eb06788
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Feb 9, 2015 at 11:06 PM, Petter Mab=C3=A4cker <span dir=3D"ltr">&lt=
;<a href=3D"mailto:petter@technux.se" target=3D"_blank">petter@technux.se</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hmm the formatting i=
n my previous mail looks weird, I try to send this again.. See my comment i=
nline.<br>
<br>
Cheers<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Petter</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 02/08/2015 12:58 PM, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
We use this to simplify the update process. Updating a kernel version will =
not<br>
require renaming the recipe but only tweaking LINUX_VERSION.<br>
<br>
Update kernel version:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- bump SRCREV<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- bump LINUX_VERSION if needed<br>
<br>
[Support #26]<br>
<br>
Change-Id: I7565ddd1f03cc34c34aa5da92664a<u></u>0057b415c9a<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" targ=
et=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
---<br>
=C2=A0 recipes-kernel/linux/linux-<u></u>raspberrypi.inc=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 2 +-<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.38.bb"=
 target=3D"_blank">linux-<u></u>raspberrypi_3.10.38.bb</a> | 6 ------<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.bb" ta=
rget=3D"_blank">linux-<u></u>raspberrypi_3.10.bb</a>=C2=A0 =C2=A0 | 8 +++++=
+++<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.36.bb"=
 target=3D"_blank">linux-<u></u>raspberrypi_3.12.36.bb</a> | 6 ------<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.bb" ta=
rget=3D"_blank">linux-<u></u>raspberrypi_3.12.bb</a>=C2=A0 =C2=A0 | 8 +++++=
+++<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.16.5.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.16.5.bb</a>=C2=A0 | 6 ------<b=
r>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.16.bb" ta=
rget=3D"_blank">linux-<u></u>raspberrypi_3.16.bb</a>=C2=A0 =C2=A0 | 8 +++++=
+++<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.5.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.18.5.bb</a>=C2=A0 | 5 -----<br=
>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb" ta=
rget=3D"_blank">linux-<u></u>raspberrypi_3.18.bb</a>=C2=A0 =C2=A0 | 8 +++++=
+++<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.6.11.bb</a>=C2=A0 | 6 ------<b=
r>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.bb" tar=
get=3D"_blank">linux-<u></u>raspberrypi_3.6.bb</a>=C2=A0 =C2=A0 =C2=A0| 8 +=
+++++++<br>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.8.13.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.8.13.bb</a>=C2=A0 | 6 ------<b=
r>
=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.8.bb" tar=
get=3D"_blank">linux-<u></u>raspberrypi_3.8.bb</a>=C2=A0 =C2=A0 =C2=A0| 8 +=
+++++++<br>
=C2=A0 13 files changed, 49 insertions(+), 36 deletions(-)<br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.10.38.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.10.38.bb</=
a><br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.10.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.10.bb</a><br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.12.36.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.36.bb</=
a><br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.12.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.bb</a><br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.16.5.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.16.5.bb</a>=
<br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.16.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.16.bb</a><br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.18.5.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.18.5.bb</a>=
<br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.18.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.18.bb</a><br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.6.11.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.6.11.bb</a>=
<br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.6.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.6.bb</a><br>
=C2=A0 delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.8.13.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.8.13.bb</a>=
<br>
=C2=A0 create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-rasp=
berrypi_3.8.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.8.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/linux-<u></u>raspberrypi.inc b/recipes-ke=
rnel/linux/linux-<u></u>raspberrypi.inc<br>
index ff0c5ce..c00128d 100644<br>
--- a/recipes-kernel/linux/linux-<u></u>raspberrypi.inc<br>
+++ b/recipes-kernel/linux/linux-<u></u>raspberrypi.inc<br>
@@ -11,7 +11,7 @@ SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
=C2=A0 -PV_append =3D &quot;+git${SRCREV}&quot;<br>
+PV =3D &quot;${LINUX_VERSION}+git${SRCREV}<u></u>&quot;<br>
=C2=A0 =C2=A0 # NOTE: For now we pull in the default config from the RPi ke=
rnel GIT tree.<br>
=C2=A0 KERNEL_DEFCONFIG =3D &quot;bcmrpi_defconfig&quot;<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.=
38.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.10.38.bb</a> b/recipes-=
kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.38.bb" target=3D"_bla=
nk">linux-<u></u>raspberrypi_3.10.38.bb</a><br>
deleted file mode 100644<br>
index a0c5012..0000000<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.38.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.10.38.bb</a><br>
+++ /dev/null<br>
@@ -1,6 +0,0 @@<br>
-SRCREV =3D &quot;<u></u>1b49b450222df26e4abf7abb6d9302<u></u>f72b2ed386&qu=
ot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.10.y" target=3D"_blank">github.com/raspberry=
pi/<u></u>linux.git;protocol=3Dgit;branch=3D<u></u>rpi-3.10.y</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://<u></u>sl030raspberrypii2c=
kernel.<u></u>patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
-<br>
-require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.=
bb" target=3D"_blank">linux-<u></u>raspberrypi_3.10.bb</a> b/recipes-kernel=
/linux/<a href=3D"http://linux-raspberrypi_3.10.bb" target=3D"_blank">linux=
-<u></u>raspberrypi_3.10.bb</a><br>
new file mode 100644<br>
index 0000000..e5d5bf2<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.bb" tar=
get=3D"_blank">linux-<u></u>raspberrypi_3.10.bb</a><br>
@@ -0,0 +1,8 @@<br>
+LINUX_VERSION ?=3D &quot;3.10.38&quot;<br>
+<br>
+SRCREV =3D &quot;<u></u>1b49b450222df26e4abf7abb6d9302<u></u>f72b2ed386&qu=
ot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.10.y" target=3D"_blank">github.com/raspberry=
pi/<u></u>linux.git;protocol=3Dgit;branch=3D<u></u>rpi-3.10.y</a> \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://<u></u>sl030raspberrypii2c=
kernel.<u></u>patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
+<br>
+require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
36.bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.36.bb</a> b/recipes-=
kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.36.bb" target=3D"_bla=
nk">linux-<u></u>raspberrypi_3.12.36.bb</a><br>
deleted file mode 100644<br>
index e9e9ad7..0000000<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.36.bb" =
target=3D"_blank">linux-<u></u>raspberrypi_3.12.36.bb</a><br>
+++ /dev/null<br>
@@ -1,6 +0,0 @@<br>
-SRCREV =3D &quot;<u></u>90fa5df724d147564149c7b79cb1ff<u></u>c571a345ec&qu=
ot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">github.com/raspberry=
pi/<u></u>linux.git;protocol=3Dgit;branch=3D<u></u>rpi-3.12.y</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://<u></u>sl030raspberrypii2c=
kernel.<u></u>patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
-<br>
-require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
bb" target=3D"_blank">linux-<u></u>raspberrypi_3.12.bb</a> b/recipes-kernel=
/linux/<a href=3D"http://linux-raspberrypi_3.12.bb" target=3D"_blank">linux=
-<u></u>raspberrypi_3.12.bb</a><br>
new file mode 100644<br>
index 0000000..08be83e<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.bb" tar=
get=3D"_blank">linux-<u></u>raspberrypi_3.12.bb</a><br>
@@ -0,0 +1,8 @@<br>
+LINUX_VERSION ?=3D &quot;3.12.26&quot;<br>
+<br>
</blockquote>
<br></div></div><span class=3D"im HOEnZb">
Small typo here. It should be &quot;3.12.36&quot;.</span></blockquote><div>=
<br></div><div>Good catch. Thanks.=C2=A0</div></div><br><br clear=3D"all"><=
div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div s=
tyle=3D"text-align:center"></div><div style=3D"text-align:center"><div alig=
n=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51=
);text-align:center">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--089e0102e4981a1ae7050eb06788--
