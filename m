Return-Path: <mahyar@boundarydevices.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B5DAE00B7F
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:53:09 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id ec20so1701660lab.39
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=kzU+eO9pqfdjhlgFF+af/URW7CkRWm54CvCM1I9Ohgg=;
	b=Lig4/GklQvqPIIJm6dBVjObx/D84CUSUMpRpKziUChXQ4O+6POQJIhOjdUMV3dBb1g
	yWRCLG0beJzjUHY65GOYZB0UH9WsKNkQaJ78ZCcixQOrZXnTC/skit3ObtL0PEV8ZcME
	9jmpNVaeUlaZEObnhDJOK4/bwl3Wuj03MlP8Dph3IL0O6kaJ+2v2dq9P0nUwAg7aH0wL
	H9B0k9+ixW7vAX8R6hmTgdcZiGYl1lTpbYQux3socdVJUaqClbM/7s8N22NpIyoWywmZ
	iXzP+s3mt0bariEYIM0omc/Es4Qp186gVczfAb1rX/VWZm5n0/V3nplpBXuWO6BeLa91
	65bQ==
X-Gm-Message-State: ALoCoQmqc81MS23pB8fEGZ+L0b05oT8+NXrAuwClpyn5mIJ8AmXi6VHDpMI0fA2Wh+gBJ00Efo5K
MIME-Version: 1.0
X-Received: by 10.152.23.169 with SMTP id n9mr1926382laf.45.1395852788169;
	Wed, 26 Mar 2014 09:53:08 -0700 (PDT)
Received: by 10.112.88.164 with HTTP; Wed, 26 Mar 2014 09:53:08 -0700 (PDT)
X-Originating-IP: [63.226.49.26]
Date: Wed, 26 Mar 2014 09:53:08 -0700
Message-ID: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
From: Mahyar Yaghmaee <mahyar@boundarydevices.com>
To: yocto@yoctoproject.org
Subject: autobuilder setting, ACCEPT_FSL_EULA
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
X-List-Received-Date: Wed, 26 Mar 2014 16:53:11 -0000
Content-Type: multipart/alternative; boundary=089e0160b99a990b1e04f5854d0d

--089e0160b99a990b1e04f5854d0d
Content-Type: text/plain; charset=ISO-8859-1

Hello All,

I'm trying to run autobuilder for my custom .conf file but I need to
include ACCEPT_FSL_EULA="1" in the generated local.conf file.
 Unfortunately I couldn't find anything related to that in the
CreateAutoConf.py file to set in my .conf  file.

here's the error messege in the log file:

recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Started
ERROR: To use 'gpu-viv-bin-mx6q' you need to accept the Freescale EULA
at '/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/meta-fsl-arm/EULA'.
Please read it and in case you accept it, write: ACCEPT_FSL_EULA = "1"
in your local.conf.
ERROR: Function failed: do_unpack
ERROR: Logfile of failure stored in:
/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnueabi/gpu-viv-bin-mx6q/1_3.10.17-1.0.0-hfp-r0/temp/log.do_unpack.10848
NOTE: recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Failed


please let me know if you have any suggestions

Regards,
Mahyar

--089e0160b99a990b1e04f5854d0d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello All,<br><br></div>I&#39;m trying to run au=
tobuilder for my custom .conf file but I need to include ACCEPT_FSL_EULA=3D=
&quot;1&quot; in the generated local.conf file.<br>=A0Unfortunately I could=
n&#39;t find anything related to that in the CreateAutoConf.py file to set =
in my .conf=A0 file.<br>
<br></div><div>here&#39;s the error messege in the log file:<br><pre><span =
class=3D"">recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: =
Started
ERROR: To use &#39;gpu-viv-bin-mx6q&#39; you need to accept the Freescale E=
ULA at &#39;/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-=
fsl-image-gui-master/build/meta-fsl-arm/EULA&#39;. Please read it and in ca=
se you accept it, write: ACCEPT_FSL_EULA =3D &quot;1&quot; in your local.co=
nf.
ERROR: Function failed: do_unpack
ERROR: Logfile of failure stored in: /home/mahyar/autobuilder/yocto-autobui=
lder/yocto-slave/nightly-fsl-image-gui-master/build/build/tmp/work/cortexa9=
hf-vfp-neon-mx6-poky-linux-gnueabi/gpu-viv-bin-mx6q/1_3.10.17-1.0.0-hfp-r0/=
temp/log.do_unpack.10848
NOTE: recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Faile=
d</span></pre><br></div><div>please let me know if you have any suggestions=
<br><br></div><div>Regards,<br>Mahyar<br></div></div>

--089e0160b99a990b1e04f5854d0d--
