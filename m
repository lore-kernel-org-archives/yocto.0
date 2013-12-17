Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20704E007F6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:05:59 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id a1so6123965wgh.11
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:05:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=uzU3XBxnnyNu2Wt4FBfxVjuoK+u4R8fieAvq4mpLNSc=;
	b=P2X1oyp9giolWwi10RWAUPWMIVig5p418NagoJMMxJ/M8FaKOrSe+RNVKc0M3Hr6aa
	49eNKc66FX7okp18qcpeQhf0Zu9JCQ0EHuf3vp8b03TnKfp7hN47QCTQrQMvHOp4DYAV
	ZtAr8jmev9J2vGcG/6LAukFtbiHhM4uS/wSfWoCE3SkgIGOyjeEMp0Dcf20EjQphwtqg
	Xc5Y5sLerqeeAi9aXjrVZomiKbxfCai4+44SSq2CJYjjNDWXgZzvsd1tBzZN03jG92cB
	7hCgeKjdFHdOWfrq5jzBW15T0RZG7HqOvrb7vLIWp7yO07/rLnytd4dc+23d4GayIF5u
	PUpg==
X-Gm-Message-State: ALoCoQkI7VpjnG/G4VXG1B3MJsRBox0qxT8Dtbhp4Nw5tvSuBgQQ+cXefnK8ItGKClDfhliig6bc
X-Received: by 10.180.103.193 with SMTP id fy1mr3984725wib.10.1387296358086;
	Tue, 17 Dec 2013 08:05:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 17 Dec 2013 08:05:37 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <52AF6610.9040102@philipp-wagner.com>
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>
	<52A8AB88.8000107@mlbassoc.com>
	<CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
	<52A8B299.3000704@mlbassoc.com> <52AF6610.9040102@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 17 Dec 2013 18:05:37 +0200
Message-ID: <CAK18fxFhWjtie3bu0b8qFNog09SFcDWmL4qo9wv0=HLu8DaACw@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
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
X-List-Received-Date: Tue, 17 Dec 2013 16:06:00 -0000
Content-Type: multipart/alternative; boundary=f46d04428e3a9f955204edbd1ae0

--f46d04428e3a9f955204edbd1ae0
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 16, 2013 at 10:44 PM, Philipp Wagner
<lists@philipp-wagner.com>wrote:

