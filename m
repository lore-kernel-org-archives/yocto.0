Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62988E01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 09:08:24 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id ar20so23400506iec.7
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gpYXjIFeM/fB7pfrTk7hpf8G+9GARukksEERv6i48Dg=;
	b=e1jKpmBUgLONaXyx/j+0iy4s2XCovMb+VZ5XPKUigb6I0ikf+3bHyd45uN0I88biGz
	LHtbs0Wk7X3Z7CMtpp5P7KStgRX+Ra2OAfoYflwPj5vwtDj1+t/zGRl8OZzQSuDqH21w
	hGYbBHm3p31FjHirBde8hmJPVRvcxYDH6MHTvuZId5bKIlNWTfaQ8D/D70G483xG8HbJ
	VgYbN/HxIlr5WRufgkI0xEBsA5/oib3MU7be4tkHaDLhd9R39Camo6HZLdKCDetdy2lV
	E3xyQHjtFkbHqITrKkN0Ie4BHDbE8Yrdd8EkNqxphJ5M0FzM3fTROi4WQCghVQCdsjOl
	AJJw==
MIME-Version: 1.0
X-Received: by 10.50.134.136 with SMTP id pk8mr643566igb.32.1371139704421;
	Thu, 13 Jun 2013 09:08:24 -0700 (PDT)
Received: by 10.50.43.167 with HTTP; Thu, 13 Jun 2013 09:08:24 -0700 (PDT)
In-Reply-To: <CAJTo0Lbzzb1X7N_micY3qBTprcK8ZV4i8=g5pd_6BMptQtdgpA@mail.gmail.com>
References: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
	<CAJTo0Lbzzb1X7N_micY3qBTprcK8ZV4i8=g5pd_6BMptQtdgpA@mail.gmail.com>
Date: Thu, 13 Jun 2013 17:08:24 +0100
Message-ID: <CAM1ZcoVjQ83ecfrQasDY29CYs+RNEUmUqJbjg6XseS-qBF-n1g@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe using waf installation location
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
X-List-Received-Date: Thu, 13 Jun 2013 16:08:27 -0000
Content-Type: multipart/alternative; boundary=047d7b3a9c1605033104df0b5764

--047d7b3a9c1605033104df0b5764
Content-Type: text/plain; charset=ISO-8859-1

Thanks a lot Ross,
you are absolutely right. Just that the --prefix in waf it's done in the
configure so I now have

do_configure() {
./waf configure --prefix=${prefix} --debug --alsa --clients=128
}

and it's working. I still get the same warning for /usr/lib/.debug/* files.
I guess that the prefix has to be setup differently for debug? I'm new to
waf too...

Thanks again for your help.


2013/6/13 Burton, Ross <ross.burton@intel.com>

> On 13 June 2013 09:55, Katu Txakur <katutxakurra@gmail.com> wrote:
> > do_configure() {
> > ./waf configure --alsa --debug --clients=128
> > }
>
> I've never used waf, but I expect at this point you need to tell waf
> what the prefix is.  With autoconf this would be --prefix=${prefix},
> have a look at the waf arguments and autotool.bbclass for examples.
>
> Ross
>

--047d7b3a9c1605033104df0b5764
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot Ross,<div>you are absolutely right. Just that=
 the --prefix in waf it&#39;s done in the configure so I now have</div><div=
><div><br></div><div>do_configure() {</div><div><span class=3D"" style=3D"w=
hite-space:pre">	</span>./waf configure --prefix=3D${prefix} --debug --alsa=
 --clients=3D128 =A0</div>
<div>}</div></div><div><br></div><div style>and it&#39;s working. I still g=
et the same warning for /usr/lib/.debug/* files. I guess that the prefix ha=
s to be setup differently for debug? I&#39;m new to waf too...</div><div st=
yle>
<br></div><div style>Thanks again for your help.</div></div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">2013/6/13 Burton, Ross <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank"=
>ross.burton@intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 13 June 2013 09:55, Kat=
u Txakur &lt;<a href=3D"mailto:katutxakurra@gmail.com">katutxakurra@gmail.c=
om</a>&gt; wrote:<br>

&gt; do_configure() {<br>
&gt; ./waf configure --alsa --debug --clients=3D128<br>
&gt; }<br>
<br>
</div>I&#39;ve never used waf, but I expect at this point you need to tell =
waf<br>
what the prefix is. =A0With autoconf this would be --prefix=3D${prefix},<br=
>
have a look at the waf arguments and autotool.bbclass for examples.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--047d7b3a9c1605033104df0b5764--
