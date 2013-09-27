Return-Path: <joe@deserted.net>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE429E0044C
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 12:58:59 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id f12so3243033wgh.5
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 12:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=TvG0PpBQAtGorj9+M/MmXmVJTOccEhVIcidhRf7XaI4=;
	b=c4ZDBoorMsRrR+0Eme4ROKfjRxjh5qE00FRLPAvYt8Jncuuz57QhMmSfIwOhzruA2b
	hik2pkFIy+pQGdnldWBOK/pXONb2ySN5UAmNYVtpm8ZI5rwIKIiAxAKzptEpdnrnKbNw
	0u8C6dFOmfnyGnbKl3RXErFWw9aMeW95ggT1xE7RHQxU6oKGRW6GAxCVxul4Khw9V3Dx
	dzFw8TwxPMYIsXw3GreL+aiK48ND8KRoF5Y63mP46WybSe61Hm/dlCW9vQ/oUCVItpsF
	MImNSeTAI4+S49Y/+QK2KdMg4QoP7+X+PJ+lPYCkeg9Qw59QSio+/30kygYSGzQeqUD1
	G1Ew==
X-Gm-Message-State: ALoCoQnMk282Owt3P6RzP/qO8Q25j3cv38IdX7o3xsebjiA624y8wwCJBl11dIYc/yB2erEw/wEq
X-Received: by 10.180.205.236 with SMTP id lj12mr4077338wic.22.1380311938096; 
	Fri, 27 Sep 2013 12:58:58 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	mb7sm17165803wic.10.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 12:58:57 -0700 (PDT)
Date: Fri, 27 Sep 2013 15:58:53 -0400
From: Joe MacDonald <joe@deserted.net>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20130927195850.GA8272@deserted.net>
References: <523B4551.3040407@windriver.com>
MIME-Version: 1.0
In-Reply-To: <523B4551.3040407@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Updated meta-selinux -- master-next
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
X-List-Received-Date: Fri, 27 Sep 2013 19:59:00 -0000
X-Groupsio-MsgNum: 16276
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux] Updated meta-selinux -- master-next] On 13.09.19 (T=
hu 13:41) Mark Hatle wrote:

> I have updated meta-selinux, and placed the update into the 'master-next'=
 branch.
>=20
> This was locally tested with Poky as of commit
> 853bc53cd58a621918f0e5ce662dba263d1befb4.
>=20
> Note, when building the core-image-selinux, the internal refpolicies
> cause a lot of failures.  I'm not an expert on how this should be
> configured, so I'm looking for help/patches from others.
>=20
> If you know of any other additional patches that should be applied,
> or are able to help with the refpolicies, please let me know!
>=20
> Thanks!
> --Mark

I just pushed a new (non-ff!) update to master-next.  It includes the
following:

   - Mark Hatle: policycoreutils: avoid shell for checking target-special a=