> Am 11.12.2013 19:44, Gary Thomas wrote:
> > On 2013-12-11 11:23, Andrei Gherzan wrote:
> >>
> >>
> >>
> >> On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <gary@mlbassoc.com
> >> <mailto:gary@mlbassoc.com>> wrote:
> >>
> >>     On 2013-12-11 11:08, Andrei Gherzan wrote:
> >>
> >>
> >>
> >>
> >>         On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com
> >> <mailto:lists@philipp-wagner.com> <mailto:lists@philipp-wagner.__com
> >> <mailto:lists@philipp-wagner.com>>> wrote:
> >>
> >>              From: Philipp Wagner <mail@philipp-wagner.com
> >> <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com
> >> <mailto:mail@philipp-wagner.com>>>
> >>
> >>              Signed-off-by: Philipp Wagner <mail@philipp-wagner.com
> >> <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com
> >> <mailto:mail@philipp-wagner.com>>>
> >>              ---
> >>                recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>
> >> <http://linux-raspberrypi_3.__12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>> |
> >>         6 ------
> >>                recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>
> >> <http://linux-raspberrypi_3.__12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>> |
> >>         6 ++++++
> >>
> >>                2 files changed, 6 insertions(+), 6 deletions(-)
> >>                delete mode 100644
> >> recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>
> >> <http://linux-raspberrypi_3.__12.0.bb
> >>         <http://linux-raspberrypi_3.12.0.bb>>
> >>                create mode 100644
> >> recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>
> >> <http://linux-raspberrypi_3.__12.3.bb
> >>         <http://linux-raspberrypi_3.12.3.bb>>
> >>
> >>              diff --git
> >> a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>
> >> <http://linux-raspberrypi_3.__12.0.bb
> >>         <http://linux-raspberrypi_3.12.0.bb>>
> >> b/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>
> >>              <http://linux-raspberrypi_3.__12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>>
> >>
> >>              deleted file mode 100644
> >>              index 3631da5..0000000
> >>              --- a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>
> >> <http://linux-raspberrypi_3.__12.0.bb
> >> <http://linux-raspberrypi_3.12.0.bb>>
> >>
> >>              +++ /dev/null
> >>              @@ -1,6 +0,0 @@
> >>              -SRCREV = "__839f349b6ed2a63a2bff0b5f0d718a__7b07ca2316"
> >>              -SRC_URI =
> >> "git://
> github.com/raspberrypi/__linux.git;protocol=git;branch=__rpi-3.12.y
> >> <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y
> >
> >>
> >> <
> http://github.com/__raspberrypi/linux.git;__protocol=git;branch=rpi-3.12.y
> >> <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y
> >__>
> >> \
> >>
> >>              -           file://__sl030raspberrypii2ckernel.__patch \
> >>              -          "
> >>              -
> >>              -require linux-raspberrypi.inc
> >>              diff --git
> >> a/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>
> >> <http://linux-raspberrypi_3.__12.3.bb
> >>         <http://linux-raspberrypi_3.12.3.bb>>
> >> b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>
> >>              <http://linux-raspberrypi_3.__12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>>
> >>
> >>              new file mode 100644
> >>              index 0000000..304c1ad
> >>              --- /dev/null
> >>              +++ b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>
> >> <http://linux-raspberrypi_3.__12.3.bb
> >> <http://linux-raspberrypi_3.12.3.bb>>
> >>
> >>              @@ -0,0 +1,6 @@
> >>              +SRCREV = "__7dac37b9865ab51f7a68b7703bf679__2b698fee1b"
> >>
> >>
> >>
> >>         As pointed in https://review.gherzan.ro:__8443/#/c/27/
> >> <https://review.gherzan.ro:8443/#/c/27/>, it seems this SRCREV is
> >> invalid.
> >>
> >>
> >>     Since that note has little detail, are you sure that this is not
> >>     just a case where the desired SRCREV is on a branch other than
> >> 'master'?
> >>     With the latest bitbake master, you have to explicitly specify the
> >> branch
> >>     if the desired revision is on a different branch.
> >>
> >>
> >> I know. But the branch is already specified in SRC_URI. So most
> >> probably upstream sqashed the repo?
> >
> > Indeed, I just checked the repo and it's not there.
> >
> > Looks like the correct rev might be
> > 9fbb114990c409406ae20c56871727ff8d4fa6ca
> > I may give this a go as it has V4L2 drivers for my camera which I'm
> anxious
> > to get going with Yocto :-)
>
> Oops, I totally forgot to reply. Yes, the revision existed but upstream
> seems to be great at modifying a published repository (this has happened
> before). [Maybe someone could give them an introduction how to handle
> published git repositories ... argh]
>
> To go forward, just drop this patch and go with the one Gary posted today.


No problem. I merged a couple of days ago the correct SHA and today updated
the kernel to latest HEAD - merge will come soon.

-- 
*ag*

