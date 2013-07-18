Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1AF6E01492
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 14:49:12 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id t59so3429197wes.34
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 14:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=nofCmxxPjl8yp9Jw7DVD3ZF7Jr2+7pCiubC1TfujsCk=;
	b=U1EdOcbgZpyQfXdMzEnkgw4WwfrfYJXpjixNa7mI31Ma1obL3d5+PbmA834HH/Qy9l
	ja0LPLuyZ+Dm0fCl+McEZYUTtm9hmsLpUoo6MXWlpOrfdjzbL5GJHDd3QRwxGcxOXA2p
	onBL/pMQVHZsMqBBHQvgXwvvmyB8mvTuW13LiJXXen/Lhxar+pyPQSX3LuRvXXKcQyh6
	/i9lvgOoMP93deiEs8BRtKua8PWm7SaKQCit9uWGWIxPAI4Pf1l0YuRKATU/ghKZHndv
	glgQ0Jry5VxeD9W4feEB/3W2DU3waTfoxUMc29NE5VNnIb2MHNXDxEWfzvVLriCd0naP
	5gcQ==
MIME-Version: 1.0
X-Received: by 10.194.63.229 with SMTP id j5mr9729129wjs.79.1374184150543;
	Thu, 18 Jul 2013 14:49:10 -0700 (PDT)
Received: by 10.216.51.201 with HTTP; Thu, 18 Jul 2013 14:49:10 -0700 (PDT)
X-Originating-IP: [5.13.206.158]
Received: by 10.216.51.201 with HTTP; Thu, 18 Jul 2013 14:49:10 -0700 (PDT)
In-Reply-To: <CAHLvMfb4Tjsx8jjnMzcxqowtQvLtQ6i1FhUAB7mVQYVm9BRZ-g@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
	<CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
	<CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
	<CAHLvMfaV1fbPYip2Cf9cF4_f0S4UDuNUo=rTK-6zzaQPt1MT7w@mail.gmail.com>
	<51E7F7F8.7050601@mlbassoc.com>
	<CAHLvMfaU1mpxJuAvh0POrbFTdnAk9P8WzjKOzSgJGcwP84bUjw@mail.gmail.com>
	<51E7FDC9.6090601@mlbassoc.com>
	<CAHLvMfb4Tjsx8jjnMzcxqowtQvLtQ6i1FhUAB7mVQYVm9BRZ-g@mail.gmail.com>
Date: Fri, 19 Jul 2013 00:49:10 +0300
Message-ID: <CAK18fxEV=ESHxpCNxOoR7E-x8VqvnC4Ywf_i_=B-e4MJ-r0q=g@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Rich Bayliss <richbayliss@gmail.com>
X-Gm-Message-State: ALoCoQlE2B2KfHdvNkQ3Wlxki/gRvDjgNMXLrj/pDpjvhMvfEoTjN5U+8xzyZXhdt4Lc4g0v++t3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 21:49:13 -0000
Content-Type: multipart/alternative; boundary=047d7ba9751826443004e1d02e4f

--047d7ba9751826443004e1d02e4f
Content-Type: text/plain; charset=ISO-8859-1

On Jul 18, 2013 5:42 PM, "Rich Bayliss" <richbayliss@gmail.com> wrote:
>
> On 18 July 2013 15:38, Gary Thomas <gary@mlbassoc.com> wrote:
> > On 2013-07-18 08:20, Rich Bayliss wrote:
> >>
> >> Indeed. However the usage requirement of the system rely on being
> >> headless, and thus a power-pull is likely to happen.
> >>
> >> I guess the only way to rule this in/out would be run with a RO rootfs
> >> - and mount a sperate partition for user files. Do you know how I can
> >> achieve this?
> >
> >
> > There is some support in recent OE-core for read-only rootfs.  Search
> > the Yocto project archives for more information (I've not tried it yet).
> >
> > The more interesting thing is that I have systems other than the RPI
> > that are built using Poky/Yocto where the power is often the cause
> > of a reboot and I've never seen this error/situation occur!  Maybe
> > I can experiment a bit and compare the RPI build with my other systems
> > (I have both) and see why.  Not sure when I can get to it though...
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
>
> OK Gary, thanks. I have found an article which states including
> "read-only-rootfs" in the IMAGE_FEATURES will provide me with just
> that. I am building now, so let's see what happens.
>
> In my opinion, although a power-failure reboot is undesirable from the
> OS perspective, I would expect it to come back with networking up - or
> at least auto-magically reboot if they aren't for some reason.

I agree. It should be running correctly. And if it doesn't we need to fix
this. Power fails happen. So this is no excuse.

Well, it seems that I can't replicate this. Have network all the time. 4
reboots. Will retry tomorrow. Don't know what build I have. Will recompile
master.

ag

--047d7ba9751826443004e1d02e4f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jul 18, 2013 5:42 PM, &quot;Rich Bayliss&quot; &lt;<a href=3D"mailto:ric=
hbayliss@gmail.com">richbayliss@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 18 July 2013 15:38, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc=
.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt; &gt; On 2013-07-18 08:20, Rich Bayliss wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Indeed. However the usage requirement of the system rely on b=
eing<br>
&gt; &gt;&gt; headless, and thus a power-pull is likely to happen.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I guess the only way to rule this in/out would be run with a =
RO rootfs<br>
&gt; &gt;&gt; - and mount a sperate partition for user files. Do you know h=
ow I can<br>
&gt; &gt;&gt; achieve this?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; There is some support in recent OE-core for read-only rootfs. =A0=
Search<br>
&gt; &gt; the Yocto project archives for more information (I&#39;ve not tri=
ed it yet).<br>
&gt; &gt;<br>
&gt; &gt; The more interesting thing is that I have systems other than the =
RPI<br>
&gt; &gt; that are built using Poky/Yocto where the power is often the caus=
e<br>
&gt; &gt; of a reboot and I&#39;ve never seen this error/situation occur! =
=A0Maybe<br>
&gt; &gt; I can experiment a bit and compare the RPI build with my other sy=
stems<br>
&gt; &gt; (I have both) and see why. =A0Not sure when I can get to it thoug=
h...<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for t=
he<br>
&gt; &gt; MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world=
<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt;<br>
&gt; OK Gary, thanks. I have found an article which states including<br>
&gt; &quot;read-only-rootfs&quot; in the IMAGE_FEATURES will provide me wit=
h just<br>
&gt; that. I am building now, so let&#39;s see what happens.<br>
&gt;<br>
&gt; In my opinion, although a power-failure reboot is undesirable from the=
<br>
&gt; OS perspective, I would expect it to come back with networking up - or=
<br>
&gt; at least auto-magically reboot if they aren&#39;t for some reason.</p>
<p dir=3D"ltr">I agree. It should be running correctly. And if it doesn&#39=
;t we need to fix this. Power fails happen. So this is no excuse. </p>
<p dir=3D"ltr">Well, it seems that I can&#39;t replicate this. Have network=
 all the time. 4 reboots. Will retry tomorrow. Don&#39;t know what build I =
have. Will recompile master. </p>
<p dir=3D"ltr">ag<br>
</p>

--047d7ba9751826443004e1d02e4f--
