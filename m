Return-Path: <dfldashgkv@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 710DEE00A8D
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 09:42:10 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id x3so4985443qcv.25
	for <yocto@yoctoproject.org>; Fri, 07 Mar 2014 09:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=OtS09VpsgK92DjB4M4Ruaob6PGfDrfCLkD02CasLYLs=;
	b=ORpYm6LNAVq5Wag8ypfSxnJ8QsdqHK5cw0ZTt824/Su6Bfx4j6r09Ad3hLgCi/jI7e
	F9eixqKHcWvfGVertTPZHi84eJgRQWamg/OyQtRbXPeIjpQiIh1qksdK5uFO1Ilf6f3X
	j3TtTEsKJXXKfSiqB5Vg8aYNo2dI8Myl3ZzTCCkUa/s1mi0FzVVCKnVAP1bcJipAhJWd
	6lAuthqZqZCZL9V1Ms6ycd0l6wTWFwqVpWPXjQnkQeUft5VzY1d/uv9LxPZTIiZhoTDx
	rVRsJEMB6Yawgzgky+Bk/q1ln75CwpPgXCr76drcQpn/IWHVmYhw17JQ2MproyR7wPie
	w/fw==
MIME-Version: 1.0
X-Received: by 10.140.50.46 with SMTP id r43mr22108429qga.22.1394214129834;
	Fri, 07 Mar 2014 09:42:09 -0800 (PST)
Sender: dfldashgkv@gmail.com
Received: by 10.96.21.130 with HTTP; Fri, 7 Mar 2014 09:42:09 -0800 (PST)
In-Reply-To: <d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
References: <5319BBD3.2040703@dynamicdevices.co.uk>
	<d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Fri, 7 Mar 2014 17:42:09 +0000
X-Google-Sender-Auth: kFBnEtgiFCFvfh4N5-1WHPZugfI
Message-ID: <CAJv4cO0mjzs7Mh5zcezsvbE+Zf3VRGgd2XODzZiPKu0d5LPF-g@mail.gmail.com>
From: "Mark O'Donovan" <shiftee@eircom.net>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remote management of embedded devices
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
X-List-Received-Date: Fri, 07 Mar 2014 17:42:11 -0000
Content-Type: multipart/alternative; boundary=001a1135185ef3ab8904f407c5a2

--001a1135185ef3ab8904f407c5a2
Content-Type: text/plain; charset=ISO-8859-1

We're experimenting with software called yalertunnel (yaler.net).
It causes embedded devices to maintain a connection to a relay server
through which they can be accessed. We are using a 3g broadband
dongle with no static ip or port forwarding and results have been quite
good. We have been using it only for accessing our web-interface but
they also support ssh.

Regards,
Mark

On Fri, Mar 7, 2014 at 1:41 PM, Bryan Evenson <bevenson@melinkcorp.com>wrote:

> Alex,
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Alex J Lennon
> > Sent: Friday, March 07, 2014 7:30 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Remote management of embedded devices
> >
> > Hi,
> >
> > I'm looking into remote management solutions for an upcoming headless
> > mesh edge router running Poky. I think, at least in the initial rollout
> we're
> > going to need something more than, say, a cron-based package update
> > facility.
> >
> > I'm currently thinking of going down the route of a cloud based server
> > providing SSH port forwarding to the embedded devices, and then perhaps
> > putting some scripting together on top of that to enable monitoring,
> > configuration, and control.
>
> This is similar to what we have running.  We're using opkg for the package
> management system and allow firmware upgrade through the USB stick or
> through remote access.  We have an SSH server for remote access, and each
> device has its own private key for access into the server.  If the device
> is in the middle of an SSH session with the remote access server, we can
> then SSH into the device from our server if we want to do some deeper
> diagnostics on an issue with a device.  We have separate HTTP server which
> each device queries to see if it needs to check in.  So instead of having
> to do an ssh login each time to check if there's a firmware upgrade
> available, it just needs to do a HTTP GET to see if there's firmware
> available or if we want to check on its status.
>
> The biggest issues we've had have been due to our network setup and
> handling upgrade both through the network and the USB stick.  We are using
> "opkg upgrade --download-only" as the first step of the upgrade process to
> make sure that we don't do a partial upgrade.  opkg-0.1.8 doesn't do
> --download-only for file:// sources; why download a file that is already on
> the filesystem?  So I had to add a patch so it would download files from
> the USB stick.  We also had an issue with DNS names because the server has
> a different name when the device finds it locally on our intranet then when
> it connects remotely, so we had to setup separate mirrors.  Other than that
> it's been working pretty well.
>
> I'd also love to hear other people's solutions to see if they have done
> something similar or came up with a different solution.
>
> Regards,
> Bryan
>
> >
> > I was wondering if there are better solutions already supported by the
> Yocto
> > project which people might be using to good effect in production systems
> ?
> >
> > Thanks,
> >
> > Alex
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1135185ef3ab8904f407c5a2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We&#39;re experimenting with software called yalertunnel (=
<a href=3D"http://yaler.net">yaler.net</a>). <br>It causes embedded devices=
 to maintain a connection to a relay server<br>through which they can be ac=
