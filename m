Return-Path: <sujith.h@gmail.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8BAE014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:59:51 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id p12so177278vbe.12
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 06:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XEpIBKUnLaLtnEVQirExSZ1x6y1k/KDxIFm5IHW1sY8=;
	b=No+p4LADQtNsdIZpPSvoitGSpuSTXy+kUJ9zCkLRpUBfldRBfbnBwEuIaf+GOWqc3m
	h5GLIaxYyXJuVun10vZr7vojeAbjb+Z3qs8tyHF1e8vpFzW2QTrDbePo4gfWKp22gYXO
	mkC5roRI5R5rFG1Gp9kvGwFU+ts2LlJqaWPTnTTPtTHyZZ0hH8Rm8u+3H8UTbXGka0Yi
	DLEGbrvGEhWG+KUY8DgH5jFFDbuDvv4pGWRM21xxuko3m1eLTaHeNLMm9bwd8T1ENzbd
	WB+8rVvXRSCfAcyN9To4x6xlOK5FKomNZoUYTo/vr7VS9q4CoqZT5d5d0wzJfHJXdp5N
	aKSQ==
X-Received: by 10.220.97.69 with SMTP id k5mr14578841vcn.47.1370354390711;
	Tue, 04 Jun 2013 06:59:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.121.201 with HTTP; Tue, 4 Jun 2013 06:59:30 -0700 (PDT)
In-Reply-To: <51ADE85D.5000908@windriver.com>
References: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
	<CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com>
	<51ADE85D.5000908@windriver.com>
From: sujith h <sujith.h@gmail.com>
Date: Tue, 4 Jun 2013 19:29:30 +0530
Message-ID: <CADyYWL=GGNHqV0y5F4_RVzfyqMsQN+tZmSit0=ArRQNjHDrkjQ@mail.gmail.com>
To: Florin Sarbu <florin.sarbu@windriver.com>
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
X-List-Received-Date: Tue, 04 Jun 2013 13:59:51 -0000
Content-Type: multipart/alternative; boundary=001a11c2dd7eacf0a104de547e9c

--001a11c2dd7eacf0a104de547e9c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Florin,

You are right. The error I get is:

Configuring netbase.
Configuring procps.
Configuring packagegroup-core-boot-genivi.
Configuring u-boot-sabre-sd.
Configuring u-boot-sabre-lite.
Configuring run-postinsts.
Configuring u-boot-sabre-aiquad.
Collected errors:
 * check_data_file_clashes: Package node-state-manager wants to
install file /home/sujith/MEL7/foton-upstream/atp-build/tmp/work/mx6q-poky-=
linux-gnueabi/foton-image/4.0.0-r0/rootfs/etc/dbus-1/system.d/org.genivi.No=
deStateManager.conf
        But that file is already provided by package  * node-startup-contro=
ller
 * opkg_install_cmd: Cannot install package packagegroup-core-p2.
ERROR: Function failed: do_rootfs (see
/home/sujith/MEL7/foton-upstream/atp-build/tmp/work/mx6q-poky-linux-gnueabi=
/foton-image/4.0.0-r0/temp/log.do_rootfs.14894
for further information)


This is one solution that came to my mind.

Thanks,

Sujith H


On Tue, Jun 4, 2013 at 6:45 PM, Florin Sarbu <florin.sarbu@windriver.com>wr=
ote:

