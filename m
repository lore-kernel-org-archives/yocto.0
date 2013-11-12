Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6049DE017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:06:34 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id ey11so3952823wid.13
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:06:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=f60PThizJZZowPYbPcQBCbNNjYqwmC1/0Eo4LYkqPqc=;
	b=lqretkvfoqjdgtItheIRAf0Ns8dfWkPQzNdwGmc4OGIpN2oxmBCt1DsexkNHf8fY7F
	sulMtenv2/GZLpgZT4aHXAxPxFtLvwNvCQ1b5Ap9Aaak4pDAv7ynUqZeaL8Q9Edm3H1h
	NHq5ABQKPLlpQfgQx6pJZPr/+Km/WTghEKISWlrtJFVbktvH0hA1Iiz7kOMGuYgUxQbc
	QB3/kEW0i5fUVXi8d09hXMqCZkNK2AdFKQvN4CYQVb80XaJQS3jfl2iMPmDHATU35KvX
	pEEe2DuTyyhKNxD7mdUWxovOi/p+W+Oq7ckKWHfMhe3SyZPy7W8g98YMw3Y/MyENHNuW
	tDeg==
X-Gm-Message-State: ALoCoQmZds/9t1jWlConPH7AfUL49AleXy9yStQueJkB5VgWVqEyzCFFR19mziDnYLjKwQr+/HkF
X-Received: by 10.194.185.73 with SMTP id fa9mr27563117wjc.29.1384272392983;
	Tue, 12 Nov 2013 08:06:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Tue, 12 Nov 2013 08:06:12 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CANyK_8d7cPPsTF4njZq1XqM9NSxBTFDLW-=i_J4YaMsfv=d8Kw@mail.gmail.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
	<CANyK_8edT=meYgopAMkSJvYUn-VNLYqZiDVmuqcNf=7dn-bRjw@mail.gmail.com>
	<CANyK_8c3uRru9_nf+r-6LmKzsMo1WrPrFT_E7WORienNoxWbUg@mail.gmail.com>
	<CANyK_8d7cPPsTF4njZq1XqM9NSxBTFDLW-=i_J4YaMsfv=d8Kw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 12 Nov 2013 18:06:12 +0200
Message-ID: <CAK18fxF2OVNy6_XF43HiNXm0Rk2=3Py4zUnuSiBeJWFPMoZK3g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Philipp Wagner <mail@philipp-wagner.com>
Subject: Re: [meta-raspberrypi][PATCH 0/4] Refactor kernel recipes
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
X-List-Received-Date: Tue, 12 Nov 2013 16:06:35 -0000
Content-Type: multipart/alternative; boundary=047d7bd6b04841bb8a04eafd08b9

