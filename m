Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f177.google.com (mail-ea0-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A3FAE01473
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 15:28:26 -0800 (PST)
Received: by mail-ea0-f177.google.com with SMTP id n13so277978eaa.8
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 15:28:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=SkZPytCeBI4nmdc9/yBGFfDjdiZb3A5Fl0mzNDa1/zg=;
	b=N97hNp3Y4D2fzn0AljYTqxfGraFKqxFKzkGx9I4SH23v5HEbD80ZzM52mv+/metaYQ
	Ybi0DKVIJ5lFP/PcgDq5q3nNHB6tfEyfmiCM77eANiFh/hMIfFbF0HRXBtxoW1/4jS1q
	kV2/87u1R/NYQTsbN1pfjjVkTi4OS20C5iHfjxJ7pMf7dw3LrbquhwlTS+lncfBVyEOp
	529mSgd3R8UHtDC2/gNFUD49x/honJdgBiT+OD1vwTkeKEBk6SPkVJFDXPsTIklUuQ9/
	4qRIbHIa2ou0OmOOb+etJwpx0UdD9ld5mLHdMIJeQ6Pp7bf7QGe3/Bq+w4q6s2HRoGOD
	mWGw==
MIME-Version: 1.0
Received: by 10.14.215.6 with SMTP id d6mr245149184eep.40.1358292505203; Tue,
	15 Jan 2013 15:28:25 -0800 (PST)
Received: by 10.223.177.72 with HTTP; Tue, 15 Jan 2013 15:28:25 -0800 (PST)
Received: by 10.223.177.72 with HTTP; Tue, 15 Jan 2013 15:28:25 -0800 (PST)
In-Reply-To: <50F5C999.2020307@bsmucker.eu.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
Date: Tue, 15 Jan 2013 15:28:25 -0800
Message-ID: <CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Brian Smucker <bds@bsmucker.eu.org>
X-Gm-Message-State: ALoCoQlbue/saNuuUiqMAq0qEIo22flwjQn7r9KL9IC2TUFN3NJHw6/58//RnE7VUW45SiQpKEu+
Cc: yocto@yoctoproject.org
Subject: Re: Busybox still old version: Still looking for a clear understanding of an old mystery.
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
X-List-Received-Date: Tue, 15 Jan 2013 23:28:26 -0000
Content-Type: multipart/alternative; boundary=047d7b5dbec246140904d35c1e21

--047d7b5dbec246140904d35c1e21
Content-Type: text/plain; charset=ISO-8859-1

Brian,

What are you exactly referring to as "new version"? The package version
that bitbake builds is defined by the recipe, through the version
designation in the recipe's file name or through explicitly setting PV.

I think what you are trying to do is to modify the busybox configuration
and then recompile and package. Bitbake will not automatically recompile
after menuconfig. Menuconfig does not invslidate the shared state cache.
Try this:

bitbake -c menuconfig busybox
bitbake -c -f compile busybox
bitbake busybox

BR,
Rudi
On Jan 15, 2013 1:27 PM, "Brian Smucker" <bds@bsmucker.eu.org> wrote:

> Hello All,
>
> I'm a relative newbie to yocto/oe, but have got a ways down the road to
> understanding, but the gaps in my understanding cause me great grief at
> times.
>
> I think this probably is a simple question, but somehow I'm doing
> something wrong.
>
> I recompile busybox with a new config: bitbake -c menuconfig busybox
> I make busybox: bitbake busybox
> bitbake gets compiled.
>
> Then I do a bitbake core-image-minimal.  It does the do_rootfs action and
> makes a new image.
> But the busybox is not the newly-compiled one, it is old.
> I expect the new version.
> Maybe my expectations are wrong.  But I've struggled with this and similar
> scenarios time and time again, sometimes hitting on a combination of things
> that work or by selectively deleting a directory or so or by bitbake -c
> cleansstate -f on one target or another.
>
> But it's always been kind of a mystery to me how to recompile a particular
> target, which then succeeds, and subsequently make sure that target is
> included in the image target (core-image-minimal). I've succeeded in a
> hit-or-miss way at times, but I would love to know a clear series of steps
> that will work definitively.
>
> I know I can delete the entire tmp directory, but that seems far too
> extreme, not to mention slow to recover from.
>
> Can someone help me?
>
> I'm using Danny.
>
> Thanks,
> Brian
>
>
>
>
>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--047d7b5dbec246140904d35c1e21
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Brian,</p>
<p dir=3D"ltr">What are you exactly referring to as &quot;new version&quot;=
? The package version that bitbake builds is defined by the recipe, through=
 the version designation in the recipe&#39;s file name or through explicitl=
y setting PV.</p>

<p dir=3D"ltr">I think what you are trying to do is to modify the busybox c=
onfiguration and then recompile and package. Bitbake will not automatically=
 recompile after menuconfig. Menuconfig does not invslidate the shared stat=
e cache. Try this:</p>

<p dir=3D"ltr">bitbake -c menuconfig busybox<br>
bitbake -c -f compile busybox<br>
bitbake busybox</p>
<p dir=3D"ltr">BR,<br>
Rudi</p>
<div class=3D"gmail_quote">On Jan 15, 2013 1:27 PM, &quot;Brian Smucker&quo=
t; &lt;<a href=3D"mailto:bds@bsmucker.eu.org">bds@bsmucker.eu.org</a>&gt; w=
rote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hello All,<br>
<br>
I&#39;m a relative newbie to yocto/oe, but have got a ways down the road to=
 understanding, but the gaps in my understanding cause me great grief at ti=
mes.<br>
<br>
I think this probably is a simple question, but somehow I&#39;m doing somet=
hing wrong.<br>
<br>
I recompile busybox with a new config: bitbake -c menuconfig busybox<br>
I make busybox: bitbake busybox<br>
bitbake gets compiled.<br>
<br>
Then I do a bitbake core-image-minimal. =A0It does the do_rootfs action and=
 makes a new image.<br>
But the busybox is not the newly-compiled one, it is old.<br>
I expect the new version.<br>
Maybe my expectations are wrong. =A0But I&#39;ve struggled with this and si=
milar scenarios time and time again, sometimes hitting on a combination of =
things that work or by selectively deleting a directory or so or by bitbake=
 -c cleansstate -f on one target or another.<br>

<br>
But it&#39;s always been kind of a mystery to me how to recompile a particu=
lar target, which then succeeds, and subsequently make sure that target is =
included in the image target (core-image-minimal). I&#39;ve succeeded in a =
hit-or-miss way at times, but I would love to know a clear series of steps =
that will work definitively.<br>

<br>
I know I can delete the entire tmp directory, but that seems far too extrem=
e, not to mention slow to recover from.<br>
<br>
Can someone help me?<br>
<br>
I&#39;m using Danny.<br>
<br>
Thanks,<br>
Brian<br>
<br>
<br>
<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>

--047d7b5dbec246140904d35c1e21--