cessed. We are using a 3g broadband<br>
dongle with no static ip or port forwarding and results have been quite <br=
>good. We have been using it only for accessing our web-interface but <br>t=
hey also support ssh.<br><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">
Regards,<br></div><div class=3D"gmail_extra">Mark<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 7, 2014 at 1:41 PM, B=
ryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.co=
m" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Alex,<br>
<div class=3D""><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Alex J Lennon<br>
&gt; Sent: Friday, March 07, 2014 7:30 AM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] Remote management of embedded devices<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m looking into remote management solutions for an upcoming headl=
ess<br>
&gt; mesh edge router running Poky. I think, at least in the initial rollou=
t we&#39;re<br>
&gt; going to need something more than, say, a cron-based package update<br=
>
&gt; facility.<br>
&gt;<br>
&gt; I&#39;m currently thinking of going down the route of a cloud based se=
rver<br>
&gt; providing SSH port forwarding to the embedded devices, and then perhap=
s<br>
&gt; putting some scripting together on top of that to enable monitoring,<b=
r>
&gt; configuration, and control.<br>
<br>
</div>This is similar to what we have running. =A0We&#39;re using opkg for =
the package management system and allow firmware upgrade through the USB st=
ick or through remote access. =A0We have an SSH server for remote access, a=
nd each device has its own private key for access into the server. =A0If th=
e device is in the middle of an SSH session with the remote access server, =
we can then SSH into the device from our server if we want to do some deepe=
r diagnostics on an issue with a device. =A0We have separate HTTP server wh=
ich each device queries to see if it needs to check in. =A0So instead of ha=
ving to do an ssh login each time to check if there&#39;s a firmware upgrad=
e available, it just needs to do a HTTP GET to see if there&#39;s firmware =
available or if we want to check on its status.<br>

<br>
The biggest issues we&#39;ve had have been due to our network setup and han=
dling upgrade both through the network and the USB stick. =A0We are using &=
quot;opkg upgrade --download-only&quot; as the first step of the upgrade pr=
ocess to make sure that we don&#39;t do a partial upgrade. =A0opkg-0.1.8 do=
esn&#39;t do --download-only for file:// sources; why download a file that =
is already on the filesystem? =A0So I had to add a patch so it would downlo=
ad files from the USB stick. =A0We also had an issue with DNS names because=
 the server has a different name when the device finds it locally on our in=
tranet then when it connects remotely, so we had to setup separate mirrors.=
 =A0Other than that it&#39;s been working pretty well.<br>

<br>
I&#39;d also love to hear other people&#39;s solutions to see if they have =
done something similar or came up with a different solution.<br>
<br>
Regards,<br>
Bryan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; I was wondering if there are better solutions already supported by the=
 Yocto<br>
&gt; project which people might be using to good effect in production syste=
ms ?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--001a1135185ef3ab8904f407c5a2--
