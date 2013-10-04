Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B6DE0161F
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 07:30:43 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so9062698iec.2
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 07:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1G5I7Y6wVsZ1YGJ9X5LrRkhjv7ha3Mq5ywZgo4h4T5w=;
	b=dZxBKMGnXXpeWQCwES74vZR44IPsZ1/y1w1kNZlRXG1FFUJ//cfzs2BrBIxUcuCn8T
	YzsMkEKWTuwlmKft4lVl08c0+PiOh3zFdqjpBefmXvafjuBWP1MRAWD+cNycefE5Jwgw
	25cUkXEtfeKmtXoWNme4EavmgQbh67c8jUcCgqD8gvciTRlv8/Jox/WX5HTWvCjKYDoA
	ut8zoq2mcpm/nhTGJpX8G9N0Zhbe/f/a+T80zQ9ujMqV+vYJJ372ucjEXmOaKOB1Ffqz
	GYmj3NXe3LJWvnK+O4cX+CctCT4I2MW8Bk3dvT7ZEpjvlVglA9nImDd56qQVggmV+BQF
	cK7Q==
X-Received: by 10.42.214.202 with SMTP id hb10mr635292icb.76.1380897042211;
	Fri, 04 Oct 2013 07:30:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 4 Oct 2013 07:30:21 -0700 (PDT)
In-Reply-To: <524ECE1A.7060409@horus.es>
References: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
	<524ECE1A.7060409@horus.es>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 4 Oct 2013 11:30:21 -0300
Message-ID: <CAMCfZKGMJ-66GbWcWOJ5YWY5iyw9QSfO_znX3Bdd70jgjLu9Cg@mail.gmail.com>
To: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-toolchain-qt with Qt Creator
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
X-List-Received-Date: Fri, 04 Oct 2013 14:30:46 -0000
Content-Type: multipart/alternative; boundary=20cf301cc3b2ac2d1704e7eb2579

--20cf301cc3b2ac2d1704e7eb2579
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2013/10/4 Jose M=AA Ferreiro <jose.ferreiro@horus.es>

>  Hello Diego
>
> We have had success doing a mix from these documents:
>  - install host qt libraries:
> http://qt-project.org/doc/qt-4.8/install-x11.html
>  - install host qt creator:
> http://labs.isee.biz/index.php/How_to_install_Qt_Creator#Configure_Yocto_=
SDK
>  - yocto steps: https://community.freescale.com/thread/309578 ,
>
> on a imx6Q Sabe Lite board being the host an Ubuntu 12.04.
>
> Good luck
>

Jose,

Thanks for the info.

Which poky branch/version are you using?
Did you use the meta-toolchain from poky or the arm gcc from Ubuntu?

Regards,

--
*dS
Diego Sueiro



>
>
> El 04/10/2013 14:45, Diego Sueiro escribi=F3:
>
> Folks,
>
>  After a lots of internet search, including this ML threads, i did not
> find any solution for this.
>
>  I'm having issues to integrate meta-toolchain-qt and meta-toolchain-qte
> with Qt Creator 2.8.1.
> I'm using this environment:
>
>  Build Configuration:
> BB_VERSION        =3D "1.18.0"
>  BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.10"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "beaglebone"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4.2"
> TUNE_FEATURES     =3D "armv7a vfp neon"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29"
> meta-ti           =3D "dylan:24edd661d5e8fce3689bdd2c89e0105af8080152"
>
>
>  When I configure the qmake path on Qt Creator I get the following
> message:
>
> "Qt version is not properly installed please run make install"
>
>
>  I've tried on dylan branch too, but no success.
>
>  So, I tried to use Angstrom's setup-scripts
> on angstrom-v2013.06-yocto1.4 branch. And it came with the issue related
> with "error while loading shared libraries: __vdso_time: invalid mode for
> dlopen(): Invalid argument". So, I switched to Fedora 19 and it has gone,
> but the invalid Qt version problem remains.
>
>  I tried, without success, to compile by myself the qt-everywhere-opensou=
rce-src-4.8
> these toolchains:
>
> angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06
>  poky-eglibc-x86_64-arm-toolchain-qte-1.4.2
>
>
>  If someone could successfully use meta-toolchain-qte with Qt Creator,
> please point me the right directions to achieve this.
>
>  I really need some help to get a qt4-embedded toolchain working.
>
>  Kind Regards,
>
>  --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/li=
stinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--20cf301cc3b2ac2d1704e7eb2579
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">2013/10/4 Jose M=AA Ferreiro <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jose.ferreiro@horus.es" target=3D"_blank">jose.ferreiro@horus.es=
</a>&gt;</span><br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">


 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Hello Diego<br>
    <br>
    We have had success doing a mix from these documents:<br>
    =A0- install host qt libraries:
    <a href=3D"http://qt-project.org/doc/qt-4.8/install-x11.html" target=3D=
"_blank">http://qt-project.org/doc/qt-4.8/install-x11.html</a><br>
    =A0- install host qt creator:
<a href=3D"http://labs.isee.biz/index.php/How_to_install_Qt_Creator#Configu=
re_Yocto_SDK" target=3D"_blank">http://labs.isee.biz/index.php/How_to_insta=
ll_Qt_Creator#Configure_Yocto_SDK</a><br>
    =A0- yocto steps: <a href=3D"https://community.freescale.com/thread/309=
