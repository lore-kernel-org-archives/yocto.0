Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DC4AE00C44; Wed, 11 Apr 2018 02:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F30D1E009E2
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 02:12:37 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id u141-v6so1039401oif.1
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2018 02:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=J1jX8ZRQ/i1ZCbocDlBv8qXXrlAd5Rt+0bKux8eBYys=;
	b=Wp51n/rHxpg1+6aNnpAQ14We41L0sV8cZHYXLMmy4J3Am69+FTWIc2xrBBoHRiyhTz
	cLuGzT/AiwNgRhMduXMUYsUzlQWWdqIwpYGvixsj/IxMj1vdD3TOFX1DaYy7KWFjvgsJ
	POEFfifQv45E9moIv4w30Jz6zk1ci9+8cilOFz7qLYm7K0zwoN2y6gJb8mNrUhWmb61A
	Nf/47072fMtMv9jxuNsBnkUw/PGaNPgj09jT2AVkefboTQ2DZJiXFurSuQDPxgxHt4PX
	zqM1+elIf6/8oIeXD6zCgxfJOEJa71/+UuS0asKHXOmQqrPdFcSFAjukAYwscEAlQQiW
	Snqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=J1jX8ZRQ/i1ZCbocDlBv8qXXrlAd5Rt+0bKux8eBYys=;
	b=Tcg5GkLEaUjN/r1a9hZltF/BIAbdOCJW3UjWVTJ/jJCahXSRkz9Z4eNnL2fozqEWA0
	5k0O47j7IwNYN2d4TN+eL79aoh86QsWqxFLEKD3W1FA3knXCFFDVvvBa41kb3i1gmb1U
	aDwJb1XVlSv1LM05saoU0fhGH727qNKggH85qmIvoWjGorG4gHKAVZaWuC0xaO7OfYSu
	h5HlVGJmEOGqSTOQbo5omqnWe68LGQgdNPdOOkOp4nUd1CrJ+xN4xv4g0PqeoI/qGIJP
	pZSdjz0I13NrBRJjAWaRLdiLxWHD/efXXmjSl2cmhazF9sFdSUmZ5UB1z22C112oxWAx
	HVWA==
X-Gm-Message-State: ALQs6tC4rlSCexSdYjRHHzuiu5AGyOy5pQIxQEsaoMsOJHi4e37XVgA0
	3kxwdZIDZw+lJLJjasOROKtTkRftMS9EDou0NQ0=
X-Google-Smtp-Source: AIpwx4/N4tuI+w1m8tF5mtfalVK59d9QDGMiYtY/EAz72k7KoFHdoO9BYiuRmvd3nzl9RdVLJfqHCe+q3idYz9Nx2x0=
X-Received: by 2002:aca:ce94:: with SMTP id
	e142-v6mr2278247oig.194.1523437957358; 
	Wed, 11 Apr 2018 02:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
	<CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
In-Reply-To: <CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 11 Apr 2018 09:12:26 +0000
Message-ID: <CAEhQi8kGya0qqB8Pj=dSgLaVFR_g2FRK1cuVYrPOBXrogUf8dw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Wed, 11 Apr 2018 09:12:38 -0000
Content-Type: multipart/alternative; boundary="000000000000492b5005698f0a6b"

--000000000000492b5005698f0a6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe dbus codegen is the tools generating the code.

Br
Mans Zigher

On Tue, Apr 10, 2018, 14:44 Burton, Ross <ross.burton@intel.com> wrote:

> What tool is generating the code?  It probably shouldn't be using the
> full path of the header...
>
> Ross
>
> On 10 April 2018 at 09:29, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote=
:
> > Hi,
> >
> > I am having some problems with one of my recipes when using the SRCPV t=
he
> > get_srcrev is returning "AUTOINC+" + rev. This will cause problem in my
> > compile because I am using dbus codegen and it looks like the
> auto-generated
> > code cannot handle the + sign in the paths. Is there a reason for this =
+
> > sign. The generated code that causes my build to fail looks like this
> >
> > #ifndef
> >
> ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBERRYP=
I_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1=
_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BLUEZ=
_LE_ADVERTISEMENT_INTERFACE_H__
> >
> > Currently the only way for me to get the build to work is not use the
> SRCPV.
> > Could it actually be a better way then using the + sign or is there a
> > logical requirement for it?
> >
> > BR
> > Mans Zigher
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--000000000000492b5005698f0a6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I believe dbus codegen is the tools generating the code.<=
div dir=3D"auto"><br></div><div dir=3D"auto">Br</div><div dir=3D"auto">Mans=
 Zigher</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, =
Apr 10, 2018, 14:44 Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.co=
m">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">What tool is generating the code?=C2=A0 It probably shouldn&#39;t be u=
sing the<br>
full path of the header...<br>
<br>
Ross<br>
<br>
On 10 April 2018 at 09:29, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.zigh=
er@gmail.com" target=3D"_blank" rel=3D"noreferrer">mans.zigher@gmail.com</a=
>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am having some problems with one of my recipes when using the SRCPV =
the<br>
&gt; get_srcrev is returning &quot;AUTOINC+&quot; + rev. This will cause pr=
oblem in my<br>
&gt; compile because I am using dbus codegen and it looks like the auto-gen=
erated<br>
&gt; code cannot handle the + sign in the paths. Is there a reason for this=
 +<br>
&gt; sign. The generated code that causes my build to fail looks like this<=
br>
&gt;<br>
&gt; #ifndef<br>
&gt; ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBER=
RYPI_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMO=
N_1_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BL=
UEZ_LE_ADVERTISEMENT_INTERFACE_H__<br>
&gt;<br>
&gt; Currently the only way for me to get the build to work is not use the =
SRCPV.<br>
&gt; Could it actually be a better way then using the + sign or is there a<=
br>
&gt; logical requirement for it?<br>
&gt;<br>
&gt; BR<br>
&gt; Mans Zigher<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nor=
eferrer">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
&gt;<br>
</blockquote></div>

--000000000000492b5005698f0a6b--
