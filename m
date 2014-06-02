Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D6FE0073A; Sun,  1 Jun 2014 18:18:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C736E00716
	for <yocto@yoctoproject.org>; Sun,  1 Jun 2014 18:18:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2DB3D27E024;
	Mon,  2 Jun 2014 01:18:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id DcI_U_0De87T; Mon,  2 Jun 2014 01:18:26 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1A3F327E019;
	Mon,  2 Jun 2014 01:18:25 +0000 (UTC)
Message-ID: <538BD0DE.1020207@dynamicdevices.co.uk>
Date: Mon, 02 Jun 2014 02:18:22 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>, 
	Andrei Gherzan <andrei@gherzan.ro>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>	<5381D5B3.1070509@dynamicdevices.co.uk>	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>	<538319DB.40309@dynamicdevices.co.uk>	<5383805E.4020603@dynamicdevices.co.uk>	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>	<5383891A.4050109@dynamicdevices.co.uk>	<CABwVrCoNRULO9xBFLeXMfrX7sc+dHCb1o-t_oR5vBtuc+Jeiww@mail.gmail.com>	<538B95F6.6070008@dynamicdevices.co.uk>	<CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com>
	<538B9CA5.8040704@dynamicdevices.co.uk>
In-Reply-To: <538B9CA5.8040704@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Mon, 02 Jun 2014 01:18:41 -0000
Content-Type: multipart/alternative;
	boundary="------------030700080205050107070606"

--------------030700080205050107070606
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 01/06/2014 22:35, Alex J Lennon wrote:
>
> On 01/06/2014 22:22, Alexandru Vaduva wrote:
>> This are indeed some very good news Alex J Lennon.
>> I have some questions, but those maybe can be answered by the
>> maintainers of the meta-raspberrypi layer:
>> Why was this change done?
>>      -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>>      -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
>>      +PREFERRED_PROVIDER_virtual/egl ?= "userland"
>>      +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>> How it may affect other applications?
>> Andrei: Do you have any input on this?
>>
>>

I think I've worked out what is happening. It looks like an interesting,
and pretty obscure, effect of the default bitbake linker flags.

There's an __attribute__(constructor) decorated function that is
supposed to be executed when libmmal_vc_client.so is loaded.

However by default bitbake passes in LDFLAGS of --as-needed which means
that although raspivid is set to be linked against libmmal_vc_client,
the dependency, which is un-needed by raspivid as there's no call into
that library, is removed.

The userland code for Raspivid tries to create a component with a call
to  mmal_component_create() which is in libmmal_core

ref:
https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c

This function goes to a default constructor     which walks a list
mmal_component_supplier_create(const char *name, MMAL_COMPONENT_T
*component)

ref:
https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c

The function that populates the supplier list,
mmal_component_supplier_register(), is called from a function in another
library, libmmal_vc_client, which is decorated with

MMAL_CONSTRUCTOR(mmal_register_component_videocore);

which is defined as

# define MMAL_CONSTRUCTOR(func) void __attribute__((constructor,used))
func(void)

i.e. This registration function would normally execute when the library
it lives in is loaded, but because there's no call into that library
from raspivid, and because we linked with --as-needed, the library is
removed from the executable's dependency list, and the components are
never registered...

Diffing the working and non-working raspivids,

Dynamic Section:
   NEEDED               libmmal_core.so
   NEEDED               libmmal_util.so
-  NEEDED               libmmal_vc_client.so
   NEEDED               libvcos.so

So if I modify the userland_git.bb to remove the --as-needed

+LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu"

With this change I can now build userland out of meta-raspberrypi and
raspivid works for me.

Cheers,

Alex



 

--------------030700080205050107070606
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 01/06/2014 22:35, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote cite="mid:538B9CA5.8040704@dynamicdevices.co.uk"
      type="cite">
      <meta content="text/html; charset=ISO-8859-1"
        http-equiv="Content-Type">
      <br>
      <div class="moz-cite-prefix">On 01/06/2014 22:22, Alexandru Vaduva
        wrote:<br>
      </div>
      <blockquote
cite="mid:CABwVrCp9Mtw_xc-djNMsiiSTAS5Duh1vCwmOSF-coHPqHqcE3g@mail.gmail.com"
        type="cite">
        <div dir="ltr">
          <div>
            <div>This are indeed some very good news Alex J Lennon.<br>
            </div>
            I have some questions, but those maybe can be answered by
            the <br>
            maintainers of the meta-raspberrypi layer:<br>
          </div>
          <div>Why was this change done?<br>
            &nbsp;&nbsp;&nbsp;&nbsp; -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"<br>
            <div id=":nq" class="">&nbsp;&nbsp;&nbsp;&nbsp;
              -PREFERRED_PROVIDER_virtual/libgles2 ?=
              "vc-graphics-hardfp"<br>
              &nbsp;&nbsp;&nbsp;&nbsp; +PREFERRED_PROVIDER_virtual/egl ?= "userland"<br>
              &nbsp;&nbsp;&nbsp;&nbsp; +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"<br>
            </div>
            <div id=":nq" class=""> How it may affect other
              applications?<br>
            </div>
            <div id=":nq" class="">Andrei: Do you have any input on
              this?<br>
            </div>
            <div id=":nq" class=""><br>
              <br>
            </div>
          </div>
        </div>
      </blockquote>
    </blockquote>
    <br>
    I think I've worked out what is happening. It looks like an
    interesting, and pretty obscure, effect of the default bitbake
    linker flags.<br>
    <br>
    There's an __attribute__(constructor) decorated function that is
    supposed to be executed when libmmal_vc_client.so is loaded.<br>
    <br>
    However by default bitbake passes in LDFLAGS of --as-needed which
    means that although raspivid is set to be linked against
    libmmal_vc_client, the dependency, which is un-needed by raspivid as
    there's no call into that library, is removed.<br>
    <br>
    The userland code for Raspivid tries to create a component with a
    call to&nbsp; mmal_component_create() which is in libmmal_core<br>
    <br>
    ref:
    <a class="moz-txt-link-freetext"
href="https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c">https://github.com/raspberrypi/userland/blob/master/host_applications/linux/apps/raspicam/RaspiVid.c</a><br>
    <br>
    This function goes to a default constructor &nbsp;&nbsp;&nbsp; which walks a list
    mmal_component_supplier_create(const char *name, MMAL_COMPONENT_T
    *component) <br>
    <br>
    ref:
    <a class="moz-txt-link-freetext"
href="https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c">https://github.com/raspberrypi/userland/blob/master/interface/mmal/core/mmal_component.c</a><br>
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
    library it lives in is loaded, but because there's no call into that
    library from raspivid, and because we linked with --as-needed, the
    library is removed from the executable's dependency list, and the
    components are never registered...<br>
    <br>
    Diffing the working and non-working raspivids,<br>
    <br>
    Dynamic Section:<br>
    &nbsp;&nbsp; NEEDED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libmmal_core.so<br>
    &nbsp;&nbsp; NEEDED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libmmal_util.so<br>
    -&nbsp; NEEDED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libmmal_vc_client.so<br>
    &nbsp;&nbsp; NEEDED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libvcos.so<br>
    <br>
    So if I modify the userland_git.bb to remove the --as-needed<br>
    <br>
    +LDFLAGS="-Wl,-O1 -Wl,--hash-style=gnu"<br>
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
    &nbsp;<br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------030700080205050107070606--
