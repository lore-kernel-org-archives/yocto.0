Return-Path: <Florin.Sarbu@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C61E00BE0
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 06:03:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3PD2upg025568
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 25 Apr 2014 06:02:56 -0700 (PDT)
Received: from localhost.localdomain (128.224.171.142) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Fri, 25 Apr 2014 06:02:55 -0700
Message-ID: <535A5CFE.1040803@windriver.com>
Date: Fri, 25 Apr 2014 16:02:54 +0300
From: Florin Sarbu <florin.sarbu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: sujith h <sujith.h@gmail.com>, "Behrens, Holger"
	<holger.behrens@windriver.com>
References: <1398343160-4516-1-git-send-email-sujith.h@gmail.com>
	<CADyYWLn2GX=jYZJFjb6f2gabUsjBw5s30KM8h33WViSDiAAwtw@mail.gmail.com>
In-Reply-To: <CADyYWLn2GX=jYZJFjb6f2gabUsjBw5s30KM8h33WViSDiAAwtw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Fri, 25 Apr 2014 13:03:04 -0000
Content-Type: multipart/alternative;
	boundary="------------000603030107060807040903"

--------------000603030107060807040903
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Will take it into consideration for next Genivi release. (a.k.a. 6.0.1)

Florin

On 04/25/2014 03:59 PM, sujith h wrote:
> Hi,
>
> Any comment for the new patch?
>
>
> On Thu, Apr 24, 2014 at 6:09 PM, Sujith H <sujith.h@gmail.com 
> <mailto:sujith.h@gmail.com>> wrote:
>
>     Adding weston.ini to /etc/xdg. With this change
>     user can login and launch weston with ivi-shell.
>
>     Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com
>     <mailto:Sujith_Haridasan@mentor.com>>
>     ---
>      recipes-graphics/wayland/weston_1.4.0.bbappend | 15 +++++++++++++++
>      1 file changed, 15 insertions(+)
>
>     diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend
>     b/recipes-graphics/wayland/weston_1.4.0.bbappend
>     index 7a8ba6f..1bcb327 100644
>     --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
>     +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
>     @@ -12,3 +12,18 @@ PR = "r1"
>
>      FILES_${PN} += "${libdir}/weston/*"
>      FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
>     +
>     +do_install_append() {
>     +   WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
>     +   install -d ${D}${WESTON_INI_CONFIG}
>     +   install -m 0644 ${S}/ivi-shell/weston.ini.in
>     <http://weston.ini.in> ${D}${WESTON_INI_CONFIG}/weston.ini
>     +   sed -i -e
>     's/hmi-controller.so/hmi-controller.so,ivi-controller.so/
>     <http://hmi-controller.so/hmi-controller.so,ivi-controller.so/>' \
>     +          -e 's|\@libexecdir\@|${libexecdir}|' \
>     +          -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' \
>     +          -e 's|\@abs_top_builddir\@\/clients|${bindir}|'
>     ${D}${WESTON_INI_CONFIG}/weston.ini
>     +
>     +}
>     +
>     +PACKAGES += "${PN}-ini"
>     +
>     +FILES_${PN}-ini = "${sysconfdir}/xdg"
>     --
>     1.8.4
>
>
>
>
> -- 
> സുജിത് ഹരിദാസന്
> Bangalore
> <Project>Contributor to KDE project
> http://fci.wikia.com/wiki/Anti-DRM-Campaign
> <Blog> http://sujithh.info


--------------000603030107060807040903
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Will take it into consideration for next Genivi release. (a.k.a.
    6.0.1)<br>
    <br>
    Florin<br>
    <br>
    <div class="moz-cite-prefix">On 04/25/2014 03:59 PM, sujith h wrote:<br>
    </div>
    <blockquote
cite="mid:CADyYWLn2GX=jYZJFjb6f2gabUsjBw5s30KM8h33WViSDiAAwtw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi,<br>
          <br>
        </div>
        Any comment for the new patch?<br>
        <div>
          <div>
            <div class="gmail_extra"><br>
              <br>
              <div class="gmail_quote">On Thu, Apr 24, 2014 at 6:09 PM,
                Sujith H <span dir="ltr">&lt;<a moz-do-not-send="true"
                    href="mailto:sujith.h@gmail.com" target="_blank">sujith.h@gmail.com</a>&gt;</span>
                wrote:<br>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">Adding
                  weston.ini to /etc/xdg. With this change<br>
                  user can login and launch weston with ivi-shell.<br>
                  <br>
                  Signed-off-by: Sujith H &lt;<a moz-do-not-send="true"
                    href="mailto:Sujith_Haridasan@mentor.com">Sujith_Haridasan@mentor.com</a>&gt;<br>
                  ---<br>
                   recipes-graphics/wayland/weston_1.4.0.bbappend | 15
                  +++++++++++++++<br>
                   1 file changed, 15 insertions(+)<br>
                  <br>
                  diff --git
                  a/recipes-graphics/wayland/weston_1.4.0.bbappend
                  b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
                  index 7a8ba6f..1bcb327 100644<br>
                  --- a/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
                  +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
                  @@ -12,3 +12,18 @@ PR = "r1"<br>
                  <br>
                   FILES_${PN} += "${libdir}/weston/*"<br>
                   FILES_${PN}-dbg += "${libdir}/weston/.debug/*"<br>
                  +<br>
                  +do_install_append() {<br>
                  +   WESTON_INI_CONFIG=${sysconfdir}/xdg/weston<br>
                  +   install -d ${D}${WESTON_INI_CONFIG}<br>
                  +   install -m 0644 ${S}/ivi-shell/<a
                    moz-do-not-send="true" href="http://weston.ini.in"
                    target="_blank">weston.ini.in</a>
                  ${D}${WESTON_INI_CONFIG}/weston.ini<br>
                  +   sed -i -e 's/<a moz-do-not-send="true"
                    href="http://hmi-controller.so/hmi-controller.so,ivi-controller.so/"
                    target="_blank">hmi-controller.so/hmi-controller.so,ivi-controller.so/</a>'
                  \<br>
                  +          -e 's|\@libexecdir\@|${libexecdir}|' \<br>
                  +          -e
                  's|\@abs_top_builddir\@\/data|${datadir}\/weston|' \<br>
                  +          -e
                  's|\@abs_top_builddir\@\/clients|${bindir}|'
                  ${D}${WESTON_INI_CONFIG}/weston.ini<br>
                  +<br>
                  +}<br>
                  +<br>
                  +PACKAGES += "${PN}-ini"<br>
                  +<br>
                  +FILES_${PN}-ini = "${sysconfdir}/xdg"<br>
                  <span class="HOEnZb"><font color="#888888">--<br>
                      1.8.4<br>
                      <br>
                    </font></span></blockquote>
              </div>
              <br>
              <br clear="all">
              <br>
              -- <br>
              സുജിത് ഹരിദാസന്<br>
              Bangalore<br>
              &lt;Project&gt;Contributor to KDE project<br>
              <a moz-do-not-send="true"
                href="http://fci.wikia.com/wiki/Anti-DRM-Campaign"
                target="_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>
              &lt;Blog&gt; <a moz-do-not-send="true"
                href="http://sujithh.info" target="_blank">http://sujithh.info</a><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000603030107060807040903--