578" target=3D"_blank">https://community.freescale.com/thread/309578</a> , =
<br>
    <br>
    on a imx6Q Sabe Lite board being the host an Ubuntu 12.04.<br>
    <br>
    Good luck<br></div></blockquote><div style><br></div><div style>Jose,</=
div><div style><br></div><div style>Thanks for the info.</div><div style><b=
r></div><div style>Which poky branch/version are you using?</div><div style=
>

Did you use the meta-toolchain from poky or the arm gcc from Ubuntu?</div><=
div style><br></div><div style>Regards,</div><div style><br></div><div styl=
e>--</div><div style>*dS</div><div style>Diego Sueiro</div><div style>
<br>
</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bg=
color=3D"#FFFFFF">
    <br>
    <br>
    <div>El 04/10/2013 14:45, Diego Sueiro
      escribi=F3:<br>
    </div>
    <blockquote type=3D"cite"><div><div class=3D"h5">
      <div dir=3D"ltr">Folks,
        <div><br>
        </div>
        <div>After a lots of internet search, including this ML
          threads, i did not find any solution for this.</div>
        <div><br>
        </div>
        <div>I&#39;m having issues to integrate meta-toolchain-qt
          and=A0meta-toolchain-qte with Qt Creator 2.8.1.</div>
        <div>I&#39;m using this environment:</div>
        <div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>
              <div>Build Configuration:</div>
              <div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;</div>
              <div>
                BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div=
>
              <div>NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.10&quot;</div>
              <div>TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnuea=
bi&quot;</div>
              <div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beaglebone&quot;</=
div>
              <div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div>
              <div>DISTRO_VERSION =A0 =A0=3D &quot;1.4.2&quot;</div>
              <div>TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;</d=
iv>
              <div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;</div>
              <div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
              <div>meta-yocto =A0 =A0 =A0 =A0</div>
              <div>meta-yocto-bsp =A0 =A0=3D
                &quot;dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29&quot;<=
/div>
              <div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D
                &quot;dylan:24edd661d5e8fce3689bdd2c89e0105af8080152&quot;<=
/div>
            </div>
          </blockquote>
        </div>
        <div><br>
        </div>
        <div>When I configure the qmake path on Qt Creator I
          get the following message:</div>
        <div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>&quot;Qt version is not properly installed please
              run make install&quot;</div>
          </blockquote>
        </div>
        <div><br>
        </div>
        <div>I&#39;ve tried on dylan branch too, but no success.</div>
        <div><br>
        </div>
        <div>So, I tried to use Angstrom&#39;s setup-scripts
          on=A0angstrom-v2013.06-yocto1.4 branch. And it came with the
          issue related with &quot;<span style=3D"background-color:rgb(251,=
251,251);color:rgb(51,51,51);font-family:Helvetica,arial,freesans,clean,san=
s-serif;font-size:12.727272033691406px;line-height:20px">error
            while loading shared libraries: __vdso_time: invalid mode
            for dlopen(): Invalid argument&quot;. So, I switched to Fedora =
19
            and it has gone, but the invalid Qt version problem remains.</s=
pan></div>
        <div><span style=3D"background-color:rgb(251,251,251);color:rgb(51,=
51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.7=
27272033691406px;line-height:20px"><br>
          </span></div>
        <div><span style=3D"background-color:rgb(251,251,251);color:rgb(51,=
51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.7=
27272033691406px;line-height:20px">I
            tried, without success, to compile by myself the=A0</span><font=
 color=3D"#333333" face=3D"Helvetica, arial, freesans, clean,
            sans-serif"><span style=3D"line-height:20px">qt-everywhere-open=
source-src-4.8
              these toolchains:</span></font></div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div><font color=3D"#333333" face=3D"Helvetica, arial,
              freesans, clean, sans-serif"><span style=3D"line-height:20px"=
>angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06</span><b=
r>
            </font></div>
          <div><span style=3D"line-height:20px;color:rgb(51,51,51);font-fam=
ily:Helvetica,arial,freesans,clean,sans-serif">poky-eglibc-x86_64-arm-toolc=
hain-qte-1.4.2</span><br>
          </div>
        </blockquote>
        <font color=3D"#333333" face=3D"Helvetica, arial, freesans, clean,
          sans-serif"><span style=3D"line-height:20px">
            <div>
              <br>
            </div>
          </span></font>
        <div>If someone could=A0successfully use
          meta-toolchain-qte with Qt Creator, please point me the right
          directions to achieve this.=A0</div>
        <div><br>
        </div>
        <div><span style=3D"background-color:rgb(251,251,251);color:rgb(51,=
51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.7=
27272033691406px;line-height:20px">I
            really need some help to get a qt4-embedded toolchain
            working.</span><br>
        </div>
        <div><span style=3D"background-color:rgb(251,251,251);color:rgb(51,=
51,51);font-family:Helvetica,arial,freesans,clean,sans-serif;font-size:12.7=
27272033691406px;line-height:20px"><br>
          </span></div>
        <div>Kind Regards,<br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr">
              <div><br>
              </div>
              --<br>
              *dS<br>
              Diego Sueiro<br>
              <br>
              /*long live rock &#39;n roll*/<br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      </div></div><pre>_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--20cf301cc3b2ac2d1704e7eb2579--
