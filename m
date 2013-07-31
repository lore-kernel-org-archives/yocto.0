Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E100E01572
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 14:29:48 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c50so610113eek.32
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 14:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=f+KtBy0Bx2QuA8cye9h75y+RjxlAao6kPKykXV+xs5Y=;
	b=ajUmIjut7sCTa8GHE/gFcDNs0LrwAdoTwq84/CrG3lXuxaPWkCY2GSo4K0Wy4AOVnW
	zkNeHKAzYXx/uH0mllT50aOnM8gzhVbSLrbKR8R/YEZs+mqt9DmT1Dl3Nl3aYN1jpVms
	q5I5GHaMRfLeMuabB1Z3AncelJxnRuR8umSrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=f+KtBy0Bx2QuA8cye9h75y+RjxlAao6kPKykXV+xs5Y=;
	b=TIjixs6EyRGq2qNXfU3uNYfDtXP5qTur7fJboH5adGRGBAj+ntKDWZ1KFphguT2XFw
	s2mEndWsxbGw6CwMJUTSDV2ugsHolPHnFCoVWAo75vnPbW85Yc7Ep/NwURg9N81oXKB8
	2/c5Q/9d2GKuyYrSxBoCrPlP/sf84+MalKtwBALtayI3zthiAka/52ej7t4jCBM2R3lx
	yTXuBdC88gujPHYK731i4tSlYShG741iZNdIS8YfilO4u2iQ3YZcZ1WAigjGqYZyQ5Ym
	ZIK5RlJI2S2VuXdw8yddjZV/1swZpZxz1FuX9583UZ0uMYnkCvKC/NuxbSJS1HaTrHqH
	n84A==
MIME-Version: 1.0
X-Received: by 10.14.87.133 with SMTP id y5mr70576393eee.50.1375306187449;
	Wed, 31 Jul 2013 14:29:47 -0700 (PDT)
Received: by 10.223.3.66 with HTTP; Wed, 31 Jul 2013 14:29:47 -0700 (PDT)
In-Reply-To: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
Date: Wed, 31 Jul 2013 14:29:47 -0700
Message-ID: <CA+gsK-oGhS4HXd2c3v=MAyouk=rwPPL+zKtZnJxAAojDB9YomA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkzS2bAOHqn0bwet8Ezfamx2jmUMc/dp7RTrZnMuEXyJeiILoihdMwM9ZSTx4EDcEIPoDsx
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Network booting
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
X-List-Received-Date: Wed, 31 Jul 2013 21:29:54 -0000
Content-Type: multipart/alternative; boundary=001a11c2240ec2e6d704e2d56c62

--001a11c2240ec2e6d704e2d56c62
Content-Type: text/plain; charset=ISO-8859-1

> Is there an easy way to have a system boot and load the rootfs from a
> network server?
>
> The classic way is to serve the root file system from an NFS server. You
will have to pass the root=/dev/nfs and
nfsroot=[<server-ip>:]<root-dir>[,<nfs-options>]
to your kernel via boot loader.

Every system you want to boot this way will need to have its own root file
system on the NFS server. However, there is the nfsroot project [1] that
reportedly allows booting entire clusters sharing one root file system. I
have not used that though.



> I'm using an x86 system and can have the kernel and an initrd on it. I
> would use bootp, but a lot of end users either don't have this or will not
> allow it to be used. I think it needs to go something like:
>
> 1) Kernel loads the initrd and bring the network up (static or DHCP);
> 2) The rootfs image can then be download;
> 3) Some magic then makes this run...
>
> This looks like you want to start up the system, download a root file
system tarball, extract it to somewhere and then use that as the root file
system by chroot'ing to it.


>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c2240ec2e6d704e2d56c62
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">
Is there an easy way to have a system boot and load the rootfs from a netwo=
rk server?<br>
<br></blockquote><div>The classic way is to serve the root file system from=
 an NFS server. You will have to pass the root=3D/dev/nfs and=A0<span style=
=3D"color:rgb(0,0,0);white-space:pre-wrap">nfsroot=3D[&lt;server-ip&gt;:]&l=
t;root-dir&gt;[,&lt;nfs-options&gt;] to your kernel via boot loader.</span>=
<div>
<font color=3D"#000000"><span style=3D"white-space:pre-wrap"><br></span></f=
ont></div><div><font color=3D"#000000"><span style=3D"white-space:pre-wrap"=
>Every system you want to boot this way will need to have its own root file=
 system on the NFS server. However, there is the nfsroot project [1] that r=
eportedly allows booting entire clusters sharing one root file system. I ha=
ve not used that though.<br>
</span></font><div class=3D"gmail_extra"><br></div></div></div><div>=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid=
;padding-left:1ex">

I&#39;m using an x86 system and can have the kernel and an initrd on it. I =
would use bootp, but a lot of end users either don&#39;t have this or will =
not allow it to be used. I think it needs to go something like:<br>
<br>
1) Kernel loads the initrd and bring the network up (static or DHCP);<br>
2) The rootfs image can then be download;<br>
3) Some magic then makes this run...<br>
<br></blockquote><div>This looks like you want to start up the system, down=
load a root file system tarball, extract it to somewhere and then use that =
as the root file system by chroot&#39;ing to it.</div><div>=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-=
left:1ex">

<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div><div><font face=3D"=
garamond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,=
102);font-family:arial,sans-serif;font-size:13px"><br></span></font></div>
</div></div></div>

--001a11c2240ec2e6d704e2d56c62--
