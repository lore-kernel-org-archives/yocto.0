Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F9E2E00781; Thu, 17 Jul 2014 02:14:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og114.obsmtp.com (exprod8og114.obsmtp.com [64.18.3.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75099E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:14:41 -0700 (PDT)
Received: from mail-lb0-f170.google.com ([209.85.217.170]) (using TLSv1) by
	exprod8ob114.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU8eUARDybXwHudGDGixryBs2SbLCaXDG@postini.com;
	Thu, 17 Jul 2014 02:14:49 PDT
Received: by mail-lb0-f170.google.com with SMTP id w7so621248lbi.1
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 02:14:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=LPH+0GzBx/BJOssZA2QSXkhNWK+UDslXAB99IVILVnc=;
	b=cqQHR+2lxVKRpqmiWdur3OlMeYge72nPHmPfxiYknGcd2k9E4nl5808/TCxvEcYT2O
	dG+QtGQXuTPQ6zTMcKKP4b+mnXAba1mumKOA/2EwV9yyCDzWSoprHxtkNwk0GL/snect
	urkJCC0eHb4xkOUqBM5zFKKvjK6dJFP/HFctdKyGP6hFir5idwySFbaqq7wUWRBo4n1k
	wS2my2O5fAFvNket0eFwOl/i9IV4ghSZVvRNCHXDkdOGFJ+olGhrXH+E9TJ7q2wj7xKJ
	66lFLgbsf3Nx+yt6QEFgbkoVu/V6AF0PMOroSlBOPuMktSHfSsAO07IN99kA1QyeyKAI
	GQkA==
X-Gm-Message-State: ALoCoQkgbLdo/B06qY0EYmbTq/YSvlYflv1njWTsnpui/fNyVBMQ8gPNqZCWTUrhKUZjv8VcwhaCdZ/vucTdQbrIZcn1p+1JwEoezl4oCMVXU8qy1ZK2auHJWUArINV1H0Q1bevKjXJ7
X-Received: by 10.113.5.5 with SMTP id ci5mr8347787lbd.82.1405588480077;
	Thu, 17 Jul 2014 02:14:40 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.113.5.5 with SMTP id ci5mr8347773lbd.82.1405588479986; Thu,
	17 Jul 2014 02:14:39 -0700 (PDT)
Received: by 10.152.36.65 with HTTP; Thu, 17 Jul 2014 02:14:39 -0700 (PDT)
In-Reply-To: <53C78FDE.5000705@windriver.com>
References: <CAJrRHk6gt9GTaj1+uf77x9bt2zjmfJFzCnA3A-eS1U2WqgfPHg@mail.gmail.com>
	<53C78FDE.5000705@windriver.com>
Date: Thu, 17 Jul 2014 17:14:39 +0800
Message-ID: <CAJrRHk4BZ54BcJZTduzC8h0rqf8=pjAKG2wA2GNLzH4wfeS1Ow@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Chong Lu <Chong.Lu@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool error when running adt_installer
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
X-List-Received-Date: Thu, 17 Jul 2014 09:14:52 -0000
Content-Type: multipart/alternative; boundary=001a11346e5e0ce2d504fe60126c

--001a11346e5e0ce2d504fe60126c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Chong,

Thank you again for looking into my issue. Apparently, in the generated
configure script:

# Always use our own libtool.
LIBTOOL=3D'$(top_builddir)'
LIBTOOL=3D"$LIBTOOL/${host_alias}-libtool"

Looked into the changes for this and there was a patch  submitted to
differentiate host aliases.
http://cgit.openembedded.org/openembedded/plain/recipes/binutils/binutils-2=
.20.1/libtool-update.patch

Found out that host_alias was "" which resulted to -libtool. When I set
manually host_alias to a certain host value, it went pass the error. So
maybe the question now is where is host_alias assigned to a value?

YES. There was a connection error since I've disabled HTTP_PROXY.

Thanks,
Joseph


On Thu, Jul 17, 2014 at 4:57 PM, Chong Lu <Chong.Lu@windriver.com> wrote:

>  Hi Joseph,
>
> In adt-installer/opkg/build/opkg-svn/configure file, we have
>  8917 # Always use our own libtool.
>  8918 LIBTOOL=3D'$(SHELL) $(top_builddir)/libtool'
>
> So, we should libtool rather than -libtool.
> Do you have any env variable to set LIBTOOL?
>
> In addition, I found your log:
>
> --2014-07-16 15:53:29--  http://adtrepo.yoctoproject.org/1.5.1
> Resolving adtrepo.yoctoproject.org... 140.211.169.59
> Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... failed: Conn=
ection refused.
>
> You fail to connect repo. Please check.
>
> BR
> Chong
>
>
> On 07/17/2014 09:18 AM, Joseph Andrew de la Pe=C3=B1a wrote:
>
>  Good day,
>
>  I have an error in libtool when running adt_installer script.
>
>  make[1]: Entering directory
> `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'
> ../-libtool  --tag=3DCC   --mode=3Dcompile i586-poky-linux-gcc  -m32
> -march=3Di586
>  --sysroot=3D/bonus/scratch/jdelapena/sdk/sysroots/i586-poky-linux
> -DHAVE_CONFIG_H -I. -I../libopkg    -g -O -Wall -DHOST_CPU_STR=3D\"x86_64=
\"
> -DBUILD_CPU=3Dx86_64 -O -fno-omit-frame-pointer -g
> -feliminate-unused-debug-types -pipe -MT libbb_la-gz_open.lo -MD -MP -MF
> .deps/libbb_la-gz_open.Tpo -c -o libbb_la-gz_open.lo `test -f 'gz_open.c'
> || echo './'`gz_open.c
>
>  */bin/sh: ../-libtool: No such file or directory*
> make[1]: *** [libbb_la-gz_open.lo] Error 127
> make[1]: Leaving directory
> `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'
> make: *** [all-recursive] Error 1
>
>  Seems to be $LIBTOOL was not having the correct value. I've searched all
> occurrence of $LIBTOOL but all of them had -libtool value.
>
>  Where does $LIBTOOL originate when creating my own adt_installer script
> via bitbake adt-installer?
> What variables in any conf file do I need to change to run adt_installer
> successfully?
>
>  Attached is the full log during running of adt_installer.
>
>  Thanks,
> Joseph
>
>
>
>
>

--001a11346e5e0ce2d504fe60126c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Chong,<div><br></div><div>Thank you again for loo=
king into my issue. Apparently, in the generated configure script:</div><di=
v><br></div><div># Always use our own libtool.</div><div>LIBTOOL=3D&#39;$(t=
op_builddir)&#39;</div>
<div>LIBTOOL=3D&quot;$LIBTOOL/${host_alias}-libtool&quot;</div><div><br></d=
iv><div>Looked into the changes for this and there was a patch =C2=A0submit=
ted to differentiate host aliases.=C2=A0</div><div><a href=3D"http://cgit.o=
penembedded.org/openembedded/plain/recipes/binutils/binutils-2.20.1/libtool=
-update.patch">http://cgit.openembedded.org/openembedded/plain/recipes/binu=
tils/binutils-2.20.1/libtool-update.patch</a><br>
</div><div><br></div><div>Found out that host_alias was &quot;&quot; which =
resulted to -libtool. When I set manually host_alias to a certain host valu=
e, it went pass the error. So maybe the question now is where is host_alias=
 assigned to a value?<br>
</div><div><br></div><div>YES. There was a connection error since I&#39;ve =
disabled HTTP_PROXY.</div><div><br></div><div>Thanks,</div><div>Joseph</div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu=
, Jul 17, 2014 at 4:57 PM, Chong Lu <span dir=3D"ltr">&lt;<a href=3D"mailto=
:Chong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hi Joseph,<br>
    <br>
    In adt-installer/opkg/build/opkg-svn/configure file, we have<br>
    =C2=A08917 # Always use our own libtool.<br>
    =C2=A08918 LIBTOOL=3D&#39;$(SHELL) $(top_builddir)/libtool&#39;<br>
    <br>
    So, we should libtool rather than -libtool.<br>
    Do you have any env variable to set LIBTOOL?<br>
    <br>
    In addition, I found your log:<br>
    <pre>--2014-07-16 15:53:29--  <a href=3D"http://adtrepo.yoctoproject.or=
g/1.5.1" target=3D"_blank">http://adtrepo.yoctoproject.org/1.5.1</a>
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to <a href=3D"http://adtrepo.yoctoproject.org" target=3D"_blank"=
>adtrepo.yoctoproject.org</a>|140.211.169.59|:80... failed: Connection refu=
sed.
</pre>
    You fail to connect repo. Please check.<br>
    <br>
    BR<span class=3D"HOEnZb"><font color=3D"#888888"><br>
    Chong</font></span><div><div class=3D"h5"><br>
    <br>
    <div>On 07/17/2014 09:18 AM, Joseph Andrew
      de la Pe=C3=B1a wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">Good day,
          <div><br>
          </div>
          <div>I have an error in libtool when running adt_installer
            script.</div>
          <div><br>
          </div>
          <div>
            <div>make[1]: Entering directory
              `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb&#39=
;</div>
            <div>../-libtool =C2=A0--tag=3DCC =C2=A0 --mode=3Dcompile
              i586-poky-linux-gcc =C2=A0-m32 -march=3Di586
              =C2=A0--sysroot=3D/bonus/scratch/jdelapena/sdk/sysroots/i586-=
poky-linux
              -DHAVE_CONFIG_H -I. -I../libopkg =C2=A0 =C2=A0-g -O -Wall
              -DHOST_CPU_STR=3D\&quot;x86_64\&quot; -DBUILD_CPU=3Dx86_64 -O
              -fno-omit-frame-pointer -g -feliminate-unused-debug-types
              -pipe -MT libbb_la-gz_open.lo -MD -MP -MF
              .deps/libbb_la-gz_open.Tpo -c -o libbb_la-gz_open.lo `test
              -f &#39;gz_open.c&#39; || echo &#39;./&#39;`gz_open.c</div>
            <div><br>
            </div>
            <div><b>/bin/sh: ../-libtool: No such file or directory</b></di=
v>
            <div>make[1]: *** [libbb_la-gz_open.lo] Error 127</div>
            <div>make[1]: Leaving directory
              `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb&#39=
;</div>
            <div>make: *** [all-recursive] Error 1</div>
          </div>
          <div><br>
          </div>
          <div>Seems to be $LIBTOOL was not having the correct value.
            I&#39;ve searched all occurrence of $LIBTOOL but all of them ha=
d
            -libtool value.</div>
          <div><br>
          </div>
          <div>Where does $LIBTOOL originate when creating my own
            adt_installer script via bitbake adt-installer?</div>
          <div>What variables in any conf file do I need to change to
            run adt_installer successfully?=C2=A0</div>
          <div><br>
          </div>
          <div>Attached is the full log during running of adt_installer.</d=
iv>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div>Joseph</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--001a11346e5e0ce2d504fe60126c--
