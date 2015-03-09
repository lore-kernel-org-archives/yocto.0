Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B381E00754; Mon,  9 Mar 2015 13:55:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADB29E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 13:55:30 -0700 (PDT)
Received: by wesx3 with SMTP id x3so25059332wes.1
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 13:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HMnSWM5h7k5px27SzBibr3jL15aFL8EsXfxdlRZq1Oc=;
	b=OONUGTwZdgQf5oZ6S+vzNSQM5GXWPUKWbz6tJ3QWbKMp9JhsZ2IyU/Yw+lMoGmhLTV
	1fYO7CMygh3UnU2X6Y8ZpZH0ffcXhes6pVIZ6jsERWlsVdW/kWM/TP1FIeAoSlt52nGY
	SOaTIPBZUFEiktxvcvh9nVvMxSKIYLhOVc/Purr+C9vvPs5/ALaJNKoMAXDwTpCaiK3n
	laHfe+q4WBmU+op9tAeIk79AIjxAFzA02JzyKeJaEWzagDnvguG4Wplf4tIfHebRMTbv
	W1w1Te0Alp4KiK79AjT77Wew9vUDw7BFty5tZuu/rvdtN3y8On2o4GVtDTt0MD191fVR
	9DwA==
X-Gm-Message-State: ALoCoQlabMUDQaG9w8+2OUIfZJgOSrhtP103/2jyiRwRHnR2tZMM5W0GhzC8sKBCwD6vT4n01djk
X-Received: by 10.194.21.104 with SMTP id u8mr15241858wje.47.1425934530213;
	Mon, 09 Mar 2015 13:55:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.95.132 with HTTP; Mon, 9 Mar 2015 13:55:10 -0700 (PDT)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
References: <cover.1424450237.git.petter@technux.se>
	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 9 Mar 2015 21:55:10 +0100
Message-ID: <CAK18fxF_PhqqHXYS_NsGFShTdvsAY1uQd8pFqNQHHv0ss2ReMw@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Mon, 09 Mar 2015 20:55:34 -0000
Content-Type: multipart/alternative; boundary=047d7b5d97cb2591100510e14140

--047d7b5d97cb2591100510e14140
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On Mon, Mar 9, 2015 at 9:50 PM, Andreas M=C3=BCller <schnitzeltony@googlema=
il.com
> wrote:

> On Sun, Mar 1, 2015 at 1:14 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Hello,
> >
> > On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mab=C3=A4cker wrote:
> >> The following changes since commit
> d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc:
> >>
> >>   README: Github repo changed (2015-02-14 02:00:57 +0100)
> >>
> >> are available in the git repository at:
> >>
> >>   git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
> >>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_lay=
er_prio
> >>
> >> Petter Mab=C3=A4cker (1):
> >>   layer.conf: set high layer priority
> >>
> >>  conf/layer.conf | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > Patch merged to master. Thanks Petter.
> >
> > --
> > Andrei Gherzan
> > --
>
> This one breaks xserver-xf86-config for me
>
> | Function failed: Fetcher failure for URL:
> 'file://xorg.conf.d/10-evdev.conf'. Unable to fetch URL from any
> source.
>
> Andreas
>

There is an issue with that conf file. This was introduced by the rpi2
support patches. Could you please fill in a redmine issue? Or maybe shoot
us a patch? J

Thanks!

--=20
*Andrei Gherzan*

--047d7b5d97cb2591100510e14140
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andreas,<br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Mar 9, 2015 at 9:50 PM, Andreas M=C3=BCller <span =
dir=3D"ltr">&lt;<a href=3D"mailto:schnitzeltony@googlemail.com" target=3D"_=
blank">schnitzeltony@googlemail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On Sun, Mar 1, 2015 at 1:14 AM, Andrei Gherzan &lt;<a href=
=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mab=C3=A4cker wrote:<=
br>
&gt;&gt; The following changes since commit d8bf60ce6c4a6c6371527c6df2e3243=
d2771c0cc:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0README: Github repo changed (2015-02-14 02:00:57 +0100=
)<br>
&gt;&gt;<br>
&gt;&gt; are available in the git repository at:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0git://<a href=3D"http://git.yoctoproject.org/poky-cont=
rib" target=3D"_blank">git.yoctoproject.org/poky-contrib</a> petmab/rpi_lay=
er_prio<br>
&gt;&gt;=C2=A0 =C2=A0<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-c=
ontrib/log/?h=3Dpetmab/rpi_layer_prio" target=3D"_blank">http://git.yoctopr=
oject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_layer_prio</a><br>
&gt;&gt;<br>
&gt;&gt; Petter Mab=C3=A4cker (1):<br>
&gt;&gt;=C2=A0 =C2=A0layer.conf: set high layer priority<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 conf/layer.conf | 2 +-<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; Patch merged to master. Thanks Petter.<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt; --<br>
<br>
This one breaks xserver-xf86-config for me<br>
<br>
| Function failed: Fetcher failure for URL:<br>
&#39;file://xorg.conf.d/10-evdev.conf&#39;. Unable to fetch URL from any<br=
>
source.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Andreas<br>
</font></span></blockquote></div><br>There is an issue with that conf file.=
 This was introduced by the rpi2 support patches. Could you please fill in =
a redmine issue? Or maybe shoot us a patch? J</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Thanks!<br clear=3D"all"><div><br><=
/div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"t=
ext-align:center"></div><div style=3D"text-align:center"><div align=3D"left=
"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-al=
ign:center">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7b5d97cb2591100510e14140--
