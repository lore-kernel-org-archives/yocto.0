Return-Path: <Florin.Sarbu@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BA8E014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:15:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r54DF9nv000783
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Jun 2013 06:15:09 -0700 (PDT)
Received: from [128.224.171.138] (128.224.171.138) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 4 Jun 2013 06:15:08 -0700
Message-ID: <51ADE85D.5000908@windriver.com>
Date: Tue, 4 Jun 2013 16:15:09 +0300
From: Florin Sarbu <florin.sarbu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130529 Thunderbird/17.0.6
MIME-Version: 1.0
To: sujith h <sujith.h@gmail.com>
References: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
	<CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com>
In-Reply-To: <CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com>
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi] [PATCH] node-startup-controller: Fixing conf file while packaging
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
X-List-Received-Date: Tue, 04 Jun 2013 13:15:13 -0000
Content-Type: multipart/alternative;
	boundary="------------080100050108080408060307"

--------------080100050108080408060307
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,
please provide a log with the actual error. The attached patch does not 
contain a solution to your problem in my opinion.

Thank you,
Florin

On 06/04/2013 01:13 PM, sujith h wrote:
> Hi,
>
> When package_ipk is used, then opkg fails to install node-state-manager
> during the do_rootfs phase of foton-image. But this behavior is not seen
> when rpm is used. opkg fails to install when 
> org.genivi.NodeStateManager.conf
> is there in etc/dbus-1/dbus-1/system.d/ directory provided by 
> node-startup-controller.
> When rpm packaging is used then node-state-manager's 
> org.genivi.NodeStateManager.conf
> is forcefully installed.
>
> Thanks,
>
> Sujith H
>
> On Tue, Jun 4, 2013 at 3:33 PM, Sujith H <sujith.h@gmail.com 
> <mailto:sujith.h@gmail.com>> wrote:
>
>     From: Sujith H <Sujith_Haridasan@mentor.com
>     <mailto:Sujith_Haridasan@mentor.com>>
>
>     Issue found while building foton-image when PACKAGE_CLASSES
>     set to "package_ipk". This patch will fix the issue.
>     This patch has to be applied to branch 4.0.
>
>     Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com
>     <mailto:Sujith_Haridasan@mentor.com>>
>     ---
>      .../node-startup-controller/node-startup-controller_1.0.2.bb
>     <http://node-startup-controller_1.0.2.bb>   | 3 +++
>      .../node-startup-controller/node-startup-controller_git.bb
>     <http://node-startup-controller_git.bb>             | 3 +++
>      2 files changed, 6 insertions(+)
>
>     diff --git
>     a/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
>     <http://node-startup-controller_1.0.2.bb>
>     b/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
>     <http://node-startup-controller_1.0.2.bb>
>     index 470bb97..fd3e1c9 100644
>     ---
>     a/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
>     <http://node-startup-controller_1.0.2.bb>
>     +++
>     b/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
>     <http://node-startup-controller_1.0.2.bb>
>     @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy = "\
>      FILES_${PN}-nsm-dummy-dbg = "\
>          ${libdir}/${PN}-1/.debug/nsm-dummy \
>          "
>     +do_install_append() {
>     +    rm -f
>     ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
>     +}
>     diff --git
>     a/recipes-extended/node-startup-controller/node-startup-controller_git.bb
>     <http://node-startup-controller_git.bb>
>     b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
>     <http://node-startup-controller_git.bb>
>     index 0d3b90c..2fec5da 100644
>     ---
>     a/recipes-extended/node-startup-controller/node-startup-controller_git.bb
>     <http://node-startup-controller_git.bb>
>     +++
>     b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
>     <http://node-startup-controller_git.bb>
>     @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy = "\
>      FILES_${PN}-nsm-dummy-dbg = "\
>             ${libdir}/${PN}-1/.debug/nsm-dummy \
>             "
>     +do_install_append() {
>     +    rm -f
>     ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
>     +}
>     --
>     1.8.1.4
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