>  Hi,
> please provide a log with the actual error. The attached patch does not
> contain a solution to your problem in my opinion.
>
> Thank you,
> Florin
>
>
> On 06/04/2013 01:13 PM, sujith h wrote:
>
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
> On Tue, Jun 4, 2013 at 3:33 PM, Sujith H <sujith.h@gmail.com> wrote:
>
>> From: Sujith H <Sujith_Haridasan@mentor.com>
>>
>> Issue found while building foton-image when PACKAGE_CLASSES
>> set to "package_ipk". This patch will fix the issue.
>> This patch has to be applied to branch 4.0.
>>
>> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
>> ---
>>  .../node-startup-controller/node-startup-controller_1.0.2.bb
>> | 3 +++
>>  .../node-startup-controller/node-startup-controller_git.bb
>> | 3 +++
>>  2 files changed, 6 insertions(+)
>>
>> diff --git a/recipes-extended/node-startup-controller/
>> node-startup-controller_1.0.2.bbb/recipes-extended/node-startup-controll=
er/
>> node-startup-controller_1.0.2.bb
>> index 470bb97..fd3e1c9 100644
>> --- a/recipes-extended/node-startup-controller/
>> node-startup-controller_1.0.2.bb
>> +++ b/recipes-extended/node-startup-controller/
>> node-startup-controller_1.0.2.bb
>> @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D "\
>>  FILES_${PN}-nsm-dummy-dbg =3D "\
>>      ${libdir}/${PN}-1/.debug/nsm-dummy \
>>      "
>> +do_install_append() {
>> +    rm -f
>> ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
>> +}
>> diff --git a/recipes-extended/node-startup-controller/
>> node-startup-controller_git.bbb/recipes-extended/node-startup-controller=
/
>> node-startup-controller_git.bb
>> index 0d3b90c..2fec5da 100644
>> --- a/recipes-extended/node-startup-controller/
>> node-startup-controller_git.bb
>> +++ b/recipes-extended/node-startup-controller/
>> node-startup-controller_git.bb
>> @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D "\
>>  FILES_${PN}-nsm-dummy-dbg =3D "\
>>         ${libdir}/${PN}-1/.debug/nsm-dummy \
>>         "
>> +do_install_append() {
>> +    rm -f
>> ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
>> +}
>> --
>> 1.8.1.4
>>
>>
>
>
> --
> =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
> Bangalore
> <Project>Contributor to KDE project
> http://fci.wikia.com/wiki/Anti-DRM-Campaign
> <Blog> http://sujithh.info
>
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--001a11c2dd7eacf0a104de547e9c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Florin,<br><br>You are right. The error I get is:<br><br><pre style=3D"c=
olor:rgb(0,0,0);font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:start;text-indent:0px;tex=
t-transform:none;word-spacing:0px">

<span style=3D"font-family:courier new,monospace"><font>Configuring netbase=
.
Configuring procps.
Configuring packagegroup-core-boot-genivi.
Configuring u-boot-sabre-sd.
Configuring u-boot-sabre-lite.
Configuring run-postinsts.
Configuring u-boot-sabre-aiquad.
Collected errors:
 * check_data_file_clashes: Package node-state-manager wants to install fil=
e /home/sujith/MEL7/foton-upstream/atp-build/tmp/work/mx6q-poky-linux-gnuea=
bi/foton-image/4.0.0-r0/rootfs/etc/dbus-1/system.d/org.genivi.NodeStateMana=
ger.conf
        But that file is already provided by package  * node-startup-contro=
ller
 * opkg_install_cmd: Cannot install package packagegroup-core-p2.
ERROR: Function failed: do_rootfs (see /home/sujith/MEL7/foton-upstream/atp=
-build/tmp/work/mx6q-poky-linux-gnueabi/foton-image/4.0.0-r0/temp/log.do_ro=
otfs.14894 for further information)</font></span></pre><span style=3D"font-=
family:courier new,monospace"><font><br>

This is one solution that came to my mind.<br><br>Thanks,<br><br>Sujith H<b=
r><br></font></span><br><div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 6=
:45 PM, Florin Sarbu <span dir=3D"ltr">&lt;<a href=3D"mailto:florin.sarbu@w=
indriver.com" target=3D"_blank">florin.sarbu@windriver.com</a>&gt;</span> w=
rote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Hi,<br>
      please provide a log with the actual error. The attached patch
      does not contain a solution to your problem in my opinion.<br>
      <br>
      Thank you,<br>
      Florin<div><div class=3D"h5"><br>
      <br>
      On 06/04/2013 01:13 PM, sujith h wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
     =20
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
      When rpm packaging is used then node-state-manager&#39;s
      org.genivi.NodeStateManager.conf <br>
      is forcefully installed.<br>
      <br>
      Thanks,<br>
      <br>
      Sujith H<br>
      <br>
      <div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 3:33 PM, Sujith H
        <span dir=3D"ltr">&lt;<a href=3D"mailto:sujith.h@gmail.com" target=