--f46d04428e3a9f955204edbd1ae0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Dec 16, 2013 at 10:44 PM, Philipp Wagner <span dir=3D"ltr">=
&lt;<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@phi=
lipp-wagner.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">Am 1=
1.12.2013 19:44, Gary Thomas wrote:<br>
&gt; On 2013-12-11 11:23, Andrei Gherzan wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas &lt;<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a><br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com<=
/a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 On 2013-12-11 11:08, Andrei Gherzan wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 On Sun, Dec 8, 2013 at 2:17 PM, &lt;<a href=3D"mai=
lto:lists@philipp-wagner.com">lists@philipp-wagner.com</a><br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:lists@philipp-wagner.com">lists@phili=
pp-wagner.com</a>&gt; &lt;mailto:<a href=3D"mailto:lists@philipp-wagner.">l=
ists@philipp-wagner.</a>__com<br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:lists@philipp-wagner.com">lists@phili=
pp-wagner.com</a>&gt;&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0From: Philipp Wagner &lt;<a href=3D"mai=
lto:mail@philipp-wagner.com">mail@philipp-wagner.com</a><br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.com">mail@philipp=
-wagner.com</a>&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.">mail=
@philipp-wagner.</a>__com<br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.com">mail@philipp=
-wagner.com</a>&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0Signed-off-by: Philipp Wagner &lt;<a hr=
ef=3D"mailto:mail@philipp-wagner.com">mail@philipp-wagner.com</a><br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.com">mail@philipp=
-wagner.com</a>&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.">mail=
@philipp-wagner.</a>__com<br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:mail@philipp-wagner.com">mail@philipp=
-wagner.com</a>&gt;&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0---<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0recipes-kernel/linux/<a href=3D"htt=
p://linux-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-__raspberrypi_3.=
12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank">1=
2.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;&gt; |<br>
&gt;&gt; =A0 =A0 =A0 =A0 6 ------<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0recipes-kernel/linux/<a href=3D"htt=
p://linux-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-__raspberrypi_3.=
12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank">1=
2.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;&gt; |<br>
&gt;&gt; =A0 =A0 =A0 =A0 6 ++++++<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02 files changed, 6 insertions(+), 6=
 deletions(-)<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0delete mode 100644<br>
&gt;&gt; recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.0.=
bb" target=3D"_blank">linux-__raspberrypi_3.12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank">1=
2.0.bb</a><br>
&gt;&gt; =A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb"=
 target=3D"_blank">http://linux-raspberrypi_3.12.0.bb</a>&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0create mode 100644<br>
&gt;&gt; recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.3.=
bb" target=3D"_blank">linux-__raspberrypi_3.12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank">1=
2.3.bb</a><br>
&gt;&gt; =A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb"=
 target=3D"_blank">http://linux-raspberrypi_3.12.3.bb</a>&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0diff --git<br>
&gt;&gt; a/recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.=
0.bb" target=3D"_blank">linux-__raspberrypi_3.12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank">1=
2.0.bb</a><br>
&gt;&gt; =A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb"=
 target=3D"_blank">http://linux-raspberrypi_3.12.0.bb</a>&gt;&gt;<br>
&gt;&gt; b/recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.=
0.bb" target=3D"_blank">linux-__raspberrypi_3.12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-raspberrypi=
_3." target=3D"_blank">http://linux-raspberrypi_3.</a>__<a href=3D"http://1=
2.0.bb" target=3D"_blank">12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0deleted file mode 100644<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0index 3631da5..0000000<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0--- a/recipes-kernel/linux/<a href=3D"h=
ttp://linux-__raspberrypi_3.12.0.bb" target=3D"_blank">linux-__raspberrypi_=
3.12.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.0.bb" target=3D"_blank">1=
2.0.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.0.bb</a>&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0+++ /dev/null<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0@@ -1,6 +0,0 @@<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0-SRCREV =3D &quot;__839f349b6ed2a63a2bf=
f0b5f0d718a__7b07ca2316&quot;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0-SRC_URI =3D<br>
&gt;&gt; &quot;git://<a href=3D"http://github.com/raspberrypi/__linux.git;p=
rotocol=3Dgit;branch=3D__rpi-3.12.y" target=3D"_blank">github.com/raspberry=
pi/__linux.git;protocol=3Dgit;branch=3D__rpi-3.12.y</a><br>
&gt;&gt; &lt;<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3D=
git;branch=3Drpi-3.12.y" target=3D"_blank">http://github.com/raspberrypi/li=
nux.git;protocol=3Dgit;branch=3Drpi-3.12.y</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; &lt;<a href=3D"http://github.com/__raspberrypi/linux.git;__protoco=
l=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">http://github.com/__raspberr=
ypi/linux.git;__protocol=3Dgit;branch=3Drpi-3.12.y</a><br>
&gt;&gt; &lt;<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3D=
git;branch=3Drpi-3.12.y" target=3D"_blank">http://github.com/raspberrypi/li=
nux.git;protocol=3Dgit;branch=3Drpi-3.12.y</a>&gt;__&gt;<br>
&gt;&gt; \<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0- =A0 =A0 =A0 =A0 =A0 file://__sl030ras=
pberrypii2ckernel.__patch \<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0- =A0 =A0 =A0 =A0 =A0&quot;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0-<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0-require linux-raspberrypi.inc<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0diff --git<br>
&gt;&gt; a/recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.=
3.bb" target=3D"_blank">linux-__raspberrypi_3.12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank">1=
2.3.bb</a><br>
&gt;&gt; =A0 =A0 =A0 =A0 &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb"=
 target=3D"_blank">http://linux-raspberrypi_3.12.3.bb</a>&gt;&gt;<br>
