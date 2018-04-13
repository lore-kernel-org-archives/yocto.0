Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8CE0E00B9E; Fri, 13 Apr 2018 01:18:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Apr 2018 01:18:15 PDT
Received: from smtpcmd10101.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CBCE00857
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 01:18:15 -0700 (PDT)
Received: from [10.0.3.118] ([78.6.3.122])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id ZkHC1x0112dwwGE01kHDeW; Fri, 13 Apr 2018 10:17:13 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <229102f0-f056-b246-a5ff-7f1f1653b8df@faresoftware.it>
	<CAGAf8LyY_BSgGo6sGQME8_0hevJ9f2CNKjFPFxo1UZL1YQL-1g@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <53349f0b-7dcf-78d3-2410-fcca9d55ab5a@faresoftware.it>
Date: Fri, 13 Apr 2018 10:17:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LyY_BSgGo6sGQME8_0hevJ9f2CNKjFPFxo1UZL1YQL-1g@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1523607433; bh=e0py5drWMm2XHA0M67WRpkzca1Iab3alMrnvi6+kCxA=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=hMAWlTCkOb6d80kXZ39z2jF3gtaOOZ8vEKiDgHkYINchGrQMXAvZqDJ716RSvP26c
	Na9r9z/p07612ziiD2zpAHBFMGbkcyIG/btyu6OMu7lSTLV5ucbeqg3ru0R2qS9zFh
	sMbCAr5rbqDKx0kdEwmOQJgKBMmOLHIN5KO6TEJABn9KjOtX3ykyFF3JUHRkBAUcPh
	2dds4DONRxA4HMIpSlRAT0dX3+wHuYRbIyEgkS8AFTaNO6bY7f9XjGUNhG2zwDEPqX
	vFeL/8TK8U2R1WLg7+qYDTNnaHmrPOJh6zucxuvJNs+/4uJxcqb02gA3GhsZKZuXYp
	wkWYkKW1H1czg==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Which recipe produce that file?
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
X-List-Received-Date: Fri, 13 Apr 2018 08:18:17 -0000
Content-Type: multipart/alternative;
	boundary="------------0B11C63C71A9D82134D8624A"
Content-Language: it

--------------0B11C63C71A9D82134D8624A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Ok.

Thanks for your help


MZ


