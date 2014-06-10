Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB2DAE00BAE; Tue, 10 Jun 2014 12:21:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0904BE00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:21:21 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id n3so4096801wiv.9
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 12:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=zKLdusAmSoXkQORRTx7f6Dg9EE5xu7v0lbWW9cG0rUM=;
	b=FT17T+rMD24YyaDB2m9La6U1yl8QRM6IItfql770XRIdT1zvqnFJX8cElYv3LK5RTR
	Lwp0j2U6cM0EmHsH9tXnrYIr2P06AHhfWUDJjE2Gksm9VPV98FZIndPYjMWFo7yIVEtE
	z8W1Mr+dVK0bVe7tarf9XwEDtFqhu7pZVUjgV7sACOiPYTaaXhxopIEjpljsmn7wRC2y
	HCaJc0/nikNfvQBfEWS1AFNiibnxrJcVREf+8fdfVju/tmtQlvn4qg6ShVj9XZqeSMsb
	hkCsG0jxAdemKfUdCuKbUOU1XU2+5AmvsQbjjlYgikf/ofLaJ3rDYhIMehRhv+TGQKVi
	ydlg==
X-Gm-Message-State: ALoCoQmgPNCnbcPV0celBBdrWfehUH1FFCFEPmOad42VWcZpnJMoQsyOm5rGBByEqKlxfAM+P/jE
X-Received: by 10.194.189.116 with SMTP id gh20mr44327768wjc.41.1402428080432; 
	Tue, 10 Jun 2014 12:21:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 12:21:00 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxFc1vnXUMuDP7g8WS20NUDZPUtCC+9yGtnFKdTJcg0qJA@mail.gmail.com>
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
	<CAK18fxFc1vnXUMuDP7g8WS20NUDZPUtCC+9yGtnFKdTJcg0qJA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 22:21:00 +0300
Message-ID: <CAK18fxFkAt3TZRHAqxN5bpp47KC-rGRodOyX=BDsF6PcbPc36w@mail.gmail.com>
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
X-List-Received-Date: Tue, 10 Jun 2014 19:21:26 -0000
Content-Type: multipart/alternative; boundary=047d7b6224268ec1d504fb803b8c

--047d7b6224268ec1d504fb803b8c
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 10, 2014 at 9:01 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
>
> On Mon, Jun 2, 2014 at 4:18 AM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>>
>> On 01/06/2014 22:35, Alex J Lennon wrote:
>>
>>
>> On 01/06/2014 22:22, Alexandru Vaduva wrote:
>>
>>  This are indeed some very good news Alex J Lennon.
>>  I have some questions, but those maybe can be answered by the
>> maintainers of the meta-raspberrypi layer:
>>  Why was this change done?
>>      -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>>      -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>>      +PREFERRED_PROVIDER_virtual/egl ?= "userland"
>>      +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>>  How it may affect other applications?
>>  Andrei: Do you have any input on this?
>>
>>
>>
>> I think I've worked out what is happening. It looks like an interesting,
>> and pretty obscure, effect of the default bitbake linker flags.
>>
>> There's an __attribute__(constructor) decorated function that is supposed
>> to be executed when libmmal_vc_client.so is loaded.
>>
>> However by default bitbake passes in LDFLAGS of --as-needed which means
>> that although raspivid is set to be linked against libmmal_vc_client, the
>> dependency, which is un-needed by raspivid as there's no call into that
>> library, is removed.
>>
>> The userland code for Raspivid tries to create a component with a call
>> to  mmal_component_create() which is in libmmal_core
>>
>> ref:
>> https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c
>>
>> This function goes to a default constructor     which walks a list
>> mmal_component_supplier_create(const char *name, MMAL_COMPONENT_T
>> *component)
>>
>> ref:
>> https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c
>>
>> The function that populates the supplier list,
>> mmal_component_supplier_register(), is called from a function in another
>> library, libmmal_vc_client, which is decorated with
>>
>> MMAL_CONSTRUCTOR(mmal_register_component_videocore);
>>
>> which is defined as
>>
>> # define MMAL_CONSTRUCTOR(func) void __attribute__((constructor,used))
>> func(void)
>>
>> i.e. This registration function would normally execute when the library
>> it lives in is loaded, but because there's no call into that library from
>> raspivid, and because we linked with --as-needed, the library is removed
>> from the executable's dependency list, and the components are never
>> registered...
>>
>> Diffing the working and non-working raspivids,
>>
>> Dynamic Section:
>>    NEEDED               libmmal_core.so
>>    NEEDED               libmmal_util.so
>> -  NEEDED               libmmal_vc_client.so
>>    NEEDED               libvcos.so
>>
>> So if I modify the userland_git.bb to remove the --as-needed
>>
>> +LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu"
>>
>> With this change I can now build userland out of meta-raspberrypi and
>> raspivid works for me.
>>
>> Cheers,
>>
>> Alex
>>
>>
>>
>>
>>
>
> I managed to get in sync with this discussion and will come with some
> clarifications.
>
> We switched to userland because that should give the user the best
> customization for graphics libraries. So as long as we have the sources
> would be strange not to use it. But if user doesn't want to compile the
> graphics libraries, can overwrite the PREFERENCE as needed. But generally
> building packages from source would avoid incompatibilities and some of the
> issues (linkage etc). But this is an example which proves that this can add
> issues too.
>
> Now specific to this problem, I understand it, and the the fix that
> follows this discussion seems to be right. Just heading to merges. Thanks a
> lot guys (sorry for delay - will try to be more responsive).
>

