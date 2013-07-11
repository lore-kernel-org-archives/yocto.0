Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8AADE013A2
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 05:27:58 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id c13so5468640eek.17
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 05:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=fmuYxuO6DzwIefdzwQ985psBH81fNBLCNpNRkn2++wQ=;
	b=I/1HDsxElHiAPp6UxN4HHNWazNYnK2m5nJgxUq3IJ2S+s2sMEsCwZQoJMjzP4itzlW
	Av04wgOONbTlcQwIIqrzPi/quMueqB36VgIHObDH5MS+Jp88vQHC6gpYLL6oH1H2ZSpC
	IutNakhSbGBZC44skGcoRxRoHwKWuD5XD0LeFlPx5l+UIrM92OdrTSEa005yb4Cr0WUt
	b1HQQOUQNa+I6Mmy4nSoLnhW/3otZtJlFacfIOo9ZyMiYAVDw4q3FBoUB+XSGXGVDahH
	MznA5UmoYNE69wSg6R8vfsBION/0EYI2s365nL/fRzgEqF/mcbWeUWbsHd2BqX2Fc5ts
	3oXg==
X-Received: by 10.14.218.136 with SMTP id k8mr41545260eep.111.1373545677045;
	Thu, 11 Jul 2013 05:27:57 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	m1sm68611220eex.17.2013.07.11.05.27.55 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 11 Jul 2013 05:27:56 -0700 (PDT)
Date: Thu, 11 Jul 2013 14:28:07 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Markus Hubig <mhubig@imko.de>
Message-ID: <20130711122807.GI3288@jama>
References: <1373535808-1443-1-git-send-email-mhubig@imko.de>
MIME-Version: 1.0
In-Reply-To: <1373535808-1443-1-git-send-email-mhubig@imko.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Restructures the openssh recipe to suport systemd.
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
X-List-Received-Date: Thu, 11 Jul 2013 12:27:59 -0000
X-Groupsio-MsgNum: 14914
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="b/6gol1SqNxk8K3i"
Content-Disposition: inline

--b/6gol1SqNxk8K3i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 11, 2013 at 11:43:28AM +0200, Markus Hubig wrote:
> + Adds native support for systemd in addition to sysvinit.
> * Splits the huge recipe into an inc and a small bb file.
> * Avoids the installation of the sysvinit files with systemd.

Similar patch is already on oe-core ML where it belongs and patches like
this really need to be sent with -M flag.

