Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BBBDE00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 09:18:38 -0800 (PST)
Received: from mail-qa0-f72.google.com ([209.85.216.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Dec 2012 09:17:48 -0800
Received: by mail-qa0-f72.google.com with SMTP id o13so6814227qaj.11
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 09:18:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=U8/7J4+1nwXWX3YXZgKbhCncT3hXqt4Z9EmiBZ/b5ds=;
	b=DSxl0mA6mw7l/iPLrrVPs8l4gGKlkiXr7b7VF1C3i3MpD8idYUH67QpOz+avHs+VVA
	HVYf6IcgMBczVwAgAY3+XLKUR2UON5cQHczdgMQp0/MvAM3JgMFFwil+b2ZpNZq0jzf7
	ZUi5VyzxEfeDWyeJHSA0pOUIjHzWxaIhDjlY4XHt0nSlaNktiiMe5hlG4BI0X49wG6Iv
	L5D8gR7NQW1kKqD8Iwn0SBPoY7lExgF6Q1wrF0+ShYh6+R0TwSkx94iIzAexPtJ+jeiA
	8rQ+R6cdSOUTmZTmZpxKhvTOSTrU2GRllarlaUTeyEPQmCznoUKQdVwisbp8BZ3SFa0/
	FZdA==
Received: by 10.49.127.199 with SMTP id ni7mr32215025qeb.17.1355159916598;
	Mon, 10 Dec 2012 09:18:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.127.199 with SMTP id ni7mr32215010qeb.17.1355159916509;
	Mon, 10 Dec 2012 09:18:36 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Mon, 10 Dec 2012 09:18:36 -0800 (PST)
Date: Mon, 10 Dec 2012 09:18:36 -0800
Message-ID: <CAPhnLPCZb_xB6OVkq61DWvCSVi6b86TCnn3dwL9Y=sPD-TbFgQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQn887ryr62Cl14voDVDTr/0XD48wm/1OzsJUqNmuNzdYrbncUrpY6ZWd1cSlNzMkxGwZdHNS3K+OCMI/n0bq84Z6ac31AJR+9MEVk+CpiTaM18sEWYrtgYoaPAOn1zlKBtLaicmb6OHrmadxgsZTZe2lYk1Xg==
Subject: [ANNOUNCEMENT] Yocto Project 1.4 Milestone 1 now available.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2012 17:18:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

All,

The first milestone for the upcoming Yocto Project 1.4 release is now
available at:

   http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m1/poky-yocto-1.4-m1.tar.bz2

Thank you everyone for all the hard work.

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
yocto-1.4-m1 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.4-m1
Branch:  1.4_M1
Tag:  1.4_M1.final
Hash:  7f3aa4fb528bf3e8fe858f106e7eb7a1e9e1755e
md5:  8823265d18b9e23278882602859252c1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m1/eclipse-poky-yocto-1.4-m1.tar.bz2

Release Name: meta-intel-yocto-1.4-m1
Branch:  1.4_M1
Tag:  1.4_M1.final
Hash:  154156a4db56f7b33fb1765cf6b87e683d027af9
md5:  a97e649fb96647db84c441d3b4d1fbc4
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m1/meta-intel-yocto-1.4-m1.tar.bz2

Release Name: meta-qt3-yocto-1.4-m1
Branch:  1.4_M1
Tag:  1.4_M1.final
Hash:  eb092fe161b626ebfd9f744b6e86d9c549d7aa47
md5:  4391553c10498c288c27d32764453dff
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m1/meta-qt3-yocto-1.4-m1.tar.bz2

Release Name: poky-yocto-1.4-m1
Branch:  1.4_M1
Tag:  1.4_M1.final
Hash:  247b6a3754c2c50318e2a73d79981ba0e9cb560b
md5:  f6e0286f90335bc73e53802e62851487
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.4-m1/poky-yocto-1.4-m1.tar.bz2


- --------------------
Features
- --------------------

- - Share state improvements: allow only partial installation. Speed up
  things in some cases, such as when we build from scratch, the use of
  sstate cache has been improved, the build time has been cut in half
  as the result.
- - opkg: added alternative ln patch. Use 'ln -n' to avoid deferencing
  links to host files.
- - Python: resolve intermediate staging issues, simplifying python
  recipe and the compile process.
- - Fixed a bug in make-3.82 for archive expression expansion.
- - Initial integration of python-smartpm recipe for SMART updater.
- - Various bitbake improvement including ensuring last tasks are
  displayed correctly in the footer, remove obsolete console log code,
  add error to return of runCommand, etc.
- - Various HOB improvement such as saving proxy settings, adding a
  button for network testing, UI improvement around progress bar, etc.
  colorize the bitbake console output
- - Reduce the amount directories when searching. patches on the mailing
  list.
- - Various package upgrade including automake, gtk+, gnutls, dhcp,
  libproxy, qt4-x11-free, sqlite3, etc.

- --------------------
Known Issues
- --------------------

- - Bug 3522 [beagleboard] X cannot startup with 1.4 M1 RC1 20121128 build
- - Bug 3453 Build fails when building multilib with ipk packaging
- - Bug 3534 incremental RPM generation does not work
- - Bug 3488 cannot run clutter app on qemux86

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQxhj/AAoJEEyK+E/MEkQPLPcH/jWE6O2CCwYq79BBb2PA6Vwd
4EJkHED43D4ZYXvJiOaYGInXmblIL/7pwhlkPd3KUxA2rsCfdrlA1vAFa8xltaJa
TRhFjsZla+OPtwptN47d3YWNAWJB895V5JtFTlS6Omy13zOI4zwsttjQd1MvQ1u2
Zc0OT64mLWQP3YwNrNyD8TKlh+Is+4CmdWkZIQrowOIFSPUfiI33CCle0iOTvcJA
Px8SuLQ0t3Zy5XQs6xoO9beLog+18Y5Jov8F91GtD339V2v4jATCIh0BwwzNjU6/
vu7z4FkJzj7rqhysqUWSVgPKi33bPIan/EpRz1exsnK//x+7OlACIE6C2sDP2Bo=
=bvaN
-----END PGP SIGNATURE-----

