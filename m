Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1519.1581533987736234410
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 10:59:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48145E01483; Wed, 12 Feb 2020 10:59:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B77BCE01483
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2020 10:59:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01CIxVvk007554
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 12 Feb 2020 10:59:33 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Wed, 12 Feb 2020
 10:59:31 -0800
Subject: Re: [yocto-builds] /sbin/telinit conflicts between systemd and sysvinit in yocto 2.6.3
To: <ansurivijay.r@hcl.com>, Michael Halstead <mhalstead@linuxfoundation.org>
References: <hURF.1581251303388120868.81jz@lists.yoctoproject.org>
CC: Yocto discussion list <yocto@yoctoproject.org>
Reply-To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <4b6a0fd7-b0c8-2e58-b566-b694d206a35f@windriver.com>
Date: Wed, 12 Feb 2020 13:59:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <hURF.1581251303388120868.81jz@lists.yoctoproject.org>
X-Originating-IP: [172.25.44.8]
Content-Type: multipart/alternative;
	boundary="------------AEE26CC2DED71088FB3B08C3"
Content-Language: en-CA

--------------AEE26CC2DED71088FB3B08C3
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Vijay,

Note that the yocto-builds list is for automated tests and reports.
The usual list is:
 =C2=A0=C2=A0 yocto@lists.yoctoproject.org

See below for my reply once I address the email list confusion.

Michael,
Can you help here or should I contact someone else?
Since this isn't the first time someone thinks that their
build problem emails should be sent to the yocto-builds email
list, could you add a WARNING, say:
 =C2=A0=C2=A0 Automated feed for autobuilder results.
 =C2=A0=C2=A0 WARNING, ONLY FOR: Automated feed for autobuilder results.
on:
https://www.yoctoproject.org/community/mailing-lists/


Vijay, would have helped you find the right list?
Maybe we need to change:

# Yocto Project Discussions (yocto)=20
<https://lists.yoctoproject.org/g/yocto>: Discussion with Yocto Project=20
developers =E2=80=93 start here with general questions.
# Yocto Project Discussions (yocto)=20
<https://lists.yoctoproject.org/g/yocto>: Discussion with Yocto Project=20
developers and users =E2=80=93 start here with general questions.

On 2/9/20 7:28 AM, ansurivijay.r@hcl.com wrote:
> Hi,
>
> I have added below lines in local.conf of yocto 2.6.3
> VIRTUAL-RUNTIME_init_manager =3D " systemd"
> DISTRO_FEATURES_append =3D " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
> When I building sdk using "bitbake core-image-sato-sdk -c populate_sdk"
You likely need all of:

# Select the default init manager
# use systemd as the default init manager
DISTRO_FEATURES_append =3D " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
KERNEL_FEATURES_append =3D " cfg/systemd.scc"

As shown in the WR Linux sample local.conf:

https://github.com/WindRiver-Labs/wrlinux-x/blob/WRLINUX_10_19_BASE/data/s=
amples/local.conf.sample#L302

and documented for Yocto distros in geneal here:

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#sel=
ecting-an-initialization-manager

../Randy

> I'm facing " file /sbin/telinit conflicts between attempted installs=20
> of systemd-1.239-r0.armv7vet2hf_neon and=20
> sysvinit-2.88dsf-r14.armv7vet2hf_neon
> Can anyone help me fix this?
> Thanks &Regards,
> Vijay
>
>=20


--=20
# Randy MacLeod
# Wind River Linux


--------------AEE26CC2DED71088FB3B08C3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Hi Vijay,</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Note that the yocto-builds list is for
      automated tests and reports.</div>
    <div class=3D"moz-cite-prefix">The usual list is: <br>
    </div>
    <div class=3D"moz-cite-prefix">=C2=A0=C2=A0 <a class=3D"moz-txt-link-a=
bbreviated" href=3D"mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctop=
roject.org</a><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">See below for my reply once I address
      the email list confusion.<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Michael,</div>
    <div class=3D"moz-cite-prefix"> Can you help here or should I contact
      someone else?</div>
    <div class=3D"moz-cite-prefix">Since this isn't the first time someone
      thinks that their</div>
    <div class=3D"moz-cite-prefix">build problem emails should be sent to
      the yocto-builds email</div>
    <div class=3D"moz-cite-prefix">list, could you add a WARNING, say:</di=