> Signed-off-by: Markus Hubig <mhubig@imko.de>
> ---
>  .../openssh/openssh-6.2p2/init                     |  92 ---------------
>  .../openssh/openssh-6.2p2/mac.patch                |  76 -------------
>  .../openssh/openssh-6.2p2/nostrip.patch            |  20 ----
>  .../openssh-6.2p2/openssh-CVE-2011-4327.patch      |  27 -----
>  .../openssh/openssh-6.2p2/ssh_config               |  46 --------
>  .../openssh/openssh-6.2p2/sshd                     |  10 --
>  .../openssh/openssh-6.2p2/sshd_config              | 119 ---------------=
-----
>  meta/recipes-connectivity/openssh/openssh.inc      | 123 +++++++++++++++=
++++++
>  meta/recipes-connectivity/openssh/openssh/init     |  92 +++++++++++++++
>  .../recipes-connectivity/openssh/openssh/mac.patch |  76 +++++++++++++
>  .../openssh/openssh/nostrip.patch                  |  20 ++++
>  .../openssh/openssh/openssh-CVE-2011-4327.patch    |  27 +++++
>  meta/recipes-connectivity/openssh/openssh/pam      |  10 ++
>  .../openssh/openssh/ssh_config                     |  46 ++++++++
>  .../openssh/openssh/sshd.socket                    |  11 ++
>  .../openssh/openssh/sshd@.service                  |   9 ++
>  .../openssh/openssh/sshd_config                    | 119 +++++++++++++++=
+++++
>  .../openssh/openssh/sshdgenkeys.service            |  10 ++
>  meta/recipes-connectivity/openssh/openssh_6.2p2.bb | 113 +--------------=
----
>  19 files changed, 549 insertions(+), 497 deletions(-)
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/init
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/mac.p=
atch
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/nostr=
ip.patch
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/opens=
sh-CVE-2011-4327.patch
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/ssh_c=
onfig
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/sshd
>  delete mode 100644 meta/recipes-connectivity/openssh/openssh-6.2p2/sshd_=
config
>  create mode 100644 meta/recipes-connectivity/openssh/openssh.inc
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/init
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/mac.patch
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/nostrip.pat=
ch
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/openssh-CVE=
-2011-4327.patch
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/pam
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/ssh_config
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/sshd.socket
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/sshd@.servi=
ce
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/sshd_config
>  create mode 100644 meta/recipes-connectivity/openssh/openssh/sshdgenkeys=
=2Eservice
>=20
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/init b/meta/=
recipes-connectivity/openssh/openssh-6.2p2/init
> deleted file mode 100644
> index 6beec84..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/init
> +++ /dev/null
> @@ -1,92 +0,0 @@
> -#! /bin/sh
> -set -e
> -
> -# /etc/init.d/ssh: start and stop the OpenBSD "secure shell" daemon
> -
> -test -x /usr/sbin/sshd || exit 0
> -( /usr/sbin/sshd -\? 2>&1 | grep -q OpenSSH ) 2>/dev/null || exit 0
> -
> -if test -f /etc/default/ssh; then
> -    . /etc/default/ssh
> -fi
> -
> -check_for_no_start() {
> -    # forget it if we're trying to start, and /etc/ssh/sshd_not_to_be_ru=
n exists
> -    if [ -e /etc/ssh/sshd_not_to_be_run ]; then=20
> -	echo "OpenBSD Secure Shell server not in use (/etc/ssh/sshd_not_to_be_r=
un)"
> -	exit 0
> -    fi
> -}
> -
> -check_privsep_dir() {
> -    # Create the PrivSep empty dir if necessary
> -    if [ ! -d /var/run/sshd ]; then
> -	mkdir /var/run/sshd
> -	chmod 0755 /var/run/sshd
> -    fi
> -}
> -
> -check_config() {
> -	/usr/sbin/sshd -t || exit 1
> -}
> -
> -check_keys() {
> -	# create keys if necessary
> -	if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
> -		echo "  generating ssh RSA key..."
> -		ssh-keygen -q -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
> -	fi
> -	if [ ! -f /etc/ssh/ssh_host_ecdsa_key ]; then
> -		echo "  generating ssh ECDSA key..."
> -		ssh-keygen -q -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
> -	fi
> -	if [ ! -f /etc/ssh/ssh_host_dsa_key ]; then
> -		echo "  generating ssh DSA key..."
> -		ssh-keygen -q -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
> -	fi
> -}
> -
> -export PATH=3D"${PATH:+$PATH:}/usr/sbin:/sbin"
> -
> -case "$1" in
> -  start)
> -	check_for_no_start
> -	echo "Starting OpenBSD Secure Shell server: sshd"
> -	check_keys
> -	check_privsep_dir
> -	start-stop-daemon -S -x /usr/sbin/sshd -- $SSHD_OPTS
> -        echo "done."
> -	;;
> -  stop)
> -        echo -n "Stopping OpenBSD Secure Shell server: sshd"
> -	start-stop-daemon -K -x /usr/sbin/sshd
> -        echo "."
> -	;;
> -
> -  reload|force-reload)
> -	check_for_no_start
> -	check_keys
> -	check_config
> -        echo -n "Reloading OpenBSD Secure Shell server's configuration"
> -	start-stop-daemon -K -s 1 -x /usr/sbin/sshd
> -	echo "."
> -	;;
> -
> -  restart)
> -  	check_keys
> -	check_config
> -        echo -n "Restarting OpenBSD Secure Shell server: sshd"
> -	start-stop-daemon -K --oknodo -x /usr/sbin/sshd
> -	check_for_no_start
> -	check_privsep_dir
> -	sleep 2
> -	start-stop-daemon -S -x /usr/sbin/sshd -- $SSHD_OPTS
> -	echo "."
> -	;;
> -
> -  *)
> -	echo "Usage: /etc/init.d/ssh {start|stop|reload|force-reload|restart}"
> -	exit 1
> -esac
> -
> -exit 0
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/mac.patch b/=
meta/recipes-connectivity/openssh/openssh-6.2p2/mac.patch
> deleted file mode 100644
> index 69fb69d..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/mac.patch
> +++ /dev/null
> @@ -1,76 +0,0 @@
> -[PATCH] force the MAC output to be 64-bit aligned
> -
> -Upstream-Status: Backport[anoncvs.mindrot.org/index.cgi/openssh/mac.c?r1=
=3D1.27&r2=3D1.28]
> -
> -Backport patch to fix segment fault due to unaligned memory access
> -
> -Wed Jun 5 22:12:37 2013 UTC (7 days, 3 hours ago) by dtucker
> -Branch: MAIN
> -CVS Tags: HEAD
> -Changes since 1.27: +11 -8 lines
> -Diff to previous 1.27
> -
> -   - dtucker@cvs.openbsd.org 2013/06/03 00:03:18
> -     [mac.c]
> -     force the MAC output to be 64-bit aligned so umac won't see
> -unaligned
> -     accesses on strict-alignment architectures.  bz#2101, patch from
> -     tomas.kuthan at oracle.com, ok djm@
> ----
> - mac.c |   18 +++++++++++-------
> - 1 file changed, 11 insertions(+), 7 deletions(-)
> -
> -diff --git a/mac.c b/mac.c
> -index 3f2dc6f..a5a80d3 100644
> ---- a/mac.c
> -+++ b/mac.c
> -@@ -152,12 +152,16 @@ mac_init(Mac *mac)
> - u_char *
> - mac_compute(Mac *mac, u_int32_t seqno, u_char *data, int datalen)
> - {
> --	static u_char m[EVP_MAX_MD_SIZE];
> -+	static union {
> -+		u_char m[EVP_MAX_MD_SIZE];
> -+		u_int64_t for_align;
> -+	} u;
> -+
> - 	u_char b[4], nonce[8];
> -=20
> --	if (mac->mac_len > sizeof(m))
> -+	if (mac->mac_len > sizeof(u))
> - 		fatal("mac_compute: mac too long %u %lu",
> --		    mac->mac_len, (u_long)sizeof(m));
> -+		    mac->mac_len, (u_long)sizeof(u));
> -=20
> - 	switch (mac->type) {
> - 	case SSH_EVP:
> -@@ -166,22 +170,22 @@ mac_compute(Mac *mac, u_int32_t seqno, u_char *dat=
a, int datalen)
> - 		HMAC_Init(&mac->evp_ctx, NULL, 0, NULL);
> - 		HMAC_Update(&mac->evp_ctx, b, sizeof(b));
> - 		HMAC_Update(&mac->evp_ctx, data, datalen);
> --		HMAC_Final(&mac->evp_ctx, m, NULL);
> -+		HMAC_Final(&mac->evp_ctx, u.m, NULL);
> - 		break;
> - 	case SSH_UMAC:
> - 		put_u64(nonce, seqno);
> - 		umac_update(mac->umac_ctx, data, datalen);
> --		umac_final(mac->umac_ctx, m, nonce);
> -+		umac_final(mac->umac_ctx, u.m, nonce);
> - 		break;
> - 	case SSH_UMAC128:
> - 		put_u64(nonce, seqno);
> - 		umac128_update(mac->umac_ctx, data, datalen);
> --		umac128_final(mac->umac_ctx, m, nonce);
> -+		umac128_final(mac->umac_ctx, u.m, nonce);
> - 		break;
> - 	default:
> - 		fatal("mac_compute: unknown MAC type");
> - 	}
> --	return (m);
> -+	return (u.m);
> - }
> -=20
> - void
> ---=20
> -1.7.9.5
> -
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/nostrip.patc=
h b/meta/recipes-connectivity/openssh/openssh-6.2p2/nostrip.patch
> deleted file mode 100644
> index 33111f5..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/nostrip.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Disable stripping binaries during make install.
> -
> -Upstream-Status: Inappropriate [configuration]
> -
> -Build system specific.
> -
> -Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> -
> -diff -ur openssh-5.6p1.orig/Makefile.in openssh-5.6p1/Makefile.in
> ---- openssh-5.6p1.orig/Makefile.in	2010-05-11 23:51:39.000000000 -0700
> -+++ openssh-5.6p1/Makefile.in	2010-08-30 16:49:54.000000000 -0700
> -@@ -29,7 +29,7 @@
> - RAND_HELPER=3D$(libexecdir)/ssh-rand-helper
> - PRIVSEP_PATH=3D@PRIVSEP_PATH@
> - SSH_PRIVSEP_USER=3D@SSH_PRIVSEP_USER@
> --STRIP_OPT=3D@STRIP_OPT@
> -+STRIP_OPT=3D
> -=20
> - PATHS=3D -DSSHDIR=3D\"$(sysconfdir)\" \
> - 	-D_PATH_SSH_PROGRAM=3D\"$(SSH_PROGRAM)\" \
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/openssh-CVE-=
2011-4327.patch b/meta/recipes-connectivity/openssh/openssh-6.2p2/openssh-C=
VE-2011-4327.patch
> deleted file mode 100644
> index 8489edc..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/openssh-CVE-2011-43=
27.patch
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -openssh-CVE-2011-4327
> -
> -A security flaw was found in the way ssh-keysign,
> -a ssh helper program for host based authentication,
> -attempted to retrieve enough entropy information on configurations that
> -lacked a built-in entropy pool in OpenSSL (a ssh-rand-helper program wou=
ld
> -be executed to retrieve the entropy from the system environment).
> -A local attacker could use this flaw to obtain unauthorized access to ho=
st keys
> -via ptrace(2) process trace attached to the 'ssh-rand-helper' program.
> -
> -https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2011-4327
> -http://www.openssh.com/txt/portable-keysign-rand-helper.adv
> -
> -Signed-off-by: Li Wang <li.wang@windriver.com>
> ---- a/ssh-keysign.c
> -+++ b/ssh-keysign.c
> -@@ -170,6 +170,10 @@
> - 	key_fd[i++] =3D open(_PATH_HOST_DSA_KEY_FILE, O_RDONLY);
> - 	key_fd[i++] =3D open(_PATH_HOST_ECDSA_KEY_FILE, O_RDONLY);
> - 	key_fd[i++] =3D open(_PATH_HOST_RSA_KEY_FILE, O_RDONLY);
> -+	if (fcntl(key_fd[0], F_SETFD, FD_CLOEXEC) !=3D 0 ||
> -+	    fcntl(key_fd[1], F_SETFD, FD_CLOEXEC) !=3D 0 ||
> -+	    fcntl(key_fd[2], F_SETFD, FD_CLOEXEC) !=3D 0)
> -+		fatal("fcntl failed");
> -=20
> - 	original_real_uid =3D getuid();	/* XXX readconf.c needs this */
> - 	if ((pw =3D getpwuid(original_real_uid)) =3D=3D NULL)
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/ssh_config b=
/meta/recipes-connectivity/openssh/openssh-6.2p2/ssh_config
> deleted file mode 100644
> index 4a4a649..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/ssh_config
> +++ /dev/null
> @@ -1,46 +0,0 @@
> -#	$OpenBSD: ssh_config,v 1.25 2009/02/17 01:28:32 djm Exp $
> -
> -# This is the ssh client system-wide configuration file.  See
> -# ssh_config(5) for more information.  This file provides defaults for
> -# users, and the values can be changed in per-user configuration files
> -# or on the command line.
> -
> -# Configuration data is parsed as follows:
> -#  1. command line options
> -#  2. user-specific file
> -#  3. system-wide file
> -# Any configuration value is only changed the first time it is set.
> -# Thus, host-specific definitions should be at the beginning of the
> -# configuration file, and defaults at the end.
> -
> -# Site-wide defaults for some commonly used options.  For a comprehensive
> -# list of available options, their meanings and defaults, please see the
> -# ssh_config(5) man page.
> -
> -Host *
> -  ForwardAgent yes
> -  ForwardX11 yes
> -#   RhostsRSAAuthentication no
> -#   RSAAuthentication yes
> -#   PasswordAuthentication yes
> -#   HostbasedAuthentication no
> -#   GSSAPIAuthentication no
> -#   GSSAPIDelegateCredentials no
> -#   BatchMode no
> -#   CheckHostIP yes
> -#   AddressFamily any
> -#   ConnectTimeout 0
> -#   StrictHostKeyChecking ask
> -#   IdentityFile ~/.ssh/identity
> -#   IdentityFile ~/.ssh/id_rsa
> -#   IdentityFile ~/.ssh/id_dsa
> -#   Port 22
> -#   Protocol 2,1
> -#   Cipher 3des
> -#   Ciphers aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes12=
8-cbc,3des-cbc
> -#   MACs hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160
> -#   EscapeChar ~
> -#   Tunnel no
> -#   TunnelDevice any:any
> -#   PermitLocalCommand no
> -#   VisualHostKey no
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/sshd b/meta/=
recipes-connectivity/openssh/openssh-6.2p2/sshd
> deleted file mode 100644
> index 4882e58..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/sshd
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -#%PAM-1.0
> -
> -auth       include      common-auth
> -account    required     pam_nologin.so
> -account    include      common-account
> -password   include      common-password
> -session    optional     pam_keyinit.so force revoke
> -session    include      common-session
> -session    required     pam_loginuid.so
> -
> diff --git a/meta/recipes-connectivity/openssh/openssh-6.2p2/sshd_config =
b/meta/recipes-connectivity/openssh/openssh-6.2p2/sshd_config
> deleted file mode 100644
> index 4f9b626..0000000
> --- a/meta/recipes-connectivity/openssh/openssh-6.2p2/sshd_config
> +++ /dev/null
> @@ -1,119 +0,0 @@
> -#	$OpenBSD: sshd_config,v 1.80 2008/07/02 02:24:18 djm Exp $
> -
> -# This is the sshd server system-wide configuration file.  See
> -# sshd_config(5) for more information.
> -
> -# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin
> -
> -# The strategy used for options in the default sshd_config shipped with
> -# OpenSSH is to specify options with their default value where
> -# possible, but leave them commented.  Uncommented options change a
> -# default value.
> -
> -#Port 22
> -#AddressFamily any
> -#ListenAddress 0.0.0.0
> -#ListenAddress ::
> -
> -# Disable legacy (protocol version 1) support in the server for new
> -# installations. In future the default will change to require explicit
> -# activation of protocol 1
> -Protocol 2
> -
> -# HostKey for protocol version 1
> -#HostKey /etc/ssh/ssh_host_key
> -# HostKeys for protocol version 2
> -#HostKey /etc/ssh/ssh_host_rsa_key
> -#HostKey /etc/ssh/ssh_host_dsa_key
> -
> -# Lifetime and size of ephemeral version 1 server key
> -#KeyRegenerationInterval 1h
> -#ServerKeyBits 1024
> -
> -# Logging
> -# obsoletes QuietMode and FascistLogging
> -#SyslogFacility AUTH
> -#LogLevel INFO
> -
> -# Authentication:
> -
> -#LoginGraceTime 2m
> -#PermitRootLogin yes
> -#StrictModes yes
> -#MaxAuthTries 6
> -#MaxSessions 10
> -
> -#RSAAuthentication yes
> -#PubkeyAuthentication yes
> -#AuthorizedKeysFile	.ssh/authorized_keys
> -
> -# For this to work you will also need host keys in /etc/ssh/ssh_known_ho=
sts
> -#RhostsRSAAuthentication no
> -# similar for protocol version 2
> -#HostbasedAuthentication no
> -# Change to yes if you don't trust ~/.ssh/known_hosts for
> -# RhostsRSAAuthentication and HostbasedAuthentication
> -#IgnoreUserKnownHosts no
> -# Don't read the user's ~/.rhosts and ~/.shosts files
> -#IgnoreRhosts yes
> -
> -# To disable tunneled clear text passwords, change to no here!
> -#PasswordAuthentication yes
> -#PermitEmptyPasswords no
> -
> -# Change to no to disable s/key passwords
> -#ChallengeResponseAuthentication yes
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
> -# Set this to 'yes' to enable PAM authentication, account processing,=20
> -# and session processing. If this is enabled, PAM authentication will=20
> -# be allowed through the ChallengeResponseAuthentication and
> -# PasswordAuthentication.  Depending on your PAM configuration,
> -# PAM authentication via ChallengeResponseAuthentication may bypass
> -# the setting of "PermitRootLogin without-password".
> -# If you just want the PAM account and session checks to run without
> -# PAM authentication, then enable this but set PasswordAuthentication
> -# and ChallengeResponseAuthentication to 'no'.
> -#UsePAM no
> -
> -#AllowAgentForwarding yes
> -#AllowTcpForwarding yes
> -#GatewayPorts no
> -#X11Forwarding no
> -#X11DisplayOffset 10
> -#X11UseLocalhost yes
> -#PrintMotd yes
> -#PrintLastLog yes
> -#TCPKeepAlive yes
> -#UseLogin no
> -UsePrivilegeSeparation yes
> -#PermitUserEnvironment no
> -Compression no
> -ClientAliveInterval 15
> -ClientAliveCountMax 4
> -#UseDNS yes
> -#PidFile /var/run/sshd.pid
> -#MaxStartups 10
> -#PermitTunnel no
> -#ChrootDirectory none
> -
> -# no default banner path
> -#Banner none
> -
> -# override default of no subsystems
> -Subsystem	sftp	/usr/libexec/sftp-server
> -
> -# Example of overriding settings on a per-user basis
> -#Match User anoncvs
> -#	X11Forwarding no
> -#	AllowTcpForwarding no
> -#	ForceCommand cvs server
> diff --git a/meta/recipes-connectivity/openssh/openssh.inc b/meta/recipes=
-connectivity/openssh/openssh.inc
> new file mode 100644
> index 0000000..c51b65c
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh.inc
> @@ -0,0 +1,123 @@
> +SUMMARY =3D "Secure rlogin/rsh/rcp/telnet replacement"
> +DESCRIPTION =3D "Secure rlogin/rsh/rcp/telnet replacement (OpenSSH) \
> +Ssh (Secure Shell) is a program for logging into a remote machine \
> +and for executing commands on a remote machine."
> +HOMEPAGE =3D "http://openssh.org"
> +SECTION =3D "console/network"
> +LICENSE =3D "BSD"
> +LIC_FILES_CHKSUM =3D "file://LICENCE;md5=3De326045657e842541d3f35aada442=
507"
> +
> +INC_PR =3D "r1"
> +
> +DEPENDS =3D "zlib openssl"
> +DEPENDS +=3D "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', d=
)}"
> +
> +RPROVIDES_${PN}-ssh =3D "ssh"
> +RPROVIDES_${PN}-sshd =3D "sshd"
> +
> +RCONFLICTS_${PN} =3D "dropbear"
> +RCONFLICTS_${PN}-sshd =3D "dropbear"
> +RCONFLICTS_${PN}-keygen =3D "ssh-keygen"
> +
> +INITSCRIPT_PACKAGES =3D "${PN}-sshd"
> +INITSCRIPT_NAME_${PN}-sshd =3D "sshd"
> +INITSCRIPT_PARAMS =3D "defaults 9"
> +
> +SYSTEMD_PACKAGES =3D "${PN}-sshd"
> +SYSTEMD_SERVICE_${PN}-sshd =3D "sshd.socket"
> +
> +USERADD_PACKAGES =3D "${PN}-sshd"
> +USERADD_PARAM_${PN}-sshd =3D "--system \
> +                            --no-create-home \
> +                            --home-dir /var/run/sshd \
> +                            --shell /bin/false \
> +                            --user-group sshd"
> +
> +PACKAGECONFIG ??=3D "tcp-wrappers"
> +PACKAGECONFIG[tcp-wrappers] =3D "--with-tcp-wrappers,,tcp-wrappers"
> +
> +SRC_URI =3D "file://sshd_config \
> +           file://ssh_config \
> +           file://sshd.socket \
> +           file://sshd@.service \
> +           file://sshdgenkeys.service \
> +           file://init \
> +           file://pam \
> +           "
> +
> +inherit autotools useradd update-rc.d update-alternatives systemd
> +
> +# LFS support:
> +CFLAGS +=3D "-D__FILE_OFFSET_BITS=3D64"
> +export LD =3D "${CC}"
> +
> +EXTRA_OECONF =3D "--with-rand-helper=3Dno \
> +                ${@base_contains('DISTRO_FEATURES', 'pam', '--with-pam',=
 '--without-pam', d)} \