Il 13/04/2018 09:49, Zoran Stojsavljevic ha scritto:
> Hello Mauro,
>
> Seems that you have somehow included duplicate recipes for xcb-util, 
> in form of libxcb-util.
>
> I found the base package xcb-util in my base: meta (Open Embedded) layer:
>
> [user@localhost beaglebone-rocko-18.0.0]$ find . -name xcb-uti*
> /*./meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb 
> <http://xcb-util_0.4.0.bb>*/
> ./meta/recipes-graphics/xorg-lib/xcb-util-renderutil_0.3.9.bb 
> <http://xcb-util-renderutil_0.3.9.bb>
> ./meta/recipes-graphics/xorg-lib/xcb-util-keysyms_0.4.0.bb 
> <http://xcb-util-keysyms_0.4.0.bb>
> ./meta/recipes-graphics/xorg-lib/xcb-util-wm_0.4.1.bb 
> <http://xcb-util-wm_0.4.1.bb>
> ./meta/recipes-graphics/xorg-lib/xcb-util.inc
> ./meta/recipes-graphics/xorg-lib/xcb-util-image_0.4.0.bb 
> <http://xcb-util-image_0.4.0.bb>
> ./meta/recipes-graphics/xorg-lib/xcb-util-image
> [user@localhost beaglebone-rocko-18.0.0]
>
> Since you are, after all, using imx6dl, you probably included quite a 
> few more layers from Frescale/NXP, with doubled libxcb-util package 
> included as well.
>
> Please, search for it there.
>
> Best Regards,
> Zoran
> _______
>
> On Fri, Apr 13, 2018 at 6:19 AM, Mauro Ziliani <mauro@faresoftware.it 
> <mailto:mauro@faresoftware.it>> wrote:
>
>     Hi all.
>
>     My name's Mauro and I write from Parma, Italy.
>
>
>     I'm in trouble because recently I get a collision error.
>
>     It seems that more than one recipes try to install the same file
>     in the same path in populate_sdk task
>
>     This is an example
>
>     --------------
>
>     ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe xcb-util
>     is trying to install files into a shared area when those files
>     already exist. Those files and their manifest location are:
>     /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.la
>     <http://libxcb-util.la>
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1.0.0
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.a
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-event.pc
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-util.pc
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-aux.pc
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-atom.pc
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_event.h
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_util.h
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_aux.h
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_atom.h
>      /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build/tmp/sysroots/imx6dlsabresd/sysroot-providers/xcb-util
>     --------------
>
>
>     I'm working with a Jethro distro
>
>     How can I solve this problem?
>
>
>     Best regards,
>
>       MZ
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------0B11C63C71A9D82134D8624A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Ok.</p>
    <p>Thanks for your help</p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Il 13/04/2018 09:49, Zoran
      Stojsavljevic ha scritto:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8LyY_BSgGo6sGQME8_0hevJ9f2CNKjFPFxo1UZL1YQL-1g@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>
            <div>Hello Mauro,<br>
            </div>
            <div><br>
              Seems that you have somehow included duplicate recipes for
              xcb-util, in form of libxcb-util.<br>
              <br>
              I found the base package xcb-util in my base: meta (Open
              Embedded) layer:<br>
              <br>
              [user@localhost beaglebone-rocko-18.0.0]$ find . -name
              xcb-uti*<br>
              <span style="color:rgb(255,0,0)"><i><b>./meta/recipes-graphics/xorg-lib/<a
                      href="http://xcb-util_0.4.0.bb"
                      moz-do-not-send="true">xcb-util_0.4.0.bb</a></b></i></span><br>
              ./meta/recipes-graphics/xorg-lib/<a
                href="http://xcb-util-renderutil_0.3.9.bb"
                moz-do-not-send="true">xcb-util-renderutil_0.3.9.bb</a><br>
              ./meta/recipes-graphics/xorg-lib/<a
                href="http://xcb-util-keysyms_0.4.0.bb"
                moz-do-not-send="true">xcb-util-keysyms_0.4.0.bb</a><br>
              ./meta/recipes-graphics/xorg-lib/<a
                href="http://xcb-util-wm_0.4.1.bb"
                moz-do-not-send="true">xcb-util-wm_0.4.1.bb</a><br>
              ./meta/recipes-graphics/xorg-lib/xcb-util.inc<br>
              ./meta/recipes-graphics/xorg-lib/<a
                href="http://xcb-util-image_0.4.0.bb"
                moz-do-not-send="true">xcb-util-image_0.4.0.bb</a><br>
              ./meta/recipes-graphics/xorg-lib/xcb-util-image<br>
              [user@localhost beaglebone-rocko-18.0.0]<br>
              <br>
            </div>
            Since you are, after all, using imx6dl, you probably
            included quite a few more layers from Frescale/NXP, with
            doubled libxcb-util package included as well.<br>
            <br>
          </div>
          <div>Please, search for it there.<br>
          </div>
          <div><br>
          </div>
          Best Regards,<br>
        </div>
        Zoran<br>
        _______<br>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Fri, Apr 13, 2018 at 6:19 AM, Mauro
          Ziliani <span dir="ltr">&lt;<a
              href="mailto:mauro@faresoftware.it" target="_blank"
              moz-do-not-send="true">mauro@faresoftware.it</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi all.<br>
            <br>
            My name's Mauro and I write from Parma, Italy.<br>
            <br>
            <br>
            I'm in trouble because recently I get a collision error.<br>
            <br>
            It seems that more than one recipes try to install the same
            file in the same path in populate_sdk task<br>
            <br>
            This is an example<br>
            <br>
            --------------<br>
            <br>
            ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe
            xcb-util is trying to install files into a shared area when
            those files already exist. Those files and their manifest
            location are:<br>
            /media/mauro/Sviluppo/Catellan<wbr>iGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/<a
              href="http://libxcb-util.la" rel="noreferrer"
              target="_blank" moz-do-not-send="true">libxcb-util.la</a><br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so.1.0.<wbr>0<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.a<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so.1<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-<wbr>event.pc<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-util.<wbr>pc<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-aux.<wbr>pc<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-atom.<wbr>pc<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_event.h<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_util.h<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_aux.h<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_atom.h<br>
             /media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>build/tmp/sysroots/imx6dlsabre<wbr>sd/sysroot-providers/xcb-util<br>
            --------------<br>
            <br>
            <br>
            I'm working with a Jethro distro<br>
            <br>
            How can I solve this problem?<br>
            <br>
            <br>
            Best regards,<br>
            <br>
              MZ<span class="HOEnZb"><font color="#888888"><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0B11C63C71A9D82134D8624A--
