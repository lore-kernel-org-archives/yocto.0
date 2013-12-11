Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F6AE007D9
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:14:02 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id k14so6848349wgh.8
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 11:14:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kgBqx2jjk/3BM1yCe2tkhY+kgv1vzwRQD+Kii93HsZQ=;
	b=QlIMwuJi6GdkGYAArFTvmua2yu/VDnr7FYwn6YD9ZrASX9EjiKLAmoifTUsarNfKX/
	OikuxxTp8yZeehkQD3cjart+5e2cBrfZVbH7ZRZPulOtZBHkyZ3GFOrcBHan2f4yxBJ4
	lyFmlYFEPLOCAVcsXTQTyGgD4JrXFyiqM9bDW/d0B6mBfJ5N0sBgOsF1STquJhdCbZ/c
	WyG8OYDspITC7hAg5rOF5wD8jcGMKoI/0TLtyLorWj2bm2n+Ni9kkRtzQlRRLq6K9L9j
	DKtYj/A+P41pQsQcMvq1KK1ROLyrewpHoz+xLUMnuWss4mOJvBmZY3KXbLfFQtioSm7Q
	AEzg==
X-Gm-Message-State: ALoCoQmoQUZbMOSydOT1TSxPPaQNmSXjz43OW23eqVEjqT1fOeLE4xAhc9kiZYgIzyBUkKmapGaD
X-Received: by 10.180.149.175 with SMTP id ub15mr4441084wib.10.1386789239165; 
	Wed, 11 Dec 2013 11:13:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Wed, 11 Dec 2013 11:13:39 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <52A8B299.3000704@mlbassoc.com>
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>
	<52A8AB88.8000107@mlbassoc.com>
	<CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
	<52A8B299.3000704@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Dec 2013 21:13:39 +0200
Message-ID: <CAK18fxF9b7Px_7txG5+whtZ6iwwb78iDLaXx6+z2a6XR3t-o_w@mail.gmail.com>
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
X-List-Received-Date: Wed, 11 Dec 2013 19:14:05 -0000
Content-Type: multipart/alternative; boundary=001a11c38118faad3504ed470706

--001a11c38118faad3504ed470706
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Dec 11, 2013 at 8:44 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-12-11 11:23, Andrei Gherzan wrote:
>
>>
>>
>>
>> On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2013-12-11 11:08, Andrei Gherzan wrote:
>>
>>
>>
>>
>>         On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com<mailto:
>> lists@philipp-wagner.com> <mailto:lists@philipp-wagner.__com <mailto:
>> lists@philipp-wagner.com>>> wrote:
>>
>>              From: Philipp Wagner <mail@philipp-wagner.com <mailto:
>> mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com <mailto:
>> mail@philipp-wagner.com>>>
>>
>>              Signed-off-by: Philipp Wagner <mail@philipp-wagner.com<mailto:
>> mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com <mailto:
>> mail@philipp-wagner.com>>>
>>              ---
>>                recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb<
>> http://linux-raspberrypi_3.12.0.bb>> |
>>         6 ------
>>                recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb<
>> http://linux-raspberrypi_3.12.3.bb>> |
>>
>>         6 ++++++
>>
>>                2 files changed, 6 insertions(+), 6 deletions(-)
>>                delete mode 100644 recipes-kernel/linux/linux-__
>> raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <
>> http://linux-raspberrypi_3.__12.0.bb
>>         <http://linux-raspberrypi_3.12.0.bb>>
>>                create mode 100644 recipes-kernel/linux/linux-__
>> raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <
>> http://linux-raspberrypi_3.__12.3.bb
>>         <http://linux-raspberrypi_3.12.3.bb>>
>>
>>              diff --git a/recipes-kernel/linux/linux-_
>> _raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <
>> http://linux-raspberrypi_3.__12.0.bb
>>         <http://linux-raspberrypi_3.12.0.bb>> b/recipes-kernel/linux/
>> linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb>
>>              <http://linux-raspberrypi_3.__12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb>>
>>
>>
>>              deleted file mode 100644
>>              index 3631da5..0000000
>>              --- a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <
>> http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb<
>> http://linux-raspberrypi_3.12.0.bb>>
>>
>>
>>              +++ /dev/null
>>              @@ -1,6 +0,0 @@
>>              -SRCREV = "__839f349b6ed2a63a2bff0b5f0d718a__7b07ca2316"
>>              -SRC_URI = "git://github.com/raspberrypi/
>> __linux.git;protocol=git;branch=__rpi-3.12.y <http://github.com/
>> raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y>
>>         <http://github.com/__raspberrypi/linux.git;__
>> protocol=git;branch=rpi-3.12.y <http://github.com/raspberrypi/linux.git;
>> protocol=git;branch=rpi-3.12.y>__> \
>>
>>              -           file://__sl030raspberrypii2ckernel.__patch \
>>              -          "
>>              -
>>              -require linux-raspberrypi.inc
>>              diff --git a/recipes-kernel/linux/linux-_
>> _raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <
>> http://linux-raspberrypi_3.__12.3.bb
>>         <http://linux-raspberrypi_3.12.3.bb>> b/recipes-kernel/linux/
>> linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb>
>>              <http://linux-raspberrypi_3.__12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb>>
>>
>>
>>              new file mode 100644
>>              index 0000000..304c1ad
>>              --- /dev/null
>>              +++ b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <
>> http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb<
>> http://linux-raspberrypi_3.12.3.bb>>
>>
>>              @@ -0,0 +1,6 @@
>>              +SRCREV = "__7dac37b9865ab51f7a68b7703bf679__2b698fee1b"
>>
>>
>>
>>         As pointed in https://review.gherzan.ro:__8443/#/c/27/ <
>> https://review.gherzan.ro:8443/#/c/27/>, it seems this SRCREV is invalid.
>>
>>
>>
>>     Since that note has little detail, are you sure that this is not
>>     just a case where the desired SRCREV is on a branch other than
>> 'master'?
>>     With the latest bitbake master, you have to explicitly specify the
>> branch
>>     if the desired revision is on a different branch.
>>
>>
>> I know. But the branch is already specified in SRC_URI. So most probably
>> upstream sqashed the repo?
>>
>
> Indeed, I just checked the repo and it's not there.
>
> Looks like the correct rev might be 9fbb114990c409406ae20c56871727
> ff8d4fa6ca
> I may give this a go as it has V4L2 drivers for my camera which I'm anxious
> to get going with Yocto :-)