> +                --without-zlib-version-check \
> +                --with-privsep-path=3D/var/run/sshd \
> +                --sysconfdir=3D${sysconfdir}/ssh \
> +                --with-xauth=3D/usr/bin/xauth"
> +
> +# This is a workaround for uclibc because including stdio.h
> +# pulls in pthreads.h and causes conflicts in function prototypes.
> +# This results in compilation failure, so unless this is fixed,
> +# disable pam for uclibc.
> +EXTRA_OECONF_append_libc-uclibc=3D" --without-pam"
> +
> +do_configure_prepend () {
> +    if [ ! -e acinclude.m4 -a -e aclocal.m4 ]; then
> +        cp aclocal.m4 acinclude.m4
> +    fi
> +}
> +
> +do_compile_append () {
> +    install -m 0644 ${WORKDIR}/sshd_config ${S}/
> +    install -m 0644 ${WORKDIR}/ssh_config ${S}/
> +}
> +
> +do_install_append () {
> +
> +    if ${@base_contains('DISTRO_FEATURES','pam','true','false',d)}; then
> +        install -d ${D}${sysconfdir}/pam.d
> +        install -m 0755 ${WORKDIR}/pam ${D}${sysconfdir}/pam.d/sshd
> +    fi
> +
> +    if ${@base_contains('DISTRO_FEATURES','sysvinit','true','false',d)};=
 then
> +        install -d ${D}${sysconfdir}/init.d
> +        install -m 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/sshd
> +    fi
> +
> +    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; =
then
> +        install -d ${D}${systemd_unitdir}/system
> +        install -m 0644 ${WORKDIR}/sshd.socket ${D}${systemd_unitdir}/sy=
stem
> +        install -m 0644 ${WORKDIR}/sshd@.service ${D}${systemd_unitdir}/=
system
> +        install -m 0644 ${WORKDIR}/sshdgenkeys.service ${D}${systemd_uni=
tdir}/system
> +    fi
> +
> +    rm -f ${D}${bindir}/slogin ${D}${datadir}/Ssh.bin
> +    rmdir ${D}${localstatedir}/run/sshd ${D}${localstatedir}/run ${D}${l=
ocalstatedir}
> +}
> +
> +ALLOW_EMPTY_${PN} =3D "1"
> +
> +PACKAGES =3D+ "${PN}-keygen ${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-sftp ${=
PN}-misc ${PN}-sftp-server"
> +
> +FILES_${PN}-scp =3D "${bindir}/scp.${BPN}"
> +FILES_${PN}-ssh =3D "${bindir}/ssh.${BPN} ${sysconfdir}/ssh/ssh_config"
> +FILES_${PN}-sshd =3D "${sbindir}/sshd ${sysconfdir}/init.d/sshd"
> +FILES_${PN}-sshd +=3D "${sysconfdir}/ssh/moduli ${sysconfdir}/ssh/sshd_c=
onfig"
> +FILES_${PN}-sshd +=3D "${systemd_unitdir}/system/sshd.socket"
> +FILES_${PN}-sftp =3D "${bindir}/sftp"
> +FILES_${PN}-sftp-server =3D "${libexecdir}/sftp-server"
> +FILES_${PN}-misc =3D "${bindir}/ssh* ${libexecdir}/ssh*"
> +FILES_${PN}-keygen =3D "${bindir}/ssh-keygen"
> +
> +RDEPENDS_${PN} +=3D "${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-keygen"
> +RDEPENDS_${PN}-sshd +=3D "${PN}-keygen"
> +
> +CONFFILES_${PN}-sshd =3D "${sysconfdir}/ssh/sshd_config"
> +CONFFILES_${PN}-ssh =3D "${sysconfdir}/ssh/ssh_config"
> +
> +ALTERNATIVE_PRIORITY =3D "90"
> +ALTERNATIVE_${PN}-scp =3D "scp"
> +ALTERNATIVE_${PN}-ssh =3D "ssh"
> diff --git a/meta/recipes-connectivity/openssh/openssh/init b/meta/recipe=
s-connectivity/openssh/openssh/init
> new file mode 100644
> index 0000000..6beec84
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/init
> @@ -0,0 +1,92 @@
> +#! /bin/sh
> +set -e
> +
> +# /etc/init.d/ssh: start and stop the OpenBSD "secure shell" daemon
> +
> +test -x /usr/sbin/sshd || exit 0
> +( /usr/sbin/sshd -\? 2>&1 | grep -q OpenSSH ) 2>/dev/null || exit 0
> +
> +if test -f /etc/default/ssh; then
> +    . /etc/default/ssh
> +fi
> +
> +check_for_no_start() {
> +    # forget it if we're trying to start, and /etc/ssh/sshd_not_to_be_ru=
n exists
> +    if [ -e /etc/ssh/sshd_not_to_be_run ]; then=20
> +	echo "OpenBSD Secure Shell server not in use (/etc/ssh/sshd_not_to_be_r=
un)"
> +	exit 0
> +    fi
> +}
> +
> +check_privsep_dir() {
> +    # Create the PrivSep empty dir if necessary
> +    if [ ! -d /var/run/sshd ]; then
> +	mkdir /var/run/sshd
> +	chmod 0755 /var/run/sshd
> +    fi
> +}
> +
> +check_config() {
> +	/usr/sbin/sshd -t || exit 1
> +}
> +
> +check_keys() {
> +	# create keys if necessary
> +	if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
> +		echo "  generating ssh RSA key..."
> +		ssh-keygen -q -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
> +	fi
> +	if [ ! -f /etc/ssh/ssh_host_ecdsa_key ]; then
> +		echo "  generating ssh ECDSA key..."
> +		ssh-keygen -q -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
> +	fi
> +	if [ ! -f /etc/ssh/ssh_host_dsa_key ]; then
> +		echo "  generating ssh DSA key..."
> +		ssh-keygen -q -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
> +	fi
> +}
> +
> +export PATH=3D"${PATH:+$PATH:}/usr/sbin:/sbin"
> +
> +case "$1" in
> +  start)
> +	check_for_no_start
> +	echo "Starting OpenBSD Secure Shell server: sshd"
> +	check_keys
> +	check_privsep_dir
> +	start-stop-daemon -S -x /usr/sbin/sshd -- $SSHD_OPTS
> +        echo "done."
> +	;;
> +  stop)
> +        echo -n "Stopping OpenBSD Secure Shell server: sshd"
> +	start-stop-daemon -K -x /usr/sbin/sshd
> +        echo "."
> +	;;
> +
> +  reload|force-reload)
> +	check_for_no_start
> +	check_keys
> +	check_config
> +        echo -n "Reloading OpenBSD Secure Shell server's configuration"
> +	start-stop-daemon -K -s 1 -x /usr/sbin/sshd
> +	echo "."
> +	;;
> +
> +  restart)
> +  	check_keys
> +	check_config
> +        echo -n "Restarting OpenBSD Secure Shell server: sshd"
> +	start-stop-daemon -K --oknodo -x /usr/sbin/sshd
> +	check_for_no_start
> +	check_privsep_dir
> +	sleep 2
> +	start-stop-daemon -S -x /usr/sbin/sshd -- $SSHD_OPTS
> +	echo "."
> +	;;
> +
> +  *)
> +	echo "Usage: /etc/init.d/ssh {start|stop|reload|force-reload|restart}"
> +	exit 1
> +esac
> +
> +exit 0
> diff --git a/meta/recipes-connectivity/openssh/openssh/mac.patch b/meta/r=
ecipes-connectivity/openssh/openssh/mac.patch
> new file mode 100644
> index 0000000..69fb69d
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/mac.patch
> @@ -0,0 +1,76 @@
> +[PATCH] force the MAC output to be 64-bit aligned
> +
> +Upstream-Status: Backport[anoncvs.mindrot.org/index.cgi/openssh/mac.c?r1=
=3D1.27&r2=3D1.28]
> +
> +Backport patch to fix segment fault due to unaligned memory access
> +
> +Wed Jun 5 22:12:37 2013 UTC (7 days, 3 hours ago) by dtucker
> +Branch: MAIN
> +CVS Tags: HEAD
> +Changes since 1.27: +11 -8 lines
> +Diff to previous 1.27
> +
> +   - dtucker@cvs.openbsd.org 2013/06/03 00:03:18
> +     [mac.c]
> +     force the MAC output to be 64-bit aligned so umac won't see
> +unaligned
> +     accesses on strict-alignment architectures.  bz#2101, patch from
> +     tomas.kuthan at oracle.com, ok djm@
> +---
> + mac.c |   18 +++++++++++-------
> + 1 file changed, 11 insertions(+), 7 deletions(-)
> +
> +diff --git a/mac.c b/mac.c
> +index 3f2dc6f..a5a80d3 100644
> +--- a/mac.c
> ++++ b/mac.c
> +@@ -152,12 +152,16 @@ mac_init(Mac *mac)
> + u_char *
> + mac_compute(Mac *mac, u_int32_t seqno, u_char *data, int datalen)
> + {
> +-	static u_char m[EVP_MAX_MD_SIZE];
> ++	static union {
> ++		u_char m[EVP_MAX_MD_SIZE];
> ++		u_int64_t for_align;
> ++	} u;
> ++
> + 	u_char b[4], nonce[8];
> +=20
> +-	if (mac->mac_len > sizeof(m))
> ++	if (mac->mac_len > sizeof(u))
> + 		fatal("mac_compute: mac too long %u %lu",
> +-		    mac->mac_len, (u_long)sizeof(m));
> ++		    mac->mac_len, (u_long)sizeof(u));
> +=20
> + 	switch (mac->type) {
> + 	case SSH_EVP:
> +@@ -166,22 +170,22 @@ mac_compute(Mac *mac, u_int32_t seqno, u_char *dat=
a, int datalen)
> + 		HMAC_Init(&mac->evp_ctx, NULL, 0, NULL);
> + 		HMAC_Update(&mac->evp_ctx, b, sizeof(b));
> + 		HMAC_Update(&mac->evp_ctx, data, datalen);
> +-		HMAC_Final(&mac->evp_ctx, m, NULL);
> ++		HMAC_Final(&mac->evp_ctx, u.m, NULL);
> + 		break;
> + 	case SSH_UMAC:
> + 		put_u64(nonce, seqno);
> + 		umac_update(mac->umac_ctx, data, datalen);
> +-		umac_final(mac->umac_ctx, m, nonce);
> ++		umac_final(mac->umac_ctx, u.m, nonce);
> + 		break;
> + 	case SSH_UMAC128:
> + 		put_u64(nonce, seqno);
> + 		umac128_update(mac->umac_ctx, data, datalen);
> +-		umac128_final(mac->umac_ctx, m, nonce);
> ++		umac128_final(mac->umac_ctx, u.m, nonce);
> + 		break;
> + 	default:
> + 		fatal("mac_compute: unknown MAC type");
> + 	}
> +-	return (m);
> ++	return (u.m);
> + }
> +=20
> + void
> +--=20
> +1.7.9.5
> +
> diff --git a/meta/recipes-connectivity/openssh/openssh/nostrip.patch b/me=
ta/recipes-connectivity/openssh/openssh/nostrip.patch
> new file mode 100644
> index 0000000..33111f5
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/nostrip.patch
> @@ -0,0 +1,20 @@
> +Disable stripping binaries during make install.
> +
> +Upstream-Status: Inappropriate [configuration]
> +
> +Build system specific.
> +
> +Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> +
> +diff -ur openssh-5.6p1.orig/Makefile.in openssh-5.6p1/Makefile.in
> +--- openssh-5.6p1.orig/Makefile.in	2010-05-11 23:51:39.000000000 -0700
> ++++ openssh-5.6p1/Makefile.in	2010-08-30 16:49:54.000000000 -0700
> +@@ -29,7 +29,7 @@
> + RAND_HELPER=3D$(libexecdir)/ssh-rand-helper
> + PRIVSEP_PATH=3D@PRIVSEP_PATH@
> + SSH_PRIVSEP_USER=3D@SSH_PRIVSEP_USER@
> +-STRIP_OPT=3D@STRIP_OPT@
> ++STRIP_OPT=3D
> +=20
> + PATHS=3D -DSSHDIR=3D\"$(sysconfdir)\" \
> + 	-D_PATH_SSH_PROGRAM=3D\"$(SSH_PROGRAM)\" \
> diff --git a/meta/recipes-connectivity/openssh/openssh/openssh-CVE-2011-4=
327.patch b/meta/recipes-connectivity/openssh/openssh/openssh-CVE-2011-4327=
=2Epatch
> new file mode 100644
> index 0000000..8489edc
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/openssh-CVE-2011-4327.pat=
ch
> @@ -0,0 +1,27 @@
> +openssh-CVE-2011-4327
> +
> +A security flaw was found in the way ssh-keysign,
> +a ssh helper program for host based authentication,
> +attempted to retrieve enough entropy information on configurations that
> +lacked a built-in entropy pool in OpenSSL (a ssh-rand-helper program wou=
ld
> +be executed to retrieve the entropy from the system environment).
> +A local attacker could use this flaw to obtain unauthorized access to ho=
st keys
> +via ptrace(2) process trace attached to the 'ssh-rand-helper' program.
> +
> +https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2011-4327
> +http://www.openssh.com/txt/portable-keysign-rand-helper.adv
> +
> +Signed-off-by: Li Wang <li.wang@windriver.com>
> +--- a/ssh-keysign.c
> ++++ b/ssh-keysign.c
> +@@ -170,6 +170,10 @@
> + 	key_fd[i++] =3D open(_PATH_HOST_DSA_KEY_FILE, O_RDONLY);
> + 	key_fd[i++] =3D open(_PATH_HOST_ECDSA_KEY_FILE, O_RDONLY);
> + 	key_fd[i++] =3D open(_PATH_HOST_RSA_KEY_FILE, O_RDONLY);
> ++	if (fcntl(key_fd[0], F_SETFD, FD_CLOEXEC) !=3D 0 ||
> ++	    fcntl(key_fd[1], F_SETFD, FD_CLOEXEC) !=3D 0 ||
> ++	    fcntl(key_fd[2], F_SETFD, FD_CLOEXEC) !=3D 0)
> ++		fatal("fcntl failed");
> +=20
> + 	original_real_uid =3D getuid();	/* XXX readconf.c needs this */
> + 	if ((pw =3D getpwuid(original_real_uid)) =3D=3D NULL)
> diff --git a/meta/recipes-connectivity/openssh/openssh/pam b/meta/recipes=
-connectivity/openssh/openssh/pam
> new file mode 100644
> index 0000000..4882e58
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/pam
> @@ -0,0 +1,10 @@
> +#%PAM-1.0
> +
> +auth       include      common-auth
> +account    required     pam_nologin.so
> +account    include      common-account
> +password   include      common-password
> +session    optional     pam_keyinit.so force revoke
> +session    include      common-session
> +session    required     pam_loginuid.so
> +
> diff --git a/meta/recipes-connectivity/openssh/openssh/ssh_config b/meta/=
recipes-connectivity/openssh/openssh/ssh_config
> new file mode 100644
> index 0000000..4a4a649
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/ssh_config
> @@ -0,0 +1,46 @@
> +#	$OpenBSD: ssh_config,v 1.25 2009/02/17 01:28:32 djm Exp $
> +
> +# This is the ssh client system-wide configuration file.  See
> +# ssh_config(5) for more information.  This file provides defaults for
> +# users, and the values can be changed in per-user configuration files
> +# or on the command line.
> +
> +# Configuration data is parsed as follows:
> +#  1. command line options
> +#  2. user-specific file
> +#  3. system-wide file
> +# Any configuration value is only changed the first time it is set.
> +# Thus, host-specific definitions should be at the beginning of the
> +# configuration file, and defaults at the end.
> +
> +# Site-wide defaults for some commonly used options.  For a comprehensive
> +# list of available options, their meanings and defaults, please see the
> +# ssh_config(5) man page.
> +
> +Host *
> +  ForwardAgent yes
> +  ForwardX11 yes
> +#   RhostsRSAAuthentication no
> +#   RSAAuthentication yes
> +#   PasswordAuthentication yes
> +#   HostbasedAuthentication no
> +#   GSSAPIAuthentication no
> +#   GSSAPIDelegateCredentials no
> +#   BatchMode no
> +#   CheckHostIP yes
> +#   AddressFamily any
> +#   ConnectTimeout 0
> +#   StrictHostKeyChecking ask
> +#   IdentityFile ~/.ssh/identity
> +#   IdentityFile ~/.ssh/id_rsa
> +#   IdentityFile ~/.ssh/id_dsa
> +#   Port 22
> +#   Protocol 2,1
> +#   Cipher 3des
> +#   Ciphers aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes12=
8-cbc,3des-cbc
> +#   MACs hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160
> +#   EscapeChar ~
> +#   Tunnel no
> +#   TunnelDevice any:any
> +#   PermitLocalCommand no
> +#   VisualHostKey no
> diff --git a/meta/recipes-connectivity/openssh/openssh/sshd.socket b/meta=
/recipes-connectivity/openssh/openssh/sshd.socket
> new file mode 100644
> index 0000000..753a33b
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/sshd.socket
> @@ -0,0 +1,11 @@
> +[Unit]
> +Conflicts=3Dsshd.service
> +
> +[Socket]
> +ExecStartPre=3D/bin/mkdir -p /var/run/sshd
> +ListenStream=3D22
> +Accept=3Dyes
> +
> +[Install]
> +WantedBy=3Dsockets.target
> +Also=3Dsshdgenkeys.service
> diff --git a/meta/recipes-connectivity/openssh/openssh/sshd@.service b/me=
ta/recipes-connectivity/openssh/openssh/sshd@.service
> new file mode 100644
> index 0000000..d118490
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/sshd@.service
> @@ -0,0 +1,9 @@
> +[Unit]
> +Description=3DOpenSSH Per-Connection Daemon
> +After=3Dsshdgenkeys.service
> +
> +[Service]
> +ExecStart=3D-/usr/sbin/sshd -i
> +ExecReload=3D/bin/kill -HUP $MAINPID
> +StandardInput=3Dsocket
> +StandardError=3Dsyslog
> diff --git a/meta/recipes-connectivity/openssh/openssh/sshd_config b/meta=
/recipes-connectivity/openssh/openssh/sshd_config
> new file mode 100644
> index 0000000..4f9b626
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/sshd_config
> @@ -0,0 +1,119 @@
> +#	$OpenBSD: sshd_config,v 1.80 2008/07/02 02:24:18 djm Exp $
> +
> +# This is the sshd server system-wide configuration file.  See
> +# sshd_config(5) for more information.
> +
> +# This sshd was compiled with PATH=3D/usr/bin:/bin:/usr/sbin:/sbin
> +
> +# The strategy used for options in the default sshd_config shipped with
> +# OpenSSH is to specify options with their default value where
> +# possible, but leave them commented.  Uncommented options change a
> +# default value.
> +
> +#Port 22
> +#AddressFamily any
> +#ListenAddress 0.0.0.0
> +#ListenAddress ::
> +
> +# Disable legacy (protocol version 1) support in the server for new
> +# installations. In future the default will change to require explicit
> +# activation of protocol 1
> +Protocol 2
> +
> +# HostKey for protocol version 1
> +#HostKey /etc/ssh/ssh_host_key
> +# HostKeys for protocol version 2
> +#HostKey /etc/ssh/ssh_host_rsa_key
> +#HostKey /etc/ssh/ssh_host_dsa_key
> +
> +# Lifetime and size of ephemeral version 1 server key
> +#KeyRegenerationInterval 1h
> +#ServerKeyBits 1024
> +
> +# Logging
> +# obsoletes QuietMode and FascistLogging
> +#SyslogFacility AUTH
> +#LogLevel INFO
> +
> +# Authentication:
> +
> +#LoginGraceTime 2m
> +#PermitRootLogin yes
> +#StrictModes yes
> +#MaxAuthTries 6
> +#MaxSessions 10
> +
> +#RSAAuthentication yes
> +#PubkeyAuthentication yes
> +#AuthorizedKeysFile	.ssh/authorized_keys
> +
> +# For this to work you will also need host keys in /etc/ssh/ssh_known_ho=
sts
> +#RhostsRSAAuthentication no
> +# similar for protocol version 2
> +#HostbasedAuthentication no
> +# Change to yes if you don't trust ~/.ssh/known_hosts for
> +# RhostsRSAAuthentication and HostbasedAuthentication
> +#IgnoreUserKnownHosts no
> +# Don't read the user's ~/.rhosts and ~/.shosts files
> +#IgnoreRhosts yes
> +
> +# To disable tunneled clear text passwords, change to no here!
> +#PasswordAuthentication yes
> +#PermitEmptyPasswords no
> +
> +# Change to no to disable s/key passwords
> +#ChallengeResponseAuthentication yes
> +
> +# Kerberos options
> +#KerberosAuthentication no
> +#KerberosOrLocalPasswd yes
> +#KerberosTicketCleanup yes
> +#KerberosGetAFSToken no
> +
> +# GSSAPI options
> +#GSSAPIAuthentication no
> +#GSSAPICleanupCredentials yes
> +
> +# Set this to 'yes' to enable PAM authentication, account processing,=20
> +# and session processing. If this is enabled, PAM authentication will=20
> +# be allowed through the ChallengeResponseAuthentication and
> +# PasswordAuthentication.  Depending on your PAM configuration,
> +# PAM authentication via ChallengeResponseAuthentication may bypass
> +# the setting of "PermitRootLogin without-password".
> +# If you just want the PAM account and session checks to run without
> +# PAM authentication, then enable this but set PasswordAuthentication
> +# and ChallengeResponseAuthentication to 'no'.
> +#UsePAM no
> +
> +#AllowAgentForwarding yes
> +#AllowTcpForwarding yes
> +#GatewayPorts no
> +#X11Forwarding no
> +#X11DisplayOffset 10
> +#X11UseLocalhost yes
> +#PrintMotd yes
> +#PrintLastLog yes
> +#TCPKeepAlive yes
> +#UseLogin no
> +UsePrivilegeSeparation yes
> +#PermitUserEnvironment no
> +Compression no
> +ClientAliveInterval 15
> +ClientAliveCountMax 4
> +#UseDNS yes
> +#PidFile /var/run/sshd.pid
> +#MaxStartups 10
> +#PermitTunnel no
> +#ChrootDirectory none
> +
> +# no default banner path
> +#Banner none
> +
> +# override default of no subsystems
> +Subsystem	sftp	/usr/libexec/sftp-server
> +
> +# Example of overriding settings on a per-user basis
> +#Match User anoncvs
> +#	X11Forwarding no
> +#	AllowTcpForwarding no
> +#	ForceCommand cvs server
> diff --git a/meta/recipes-connectivity/openssh/openssh/sshdgenkeys.servic=
e b/meta/recipes-connectivity/openssh/openssh/sshdgenkeys.service
> new file mode 100644
> index 0000000..c717214
> --- /dev/null
> +++ b/meta/recipes-connectivity/openssh/openssh/sshdgenkeys.service
> @@ -0,0 +1,10 @@
> +[Unit]
> +Description=3DSSH Key Generation
> +
> +[Service]
> +ExecStart=3D/usr/bin/ssh-keygen -A
> +Type=3Doneshot
> +RemainAfterExit=3Dyes
> +
> +[Install]
> +WantedBy=3Dmulti-user.target
> diff --git a/meta/recipes-connectivity/openssh/openssh_6.2p2.bb b/meta/re=
cipes-connectivity/openssh/openssh_6.2p2.bb
> index ab2eefb..15dc078 100644
> --- a/meta/recipes-connectivity/openssh/openssh_6.2p2.bb
> +++ b/meta/recipes-connectivity/openssh/openssh_6.2p2.bb
> @@ -1,112 +1,11 @@
> -SUMMARY =3D "Secure rlogin/rsh/rcp/telnet replacement"
> -DESCRIPTION =3D "Secure rlogin/rsh/rcp/telnet replacement (OpenSSH) \
> -Ssh (Secure Shell) is a program for logging into a remote machine \
> -and for executing commands on a remote machine."
> -HOMEPAGE =3D "http://openssh.org"
> -SECTION =3D "console/network"
> -LICENSE =3D "BSD"
> -LIC_FILES_CHKSUM =3D "file://LICENCE;md5=3De326045657e842541d3f35aada442=
507"
> -
> -PR =3D "r0"
> -
> -DEPENDS =3D "zlib openssl"
> -DEPENDS +=3D "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', d=
)}"
> -
> -RPROVIDES_${PN}-ssh =3D "ssh"
> -RPROVIDES_${PN}-sshd =3D "sshd"
> -
> -RCONFLICTS_${PN} =3D "dropbear"
> -RCONFLICTS_${PN}-sshd =3D "dropbear"
> -RCONFLICTS_${PN}-keygen =3D "ssh-keygen"
> -
> -SRC_URI =3D "ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-=
${PV}.tar.gz \
> -           file://nostrip.patch \
> -           file://sshd_config \
> -           file://ssh_config \
> -           file://init \
> -           file://openssh-CVE-2011-4327.patch \
> -           file://mac.patch \
> -           ${@base_contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', =
'', d)}"
> -
> -PAM_SRC_URI =3D "file://sshd"
> +require openssh.inc
> =20
>  SRC_URI[md5sum] =3D "be46174dcbb77ebb4ea88ef140685de1"
>  SRC_URI[sha256sum] =3D "7f29b9d2ad672ae0f9e1dcbff871fc5c2e60a194e90c7664=
32e32161b842313b"
> =20
> -inherit useradd update-rc.d update-alternatives
> -
> -USERADD_PACKAGES =3D "${PN}-sshd"
> -USERADD_PARAM_${PN}-sshd =3D "--system --no-create-home --home-dir /var/=
run/sshd --shell /bin/false --user-group sshd"
> -INITSCRIPT_PACKAGES =3D "${PN}-sshd"
> -INITSCRIPT_NAME_${PN}-sshd =3D "sshd"
> -INITSCRIPT_PARAMS_${PN}-sshd =3D "defaults 9"
> -
> -PACKAGECONFIG ??=3D "tcp-wrappers"
> -PACKAGECONFIG[tcp-wrappers] =3D "--with-tcp-wrappers,,tcp-wrappers"
> -
> -inherit autotools
> -
> -# LFS support:
> -CFLAGS +=3D "-D__FILE_OFFSET_BITS=3D64"
> -export LD =3D "${CC}"
> -
> -EXTRA_OECONF =3D "--with-rand-helper=3Dno \
> -                ${@base_contains('DISTRO_FEATURES', 'pam', '--with-pam',=
 '--without-pam', d)} \
