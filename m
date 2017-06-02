Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B9CFE009A0; Fri,  2 Jun 2017 17:00:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E45E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 17:00:16 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id b84so36144048wmh.0
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 17:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fHTzgZGhjlAtD2vE51HdJcC3Zs9Vh4jFesGNwLqP+H4=;
	b=Om2C5RUZCS4zrt3zumLV54Ry5BKZzp23gUlwVGaGrJowVdUB5fdWku4UG6L0lZVc+7
	c5AXDP7Qb41CHTb0OKqQBTDBDAyXQiw5hZJVsCoZVi5B5XgJzMJeBHL+OOK8TihFnU9A
	J8+5nscIYhtvIPdFnsF4nrO9MeBIKtnaWdqY4lMu3ywIds4eBmHeWk/y4r8pkRnTtYHv
	LSfutsmyLsiNZYRk5plfKF3BsdRCQtuSJWdIL8jcs4Nni1B2H8W+EoHWpDJ9ZKfTOpW/
	a//3PBFXPqgbZCCzN4GNrTU39BV14z0qxJ0cDieR8aK7uBIEGzmpIkkf8awQKNQ8Tn7C
	unfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fHTzgZGhjlAtD2vE51HdJcC3Zs9Vh4jFesGNwLqP+H4=;
	b=MCkRk8VRe24pY3umaGVLtNcpPUcBskL/8FmCKr7X1TDL9bZSxFLxnzDYDJQMMtF7rt
	OI2bELZgwiVGb1XndZprSJaRgpyK8e3kirGP+6EGmDHVGE0H3CaelIGB4iCSrWwy9UAX
	RyeLvSTJGoxxpWs3s707m6UoH+I9m9t866IFXG+9SWOPfHiSjay/dK/kt3pDg5+kQMkG
	MzbUMFpnHRElYKd3hRvKxaMR4nLVf6o5HQyd5vq1iy5jScAc79cNjf/u6nvO+5UEUmT3
	DmMh5j0kK5ZNTURV2iCw7wpjEMYLRYg2CW2gbnz3xuZF7o9JVqfPbnszjqfPfxWLTvW+
	T1HA==
X-Gm-Message-State: AODbwcD4+p7gNB55G1fRrUHUF8E4p1EOu4k0aKoUHc17MKvOrbyYyS+6
	Wkihz0xxoQVg324K4/OxZNiGWowUIw==
X-Received: by 10.80.154.165 with SMTP id p34mr7667187edb.127.1496448015594;
	Fri, 02 Jun 2017 17:00:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Fri, 2 Jun 2017 16:59:45 -0700 (PDT)
In-Reply-To: <CACgq_DoUx-xTF9-cM9Qcv3igeC=TnxQE7PWqJe=HK=CVdDpdjw@mail.gmail.com>
References: <CACgq_DpBjavUgXrG9XazuGT8a7td2EyaosQCaqjcwXxkdh5pLw@mail.gmail.com>
	<CAMKF1sq-LT+R6HhjjaRdjkpkqsc9+7RVaz9VO7khDahH0Pzf1Q@mail.gmail.com>
	<CACgq_DoUx-xTF9-cM9Qcv3igeC=TnxQE7PWqJe=HK=CVdDpdjw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Jun 2017 16:59:45 -0700
Message-ID: <CAMKF1srC7oCtE0R3pz+HPgXjj1TWyGkLvEG4DHin-x6S396X=A@mail.gmail.com>
To: Ian Welch <ian_welch@trimble.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File permissions on package_ipk.bbclass
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
X-List-Received-Date: Sat, 03 Jun 2017 00:00:18 -0000
Content-Type: multipart/alternative; boundary="f403045c2d0064f9e5055102f472"

--f403045c2d0064f9e5055102f472
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ian

On Fri, Jun 2, 2017 at 3:52 PM, Ian Welch <ian_welch@trimble.com> wrote:

> Thanks Raj.
>
> We are looking at using `sudo` but this may have a ripple effect in our
> other build scripts. I was hoping there was a more elegant way to handle
> this.
>
> We are using version Yocto v1.7
>


=E2=80=8Bpseudo is yocto utility which is abstracting the super
user operations even when you are building as normal user
which is at times needed when packaging a rootfs e.g.

cam you examine the content of an ipk and check if the
file perms are wrong for contents of an ipk?=E2=80=8B



>
> ~Ian
>
> On Fri, Jun 2, 2017 at 3:14 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Fri, Jun 2, 2017 at 1:57 PM, Ian Welch <ian_welch@trimble.com> wrote:
>> > Hello,
>> >      We are using the package_ipk.bbclass to create packages for opkg
>> that
>> > will be installed on our embedded hardware (target). We are also using
>> > Jenkins as a CI server to run bitbake. We have discovered that when we
>> > install packages built on Jenkins we get all kinds of file permissions
>> > errors after installing the ipks on our target system. I have tracked
>> the
>> > issue down to bitbake being run by a user called "jenkins" on our
>> Jenkins
>> > system. The permissions of the files are all "jenkins:jenkins" prior t=
o
>> the
>> > do_package task running which results in these permissions getting
>> packaged
>> > into the .ipk files.
>> >
>> > Is there a way to change the ownership of the files prior to being
>> packaged?
>> > I'm thinking of something like a package_ipk.bbappend file or
>> environment
>> > variable?
>> >
>>
>> pseudo should have taken care of this.
>> what release are you on ?
>>
>> > Cheers,
>> >
>> > --
>> >
>> > Ian Welch
>> > Trimble Navigation
>> > 10368 Westmoor Drive | Westminster, CO 80021
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>
>
> --
>
> Ian Welch
> Engineering Manager, Civil Engineering & Construction
> 10368 Westmoor Drive | Westminster, CO 80021
> +1-303-635-8750 <(303)%20635-8750> Direct | +1-720-320-5181
> <(720)%20320-5181> Mobile
>

