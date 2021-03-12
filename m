Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
 by mx.groups.io with SMTP id smtpd.web09.162.1615565349893217225
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 08:09:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: deserted.net, ip: 68.232.141.98, mailfrom: joe@deserted.net)
IronPort-SDR: cbdNXiwLJUTUkmGbMRsBdJTmmHWzx0nDNNExjX3+TrfmSHB7UPrQUGpKp/HaJoh90tR8t1FKZm
 DZtN5+KdcUPFZEX0EDGRbVzB0uYHTbWZN2RRHhfrC/aWTHcoGQsXyW+KCrRagKJVQLQQOa/O95
 uxCxC+JqgD9MvQ6ouQuxgYfKtRZOZVX6Z8y3NYzREM+2tlKJC/SI54lg4otcttvmq4CzeEcD7N
 WoC4WyoTofrBXsGUrrwv8jfcZnYXkjqePvPxLTLHMzoJgQ1i6D/5KcrmwVPEpyEOFZX0QZI6i5
 vEg=
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; 
   d="asc'?scan'208";a="59025285"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 12 Mar 2021 08:09:08 -0800
IronPort-SDR: uMHSToaNLAdQ7CozeohkVe3j27TT1HNjynTir2p550ETODAxWmEtDbys6LR+kVKh0QM15qbzlk
 rQzahoqYJedcbRe3kwEXrQClUF7JI26i2+jK8Oj1Xqd8uQlU3Hk/rdw6/Rt6PMOnIBuUBoToiB
 mbMCPfisrAeGp6l2HA5rlQH+z8RfSq9CVOfC49dusuNDh9YJ/tCfo5tqi9J8t3+0BwiEwUR/IY
 vU5SMnky+anaP5qtpVt+kMC1TpyBO0uhIJ4WS34b7aoSkKhwem2l1cMpxnVcAoDoQVeMvbzEEL
 QNI=
Date: Fri, 12 Mar 2021 11:09:04 -0500
From: "Joe MacDonald" <joe@deserted.net>
To: Purushottam choudhary <purushottam.choudhary@kpit.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Nisha
 Parrakat <Nisha.Parrakat@kpit.com>
Subject: Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_config unconditionally
Message-ID: <20210312160903.GC9162@deserted.net>
References: <1614329991-11002-1-git-send-email-purushottam.choudhary@kpit.com>
 <PNZPR01MB42242C1C0A30C4160B329C6D906F9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <PNZPR01MB42242C1C0A30C4160B329C6D906F9@PNZPR01MB4224.INDPRD01.PROD.OUTLOOK.COM>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Return-Path: joe@deserted.net
X-Groupsio-MsgNum: 52685
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="O3RTKUHj+75w1tg5"
Content-Disposition: inline

--O3RTKUHj+75w1tg5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Purushottam,

[Re: [yocto] [meta-selinux][PATCH] openssh: don't overwrite sshd_config un=
conditionally] On 21.03.12 (Fri 12:05) Purushottam choudhary wrote:

> Hi,
>=20
> Please let me know if there any update on this change
> & the tentative week when this change is going to merge in the code.

Sorry about that, I haven't merged it for a couple of reasons, but I
should have followed up before now on it.  It doesn't appear to be against
the currnet head of tree, so I'd suggest a quick rebase on your part and
resend if you think it is still relevant.

At a more basic level, though, I don't know who or how many projects are
intending to use meta-selinux without PAM.  The layer documentation does
make it clear we expect PAM to always be present:

 45 1.2 - How does this layer do to enable SELinux features?
 46
 47 To enable SELinux features, this layers has done these works:
 48
 49    * new DISTRO_FEATURES "selinux" defined
 50    * new DISTRO "poky-selinux" defined, with DISTRO_FEATURES +=3D "pam=
 selinux"
 51    * config file for Linux kernel to enable SELinux
 52    * recipes for SELinux userland libraries and tools
 53    * package group (packagegroup-core-selinux) for SELinux userland pa=
ckages
 54    * bbappends for SELinux related recipes to build with SELinux enabl=
ed
 55    * recipes for SELinux policy modified from refpolicy
=20
The documentation is certainly in need of some updating, but I think the
majority of our users (if not all) are including PAM in their projects.  I
would be interested to hear about your PAM-less meta-selinux project if
you can share some details.

