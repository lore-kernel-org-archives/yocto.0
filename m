Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80433E00C9C; Wed, 15 Jun 2016 03:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7106E00C86
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 03:53:11 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id z189so101909591itg.0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 03:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FCgU7aq/uEY34IAq5z9L4ThnfOgF2GLvo/Q7ps2/YII=;
	b=DyuPpWzXqtte6k6of70j1DhpIl2gWYsyOQIjn7O8Iq2O0WqqOkybmKNaVRBQLvxgaF
	Q5mH7UFAJIdMktRKP77CB0iA/vTg2XGu7N4M4Wvsdors2TM6zcVyYLzUsJ9xPhlB/mTS
	mdvpB65M3TPSFpkRdfFrHeUww3jMV8EddntWJjNTpX6QLFdkyFCgG0W4o7Gjnoci9ilk
	1St1qNEMD/qHkX5zc4LPFjiz6o87AzD40TkdPW4EHh0KkPFCsspaDZD1pU6nkie1/3Gh
	08pnyiU0TXr1gNgKbfma+sbLPYGolb18UGh+WEcu5SKeNsE5+804hFMWe1dn202tZhlC
	LAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FCgU7aq/uEY34IAq5z9L4ThnfOgF2GLvo/Q7ps2/YII=;
	b=mAVpkPiXXOzuqc0BrYA35IAQDhLuXJeSpXgiopOXi9AvIoUdqkz3YKtvrqo8owIYUJ
	9vAUTK6l9oPFgLnWaEPf8NS1kF5GfXrqFvozjC/L8NFldQMZnzuBBBgms1VD0G/QRidc
	t4P87x4b4npNV31C6rYVC5ruqY3kib6Xco09ZHsLiM/9s5fDk899mmmCy3PDLzTjZMnE
	dDuirTSCuPgzKclLIWFagHFwLlQOz/plJAGg4+jH+0y1y2mQL3Xz9O3Az+VW6svSa2NW
	xMHF8B6J+zU++I48sVe1hF3xKaci2BSbM6e3gKV8HGN45g2Tr+DygWGUlR55hjgZtTx4
	F5mw==
X-Gm-Message-State: ALyK8tIRoK4C76ND+GstmKRc86LA2m5tznQeoagUButQFRshDYUUpLXvm46VCz/GEfiiMNn4YZ7anjRXagtYUC0z
X-Received: by 10.36.57.211 with SMTP id l202mr34661518ita.22.1465987990768;
	Wed, 15 Jun 2016 03:53:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 15 Jun 2016 03:52:51 -0700 (PDT)
In-Reply-To: <CAJTo0Lb3p=KJhk0+WUcNBWpR0Zp5VsCsxtoqqvAy6EMGQm+KFw@mail.gmail.com>
References: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
	<CAJTo0Lb3p=KJhk0+WUcNBWpR0Zp5VsCsxtoqqvAy6EMGQm+KFw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Jun 2016 11:52:51 +0100
Message-ID: <CAJTo0LZssukXZ4KEktWTBpYQbBN6uWZ8EbOoLYyN=PSc2fpQgw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
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
X-List-Received-Date: Wed, 15 Jun 2016 10:53:17 -0000
Content-Type: multipart/alternative; boundary=001a114ab3ca6f647005354eed52

--001a114ab3ca6f647005354eed52
Content-Type: text/plain; charset=UTF-8

On 15 June 2016 at 10:31, Burton, Ross <ross.burton@intel.com> wrote:

> Fixing this is trivial, add ppc64 to QEMU_TARGETS in qemu.inc.
>

I'm wrong - this is more complicated as there's numerous options for
ppc64.  I've filed https://bugzilla.yoctoproject.org/show_bug.cgi?id=9778
to track this.  Obviously we need qemuppc64 in oe-core to test this.

Ross

--001a114ab3ca6f647005354eed52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 June 2016 at 10:31, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex"><div>Fixing this is trivial, add ppc64 to=
 QEMU_TARGETS in qemu.inc.</div><span class=3D""><div></div></span></blockq=
uote></div><br>I&#39;m wrong - this is more complicated as there&#39;s nume=
rous options for ppc64.=C2=A0 I&#39;ve filed=C2=A0<a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D9778">https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D9778</a> to track this.=C2=A0 Obviously we need qemupp=
c64 in oe-core to test this.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--001a114ab3ca6f647005354eed52--