v>
    <div class=3D"moz-cite-prefix">=C2=A0=C2=A0 Automated feed for autobui=
lder
      results.</div>
    <div class=3D"moz-cite-prefix">=C2=A0=C2=A0 WARNING, ONLY FOR: Automat=
ed feed
      for autobuilder results.</div>
    <div class=3D"moz-cite-prefix">on:</div>
    <div class=3D"moz-cite-prefix"><a class=3D"moz-txt-link-freetext" href=
=
=3D"https://www.yoctoproject.org/community/mailing-lists/">https://www.yoc=
toproject.org/community/mailing-lists/</a><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">Vijay, would have helped you find the
      right list?</div>
    <div class=3D"moz-cite-prefix">Maybe we need to change:</div>
    <br>
    <div class=3D"moz-cite-prefix">
      <li><a href=3D"https://lists.yoctoproject.org/g/yocto">Yocto Project
          Discussions (yocto)</a>: Discussion with Yocto Project
        developers =E2=80=93 start here with general questions.</li>
    </div>
    <div class=3D"moz-cite-prefix">
      <li><a href=3D"https://lists.yoctoproject.org/g/yocto">Yocto Project
          Discussions (yocto)</a>: Discussion with Yocto Project
        developers and users =E2=80=93 start here with general questions.<=
/li>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 2/9/20 7:28 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ansurivijay.r@h=
cl.com">ansurivijay.r@hcl.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:hURF.1581251303388120868.81jz@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUT=
F-8">
      Hi,<br>
      <br>
      I have added below lines in local.conf of yocto 2.6.3
      <div dir=3D"auto">VIRTUAL-RUNTIME_init_manager =3D " systemd"</div>
      <div dir=3D"auto">DISTRO_FEATURES_append =3D " systemd"</div>
      <div dir=3D"auto">DISTRO_FEATURES_BACKFILL_<wbr>CONSIDERED +=3D
        "sysvinit"</div>
      <div dir=3D"auto">=C2=A0</div>
      <div dir=3D"auto">When I building sdk using "bitbake
        core-image-sato-sdk -c populate_sdk"</div>
    </blockquote>
    You likely need all of:<br>
    <p># Select the default init manager<br>
      # use systemd as the default init manager<br>
      DISTRO_FEATURES_append =3D " systemd"<br>
      DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"<br>
      VIRTUAL-RUNTIME_init_manager =3D "systemd"<br>
      VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"<br>
      KERNEL_FEATURES_append =3D " cfg/systemd.scc"</p>
    <p>As shown in the WR Linux sample local.conf:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://github.com/WindR=
iver-Labs/wrlinux-x/blob/WRLINUX_10_19_BASE/data/samples/local.conf.sample#=
L302">https://github.com/WindRiver-Labs/wrlinux-x/blob/WRLINUX_10_19_BASE/d=
ata/samples/local.conf.sample#L302</a></p>
    <p>and documented for Yocto distros in geneal here:</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject=
.org/docs/current/mega-manual/mega-manual.html#selecting-an-initialization-=
manager">https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.=
html#selecting-an-initialization-manager</a></p>
    <p>../Randy<br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:hURF.1581251303388120868.81jz@lists.yoctoproject.org">
      <div dir=3D"auto">=C2=A0</div>
      <div dir=3D"auto">I'm facing " file /sbin/telinit conflicts between
        attempted installs of systemd-1.239-r0.armv7vet2hf_<wbr>neon and
        sysvinit-2.88dsf-r14.<wbr>armv7vet2hf_neon</div>
      <div dir=3D"auto">=C2=A0</div>
      <div dir=3D"auto">Can anyone help me fix this?</div>
      <div dir=3D"auto">=C2=A0</div>
      <div dir=3D"auto">Thanks &amp;Regards,=C2=A0</div>
      <div dir=3D"auto">Vijay</div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------AEE26CC2DED71088FB3B08C3--
