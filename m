Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4DA5E00CCA; Thu, 28 Sep 2017 02:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D43F0E00C45
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 02:36:59 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id 85so515372ith.2
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 02:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jooF3vCUJKSFk+aJyEWWgzULsUvdfnoJ5I/z0yLLNKI=;
	b=Slpq/C8A1XDCmtqdrlvxWaDaurYM7inaHjyBwPB0UgZwQTmmmuJ1mZE+5ZujvSCr6g
	MKCg1dpsM/6HyD4ztbgEfo1ZMIEr1i89Gc/XNsdwXO5+naPgs+vcK6QJODSei9goJpOW
	zRp6J2GCyzbaKqDWompXiNX0IbxJ8N5VrXiScsFuGOD8Fvsp1La0JEvKl/CZAmJH328e
	wkzpIyEUPbkH2FPbaaZHLHgybjE8RbRxmEb58ljJbKQSFlsThnQq7JCd+dBhnJIzD3ZM
	PDKCfVbnvzBJ7XaXayV+L5C1i6TecGlVbN8nHhz5Fj/32tufLgusjTpUcPpLknOiWm7h
	DLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jooF3vCUJKSFk+aJyEWWgzULsUvdfnoJ5I/z0yLLNKI=;
	b=lRMgBWafj7lrZ/FfDTg50+Ejkt+iC8QXO+gmgkwpkrNJGLD6Q2pHGWYfsmlaIB3I3a
	XTUPneGqGNVaKj+5/j0NSrGN0/XCedUX52Zw8jgBYjeG7rCqsUoL4yB5w9J4iiTCVW12
	c1fQWp568bQICbladsmmgYAD2WtsKQmcm3LjfaSXRWD4TleIEHpwb/v18Th4PaJvYfBD
	r8WPO0MvWo1wCqO779B1Z15JzQsLGk86tk4xQSPyovMVY+LGx4xp0fY5sxmmNNnFE8NR
	/4txIdU4fl9hEm7JJ3gi5Rh+Ng4Nefc68POkCPZiQozpzM5pgnqTAVqKnBvVJWS50Jn4
	9NCw==
X-Gm-Message-State: AMCzsaVZZKDRy52EjvSxemA59FpNVsJ0u2WPGvT0EZ3iblSBmJ/U6DrO
	d37DIuMxeaENNf9A3WMCG1yayDGg3fYQoayeoIweYg==
X-Google-Smtp-Source: AOwi7QCdpSsTcdjPXezMdyNfijuUi4xDNE2mMiL50Zaw79G6uHbb7Wb0F9cWTsrTpmmv2qYefixKpJHGrUYPXXKXVog=
X-Received: by 10.36.181.73 with SMTP id j9mr580576iti.6.1506591419113; Thu,
	28 Sep 2017 02:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Thu, 28 Sep 2017 02:36:38 -0700 (PDT)
In-Reply-To: <CAMKF1soJWJaL+hkjiwc1YabimNgt9SHpABXnT7nBax1XQchFvQ@mail.gmail.com>
References: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
	<CAGsrAHfGk6tXhYBawVSjCJnd+2JUZaD+_J-z__wwHivdS2+VwQ@mail.gmail.com>
	<CAJTo0LYhvE-BQCgeb1zgmtcQPcd09Zm6Cau_n9cT+5yuztdE0Q@mail.gmail.com>
	<CAMKF1soJWJaL+hkjiwc1YabimNgt9SHpABXnT7nBax1XQchFvQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Sep 2017 10:36:38 +0100
Message-ID: <CAJTo0LbXLRv_4X8HHGa_W+7iHTFGNsuPLNDJSHE7bZ24GrUnQA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_configure error
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
X-List-Received-Date: Thu, 28 Sep 2017 09:37:01 -0000
Content-Type: multipart/alternative; boundary="f403045d9e425bcb19055a3ca681"

--f403045d9e425bcb19055a3ca681
Content-Type: text/plain; charset="UTF-8"

On 28 September 2017 at 05:51, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Sep 23, 2017 at 12:33 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > On 23 September 2017 at 06:56, mohammed aqdam <mohammedaqdam@gmail.com>
> > wrote:
> >>
> >> i'm getting the following error...
> >>
> >> root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k
> >> rpi-test-image
> >
> >   ^^^^
> >
> >>  configure: error: you should not run configure as root
> >
> > As it says, you're running as root.  I thought we bailed early if this
> > happened but obviously not.  Don't build as root, build as a normal user.
> >
>
> this should be added to sanity check I think
>

I thought it did, and I was right:

def check_sanity_everybuild(status, d):
    ...
    if 0 == os.getuid():
        raise_sanity_error("Do not use Bitbake as root.", d)

Either Mohammed's user is called root but doesn't have UID 0, or Mohammed
has disabled sanity.

Ross

--f403045d9e425bcb19055a3ca681
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 28 September 2017 at 05:51, Khem Raj <span dir=3D"ltr">=
&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.=
com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,20=
4,204);padding-left:1ex">On Sat, Sep 23, 2017 at 12:33 PM, Burton, Ross &lt=
;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wro=
te:<br>
&gt; On 23 September 2017 at 06:56, mohammed aqdam &lt;<a href=3D"mailto:mo=
hammedaqdam@gmail.com">mohammedaqdam@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; i&#39;m getting the following error...<br>
&gt;&gt;<br>
&gt;&gt; root@pcz-ee207837-2:/u/my_<wbr>poky/poky-2/poky/build# bitbake -k<=
br>
&gt;&gt; rpi-test-image<br>
&gt;<br>
&gt;=C2=A0 =C2=A0^^^^<br>
&gt;<br>
&gt;&gt;=C2=A0 configure: error: you should not run configure as root<br>
&gt;<br>
&gt; As it says, you&#39;re running as root.=C2=A0 I thought we bailed earl=
y if this<br>
&gt; happened but obviously not.=C2=A0 Don&#39;t build as root, build as a =
normal user.<br>
&gt;<br>
<br>
this should be added to sanity check I think<br></blockquote><div><br></div=
><div>I thought it did, and I was right:</div><div><br></div><div>def check=
_sanity_everybuild(status, d):</div><div>=C2=A0 =C2=A0 ...</div><div>=C2=A0=
 =C2=A0 if 0 =3D=3D os.getuid():<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
raise_sanity_error(&quot;Do not use Bitbake as root.&quot;, d)=C2=A0</div><=
div><br></div><div>Either Mohammed&#39;s user is called root but doesn&#39;=
t have UID 0, or Mohammed has disabled sanity.</div><div><br></div><div>Ros=
s</div></div></div></div>

--f403045d9e425bcb19055a3ca681--