ctions
   - Mark Hatle: setools: Uprev setools
   - Mark Hatle: README: Update status
   - Mark Hatle: libcap-ng: Uprev libcap-ng
   - Mark Hatle: audit: Uprev to audit 2.3.2
   - Mark Hatle: swig: Update to latest swig from meta-openembedded
   - Mark Hatle: python-ipy: Uprev to latest 0.81 version
   - Mark Hatle: distro/*: Update the distro files
   - Christopher Larson: layer.conf: avoid unnecessary early expansion with=
 :=3D
   - Qiang Chen: selinux: remove reference to locale env files from login
   - Mark Hatle: linux-yocto: Add support for the 3.10 kernel
   - Xin Ouyang: kernel: add BBAPPEND for linux 3.10
   - Xin Ouyang: busybox: alternatives link to sh wrappers for commands
   - Xin Ouyang: refpolicy*: remove old version recipes and patches.
   - Xin Ouyang: refpolicy*: add new version 2.20130424
   - Joe MacDonald: udev/init: work around dev-cache restore problems
   - Mark Hatle: udev/init: sync to latest poky version
   - Xin Ouyang: always force to restore file contexts in initscripts
   - Xin Ouyang: policycoreutils: fix wrong newrole/run_init pam config
   - Xin Ouyang: sepolgen: migrate SRC_URI to 1.1.9
   - Xin Ouyang: policycoreutils: migrate SRC_URI and patches to 2.1.14
   - Xin Ouyang: libsepol: migrate SRC_URI to 2.1.9
   - Xin Ouyang: libsemanage: migrate SRC_URI to 2.1.10
   - Xin Ouyang: libselinux: migrate SRC_URI and patches to 2.1.13
   - Xin Ouyang: checkpolicy: migrate SRC_URI to 2.1.12
   - Xin Ouyang: selinux userspace: uprev packages to release 20130423
   - Philip Tricca: Add ${bindir}/sepolgen to system-config-selinux package.
   - Philip Tricca: Check for the availability of 'secon' and 'setenforce' =
in the selinux-init.sh script.
   - Philip Tricca: Resend: Install policy headers and include them in the =
refpolicy dev package.
   - Joe Slater: openssh: add PACKAGECONFIG data regarding audit
   - Philip Tricca: Add util-linux-agetty to core-image-selinux IMAGE_INSTA=
LL.
   - Joe MacDonald: documentation: update guidance for runqemu
   - Philip Tricca: Stage SELinux config file in the sysroot.
   - Philip Tricca: Add leading whitespace to DISTRO_FEATURES_append in oe-=
selinux.conf

It's still not as clean as I would like it, but at least I understand
(most of) the current failures.  I'll probably not get another chance to
look at this until Monday, though.

First boot and auto-relabel works fine.

Second boot generates the following audit warnings:

   type=3D1401 audit(1380309719.391:4): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023 newcontext=3Dsy=
stem_u:object_r:framebuf_device_t:s0 taskcontext=3Dsystem_u:system_r:initrc=
_t:s0-s15:c0.c1023 tclass=3Dchr_file
   udevd[135]: setfilecon /dev/fb0 failed: Operation not permitted

   type=3D1401 audit(1380309729.653:5): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023 newcontext=3Dsy=
stem_u:object_r:tty_device_t:s0 taskcontext=3Dsystem_u:system_r:initrc_t:s0=
-s15:c0.c1023 tclass=3Dchr_file
   type=3D1401 audit(1380309729.663:6): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s15:c0.c1023 newcontext=3Dsy=
stem_u:object_r:tty_device_t:s0 taskcontext=3Dsystem_u:system_r:initrc_t:s0=
-s15:c0.c1023 tclass=3Dchr_file
   udevd[86]: setfilecon /dev/vcs2 failed: Operation not permitted

   udevd[93]: setfilecon /dev/vcsa2 failed: Operation not permitted

I initially sunk a lot of time into these until I realized the problem
is present (and just not reported) in master.  I haven't yet opened a
bug on it, but I intend to unless I can fix it myself (or someone sends
me a patch) in the very short term.

Subsequent boots are less happy:

   type=3D1401 audit(1380310608.155:5): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s0 newcontext=3Dsystem_u:obj=
ect_r:memory_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:system_r:initrc_t=
:s0-s15:c0.c1023 tclass=3Dchr_file
   type=3D1401 audit(1380310608.164:6): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s0 newcontext=3Dsystem_u:obj=
ect_r:memory_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:system_r:initrc_t=
:s0-s15:c0.c1023 tclass=3Dchr_file
   type=3D1401 audit(1380310608.178:7): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s0 newcontext=3Dsystem_u:obj=
ect_r:memory_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:system_r:initrc_t=
:s0-s15:c0.c1023 tclass=3Dchr_file
   type=3D1401 audit(1380310608.203:8): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:device_t:s0 newcontext=3Dsystem_u:obj=
ect_r:kmsg_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:system_r:initrc_t:s=
0-s15:c0.c1023 tclass=3Dchr_file
   type=3D1401 audit(1380310608.783:9): security_validate_transition:  deni=
ed for oldcontext=3Dsystem_u:object_r:fixed_disk_device_t:s0 newcontext=3Ds=
ystem_u:object_r:fixed_disk_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:sy=
stem_r:initrc_t:s0-s15:c0.c1023 tclass=3Dblk_file
   type=3D1401 audit(1380310608.789:10): security_validate_transition:  den=
ied for oldcontext=3Dsystem_u:object_r:fixed_disk_device_t:s0 newcontext=3D=
system_u:object_r:fixed_disk_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:s=
ystem_r:initrc_t:s0-s15:c0.c1023 tclass=3Dblk_file
   type=3D1401 audit(1380310608.793:11): security_validate_transition:  den=
ied for oldcontext=3Dsystem_u:object_r:fixed_disk_device_t:s0 newcontext=3D=
system_u:object_r:fixed_disk_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:s=
ystem_r:initrc_t:s0-s15:c0.c1023 tclass=3Dblk_file
   type=3D1401 audit(1380310608.798:12): security_validate_transition:  den=
ied for oldcontext=3Dsystem_u:object_r:fixed_disk_device_t:s0 newcontext=3D=
system_u:object_r:fixed_disk_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:s=
ystem_r:initrc_t:s0-s15:c0.c1023 tclass=3Dblk_file
   type=3D1401 audit(1380310608.802:13): security_validate_transition:  den=
ied for oldcontext=3Dsystem_u:object_r:fixed_disk_device_t:s0 newcontext=3D=
system_u:object_r:fixed_disk_device_t:s15:c0.c1023 taskcontext=3Dsystem_u:s=
ystem_r:initrc_t:s0-s15:c0.c1023 tclass=3Dblk_file
   udevd[86]: starting version 182
   Starting Bootlog daemon: bootlogd.
   Populating dev cache
   ALSA: Restoring mixer settings...
   audit_printk_skb: 87 callbacks suppressed
   type=3D1400 audit(1380310625.861:43): avc:  denied  { read write } for  =
pid=3D249 comm=3D"alsactl" path=3D"/dev/ttyS0" dev=3D"devtmpfs" ino=3D6092 =
scontext=3Dsystem_u:system_r:alsa_t:s0-s15:c0.c1023 tcontext=3Droot:object_=
r:user_tty_device_t:s0 tclass=3Dchr_file
   Configuring network interfaces... done.
   Starting rpcbind daemon...type=3D1400 audit(1380310628.230:44): avc:  de=
nied  { read write } for  pid=3D265 comm=3D"rpcbind" path=3D"/dev/ttyS0" de=
v=3D"devtmpfs" ino=3D6092 scontext=3Dsystem_u:system_r:rpcbind_t:s0-s15:c0.=
c1023 tcontext=3Droot:object_r:user_tty_device_t:s0 tclass=3Dchr_file
   done.

But these are all due to problems I detail in "udev/init: work around
dev-cache restore problems".  There's a simple workaround for it, but
it's hacky (less hacky than not using the dev cache at all? more? not
sure) so I'd rather come up with a cleaner solution.

Anyway, that's the state of meta-selinux's master-next as of right now.

As mentioned (somewhere) elsewhere, master-next will continue to be
non-ff for the foreseeable future, so anyone else should use it with
caution.  master is, of course, perfectly stable (and I hope up-to-date
with all current submissions merged).

--=20
-Joe MacDonald.
:wq

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJF43oACgkQwFvcllog0XwcxQCfaQO3hu3tCtfDha2geAzhFnmM
tgAAnjKzDI0hl7QEBJxLikSQlFZ6VA98
=LPcc
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--
