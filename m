Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2846.1574401848968720302
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2019 21:50:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64057E00D00; Thu, 21 Nov 2019 21:50:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4291DE00BA1
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 21:50:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAM5oh4J024836
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Nov 2019 21:50:44 -0800
Received: from [128.224.158.241] (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 21 Nov
 2019 21:50:42 -0800
Subject: Re: [yocto] busybox + SELinux (warrior) - reboot issue
To: Yair Itzhaki <Yair.Itzhaki@docusign.com>,
        "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04.prod.outlook.com>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <f66862da-0037-595f-2dbb-68bda650cded@windriver.com>
Date: Fri, 22 Nov 2019 13:50:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04.prod.outlook.com>
X-Originating-IP: [128.224.158.241]
X-Groupsio-MsgNum: 47375
Content-Type: multipart/mixed;
	boundary="------------07726C91D5E3B4865818E113"
Content-Language: en-US

--------------07726C91D5E3B4865818E113
Content-Type: multipart/alternative;
	boundary="------------7D45F7FD027F2C8B5D966F1B"

--------------7D45F7FD027F2C8B5D966F1B
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Yair,


On 11/14/19 2:06 AM, Yair Itzhaki wrote:
>
> Hi ,
>
> I'm using Poky (Warrior), with busybox (aiming at a lightweight system)=
.
>
> Recently, added SELinux to my project (by adding=20
> "packagegroup-core-selinux" to my local.conf, with mls policy).
>
> Booted with "selinux=3D1 enforing=3D0".
>
> The auto-relabeling reported an error, since the root is mounted RO.
>
> So, patched slelinux-autorelabel script to mount "/" RW before relabeli=
ng.
>
> Booted again.
>
> This time, selinux-init had the same issue ( / mounted RO).
>
> Patched this one as well, but the system keeps rebooting:
>
> It seems that the init process keeps it's kernel_t context, which=20
> forces re-labeling, reboot and so on=E2=80=A6. (per the selinux-init sc=
ript)
>
> Q1: Is SELinux+busybox a valid combination, or should I switch to syste=
md?
>
SElinux+busybox should work. But there are some security label issues=20
with busybox.

I attached a fix. You can try it.


> Q2: Which context should the init process end up as?
>
This is because /sbin/init.sysvinit doesn't set the correct label.=20
Please also see the attachment. I will send the formal patch later.


> BTW =E2=80=93 the build of "core-image-selinux" fails, with the followi=
ng error
>
> Copying files into the device: set_inode_xattr: No data available=20
> while reading attribute "security.selinux" of "network"
>
I didn't encountered this issue. Please make sure the setting=20
DISTRO_FEATURES_append =3D " acl xattr pam selinux" is in your conf/local=
.conf


//Yi


> Any idea?
>
> Thanks,
>
> Yair
>
>

--------------7D45F7FD027F2C8B5D966F1B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Yair,</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 11/14/19 2:06 AM, Yair Itzhaki
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Hi ,<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">I'm using
            Poky (Warrior), with busybox (aiming at a lightweight
            system).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Recently,
            added SELinux to my project (by adding
            "packagegroup-core-selinux" to my local.conf, with mls
            policy).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Booted wit=
h
            "selinux=3D1 enforing=3D0".<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">The
            auto-relabeling reported an error, since the root is mounted
            RO.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">So, patche=
d
            slelinux-autorelabel script to mount "/" RW before
            relabeling.<br>
            <br>
            Booted again.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">This time,
            selinux-init had the same issue ( / mounted RO).<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Patched
            this one as well, but the system keeps rebooting:<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">It seems
            that the init process keeps it's kernel_t context, which
            forces re-labeling, reboot and so on=E2=80=A6. (per the selin=
ux-init
            script)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Q1: Is
            SELinux+busybox a valid combination, or should I switch to
            systemd?</span></p>
      </div>
    </blockquote>
    <p>SElinux+busybox should work. But there are some security label
      issues with busybox.</p>
    <p>I attached a fix. You can try it.<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Q2: Which
            context should the init process end up as?</span></p>
      </div>
    </blockquote>
    <p>This is because /sbin/init.sysvinit doesn't set the correct
      label. Please also see the attachment. I will send the formal
      patch later.</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">BTW =E2=80=
=93 the
            build of "core-image-selinux" fails, with the following
            error<o:p></o:p></span></p>
        <p class=3D"MsoNormal">=C2=A0 =C2=A0<span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Copying
            files into the device: set_inode_xattr: No data available
            while reading attribute "security.selinux" of "network"</span=
></p>
      </div>
    </blockquote>
    <p>I didn't encountered this issue. Please make sure the setting
      DISTRO_FEATURES_append =3D " acl xattr pam selinux" is in your
      conf/local.conf</p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR04MB54874D8403DA4845FB08BF26FA760@MN2PR04MB5487.namprd04=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Any idea?<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Thanks,<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Arial&quot;,sans-serif">Yair<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------7D45F7FD027F2C8B5D966F1B--

--------------07726C91D5E3B4865818E113
Content-Type: text/x-patch; name="fix.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="fix.patch"

diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
index 04fca3c..c720871 100644
--- a/config/file_contexts.subs_dist
+++ b/config/file_contexts.subs_dist
@@ -44,7 +44,7 @@
 
 # busybox aliases
 # quickly match up the busybox built-in tree to the base filesystem tree
-/usr/lib/busybox/bin /bin
-/usr/lib/busybox/sbin /sbin
+/usr/lib/busybox/bin /usr/bin
+/usr/lib/busybox/sbin /usr/sbin
 /usr/lib/busybox/usr /usr
 
diff --git a/policy/modules/system/getty.fc b/policy/modules/system/getty.fc
index 116ea64..d688249 100644
--- a/policy/modules/system/getty.fc
+++ b/policy/modules/system/getty.fc
@@ -4,6 +4,7 @@
 /run/agetty\.reload	--	gen_context(system_u:object_r:getty_runtime_t,s0)
 
 /usr/bin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
+/usr/bin/start_getty   --  gen_context(system_u:object_r:bin_t,s0)
 
 /usr/sbin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
 
diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
index 11a6ce9..3c063b1 100644
--- a/policy/modules/system/init.fc
+++ b/policy/modules/system/init.fc
@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
 /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
 
 /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
+/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
 /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
 /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
 

--------------07726C91D5E3B4865818E113--