=3D"_blank">sujith.h@gmail.com</a>&gt;</span>
        wrote:<br>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
          From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com"=
 target=3D"_blank">Sujith_Haridasan@mentor.com</a>&gt;<br>
          <br>
          Issue found while building foton-image when PACKAGE_CLASSES<br>
          set to &quot;package_ipk&quot;. This patch will fix the issue.<br=
>
          This patch has to be applied to branch 4.0.<br>
          <br>
          Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@me=
ntor.com" target=3D"_blank">Sujith_Haridasan@mentor.com</a>&gt;<br>
          ---<br>
          =C2=A0.../node-startup-controller/<a href=3D"http://node-startup-=
controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.0.2.bb</a>=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          =C2=A0 | 3 +++<br>
          =C2=A0.../node-startup-controller/<a href=3D"http://node-startup-=
controller_git.bb" target=3D"_blank">node-startup-controller_git.bb</a>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
          =C2=A02 files changed, 6 insertions(+)<br>
          <br>
          diff --git a/recipes-extended/node-startup-controller/<a href=3D"=
http://node-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-con=
troller_1.0.2.bb</a>
          b/recipes-extended/node-startup-controller/<a href=3D"http://node=
-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.0=
.2.bb</a><br>
          index 470bb97..fd3e1c9 100644<br>
          --- a/recipes-extended/node-startup-controller/<a href=3D"http://=
node-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-controller=
_1.0.2.bb</a><br>
          +++ b/recipes-extended/node-startup-controller/<a href=3D"http://=
node-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-controller=
_1.0.2.bb</a><br>
          @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
          =C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
          =C2=A0 =C2=A0 =C2=A0${libdir}/${PN}-1/.debug/nsm-dummy \<br>
          =C2=A0 =C2=A0 =C2=A0&quot;<br>
          +do_install_append() {<br>
          + =C2=A0 =C2=A0rm -f
          ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.con=
f<br>
          +}<br>
          diff --git a/recipes-extended/node-startup-controller/<a href=3D"=
http://node-startup-controller_git.bb" target=3D"_blank">node-startup-contr=
oller_git.bb</a>
          b/recipes-extended/node-startup-controller/<a href=3D"http://node=
-startup-controller_git.bb" target=3D"_blank">node-startup-controller_git.b=
b</a><br>
          index 0d3b90c..2fec5da 100644<br>
          --- a/recipes-extended/node-startup-controller/<a href=3D"http://=
node-startup-controller_git.bb" target=3D"_blank">node-startup-controller_g=
it.bb</a><br>
          +++ b/recipes-extended/node-startup-controller/<a href=3D"http://=
node-startup-controller_git.bb" target=3D"_blank">node-startup-controller_g=
it.bb</a><br>
          @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
          =C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/${PN}-1/.debug/nsm-dummy \<=
br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
          +do_install_append() {<br>
          + =C2=A0 =C2=A0rm -f
          ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.con=
f<br>
          +}<br>
          <span><font color=3D"#888888">--<br>
              1.8.1.4<br>
              <br>
            </font></span></blockquote>
      </div>
      <br>
      <br clear=3D"all">
      <br>
      -- <br>
      =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=
=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>
      Bangalore<br>
      &lt;Project&gt;Contributor to KDE project<br>
      <a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_bl=
ank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>
      &lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http:/=
/sujithh.info</a><br>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=E0=B5=81=E0=
=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=
=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;Contributo=
r to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign"=
 target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>

--001a11c2dd7eacf0a104de547e9c--
