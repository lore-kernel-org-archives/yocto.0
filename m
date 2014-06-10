Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95027E00BAE; Tue, 10 Jun 2014 11:02:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA833E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:02:15 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id cc10so2282229wib.6
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:02:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fCQE0PrEY0YtQKSeZrM6PWj7leTZuefC+RAK5DcjeU8=;
	b=gzVvbN2t5/xRiQaK7uWmIQiT0ykqQhYUpBzfBW1S7ZtTbVq+9koiMvuUc+7fxeM72n
	T3sDmkS4z1qOHrCVZ8tNModmCiuRUTCtwmz2SzUsN3luZzhe+6THbMRxbS1RtVVr3zAu
	RK+aEhrjE/Cc55eGRxLqE3jqmtkcy6zzA/4pJFYj6nYU5oaht2uCl7E7m5XX2nVYZwsp
	1VruIxoM1Fpcopv9b/NbDkiLGbwSYOLgGPOd02PT8Wxnf1yOI3FOAn8BDYHQCLcrADNl
	9xii9TVpOFQmoqSykAjbk6mAMVykpHO5D1E7YW8hRWD4wmLark6PSl9V/u23fOpKj8Jy
	lTWA==
X-Gm-Message-State: ALoCoQkRI3Y9ev2w3RJ5pGEXNciQAFRs6r70Tffyoav0LFrcQhsrMh1csW9h/2MdLaeI2QuAk/z4
X-Received: by 10.194.189.116 with SMTP id gh20mr43746634wjc.41.1402423334870; 
	Tue, 10 Jun 2014 11:02:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 11:01:54 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <538BD0DE.1020207@dynamicdevices.co.uk>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
	<538319DB.40309@dynamicdevices.co.uk>
	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
	<5383891A.4050109@dynamicdevices.co.uk>
	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>
	<538B95F6.6070008@dynamicdevices.co.uk>
	<CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
	<538B9CA5.8040704@dynamicdevices.co.uk>
	<538BD0DE.1020207@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 21:01:54 +0300
Message-ID: <CAK18fxFc1vnXUMuDP7g8WS20NUDZPUtCC+9yGtnFKdTJcg0qJA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Tue, 10 Jun 2014 18:02:19 -0000
Content-Type: multipart/alternative; boundary=047d7b622426b347cb04fb7f2047

--047d7b622426b347cb04fb7f2047
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 2, 2014 at 4:18 AM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

>
> On 01/06/2014 22:35, Alex J Lennon wrote:
>
>
> On 01/06/2014 22:22, Alexandru Vaduva wrote:
>
>  This are indeed some very good news Alex J Lennon.
>  I have some questions, but those maybe can be answered by the
> maintainers of the meta-raspberrypi layer:
>  Why was this change done?
>      -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>      -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>      +PREFERRED_PROVIDER_virtual/egl ?= "userland"
>      +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>  How it may affect other applications?
>  Andrei: Do you have any input on this?
>
>
>
> I think I've worked out what is happening. It looks like an interesting,
> and pretty obscure, effect of the default bitbake linker flags.
>
> There's an __attribute__(constructor) decorated function that is supposed
> to be executed when libmmal_vc_client.so is loaded.
>
> However by default bitbake passes in LDFLAGS of --as-needed which means
> that although raspivid is set to be linked against libmmal_vc_client, the
> dependency, which is un-needed by raspivid as there's no call into that
> library, is removed.
>
> The userland code for Raspivid tries to create a component with a call to
> mmal_component_create() which is in libmmal_core
>
> ref:
> https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c
>
> This function goes to a default constructor     which walks a list
> mmal_component_supplier_create(const char *name, MMAL_COMPONENT_T
> *component)
>
> ref:
> https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c
>
> The function that populates the supplier list,
> mmal_component_supplier_register(), is called from a function in another
> library, libmmal_vc_client, which is decorated with
>
> MMAL_CONSTRUCTOR(mmal_register_component_videocore);
>
> which is defined as
>
> # define MMAL_CONSTRUCTOR(func) void __attribute__((constructor,used))
> func(void)
>
> i.e. This registration function would normally execute when the library it
> lives in is loaded, but because there's no call into that library from
> raspivid, and because we linked with --as-needed, the library is removed
> from the executable's dependency list, and the components are never
> registered...
>
> Diffing the working and non-working raspivids,
>
> Dynamic Section:
>    NEEDED               libmmal_core.so
>    NEEDED               libmmal_util.so
> -  NEEDED               libmmal_vc_client.so
>    NEEDED               libvcos.so
>
> So if I modify the userland_git.bb to remove the --as-needed
>
> +LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu"
>
> With this change I can now build userland out of meta-raspberrypi and
> raspivid works for me.
>
> Cheers,
>
> Alex
>
>
>
>
>

I managed to get in sync with this discussion and will come with some
clarifications.

We switched to userland because that should give the user the best
customization for graphics libraries. So as long as we have the sources
would be strange not to use it. But if user doesn't want to compile the
graphics libraries, can overwrite the PREFERENCE as needed. But generally
building packages from source would avoid incompatibilities and some of the
issues (linkage etc). But this is an example which proves that this can add
issues too.

Now specific to this problem, I understand it, and the the fix that follows
this discussion seems to be right. Just heading to merges. Thanks a lot
guys (sorry for delay - will try to be more responsive).