Nice. Christmas came earlier, right?
Thanks.

-- 
*ag*

--001a11c38118faad3504ed470706
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Dec 11, 2013 at 8:44 PM, Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 2013-12-11 11:23, Andrei Gherzan wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
<br>
On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlb=
assoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"ma=
ilto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wro=
te:<br>


<br>
=A0 =A0 On 2013-12-11 11:08, Andrei Gherzan wrote:<br>
<br>
<br>
<br>
<br></div>
=A0 =A0 =A0 =A0 On Sun, Dec 8, 2013 at 2:17 PM, &lt;<a href=3D"mailto:lists=
@philipp-wagner.com" target=3D"_blank">lists@philipp-wagner.com</a> &lt;mai=
lto:<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@phi=
lipp-wagner.<u></u>com</a>&gt; &lt;mailto:<a href=3D"mailto:lists@philipp-w=
agner." target=3D"_blank">lists@philipp-wagner.</a>_<u></u>_com &lt;mailto:=
<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@philipp=
-wagner.<u></u>com</a>&gt;&gt;&gt; wrote:<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0From: Philipp Wagner &lt;<a href=3D"mailto:mail@=
philipp-wagner.com" target=3D"_blank">mail@philipp-wagner.com</a> &lt;mailt=
o:<a href=3D"mailto:mail@philipp-wagner.com" target=3D"_blank">mail@philipp=
-wagner.<u></u>com</a>&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner=
." target=3D"_blank">mail@philipp-wagner.</a>__<u></u>com &lt;mailto:<a hre=
f=3D"mailto:mail@philipp-wagner.com" target=3D"_blank">mail@philipp-wagner.=
<u></u>com</a>&gt;&gt;&gt;<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Signed-off-by: Philipp Wagner &lt;<a href=3D"mai=
lto:mail@philipp-wagner.com" target=3D"_blank">mail@philipp-wagner.com</a> =
&lt;mailto:<a href=3D"mailto:mail@philipp-wagner.com" target=3D"_blank">mai=
l@philipp-wagner.<u></u>com</a>&gt; &lt;mailto:<a href=3D"mailto:mail@phili=
pp-wagner." target=3D"_blank">mail@philipp-wagner.</a>__<u></u>com &lt;mail=
to:<a href=3D"mailto:mail@philipp-wagner.com" target=3D"_blank">mail@philip=
p-wagner.<u></u>com</a>&gt;&gt;&gt;<br>