I merged the patches but there is a strange behavior. With --as-needed
removed i still get the unneeded dependency.
 0x00000001 (NEEDED)                     Shared library: [libmmal_core.so]
 0x00000001 (NEEDED)                     Shared library: [libmmal_util.so]
 0x00000001 (NEEDED)                     Shared library:
[libmmal_vc_client.so]
 0x00000001 (NEEDED)                     Shared library: [libvcos.so]
 0x00000001 (NEEDED)                     Shared library: [libbcm_host.so]
 0x00000001 (NEEDED)                     Shared library: [libpthread.so.0]
 0x00000001 (NEEDED)                     Shared library: [libdl.so.2]
 0x00000001 (NEEDED)                     Shared library: [librt.so.1]
 0x00000001 (NEEDED)                     Shared library: [libvchiq_arm.so]
 0x00000001 (NEEDED)                     Shared library: [libc.so.6]

Alex, can you take another look on this? It seems like somehow the fix
doesn't work for me.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b6224268ec1d504fb803b8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jun 10, 2014 at 9:01 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><div><div =
class=3D"h5">

<br><br><div class=3D"gmail_quote">On Mon, Jun 2, 2014 at 4:18 AM, Alex J L=
ennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk=
" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div>
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

</blockquote></div><div class=3D"gmail_extra"><br></div></div></div>I manag=
ed to get in sync with this discussion and will come with some clarificatio=
ns.=C2=A0</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">We switched to userland because that should give the user the best cust=
omization for graphics libraries. So as long as we have the sources would b=
e strange not to use it. But if user doesn&#39;t want to compile the graphi=
cs libraries, can overwrite the PREFERENCE as needed. But generally buildin=
g packages from source would avoid incompatibilities and some of the issues=
 (linkage etc). But this is an example which proves that this can add issue=
s too.</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Now specifi=
c to this problem, I understand it, and the the fix that follows this discu=
ssion seems to be right. Just heading to merges. Thanks a lot guys (sorry f=
or delay - will try to be more responsive).</div>

</div></blockquote><div><br></div><div>I merged the patches but there is a =
strange behavior. With --as-needed removed i still get the unneeded depende=
ncy.</div><div><div>=C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libmmal_core.so]=
</div>

<div>=C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libmmal_util.so]</div><div>=C2=
=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Shared library: [libmmal_vc_client.so]</div><div>=C2=A00x=
00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Shared library: [libvcos.so]</div>

<div>=C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [libbcm_host.so]</div><div>=C2=
=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Shared library: [libpthread.so.0]</div><div>=C2=A00x00000=
001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Shared library: [libdl.so.2]</div>

<div>=C2=A00x00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Shared library: [librt.so.1]</div><div>=C2=A00x=
00000001 (NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Shared library: [libvchiq_arm.so]</div><div>=C2=A00x00000001 =
(NEEDED) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Shared library: [libc.so.6]</div>

</div><div><br></div></div><div>Alex, can you take another look on this? It=
 seems like somehow the fix doesn&#39;t work for me.</div>-- <br><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7b6224268ec1d504fb803b8c--