--f403045c2d0064f9e5055102f472
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Hi Ian</div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Fri, Jun 2, 2017 at 3:52 PM, Ian Welch <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ian_welch@trimble.com" target=3D"_blank">ian_welch@trimble.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Thanks Raj.<div><br></div><div>We are looking at using `sudo` but this may=
 have a ripple effect in our other build scripts. I was hoping there was a =
more elegant way to handle this.=C2=A0</div><div><br></div><div>We are usin=
g version Yocto v1.7</div></div></blockquote><div><br></div><div><br></div>=
<div><div class=3D"gmail_default" style=3D"font-family:monospace,monospace"=
>=E2=80=8Bpseudo is yocto utility which is abstracting the super</div><div =
class=3D"gmail_default" style=3D"font-family:monospace,monospace">user oper=
ations even when you are building as normal user</div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace,monospace">which is at times needed =
when packaging a rootfs e.g.</div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace"><br></div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace">cam you examine the content of an ipk =
and check if the</div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace">file perms are wrong for contents of an ipk?=E2=80=8B</di=
v><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div><br></div><div>~Ian</div></div><div class=3D"gmail_extra"><div><div =
class=3D"h5"><br><div class=3D"gmail_quote">On Fri, Jun 2, 2017 at 3:14 PM,=
 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span>On Fri, Jun 2, 2017 at 1:57 PM, Ian Welch &lt;<a href=
=3D"mailto:ian_welch@trimble.com" target=3D"_blank">ian_welch@trimble.com</=
a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 We are using the package_ipk.bbclass to create pac=
kages for opkg that<br>
&gt; will be installed on our embedded hardware (target). We are also using=
<br>
&gt; Jenkins as a CI server to run bitbake. We have discovered that when we=
<br>
&gt; install packages built on Jenkins we get all kinds of file permissions=
<br>
&gt; errors after installing the ipks on our target system. I have tracked =
the<br>
&gt; issue down to bitbake being run by a user called &quot;jenkins&quot; o=
n our Jenkins<br>
&gt; system. The permissions of the files are all &quot;jenkins:jenkins&quo=
t; prior to the<br>
&gt; do_package task running which results in these permissions getting pac=
kaged<br>
&gt; into the .ipk files.<br>
&gt;<br>
&gt; Is there a way to change the ownership of the files prior to being pac=
kaged?<br>
&gt; I&#39;m thinking of something like a package_ipk.bbappend file or envi=
ronment<br>
&gt; variable?<br>
&gt;<br>
<br>
</span>pseudo should have taken care of this.<br>
what release are you on ?<br>
<div class=3D"m_-5359920992643599450HOEnZb"><div class=3D"m_-53599209926435=
99450h5"><br>
&gt; Cheers,<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Ian Welch<br>
&gt; Trimble Navigation<br>
&gt; 10368 Westmoor Drive | Westminster, CO 80021<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"m_-5359920992643599450HOEnZb"><font color=3D"#88=
8888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div></div=
></div>-- <br><div class=3D"m_-5359920992643599450gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><img><br><span style=3D"font-fa=
mily:sans-serif;font-size:13px;line-height:18.5714px;font-weight:bold;color=
:rgb(54,53,69)">Ian Welch<br></span><span style=3D"font-family:sans-serif;f=
ont-size:13px;line-height:18.5714px;color:rgb(54,53,69)">Engineering Manage=
r, Civil Engineering &amp; Construction<br></span><span class=3D""><span st=
yle=3D"font-family:sans-serif;font-size:13px;line-height:18.5714px;color:rg=
b(54,53,69)">10368 Westmoor Drive=C2=A0|=C2=A0</span><span style=3D"font-fa=
mily:sans-serif;font-size:13px;line-height:18.5714px;color:rgb(54,53,69)">W=
estminster, CO 80021<br></span></span><span style=3D"font-family:sans-serif=
;font-size:13px;line-height:18.5714px;color:rgb(54,53,69)"><a href=3D"tel:(=
303)%20635-8750" value=3D"+13036358750" target=3D"_blank">+1-303-635-8750</=
a> Direct |=C2=A0</span><span style=3D"font-family:sans-serif;font-size:13p=
x;line-height:18.5714px;color:rgb(54,53,69)"><a href=3D"tel:(720)%20320-518=
1" value=3D"+17203205181" target=3D"_blank">+1-720-320-5181</a> Mobile=C2=
=A0</span><br></div></div>
</div>
</blockquote></div><br></div></div>

--f403045c2d0064f9e5055102f472--