=A0 =A0 =A0 =A0 =A0 =A0 =A0---<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0recipes-kernel/linux/<a href=3D"http://linux=
-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-__<u></u>raspberrypi_3.12=
.0.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_bla=
nk">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt; &lt;<a href=3D"http:/=
/linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi_3.</a>__<=
a href=3D"http://12.0.bb" target=3D"_blank"><u></u>12.0.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.0.bb</a>&gt;&gt; |<br>


=A0 =A0 =A0 =A0 6 ------<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0recipes-kernel/linux/<a href=3D"http://linux=
-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-__<u></u>raspberrypi_3.12=
.3.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_bla=
nk">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt; &lt;<a href=3D"http:/=
/linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi_3.</a>__<=
a href=3D"http://12.3.bb" target=3D"_blank"><u></u>12.3.bb</a> &lt;<a href=
=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">http://linux-rasp=
berrypi_3.<u></u>12.3.bb</a>&gt;&gt; |<div class=3D"im">

<br>
=A0 =A0 =A0 =A0 6 ++++++<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02 files changed, 6 insertions(+), 6 deletion=
s(-)<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0delete mode 100644 recipes-kernel/linux/<a h=
ref=3D"http://linux-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-__<u><=
/u>raspberrypi_3.12.0.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.0=
.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt; &l=
t;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http://linux-ra=
spberrypi_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank"><u></u>12.0.=
bb</a><br>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=
=3D"_blank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0create mode 100644 recipes-kernel/linux/<a h=
ref=3D"http://linux-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-__<u><=
/u>raspberrypi_3.12.3.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.3=
.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt; &l=
t;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http://linux-ra=
spberrypi_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank"><u></u>12.3.=
bb</a><br>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=
=3D"_blank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt;&gt;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0diff --git a/recipes-kernel/linux/<a href=3D"htt=
p://linux-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-_<u></u>_raspber=
rypi_3.12.0.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" targe=
t=3D"_blank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt; &lt;<a href=
=3D"http://linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi=
_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank"><u></u>12.0.bb</a><br=
>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=
=3D"_blank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt;&gt; b/recipes=
-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.0.bb" target=3D"_b=
lank">linux-_<u></u>_raspberrypi_3.12.0.bb</a> &lt;<a href=3D"http://linux-=
raspberrypi_3.12.0.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>=
12.0.bb</a>&gt;<br>


=A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-raspberrypi_3." targ=
et=3D"_blank">http://linux-raspberrypi_3.</a>__<a href=3D"http://12.0.bb" t=
arget=3D"_blank"><u></u>12.0.bb</a> &lt;<a href=3D"http://linux-raspberrypi=
_3.12.0.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>=
&gt;&gt;<div class=3D"im">

<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0deleted file mode 100644<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0index 3631da5..0000000<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0--- a/recipes-kernel/linux/<a href=3D"http://lin=
ux-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-_<u></u>_raspberrypi_3.=
12.0.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_b=
lank">http://linux-raspberrypi_3.<u></u>12.0.bb</a>&gt; &lt;<a href=3D"http=
://linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi_3.</a>_=
_<a href=3D"http://12.0.bb" target=3D"_blank"><u></u>12.0.bb</a> &lt;<a hre=
f=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">http://linux-ras=
pberrypi_3.<u></u>12.0.bb</a>&gt;&gt;<div class=3D"im">

<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0+++ /dev/null<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0@@ -1,6 +0,0 @@<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0-SRCREV =3D &quot;__<u></u>839f349b6ed2a63a2bff0=
b5f0d718a<u></u>__7b07ca2316&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0-SRC_URI =3D &quot;git://<a href=3D"http://githu=
b.com/raspberrypi/__linux.git;protocol=3Dgit;branch=3D__rpi-3.12.y" target=
=3D"_blank">github.com/raspberrypi/<u></u>__linux.git;protocol=3Dgit;<u></u=
>branch=3D__rpi-3.12.y</a> &lt;<a href=3D"http://github.com/raspberrypi/lin=
ux.git;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">http://github.=
com/<u></u>raspberrypi/linux.git;<u></u>protocol=3Dgit;branch=3Drpi-3.12.y<=
/a><u></u>&gt;<br>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://github.com/__raspberrypi/linux.git;__=
protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">http://github.com/__<=
u></u>raspberrypi/linux.git;__<u></u>protocol=3Dgit;branch=3Drpi-3.12.y</a>=
 &lt;<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;bran=
