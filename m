Return-Path: <sujith.h@gmail.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B444DE01505
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 03:42:37 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id 10so959856vbe.5
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 03:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZUlwxLZ2xM8H+Fk0rE/emhJ1fPk0mR7rN6qKp+ttJjM=;
	b=1DFYoZoS99mobNA+/6GURYx4czQFq2uEfbAgmW56Y/RSnJVH6+0fAdfterGjajdtb5
	ObctS8Zd0/szikKI43TPa0+Il009waKZGDs1RT0f3GO4nrCp1ff8qZe0pqxAnVRBiKXL
	8GRtpzq5LNSc94JmU3ddigVFzjG0s+F6CrdI+8WnZs3Y+eCfWp/Og2na7FOFa41/uRt5
	jVn3IYL0t/ZblHqE94sVtqQI6vhNtgiXdhT6JpsZjf5iPI5FvEHCTWU6qzIQBEER30dk
	KmevhIjKB+3OHx8bAUE3LxVv0icMnNMwKtLMAo870IeOhdA73UpLR9mLdhHM+p2spiTA
	rKyw==
X-Received: by 10.52.115.42 with SMTP id jl10mr17304213vdb.39.1370428956725;
	Wed, 05 Jun 2013 03:42:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.121.201 with HTTP; Wed, 5 Jun 2013 03:42:16 -0700 (PDT)
In-Reply-To: <7A688B48FC95D148BFE83E098348BE503713A848@ALA-MBB.corp.ad.wrs.com>
References: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
	<CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com>
	<51ADE85D.5000908@windriver.com>
	<CADyYWL=GGNHqV0y5F4_RVzfyqMsQN+tZmSit0=ArRQNjHDrkjQ@mail.gmail.com>
	<7A688B48FC95D148BFE83E098348BE503713A848@ALA-MBB.corp.ad.wrs.com>
From: sujith h <sujith.h@gmail.com>
Date: Wed, 5 Jun 2013 16:12:16 +0530
Message-ID: <CADyYWL=mxoDTo-rJerdmAH14dMHYSsBe-JwzxxsAgaA6jvdQJw@mail.gmail.com>
To: "Behrens, Holger" <Holger.Behrens@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
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
X-List-Received-Date: Wed, 05 Jun 2013 10:42:38 -0000
Content-Type: multipart/alternative; boundary=bcaec54857ca28063504de65dbe5

--bcaec54857ca28063504de65dbe5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 5, 2013 at 12:04 PM, Behrens, Holger <
Holger.Behrens@windriver.com> wrote:

> Hi,
>
> > Hi Florin,
> >
> > You are right. The error I get is:
> >
> > Configuring netbase.
> > Configuring procps.
> > Configuring packagegroup-core-boot-genivi.
> > Configuring u-boot-sabre-sd.
> > Configuring u-boot-sabre-lite.
> > Configuring run-postinsts.
> > Configuring u-boot-sabre-aiquad.
> > Collected errors:
> >  * check_data_file_clashes: Package node-state-manager wants to install
> file
> > /home/sujith/MEL7/foton-upstream/atp-build/tmp/work/mx6q-poky-linux-
> > gnueabi/foton-image/4.0.0-r0/rootfs/etc/dbus-
> > 1/system.d/org.genivi.NodeStateManager.conf
> >         But that file is already provided by package  *
> node-startup-controller
> >  * opkg_install_cmd: Cannot install package packagegroup-core-p2.
> > ERROR: Function failed: do_rootfs (see /home/sujith/MEL7/foton-
> > upstream/atp-build/tmp/work/mx6q-poky-linux-gnueabi/foton-
> > image/4.0.0-r0/temp/log.do_rootfs.14894 for further information)
> >
> > This is one solution that came to my mind.
>
> in cases we have both the NSC (P1) and the NSM (P2) in an image, the
> NSM_dummy which is part of the NSC should not be installed.
>

Well NSM_dummy doesn't provide org.genivi.NodeStateManager.conf . So my
worry is doing so, would it resolve the issue? If you can help me find out
why we need to remove NSM_dummy that would be nice of you.

Thanks,

Sujith H