It is certainly arguable whether the config file should be dumped in place
as it is being today, but I do think it's functioning as intended right
now.  Shifting the PAM sshd configuration to a different directory is fine
with me, I don't have any particular love of everything in one files/
directory, but I also don't have any strong aversion to it until it
becomes an obvious problem (eg. two separate files that should have the
same name and different purposes, such as something to be installed in
/etc/defaults/ and /etc/X11/, maybe).

I hope that clears things up a bit.  Thanks.

-Joe.

>=20
> Thanks & Regards,
> Purushottam
>=20
> =E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81
> From: Purushottam Choudhary <purushottam.choudhary@kpit.com>
> Sent: Friday, February 26, 2021 2:29 PM
> To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Cc: Nisha Parrakat <Nisha.Parrakat@kpit.com>
> Subject: [meta-selinux][PATCH] openssh: don't overwrite sshd_config
> unconditionally
>  
> The current implementation was overwriting the sshd_config and sshd
> assuming PAM is needed by default.
>=20
> openssh should use the default sshd_config packaged with the component
> if no distro specific needs are present and not overwrite the full
> sshd_config file.
>=20
> 1. If PAM is enabled as a distro then enable the UsePAM option in sshd_c=
onfig.
> 2. Moved the file sshd to pam directory so that when pam is enabled,
>    then replace the default from poky by installing the same.
>=20
> Signed-off-by: Purushottam Choudhary <purushottam.choudhary@kpit.com>
> ---
>  recipes-connectivity/openssh/files/{ =3D> pam}/sshd |   0
>  recipes-connectivity/openssh/files/sshd_config    | 118 ---------------=
-------
>  recipes-connectivity/openssh/openssh_%.bbappend   |  14 +++
>  3 files changed, 14 insertions(+), 118 deletions(-)
>  rename recipes-connectivity/openssh/files/{ =3D> pam}/sshd (100%)
>  delete mode 100644 recipes-connectivity/openssh/files/sshd_config
>=20
> diff --git a/recipes-connectivity/openssh/files/sshd b/recipes-connectiv=
ity/
> openssh/files/pam/sshd
> similarity index 100%
> rename from recipes-connectivity/openssh/files/sshd
> rename to recipes-connectivity/openssh/files/pam/sshd
> diff --git a/recipes-connectivity/openssh/files/sshd_config b/
> recipes-connectivity/openssh/files/sshd_config
> deleted file mode 100644
> index 1c33ad0..0000000
> --- a/recipes-connectivity/openssh/files/sshd_config
> +++ /dev/null
> @@ -1,118 +0,0 @@
> -#      $OpenBSD: sshd_config,v 1.102 2018/02/16 02:32:40 djm Exp $
> -
> -# This is the sshd server system-wide configuration file.  See
> -# sshd_config(5) for more information.
> -
> -# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin
> -
> -# The strategy used for options in the default sshd_config shipped with
> -# OpenSSH is to specify options with their default value where
> -# possible, but leave them commented.  Uncommented options override the
> -# default value.
> -
> -#Port 22
> -#AddressFamily any
> -#ListenAddress 0.0.0.0
> -#ListenAddress ::
> -
> -#HostKey /etc/ssh/ssh_host_rsa_key
> -#HostKey /etc/ssh/ssh_host_ecdsa_key
> -#HostKey /etc/ssh/ssh_host_ed25519_key
> -
> -# Ciphers and keying
> -#RekeyLimit default none
> -
> -# Logging
> -#SyslogFacility AUTH
> -#LogLevel INFO
> -
> -# Authentication:
> -
> -#LoginGraceTime 2m
> -#PermitRootLogin prohibit-password
> -#StrictModes yes
> -#MaxAuthTries 6
> -#MaxSessions 10
> -
> -#PubkeyAuthentication yes
> -
> -# The default is to check both .ssh/authorized_keys and .ssh/authorized=
_keys2
> -# but this is overridden so installations will only check .ssh/authoriz=
ed_keys
> -#AuthorizedKeysFile    .ssh/authorized_keys
> -
> -#AuthorizedPrincipalsFile none
> -
> -#AuthorizedKeysCommand none
> -#AuthorizedKeysCommandUser nobody
> -
> -# For this to work you will also need host keys in /etc/ssh/ssh_known_h=
osts
> -#HostbasedAuthentication no
> -# Change to yes if you don't trust ~/.ssh/known_hosts for
> -# HostbasedAuthentication
> -#IgnoreUserKnownHosts no
> -# Don't read the user's ~/.rhosts and ~/.shosts files
> -#IgnoreRhosts yes
> -
> -# To disable tunneled clear text passwords, change to no here!
> -#PasswordAuthentication yes
> -#PermitEmptyPasswords no
> -
> -# Change to yes to enable challenge-response passwords (beware issues w=
ith
> -# some PAM modules and threads)
> -ChallengeResponseAuthentication no
> -
> -# Kerberos options
> -#KerberosAuthentication no
> -#KerberosOrLocalPasswd yes
> -#KerberosTicketCleanup yes
> -#KerberosGetAFSToken no
> -
> -# GSSAPI options
> -#GSSAPIAuthentication no
> -#GSSAPICleanupCredentials yes
> -
> -# Set this to 'yes' to enable PAM authentication, account processing,
> -# and session processing. If this is enabled, PAM authentication will
> -# be allowed through the ChallengeResponseAuthentication and
> -# PasswordAuthentication.  Depending on your PAM configuration,
> -# PAM authentication via ChallengeResponseAuthentication may bypass
> -# the setting of "PermitRootLogin without-password".
> -# If you just want the PAM account and session checks to run without
> -# PAM authentication, then enable this but set PasswordAuthentication
> -# and ChallengeResponseAuthentication to 'no'.
> -UsePAM yes
> -
> -#AllowAgentForwarding yes
> -#AllowTcpForwarding yes
> -#GatewayPorts no
> -#X11Forwarding no
> -#X11DisplayOffset 10
> -#X11UseLocalhost yes
> -#PermitTTY yes
> -#PrintMotd yes
> -#PrintLastLog yes
> -#TCPKeepAlive yes
> -#UseLogin no
> -#PermitUserEnvironment no
> -Compression no
> -ClientAliveInterval 15
> -ClientAliveCountMax 4
> -#UseDNS no
> -#PidFile /var/run/sshd.pid
> -#MaxStartups 10:30:100
> -#PermitTunnel no
> -#ChrootDirectory none
> -#VersionAddendum none
> -
> -# no default banner path
> -#Banner none
> -
> -# override default of no subsystems
> -Subsystem      sftp    /usr/libexec/sftp-server
> -
> -# Example of overriding settings on a per-user basis
> -#Match User anoncvs
> -#      X11Forwarding no
> -#      AllowTcpForwarding no
> -#      PermitTTY no
> -#      ForceCommand cvs server
> diff --git a/recipes-connectivity/openssh/openssh_%.bbappend b/
> recipes-connectivity/openssh/openssh_%.bbappend
> index 7719d3b..b541c3e 100644
> --- a/recipes-connectivity/openssh/openssh_%.bbappend
> +++ b/recipes-connectivity/openssh/openssh_%.bbappend
> @@ -1 +1,15 @@
>  require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}
> _selinux.inc', '', d)}
> +
> +# if pam feature is enabled in the distro then take sshd from the pam
> directory.
> +FILESEXTRAPATHS_prepend :=3D "${@bb.utils.contains('DISTRO_FEATURES', '=
pam', '$
> {THISDIR}/files/pam:', ' ', d)}"
> +
> +do_install_append(){
> +
> +    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}" ]; then
> +        # Make sure UsePAM entry is in the sshd_config file.
> +        # If entry not present then append it.
> +        grep -q 'UsePAM' "${D}/etc/ssh/sshd_config" && \
> +        sed -i 's/.*UsePAM.*/UsePAM yes/' "${D}/etc/ssh/sshd_config" ||=
 \
> +        echo 'UsePAM yes' >> "${D}/etc/ssh/sshd_config"
> +    fi
> +}
> --
> 2.7.4
>=20
> This message contains information that may be privileged or confidential=
 and is
> the property of the KPIT Technologies Ltd. It is intended only for the p=
erson
> to whom it is addressed. If you are not the intended recipient, you are =
not
> authorized to read, print, retain copy, disseminate, distribute, or use =
this
> message or any part thereof. If you receive this message in error, pleas=
e
> notify the sender immediately and delete all copies of this message. KPI=
T
> Technologies Ltd. does not accept any liability for virus infected mails=
.

>=20
>=20
>=20


--=20
-Joe MacDonald.
:wq

--O3RTKUHj+75w1tg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCYEuSFwAKCRDAW9yWWiDR
fLEdAJ45p7zGbkNF8ycj32afIDp0gxFXzgCfUnh3LiZw3aegzuq8U4+BvOmGWdo=
=2js1
-----END PGP SIGNATURE-----

--O3RTKUHj+75w1tg5--
