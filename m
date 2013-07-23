Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D35E01525
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:07:08 -0700 (PDT)
Received: by mail-ea0-f181.google.com with SMTP id a15so4629066eae.40
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 08:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nExjg4hDLAr4EuQjEfBdlAhSZKCGTCSs4M4/MyWnz40=;
	b=bZv+yXm4d6+IdzzXSw5a2TSOCMPMdtkdoQpPo3CTNipkimlkGAoLDR9EXdNHJbtc7+
	K27iQ9wiBumhS/Uu6yGFKvMDo1MHtOVFwqbKE+fXnPa9Yfj6iSlpdEAZea0mA6wzx3UT
	OFadQQh8FNGGLxnrolZ6gFXxqksIsKbrP70/z2os8BAJl90uTmo6xaLuYvRUH61+Z6c4
	DSvuHCyClJgJbv1w3u3JktEhQvMuH6XdKBi4C9RhlivnxuFBngmhS1Yz30Iw3Z/gTt8O
	Vm2SbWmJQ6iUg9hgkn5rbnlFdbDAEMnFYMgpFpxcKc0pOPBPnmcNQEGOkBiYuJbMRfzS
	evYA==
MIME-Version: 1.0
X-Received: by 10.15.31.9 with SMTP id x9mr33119431eeu.103.1374592027545; Tue,
	23 Jul 2013 08:07:07 -0700 (PDT)
Received: by 10.223.195.69 with HTTP; Tue, 23 Jul 2013 08:07:07 -0700 (PDT)
In-Reply-To: <1448217.YGUG8tWujW@helios>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<CAFZh4h_OVRZYC1CtBffobwNT118wMy2J9-BTnLH2tDJMh7SNXQ@mail.gmail.com>
	<1448217.YGUG8tWujW@helios>
Date: Tue, 23 Jul 2013 11:07:07 -0400
Message-ID: <CAFZh4h-Jee_u4RMaxH9E6JyBCZkK8GXVcz4GbHEDt8wChiASRw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Tue, 23 Jul 2013 15:07:09 -0000
Content-Type: multipart/alternative; boundary=089e0168127c8374b904e22f250d

--089e0168127c8374b904e22f250d
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 23, 2013 at 10:58 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 23 July 2013 10:36:46 Brian Hutchinson wrote:
> > ... thought I'd give an update.  I switched all branches to use master
> and
> > I was able to build packages from meta-networking (and others) just fine.
> >
> > Thanks again for straightening me out!
>
> Great!
>
> One thing to keep in mind though, master is the development branch so it
> does
> occasionally break, so if you'd prefer something a bit more stable I'd
> suggest
> the most recent stable release tag or branch (currently dylan-9.0.1 or
> dylan
> respectively).
>
>
I know its the bleeding edge but I need a specific version of a package and
at the moment it is only in master.  I guess I could back port it but I'm
hoping that before I need to do a release, there will be another yocto
release that will include the version I need in a released branch ;)

Regards,

Brian

--089e0168127c8374b904e22f250d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2013 at 10:58 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton=
@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Tuesday 23 July 2013 10:36:46 Br=
ian Hutchinson wrote:<br>
&gt; ... thought I&#39;d give an update. =A0I switched all branches to use =
master and<br>
&gt; I was able to build packages from meta-networking (and others) just fi=
ne.<br>
&gt;<br>
&gt; Thanks again for straightening me out!<br>
<br>
</div></div>Great!<br>
<br>
One thing to keep in mind though, master is the development branch so it do=
es<br>
occasionally break, so if you&#39;d prefer something a bit more stable I&#3=
9;d suggest<br>
the most recent stable release tag or branch (currently dylan-9.0.1 or dyla=
n<br>
respectively).<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>I know its the bleeding edge but I need a specific version of=
 a package and at the moment it is only in master. =A0I guess I could back =
port it but I&#39;m hoping that before I need to do a release, there will b=
e another yocto release that will include the version I need in a released =
branch ;)</div>
<div><br></div><div>Regards,</div><div><br></div><div>Brian</div><div>=A0</=
div></div>

--089e0168127c8374b904e22f250d--