&gt;&gt; b/recipes-kernel/linux/<a href=3D"http://linux-__raspberrypi_3.12.=
3.bb" target=3D"_blank">linux-__raspberrypi_3.12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"http://linux-raspberrypi=
_3." target=3D"_blank">http://linux-raspberrypi_3.</a>__<a href=3D"http://1=
2.3.bb" target=3D"_blank">12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0new file mode 100644<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0index 0000000..304c1ad<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0--- /dev/null<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0+++ b/recipes-kernel/linux/<a href=3D"h=
ttp://linux-__raspberrypi_3.12.3.bb" target=3D"_blank">linux-__raspberrypi_=
3.12.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;<br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3." target=3D"_blank">http=
://linux-raspberrypi_3.</a>__<a href=3D"http://12.3.bb" target=3D"_blank">1=
2.3.bb</a><br>
&gt;&gt; &lt;<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blan=
k">http://linux-raspberrypi_3.12.3.bb</a>&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0@@ -0,0 +1,6 @@<br>
&gt;&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0+SRCREV =3D &quot;__7dac37b9865ab51f7a6=
8b7703bf679__2b698fee1b&quot;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 =A0 =A0 As pointed in https://review.gherzan.ro:__8443/#/c=
/27/<br>
&gt;&gt; &lt;<a href=3D"https://review.gherzan.ro:8443/#/c/27/" target=3D"_=
blank">https://review.gherzan.ro:8443/#/c/27/</a>&gt;, it seems this SRCREV=
 is<br>
&gt;&gt; invalid.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =A0 =A0 Since that note has little detail, are you sure that this =
is not<br>
&gt;&gt; =A0 =A0 just a case where the desired SRCREV is on a branch other =
than<br>
&gt;&gt; &#39;master&#39;?<br>
&gt;&gt; =A0 =A0 With the latest bitbake master, you have to explicitly spe=
cify the<br>
&gt;&gt; branch<br>
&gt;&gt; =A0 =A0 if the desired revision is on a different branch.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I know. But the branch is already specified in SRC_URI. So most<br=
>
&gt;&gt; probably upstream sqashed the repo?<br>
&gt;<br>
&gt; Indeed, I just checked the repo and it&#39;s not there.<br>
&gt;<br>
&gt; Looks like the correct rev might be<br>
&gt; 9fbb114990c409406ae20c56871727ff8d4fa6ca<br>
&gt; I may give this a go as it has V4L2 drivers for my camera which I&#39;=
m anxious<br>
&gt; to get going with Yocto :-)<br>
<br>
</div></div>Oops, I totally forgot to reply. Yes, the revision existed but =
upstream<br>
seems to be great at modifying a published repository (this has happened<br=
>
before). [Maybe someone could give them an introduction how to handle<br>
published git repositories ... argh]<br>
<br>
To go forward, just drop this patch and go with the one Gary posted today.<=
/blockquote><div><br></div><div>No problem. I merged a couple of days ago t=
he correct SHA and today updated the kernel to latest HEAD - merge will com=
e soon.=A0</div>

</div><br clear=3D"all"><div>--=A0<br></div></div><div class=3D"gmail_extra=
"><b style=3D"color:rgb(51,51,51);font-family:Arial;text-align:center">ag</=
b>
</div></div>

--f46d04428e3a9f955204edbd1ae0--