>
> Regards,
> Holger
>
> > Thanks,
> > Sujith H
> >
> >
> >
> > On Tue, Jun 4, 2013 at 6:45 PM, Florin Sarbu <florin.sarbu@windriver.co=
m
> >
> > wrote:
> >
> >
> >       Hi,
> >       please provide a log with the actual error. The attached patch do=
es
> > not contain a solution to your problem in my opinion.
> >
> >       Thank you,
> >       Florin
> >
> >
> >       On 06/04/2013 01:13 PM, sujith h wrote:
> >
> >
> >               Hi,
> >
> >               When package_ipk is used, then opkg fails to install node=
-
> > state-manager
> >               during the do_rootfs phase of foton-image. But this
> behavior
> > is not seen
> >               when rpm is used. opkg fails to install when
> > org.genivi.NodeStateManager.conf
> >               is there in etc/dbus-1/dbus-1/system.d/ directory provide=
d
> > by node-startup-controller.
> >               When rpm packaging is used then node-state-manager's
> > org.genivi.NodeStateManager.conf
> >               is forcefully installed.
> >
> >               Thanks,
> >
> >               Sujith H
> >
> >
> >               On Tue, Jun 4, 2013 at 3:33 PM, Sujith H
> > <sujith.h@gmail.com> wrote:
> >
> >
> >                       From: Sujith H <Sujith_Haridasan@mentor.com>
> >
> >                       Issue found while building foton-image when
> > PACKAGE_CLASSES
> >                       set to "package_ipk". This patch will fix the
> issue.
> >                       This patch has to be applied to branch 4.0.
> >
> >                       Signed-off-by: Sujith H
> > <Sujith_Haridasan@mentor.com>
> >                       ---
> >                        .../node-startup-controller/node-startup-
> > controller_1.0.2.bb           | 3 +++
> >                        .../node-startup-controller/node-startup-
> > controller_git.bb             | 3 +++
> >                        2 files changed, 6 insertions(+)
> >
> >                       diff --git a/recipes-extended/node-startup-
> > controller/node-startup-controller_1.0.2.bb b/recipes-extended/node-
> > startup-controller/node-startup-controller_1.0.2.bb
> >                       index 470bb97..fd3e1c9 100644
> >                       --- a/recipes-extended/node-startup-
> > controller/node-startup-controller_1.0.2.bb
> >                       +++ b/recipes-extended/node-startup-
> > controller/node-startup-controller_1.0.2.bb
> >                       @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D "\
> >                        FILES_${PN}-nsm-dummy-dbg =3D "\
> >                            ${libdir}/${PN}-1/.debug/nsm-dummy \
> >                            "
> >                       +do_install_append() {
> >                       +    rm -f ${D}${sysconfdir}/dbus-
> > 1/system.d/org.genivi.NodeStateManager.conf
> >                       +}
> >                       diff --git a/recipes-extended/node-startup-
> > controller/node-startup-controller_git.bb b/recipes-extended/node-
> > startup-controller/node-startup-controller_git.bb
> >                       index 0d3b90c..2fec5da 100644
> >                       --- a/recipes-extended/node-startup-
> > controller/node-startup-controller_git.bb
> >                       +++ b/recipes-extended/node-startup-
> > controller/node-startup-controller_git.bb
> >                       @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D "\
> >                        FILES_${PN}-nsm-dummy-dbg =3D "\
> >                               ${libdir}/${PN}-1/.debug/nsm-dummy \
> >                               "
> >                       +do_install_append() {
> >                       +    rm -f ${D}${sysconfdir}/dbus-
> > 1/system.d/org.genivi.NodeStateManager.conf
> >                       +}
> >                       --
> >                       1.8.1.4
> >
> >
> >
> >
> >
> >
> >               --
> >               =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =
=E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
> >               Bangalore
> >               <Project>Contributor to KDE project
> >               http://fci.wikia.com/wiki/Anti-DRM-Campaign
> >               <Blog> http://sujithh.info
> >
> >
> >
> >
> >
> >
> > --
> > =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=
=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
> > Bangalore
> > <Project>Contributor to KDE project
> > http://fci.wikia.com/wiki/Anti-DRM-Campaign
> > <Blog> http://sujithh.info
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--bcaec54857ca28063504de65dbe5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><div class=3D"gmail_quote">On Wed, Jun 5, 2013 at 12:04 PM, Behr=
ens, Holger <span dir=3D"ltr">&lt;<a href=3D"mailto:Holger.Behrens@windrive=
r.com" target=3D"_blank">Holger.Behrens@windriver.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">

Hi,<br>
<div class=3D"im"><br>
&gt; Hi Florin,<br>
&gt;<br>
&gt; You are right. The error I get is:<br>
&gt;<br>
&gt; Configuring netbase.<br>
&gt; Configuring procps.<br>
&gt; Configuring packagegroup-core-boot-genivi.<br>
&gt; Configuring u-boot-sabre-sd.<br>
&gt; Configuring u-boot-sabre-lite.<br>
&gt; Configuring run-postinsts.<br>
&gt; Configuring u-boot-sabre-aiquad.<br>
&gt; Collected errors:<br>
&gt; =C2=A0* check_data_file_clashes: Package node-state-manager wants to i=
nstall file<br>
&gt; /home/sujith/MEL7/foton-upstream/atp-build/tmp/work/mx6q-poky-linux-<b=
r>
&gt; gnueabi/foton-image/4.0.0-r0/rootfs/etc/dbus-<br>
&gt; 1/system.d/org.genivi.NodeStateManager.conf<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 But that file is already provided by packa=
ge =C2=A0* node-startup-controller<br>
&gt; =C2=A0* opkg_install_cmd: Cannot install package packagegroup-core-p2.=
<br>
&gt; ERROR: Function failed: do_rootfs (see /home/sujith/MEL7/foton-<br>
&gt; upstream/atp-build/tmp/work/mx6q-poky-linux-gnueabi/foton-<br>
&gt; image/4.0.0-r0/temp/log.do_rootfs.14894 for further information)<br>
&gt;<br>
&gt; This is one solution that came to my mind.<br>
<br>
</div>in cases we have both the NSC (P1) and the NSM (P2) in an image, the =
NSM_dummy which is part of the NSC should not be installed.<br></blockquote=
><div><br>Well NSM_dummy doesn&#39;t provide org.genivi.NodeStateManager.co=
nf . So my worry is doing so, would it resolve the issue? If you can help m=
e find out why we need to remove NSM_dummy that would be nice of you.<br>