-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b622426b347cb04fb7f2047
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Jun 2, 2014 at 4:18 AM, Alex J Lennon <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenno=
n@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">
    <br>
    <div>On 01/06/2014 22:35, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <br>
      <div>On 01/06/2014 22:22, Alexandru Vaduva
        wrote:<br>
      </div>
      <blockquote type=3D"cite">
        <div dir=3D"ltr">
          <div>
            <div>This are indeed some very good news Alex J Lennon.<br>
            </div>
            I have some questions, but those maybe can be answered by
            the <br>
            maintainers of the meta-raspberrypi layer:<br>
          </div>
          <div>Why was this change done?<br>
            =C2=A0=C2=A0=C2=A0=C2=A0 -PREFERRED_PROVIDER_virtual/egl ?=3D &=
quot;vc-graphics-hardfp&quot;<br>
            <div>=C2=A0=C2=A0=C2=A0=C2=A0
              -PREFERRED_PROVIDER_virtual/libgles2 ?=3D
              &quot;vc-graphics-hardfp&quot;<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 +PREFERRED_PROVIDER_virtual/egl ?=3D=
 &quot;userland&quot;<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 +PREFERRED_PROVIDER_virtual/libgles2=
 ?=3D &quot;userland&quot;<br>
            </div>
            <div> How it may affect other
              applications?<br>
            </div>
            <div>Andrei: Do you have any input on
              this?<br>
            </div>
            <div><br>
              <br>
            </div>
          </div>
        </div>
      </blockquote>
    </blockquote>
    <br></div>
    I think I&#39;ve worked out what is happening. It looks like an
    interesting, and pretty obscure, effect of the default bitbake
    linker flags.<br>
    <br>
    There&#39;s an __attribute__(constructor) decorated function that is
    supposed to be executed when libmmal_vc_client.so is loaded.<br>
    <br>
    However by default bitbake passes in LDFLAGS of --as-needed which
    means that although raspivid is set to be linked against
    libmmal_vc_client, the dependency, which is un-needed by raspivid as
    there&#39;s no call into that library, is removed.<br>
    <br>
    The userland code for Raspivid tries to create a component with a
    call to=C2=A0 mmal_component_create() which is in libmmal_core<br>
    <br>
    ref:
    <a href=3D"https://github.com/raspberrypi/userland/blob/master/host_app=
lications/linux/apps/raspicam/RaspiVid.c" target=3D"_blank">https://github.=
com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/=
RaspiVid.c</a><br>


    <br>
    This function goes to a default constructor =C2=A0=C2=A0=C2=A0 which wa=
lks a list
    mmal_component_supplier_create(const char *name, MMAL_COMPONENT_T
    *component) <br>
    <br>
    ref:
    <a href=3D"https://github.com/raspberrypi/userland/blob/master/interfac=
e/mmal/core/mmal_component.c" target=3D"_blank">https://github.com/raspberr=
ypi/userland/blob/master/interface/mmal/core/mmal_component.c</a><br>
    <br>
    The function that populates the supplier list,
    mmal_component_supplier_register(), is called from a function in
    another library, libmmal_vc_client, which is decorated with <br>
    <br>
    MMAL_CONSTRUCTOR(mmal_register_component_videocore);<br>
    <br>
    which is defined as<br>
    <br>
    # define MMAL_CONSTRUCTOR(func) void
    __attribute__((constructor,used)) func(void)<br>
    <br>
    i.e. This registration function would normally execute when the
    library it lives in is loaded, but because there&#39;s no call into tha=
t
    library from raspivid, and because we linked with --as-needed, the
    library is removed from the executable&#39;s dependency list, and the
    components are never registered...<br>
    <br>
    Diffing the working and non-working raspivids,<br>
    <br>
    Dynamic Section:<br>
    =C2=A0=C2=A0 NEEDED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libmmal_core.so<br>
    =C2=A0=C2=A0 NEEDED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libmmal_util.so<br>
    -=C2=A0 NEEDED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 libmmal_vc_client.so<br>
    =C2=A0=C2=A0 NEEDED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libvcos.so<br>
    <br>
    So if I modify the <a href=3D"http://userland_git.bb" target=3D"_blank"=
>userland_git.bb</a> to remove the --as-needed<br>
    <br>
    +LDFLAGS=3D&quot;-Wl,-O1 -Wl,--hash-style=3Dgnu&quot;<br>
    <br>
    With this change I can now build userland out of meta-raspberrypi
    and raspivid works for me. <br>
    <br>
    Cheers, <br>
    <br>
    Alex<br>
    <br>
    <br>
    <br>
    =C2=A0<br>
    <div>
      <div> </div>
    </div>
  </div>

</blockquote></div><div class=3D"gmail_extra"><br></div>I managed to get in=
 sync with this discussion and will come with some clarifications.=C2=A0</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">We switc=
hed to userland because that should give the user the best customization fo=
r graphics libraries. So as long as we have the sources would be strange no=
t to use it. But if user doesn&#39;t want to compile the graphics libraries=
, can overwrite the PREFERENCE as needed. But generally building packages f=
rom source would avoid incompatibilities and some of the issues (linkage et=
c). But this is an example which proves that this can add issues too.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Now specifi=
c to this problem, I understand it, and the the fix that follows this discu=
ssion seems to be right. Just heading to merges. Thanks a lot guys (sorry f=
or delay - will try to be more responsive).</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:ce=
nter"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"f=
ont-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7b622426b347cb04fb7f2047--
