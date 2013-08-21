Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E72A6E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 04:21:03 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz11so198920veb.8
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 04:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FckXVxql6XmaiYKGZ3KecfHLJp6uGU629DnfJ7nt3ds=;
	b=h4/BrHTFO+169nyY2LRfbZImS4CNtlsyecjjr2//mDFWf+eYnJGn6idcN3o6ivP1Eh
	kRALnU1GIDwbYblJYhVFbwUsdcOjGxHaWIhlpP6CaIQPlAdhYSb5M/t8k3yZ/+js0E5/
	fLUts+PRyCMJp9lSRU0slIHMmSvguxupll1JrApTGKjmMsszRjvots0ki9gZeiCDOlFD
	6Kw1VHCYf9aT4l5ClPlJ3HxzLz9Svih97OFD3oRwHqfRx0hjjYQLWH+YVs/DnKh9NXKS
	2sefXouRwNcLICK2zsISTAifZMLbNI+Z/LJ7U+frEmgCIrRhPVW5nuwYt9QvUBUXm2/r
	MTHw==
X-Gm-Message-State: ALoCoQn3f/8PGBTEZO/Mfj2bju2/ykIy34MUExCIgR1rsPGsaGB2mFvHRckxb6qniCi7GzueZCHu
X-Received: by 10.220.186.202 with SMTP id ct10mr6144031vcb.14.1377084062443; 
	Wed, 21 Aug 2013 04:21:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 21 Aug 2013 04:20:42 -0700 (PDT)
In-Reply-To: <1855197305.7654.1377083873011.JavaMail.root@pune.einfochips.com>
References: <1786668879.7632.1377083449738.JavaMail.root@pune.einfochips.com>
	<1855197305.7654.1377083873011.JavaMail.root@pune.einfochips.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Aug 2013 12:20:42 +0100
Message-ID: <CAJTo0LapwBRTJ3xbuyErbHJLwPQxeG9kqT=cef6OQcR1jFa70A@mail.gmail.com>
To: Rohit Borse <rohit.borse@einfochips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto support for Bluegiga
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
X-List-Received-Date: Wed, 21 Aug 2013 11:21:06 -0000
Content-Type: multipart/alternative; boundary=047d7b676fd05e42c504e4735e9d

--047d7b676fd05e42c504e4735e9d
Content-Type: text/plain; charset=UTF-8

On 21 August 2013 12:17, Rohit Borse <rohit.borse@einfochips.com> wrote:

>      I want to setup zero configuration network on Bluegiga-APX4
> development kit. Bluegiga APX4 has inbuilt zeroconf utility, through which
> Local IP addressing is done automatically without DHCP. But it don't have
> any reference or documentation for "Creating and Advertising new service
> (such as printer,ssh,website etc.) on network".
>  Do yocto BSP supports any such utility to advertise or publish our
> services on network which will also support DNS-SD?
>

oe-core contains Avahi, which does zeroconf/mDNS browsing and service
announcing.

Ross

--047d7b676fd05e42c504e4735e9d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 August 2013 12:17, Rohit Borse <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rohit.borse@einfochips.com" target=3D"_blank">rohit.bors=
e@einfochips.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div style=3D"font-size:10pt;font-famil=
y:Arial"><span>=C2=A0 =C2=A0 =C2=A0I want to setup zero configuration netwo=
rk on Bluegiga-APX4 development kit. Bluegiga APX4 has inbuilt zeroconf uti=
lity, through which Local IP addressing is done automatically without DHCP.=
 But it don&#39;t have any reference or documentation for &quot;Creating an=
d Advertising new service (such as printer,ssh,website etc.) on network&quo=
t;.<br>

=C2=A0Do yocto BSP supports any such utility to advertise or publish our se=
rvices on network which will also support DNS-SD? </span></div></div></bloc=
kquote><div><br></div><div>oe-core contains Avahi, which does zeroconf/mDNS=
 browsing and service announcing.</div>

<div><br></div><div>Ross</div></div></div></div>

--047d7b676fd05e42c504e4735e9d--