<br>Thanks,<br><br>Sujith H<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Regards,<br>
Holger<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Thanks,<br>
&gt; Sujith H<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 4, 2013 at 6:45 PM, Florin Sarbu &lt;<a href=3D"mailto:flo=
rin.sarbu@windriver.com">florin.sarbu@windriver.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 Hi,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 please provide a log with the actual error. The a=
ttached patch does<br>
&gt; not contain a solution to your problem in my opinion.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 Thank you,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 Florin<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 On 06/04/2013 01:13 PM, sujith h wrote:<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Hi,<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 When package_ipk is u=
sed, then opkg fails to install node-<br>
&gt; state-manager<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 during the do_rootfs =
phase of foton-image. But this behavior<br>
&gt; is not seen<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 when rpm is used. opk=
g fails to install when<br>
&gt; org.genivi.NodeStateManager.conf<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 is there in etc/dbus-=
1/dbus-1/system.d/ directory provided<br>
&gt; by node-startup-controller.<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 When rpm packaging is=
 used then node-state-manager&#39;s<br>
&gt; org.genivi.NodeStateManager.conf<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 is forcefully install=
ed.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks,<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sujith H<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Jun 4, 2013 a=
t 3:33 PM, Sujith H<br>
&gt; &lt;<a href=3D"mailto:sujith.h@gmail.com">sujith.h@gmail.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">Su=
jith_Haridasan@mentor.com</a>&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Issue found while building foton-image when<br>
&gt; PACKAGE_CLASSES<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set to &quot;package_ipk&quot;. This patch will fix the issue.<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 This patch has to be applied to branch 4.0.<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Signed-off-by: Sujith H<br>
&gt; &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">Sujith_Haridasan@me=
ntor.com</a>&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ---<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.../node-startup-controller/node-startup-<br>
&gt; <a href=3D"http://controller_1.0.2.bb" target=3D"_blank">controller_1.=
0.2.bb</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0.../node-startup-controller/node-startup-<br>
&gt; <a href=3D"http://controller_git.bb" target=3D"_blank">controller_git.=
bb</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A02 files changed, 6 insertions(+)<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 diff --git a/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_1.0.2.bb" target=
=3D"_blank">node-startup-controller_1.0.2.bb</a> b/recipes-extended/node-<b=
r>
&gt; startup-controller/<a href=3D"http://node-startup-controller_1.0.2.bb"=
 target=3D"_blank">node-startup-controller_1.0.2.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 index 470bb97..fd3e1c9 100644<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --- a/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_1.0.2.bb" target=
=3D"_blank">node-startup-controller_1.0.2.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +++ b/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_1.0.2.bb" target=
=3D"_blank">node-startup-controller_1.0.2.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/${PN}-1/.debug/nsm-dummy \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +do_install_append() {<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 + =C2=A0 =C2=A0rm -f ${D}${sysconfdir}/dbus-<br>
&gt; 1/system.d/org.genivi.NodeStateManager.conf<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +}<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 diff --git a/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_git.bb" target=3D=
"_blank">node-startup-controller_git.bb</a> b/recipes-extended/node-<br>
&gt; startup-controller/<a href=3D"http://node-startup-controller_git.bb" t=
arget=3D"_blank">node-startup-controller_git.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 index 0d3b90c..2fec5da 100644<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --- a/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_git.bb" target=3D=
"_blank">node-startup-controller_git.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +++ b/recipes-extended/node-startup-<br>
&gt; controller/<a href=3D"http://node-startup-controller_git.bb" target=3D=
"_blank">node-startup-controller_git.bb</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/${PN}-1/.debug/nsm-dummy \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +do_install_append() {<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 + =C2=A0 =C2=A0rm -f ${D}${sysconfdir}/dbus-<br>
&gt; 1/system.d/org.genivi.NodeStateManager.conf<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 +}<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 --<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 1.8.1.4<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E0=B4=B8=E0=B5=81=E0=
=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=
=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Bangalore<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;Project&gt;Contri=
butor to KDE project<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://fci=
.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_blank">http://fci.wikia.com/w=
iki/Anti-DRM-Campaign</a><br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;Blog&gt; <a href=
=3D"http://sujithh.info" target=3D"_blank">http://sujithh.info</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=
=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>
&gt; Bangalore<br>
&gt; &lt;Project&gt;Contributor to KDE project<br>
&gt; <a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_bla=
nk">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>
&gt; &lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://=
sujithh.info</a><br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=
=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=
=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&g=
t;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-D=
RM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign<=
/a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>

--bcaec54857ca28063504de65dbe5--