> -                --without-zlib-version-check \
> -                --with-privsep-path=3D/var/run/sshd \
> -                --sysconfdir=3D${sysconfdir}/ssh \
> -                --with-xauth=3D/usr/bin/xauth"
> -
> -# This is a workaround for uclibc because including stdio.h
> -# pulls in pthreads.h and causes conflicts in function prototypes.
> -# This results in compilation failure, so unless this is fixed,
> -# disable pam for uclibc.
> -EXTRA_OECONF_append_libc-uclibc=3D" --without-pam"
> -
> -do_configure_prepend () {
> -	if [ ! -e acinclude.m4 -a -e aclocal.m4 ]; then
> -		cp aclocal.m4 acinclude.m4
> -	fi
> -}
> -
> -do_compile_append () {
> -	install -m 0644 ${WORKDIR}/sshd_config ${S}/
> -	install -m 0644 ${WORKDIR}/ssh_config ${S}/
> -}
> -
> -do_install_append () {
> -	for i in ${DISTRO_FEATURES};
> -	do
> -		if [ ${i} =3D "pam" ];  then
> -			install -d ${D}${sysconfdir}/pam.d
> -			install -m 0755 ${WORKDIR}/sshd ${D}${sysconfdir}/pam.d/sshd
> -		fi
> -	done
> -	install -d ${D}${sysconfdir}/init.d
> -	install -m 0755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/sshd
> -	rm -f ${D}${bindir}/slogin ${D}${datadir}/Ssh.bin
> -	rmdir ${D}${localstatedir}/run/sshd ${D}${localstatedir}/run ${D}${loca=
lstatedir}
> -}
> -
> -ALLOW_EMPTY_${PN} =3D "1"
> -
> -PACKAGES =3D+ "${PN}-keygen ${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-sftp ${=
PN}-misc ${PN}-sftp-server"
> -FILES_${PN}-scp =3D "${bindir}/scp.${BPN}"
> -FILES_${PN}-ssh =3D "${bindir}/ssh.${BPN} ${sysconfdir}/ssh/ssh_config"
> -FILES_${PN}-sshd =3D "${sbindir}/sshd ${sysconfdir}/init.d/sshd"
> -FILES_${PN}-sshd +=3D "${sysconfdir}/ssh/moduli ${sysconfdir}/ssh/sshd_c=
onfig"
> -FILES_${PN}-sftp =3D "${bindir}/sftp"
> -FILES_${PN}-sftp-server =3D "${libexecdir}/sftp-server"
> -FILES_${PN}-misc =3D "${bindir}/ssh* ${libexecdir}/ssh*"
> -FILES_${PN}-keygen =3D "${bindir}/ssh-keygen"
> -
> -RDEPENDS_${PN} +=3D "${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-keygen"
> -RDEPENDS_${PN}-sshd +=3D "${PN}-keygen"
> -
> -CONFFILES_${PN}-sshd =3D "${sysconfdir}/ssh/sshd_config"
> -CONFFILES_${PN}-ssh =3D "${sysconfdir}/ssh/ssh_config"
> -
> -ALTERNATIVE_PRIORITY =3D "90"
> -ALTERNATIVE_${PN}-scp =3D "scp"
> -ALTERNATIVE_${PN}-ssh =3D "ssh"
> +SRC_URI +=3D "ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh=
-${PV}.tar.gz \
> +            file://nostrip.patch \
> +            file://openssh-CVE-2011-4327.patch \
> +            file://mac.patch"
> =20
> +PR =3D "${INC_PR}.0"
> --=20
> 1.8.1.2
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--b/6gol1SqNxk8K3i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlHepNcACgkQN1Ujt2V2gByNRQCeO1KcEQDlq8aj4eEDxaRWFFG1
Fs0An2RSwR66+UtwWyhm6lLDX7RKf7tY
=BlQR
-----END PGP SIGNATURE-----

--b/6gol1SqNxk8K3i--
