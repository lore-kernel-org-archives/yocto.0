Return-Path: <romain145@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F84E00BEA
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 10:10:32 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id im17so1012661vcb.23
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 10:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=90KOGTNLTzGfwUJwDwAvYYb3TcauQoQ/2vLMCmpuX9A=;
	b=b/J0ROv8xnrif87sGz4+B7WmXOnPzx87rr6WQJcCW7260UfII9sKZ/d5nB7EM/hhco
	ldxUpByswmIJ/2K6O5aOCP5vu/6oNdP9BZIokSZH9VNYiiyHPxoWxtXh4yOGcJR4PE/M
	bJ6EIAI8W+5hzpLhKiYID1r+nEJ8KaWQfczJcT2kRIfT2bW+LpfxmV8xe+ACp5jbfmLY
	KQDikha+Q5Z2hNulZKtEcRqoE7T/xerFSpXIfLAZ45NXxBPcpGgwBEt7PXdlccVbQb9S
	i6OunVl4iFV1oWL8YTdSCwk2QvA4g+HCfNYHS8vAqj2WrggHW4It2RWeEB42TJCJLfoN
	RAog==
X-Received: by 10.52.120.6 with SMTP id ky6mr916448vdb.38.1396977031526; Tue,
	08 Apr 2014 10:10:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.236.163 with HTTP; Tue, 8 Apr 2014 10:10:11 -0700 (PDT)
From: Romain <romain145@gmail.com>
Date: Tue, 8 Apr 2014 18:10:11 +0100
Message-ID: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Tue, 08 Apr 2014 17:10:32 -0000
Content-Type: multipart/alternative; boundary=089e013a0dbcb9412b04f68b0f5e

--089e013a0dbcb9412b04f68b0f5e
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

While building an image I get those notes, and I would like to lock down
the providers for sshd and jpeg :
NOTE: multiple providers are available for runtime sshd (openssh, dropbear)
NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg

I tried a few syntax in the local.conf, but none of them seem to work :
PREFERRED_PROVIDER_virtual/sshd = "ssh-server-openssh"
PREFERRED_PROVIDER_sshd = "ssh-server-openssh"
PREFERRED_PROVIDER_sshd = "openssh"
PREFERRED_PROVIDER_openssh = "sshd"

Thanks !
Romain

--089e013a0dbcb9412b04f68b0f5e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p dir=3D"ltr">Hello all,</p>
<p dir=3D"ltr">While building an image I get those notes, and I would like =
to lock down the providers for sshd and jpeg :<br>
NOTE: multiple providers are available for runtime sshd (openssh, dropbear)=
<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd<br>
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br></p><p>=
I tried a few syntax in the local.conf, but none of them seem to work :<br>=
PREFERRED_PROVIDER_virtual/sshd =3D &quot;ssh-server-openssh&quot;<br>PREFE=
RRED_PROVIDER_sshd =3D &quot;ssh-server-openssh&quot;<br>

PREFERRED_PROVIDER_sshd =3D &quot;openssh&quot;<br>PREFERRED_PROVIDER_opens=
sh =3D &quot;sshd&quot;</p>
<p dir=3D"ltr">Thanks !<br>Romain<br></p>
</div>

--089e013a0dbcb9412b04f68b0f5e--
