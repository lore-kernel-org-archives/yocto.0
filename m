Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08267E01848
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:17:48 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id hi5so1894817wib.1
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:17:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3ec5a7XHHqJcoWl+9uQyxwivT2e4PLJdIFntsgfbJPM=;
	b=PEmthdrn9Po82bKpnre0fGCD5aNrBHyaXBzYuUAQCX5BpAxIbadVkoXA8ThFRjsfuM
	JPw6a1fCiJWi/P3wJjJPNTSZHHN6D9LktAdud2ngTbEYoJEjW8Sy7r0gDooQ5u09Yp65
	S6gRkc0RHncwOajlcORMJGBrEMYdlT+RvxvEKXhg5vgaw6uNy3DtFRLXbhtAKm7CZxbT
	1bvOJKuwKidxJ3ep/d2JGFtXzYOQZnkSuOcrqx6ucZCj4tgwPfWUpOP8zU2d/msbD99z
	AEsP+2tnF4ndOQqMt9ZaQOyGQqkwlP22t2Mv8bodDbCxkWU30Sa1B5ELKcdMcCFnJz8h
	DXoA==
X-Gm-Message-State: ALoCoQnBxTCGaknV6GliOiLu/C77kXaMvQPwOVmraw9bno2PDcAmAbMEpiEhLZIRXllT+4tjMzVC
X-Received: by 10.180.11.37 with SMTP id n5mr3251171wib.25.1384442267496; Thu,
	14 Nov 2013 07:17:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Thu, 14 Nov 2013 07:17:27 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxHAL=kuzgo0xDbaV5XBhqqK-reS=VG-U0zxf12uqE7A9w@mail.gmail.com>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-3-git-send-email-andrei@gherzan.ro>
	<CAK18fxHAL=kuzgo0xDbaV5XBhqqK-reS=VG-U0zxf12uqE7A9w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Nov 2013 17:17:27 +0200
Message-ID: <CAK18fxET=HJYvQ2qLz+i-W5sgid0y-EmCAjNY7whFK6KvHK+DQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 3/6] linux-raspberrypi: Add version 3.10.18 and 3.12.0
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
X-List-Received-Date: Thu, 14 Nov 2013 15:17:49 -0000
Content-Type: multipart/alternative; boundary=001a11c25b4891155804eb249571

--001a11c25b4891155804eb249571
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:26 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
>
> On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 4 ++++
>>  recipes-kernel/linux/linux-raspberrypi_3.12.0.bb  | 4 ++++
>>  2 files changed, 8 insertions(+)
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bbb/recipes-kernel/linux/
>> linux-raspberrypi_3.10.18.bb
>> new file mode 100644
>> index 0000000..399a978
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
>> @@ -0,0 +1,4 @@
>> +SRCREV = "ae937f99fee8a37f2ddd7270f6bcc0e497e8c903"
>> +SRC_URI = "git://
>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y"
>> +
>> +require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bbb/recipes-kernel/linux/
>> linux-raspberrypi_3.12.0.bb
>> new file mode 100644
>> index 0000000..25877fe
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
>> @@ -0,0 +1,4 @@
>> +SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
>> +SRC_URI = "git://
>> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y"
>> +
>> +require linux-raspberrypi.inc
>> --
>> 1.8.1.4
>>
>>
> Added a new patchset which adds file://sl030raspberrypii2ckernel.patch to
> these kernel versions too: https://review.gherzan.ro:8443/#/c/14/
>
> ag
>

Merged.

ag

--001a11c25b4891155804eb249571
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:26 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><div><div =
class=3D"h5">

<br><br><div class=3D"gmail_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei =
Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" targ=
et=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" tar=
get=3D"_blank">linux-raspberrypi_3.10.18.bb</a> | 4 ++++<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" targ=
et=3D"_blank">linux-raspberrypi_3.12.0.bb</a> =A0| 4 ++++<br>
=A02 files changed, 8 insertions(+)<br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.10.18.bb" target=3D"_blank">linux-raspberrypi_3.10.18.bb</a><br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.12.0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.=
18.bb" target=3D"_blank">linux-raspberrypi_3.10.18.bb</a> b/recipes-kernel/=
linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" target=3D"_blank">lin=
ux-raspberrypi_3.10.18.bb</a><br>



new file mode 100644<br>
index 0000000..399a978<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" =
target=3D"_blank">linux-raspberrypi_3.10.18.bb</a><br>
@@ -0,0 +1,4 @@<br>
+SRCREV =3D &quot;ae937f99fee8a37f2ddd7270f6bcc0e497e8c903&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.10.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.10.y</a>&quot;<br>
+<br>
+require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">linux-=
raspberrypi_3.12.0.bb</a><br>



new file mode 100644<br>
index 0000000..25877fe<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" t=
arget=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
@@ -0,0 +1,4 @@<br>
+SRCREV =3D &quot;839f349b6ed2a63a2bff0b5f0d718a7b07ca2316&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.12.y</a>&quot;<br>
+<br>
+require linux-raspberrypi.inc<br>
<span><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br></div></div>Added a new patchset which=
 adds=A0file://sl030raspberrypii2ckernel.patch to these kernel versions too=
:=A0<a href=3D"https://review.gherzan.ro:8443/#/c/14/" target=3D"_blank">ht=
tps://review.gherzan.ro:8443/#/c/14/</a></div>

<span class=3D""><font color=3D"#888888">
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">ag</div></f=
ont></span></div>
</blockquote></div><br><div class=3D"gmail_extra">Merged.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">ag</div>
</div></div>

--001a11c25b4891155804eb249571--