ch=3Drpi-3.12.y" target=3D"_blank">http://github.com/<u></u>raspberrypi/lin=
ux.git;<u></u>protocol=3Dgit;branch=3Drpi-3.12.y</a><u></u>&gt;__&gt; \<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0- =A0 =A0 =A0 =A0 =A0 file://__<u></u>sl030raspb=
errypii2ckernel.__<u></u>patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0- =A0 =A0 =A0 =A0 =A0&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0-<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0-require linux-raspberrypi.inc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0diff --git a/recipes-kernel/linux/<a href=3D"htt=
p://linux-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-_<u></u>_raspber=
rypi_3.12.3.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" targe=
t=3D"_blank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt; &lt;<a href=
=3D"http://linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi=
_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank"><u></u>12.3.bb</a><br=
>


=A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=
=3D"_blank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt;&gt; b/recipes=
-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.3.bb" target=3D"_b=
lank">linux-_<u></u>_raspberrypi_3.12.3.bb</a> &lt;<a href=3D"http://linux-=
raspberrypi_3.12.3.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>=
12.3.bb</a>&gt;<br>


=A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-raspberrypi_3." targ=
et=3D"_blank">http://linux-raspberrypi_3.</a>__<a href=3D"http://12.3.bb" t=
arget=3D"_blank"><u></u>12.3.bb</a> &lt;<a href=3D"http://linux-raspberrypi=
_3.12.3.bb" target=3D"_blank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>=
&gt;&gt;<div class=3D"im">

<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0new file mode 100644<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0index 0000000..304c1ad<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0--- /dev/null<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0+++ b/recipes-kernel/linux/<a href=3D"http://lin=
ux-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-_<u></u>_raspberrypi_3.=
12.3.bb</a> &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_b=
lank">http://linux-raspberrypi_3.<u></u>12.3.bb</a>&gt; &lt;<a href=3D"http=
://linux-raspberrypi_3." target=3D"_blank">http://linux-raspberrypi_3.</a>_=
_<a href=3D"http://12.3.bb" target=3D"_blank"><u></u>12.3.bb</a> &lt;<a hre=
f=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">http://linux-ras=
pberrypi_3.<u></u>12.3.bb</a>&gt;&gt;<br>


<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0@@ -0,0 +1,6 @@<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0+SRCREV =3D &quot;__<u></u>7dac37b9865ab51f7a68b=
7703bf679<u></u>__2b698fee1b&quot;<br>
<br>
<br>
<br>
=A0 =A0 =A0 =A0 As pointed in https://review.gherzan.ro:__<u></u>8443/#/c/2=
7/ &lt;<a href=3D"https://review.gherzan.ro:8443/#/c/27/" target=3D"_blank"=
>https://review.gherzan.ro:<u></u>8443/#/c/27/</a>&gt;, it seems this SRCRE=
V is invalid.<div class=3D"im">

<br>
<br>
<br>
=A0 =A0 Since that note has little detail, are you sure that this is not<br=
>
=A0 =A0 just a case where the desired SRCREV is on a branch other than &#39=
;master&#39;?<br>
=A0 =A0 With the latest bitbake master, you have to explicitly specify the =
branch<br>
=A0 =A0 if the desired revision is on a different branch.<br>
<br>
<br>
I know. But the branch is already specified in SRC_URI. So most probably up=
stream sqashed the repo?<br>
</div></blockquote>
<br>
Indeed, I just checked the repo and it&#39;s not there.<br>
<br>
Looks like the correct rev might be 9fbb114990c409406ae20c56871727<u></u>ff=
8d4fa6ca<br>
I may give this a go as it has V4L2 drivers for my camera which I&#39;m anx=
ious<br>
to get going with Yocto :-)</blockquote><div><br></div><div>Nice. Christmas=
 came earlier, right?</div><div>Thanks.=A0</div></div><div><br></div>--=A0<=
/div><div class=3D"gmail_extra"><b style=3D"color:rgb(51,51,51);font-family=
:Arial;text-align:center">ag</b>
</div></div>

--001a11c38118faad3504ed470706--