--------------080100050108080408060307
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi,<br>
      please provide a log with the actual error. The attached patch
      does not contain a solution to your problem in my opinion.<br>
      <br>
      Thank you,<br>
      Florin<br>
      <br>
      On 06/04/2013 01:13 PM, sujith h wrote:<br>
    </div>
    <blockquote
cite="mid:CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      Hi,<br>
      <br>
      When package_ipk is used, then opkg fails to install
      node-state-manager<br>
      during the do_rootfs phase of foton-image. But this behavior is
      not seen<br>
      when rpm is used. opkg fails to install when
      org.genivi.NodeStateManager.conf<br>
      is there in etc/dbus-1/dbus-1/system.d/ directory provided by
      node-startup-controller. <br>
      When rpm packaging is used then node-state-manager's
      org.genivi.NodeStateManager.conf <br>
      is forcefully installed.<br>
      <br>
      Thanks,<br>
      <br>
      Sujith H<br>
      <br>
      <div class="gmail_quote">On Tue, Jun 4, 2013 at 3:33 PM, Sujith H
        <span dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:sujith.h@gmail.com" target="_blank">sujith.h@gmail.com</a>&gt;</span>
        wrote:<br>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          From: Sujith H &lt;<a moz-do-not-send="true"
            href="mailto:Sujith_Haridasan@mentor.com">Sujith_Haridasan@mentor.com</a>&gt;<br>
          <br>
          Issue found while building foton-image when PACKAGE_CLASSES<br>
          set to "package_ipk". This patch will fix the issue.<br>
          This patch has to be applied to branch 4.0.<br>
          <br>
          Signed-off-by: Sujith H &lt;<a moz-do-not-send="true"
            href="mailto:Sujith_Haridasan@mentor.com">Sujith_Haridasan@mentor.com</a>&gt;<br>
          ---<br>
           .../node-startup-controller/<a moz-do-not-send="true"
            href="http://node-startup-controller_1.0.2.bb"
            target="_blank">node-startup-controller_1.0.2.bb</a>        
            | 3 +++<br>
           .../node-startup-controller/<a moz-do-not-send="true"
            href="http://node-startup-controller_git.bb" target="_blank">node-startup-controller_git.bb</a>
                      | 3 +++<br>
           2 files changed, 6 insertions(+)<br>
          <br>
          diff --git a/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_1.0.2.bb"
            target="_blank">node-startup-controller_1.0.2.bb</a>
          b/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_1.0.2.bb"
            target="_blank">node-startup-controller_1.0.2.bb</a><br>
          index 470bb97..fd3e1c9 100644<br>
          --- a/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_1.0.2.bb"
            target="_blank">node-startup-controller_1.0.2.bb</a><br>
          +++ b/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_1.0.2.bb"
            target="_blank">node-startup-controller_1.0.2.bb</a><br>
          @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy = "\<br>
           FILES_${PN}-nsm-dummy-dbg = "\<br>
               ${libdir}/${PN}-1/.debug/nsm-dummy \<br>
               "<br>
          +do_install_append() {<br>
          +    rm -f
          ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf<br>
          +}<br>
          diff --git a/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_git.bb" target="_blank">node-startup-controller_git.bb</a>
          b/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_git.bb" target="_blank">node-startup-controller_git.bb</a><br>
          index 0d3b90c..2fec5da 100644<br>
          --- a/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_git.bb" target="_blank">node-startup-controller_git.bb</a><br>
          +++ b/recipes-extended/node-startup-controller/<a
            moz-do-not-send="true"
            href="http://node-startup-controller_git.bb" target="_blank">node-startup-controller_git.bb</a><br>
          @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy = "\<br>
           FILES_${PN}-nsm-dummy-dbg = "\<br>
                  ${libdir}/${PN}-1/.debug/nsm-dummy \<br>
                  "<br>
          +do_install_append() {<br>
          +    rm -f
          ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf<br>
          +}<br>
          <span class="HOEnZb"><font color="#888888">--<br>
              1.8.1.4<br>
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
      &lt;Blog&gt; <a moz-do-not-send="true" href="http://sujithh.info"
        target="_blank">http://sujithh.info</a><br>
    </blockquote>
    <br>
  </body>
</html>

--------------080100050108080408060307--