--047d7bd6b04841bb8a04eafd08b9
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 11, 2013 at 6:50 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 13 September 2013 18:06, Paul Barker <paul@paulbarker.me.uk> wrote:
> > On 11 September 2013 08:29, Paul Barker <paul@paulbarker.me.uk> wrote:
> >> On 10 September 2013 23:36,  <lists@philipp-wagner.com> wrote:
> >>> From: Philipp Wagner <mail@philipp-wagner.com>
> >>>
> >>> Hi,
> >>>
> >>> as follow-up to the discussion in
> >>> [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
> >>> I've refactored the kernel recipes a bit and included all discussed
> >>> kernel versions. The default is now 3.6.
> >>>
> >>> I've left linux.inc as-is, as this seems to be copied from meta-oe.
> Should
> >>> we include this directly instead of copying it here?
> >>>
> >>> Philipp
> >>>
> >>> Philipp Wagner (4):
> >>>   Refactor kernel recipes to reduce code duplication
> >>>   Remove tabs from recipe
> >>>   Make Linux 3.6 the default for Raspberry Pi
> >>>   Add kernel 3.8 and 3.11 for Raspberry Pi
> >>>
> >>>  conf/machine/include/rpi-default-providers.inc   |   3 +
> >>>  recipes-kernel/linux/linux-raspberrypi.inc       |  34 +++++
> >>>  recipes-kernel/linux/linux-raspberrypi_3.11.0.bb |   6 +
> >>>  recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |  33 +----
> >>>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |  33 +----
> >>>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb |   6 +
> >>>  recipes-kernel/linux/linux.inc                   | 174
> +++++++++++------------
> >>>  7 files changed, 140 insertions(+), 149 deletions(-)
> >>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc
> >>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
> >>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
> >>>
> >>> --
> >>> 1.8.1.4
> >>
> >> Testing this now with PREFERRED_VERSION_linux-raspberrypi = "3.8%".
> >>
> >
> > Builds and boots happily.
> >
> > Tested-by: Paul Barker <paul@paulbarker.me.uk>
> >
>
> Ping on this series as well. Think it'd be really good to get the
> newer kernel recipes into the repository.
>
>
Merged.

Thanks,
ag

--047d7bd6b04841bb8a04eafd08b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Oct 11, 2013 at 6:50 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
3 September 2013 18:06, Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.m=
e.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>


&gt; On 11 September 2013 08:29, Paul Barker &lt;<a href=3D"mailto:paul@pau=
lbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;&gt; On 10 September 2013 23:36, =A0&lt;<a href=3D"mailto:lists@philipp=
-wagner.com">lists@philipp-wagner.com</a>&gt; wrote:<br>
&gt;&gt;&gt; From: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wagner=
.com">mail@philipp-wagner.com</a>&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; as follow-up to the discussion in<br>
&gt;&gt;&gt; [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add versi=
on 3.8.13<br>
&gt;&gt;&gt; I&#39;ve refactored the kernel recipes a bit and included all =
discussed<br>
&gt;&gt;&gt; kernel versions. The default is now 3.6.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;ve left linux.inc as-is, as this seems to be copied from=
 meta-oe. Should<br>
&gt;&gt;&gt; we include this directly instead of copying it here?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philipp<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philipp Wagner (4):<br>
&gt;&gt;&gt; =A0 Refactor kernel recipes to reduce code duplication<br>
&gt;&gt;&gt; =A0 Remove tabs from recipe<br>
&gt;&gt;&gt; =A0 Make Linux 3.6 the default for Raspberry Pi<br>
&gt;&gt;&gt; =A0 Add kernel 3.8 and 3.11 for Raspberry Pi<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =A0conf/machine/include/rpi-default-providers.inc =A0 | =A0 3 =
+<br>
&gt;&gt;&gt; =A0recipes-kernel/linux/linux-raspberrypi.inc =A0 =A0 =A0 | =
=A034 +++++<br>
&gt;&gt;&gt; =A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.=
11.0.bb" target=3D"_blank">linux-raspberrypi_3.11.0.bb</a> | =A0 6 +<br>
&gt;&gt;&gt; =A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.=
2.27.bb" target=3D"_blank">linux-raspberrypi_3.2.27.bb</a> | =A033 +----<br=
>
&gt;&gt;&gt; =A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.=
6.11.bb" target=3D"_blank">linux-raspberrypi_3.6.11.bb</a> | =A033 +----<br=
>
&gt;&gt;&gt; =A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.=
8.13.bb" target=3D"_blank">linux-raspberrypi_3.8.13.bb</a> | =A0 6 +<br>
&gt;&gt;&gt; =A0recipes-kernel/linux/linux.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 | 174 +++++++++++------------<br>
&gt;&gt;&gt; =A07 files changed, 140 insertions(+), 149 deletions(-)<br>
&gt;&gt;&gt; =A0create mode 100644 recipes-kernel/linux/linux-raspberrypi.i=
nc<br>
&gt;&gt;&gt; =A0create mode 100644 recipes-kernel/linux/<a href=3D"http://l=
inux-raspberrypi_3.11.0.bb" target=3D"_blank">linux-raspberrypi_3.11.0.bb</=
a><br>
&gt;&gt;&gt; =A0create mode 100644 recipes-kernel/linux/<a href=3D"http://l=
inux-raspberrypi_3.8.13.bb" target=3D"_blank">linux-raspberrypi_3.8.13.bb</=
a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; 1.8.1.4<br>
&gt;&gt;<br>
&gt;&gt; Testing this now with PREFERRED_VERSION_linux-raspberrypi =3D &quo=
t;3.8%&quot;.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Builds and boots happily.<br>
&gt;<br>
&gt; Tested-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pa=
ul@paulbarker.me.uk</a>&gt;<br>
&gt;<br>
<br>
</div></div>Ping on this series as well. Think it&#39;d be really good to g=
et the<br>
newer kernel recipes into the repository.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Merged.</div><div><br></div><div>Thanks,=A0</div></div><div>a=
g</div>
</div></div>

--047d7bd6b04841bb8a04eafd08b9--
