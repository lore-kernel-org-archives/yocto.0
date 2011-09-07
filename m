Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A519E01254
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 16:29:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Sep 2011 16:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="46236497"
Received: from unknown (HELO [10.255.14.214]) ([10.255.14.214])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2011 16:29:15 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D90188AF5AF4@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D90188AF5AF4@orsmsx502.amr.corp.intel.com>
Date: Wed, 07 Sep 2011 18:29:14 -0500
Message-ID: <1315438154.2367.2.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build fails if poky-extras added to bblayers.conf
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
X-List-Received-Date: Wed, 07 Sep 2011 23:29:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2011-09-07 at 16:19 -0700, Bodke, Kishore K wrote:
> Hi All,
>=20
> =20
>=20
> We get a strange build error all of sudden today.  We did not change
> any files, just started a fresh build and it failed at the very
> beginning. =20
>=20
> =20
>=20
> If I remove poky-extras/meta-kernel-dev the build works fine though.
>=20
> =20
>=20
> Below is the error message.  Could any one let me know what could be
> the issue?
>=20

Try removing or renaming linux-korg.bb to something without .bb on the
end.  Looks like it's timing out trying to resolve the git.kernel.org
address.

Tom

> =20
>=20
> Pseudo is not present but is required, building this first before the
> main build
>=20
> ERROR: Failure expanding variable SRCPV, expression was
> ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> Fetcher failure for URL: 'None'. Fetch command export
> HOME=3D"/home/kishore"; export SSH_AGENT_PID=3D"1692"; export
> SSH_AUTH_SOCK=3D"/tmp/keyring-EQAQTf/ssh"; export
> no_proxy=3D"localhost,127.0.0.0/8,*.local"; export
> https_proxy=3D"https://proxy.sc.intel.com:911/"; export
> ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export
> http_proxy=3D"http://proxy.sc.intel.com:911/"; export
> GIT_CONFIG=3D"/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64=
-linux/usr/etc/gitconfig"; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-p=
roxy"; export PATH=3D"/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/=
x86_64-linux/usr/bin/x86_64-poky-linux:/usr/local/src/crf/yocto/buildcrfrtq=
at4/tmp/sysroots/crystalforest/usr/bin/crossscripts:/usr/local/src/crf/yoct=
o/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/sbin:/usr/local/src/crf/yoct=
o/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/bin:/usr/local/src/crf/yocto=
/buildcrfrtqat4/tmp/sysroots/x86_64-linux/sbin:/usr/local/src/crf/yocto/bui=
ldcrfrtqat4/tmp/sysroots/x86_64-linux//bin:/usr/local/src/crf/yocto/bitbake=
/bin/:/usr/local/src/crf/yocto/scripts:/usr/local/src/crf/yocto/bitbake/bin=
/:/usr/local/src/crf/yocto/scripts:/usr/local/src/crf/yocto/bitbake/bin/:/u=
sr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/=
local/src/crf/yocto/scripts"; git ls-remote git://git.kernel.org/pub/scm/li=
nux/kernel/git/torvalds/linux-2.6.git master failed with signal 128, output=
:
>=20
> nc: read failed (0/10): Broken pipe
>=20
> fatal: The remote end hung up unexpectedly
>=20
> =20
>=20
> ERROR: Command execution failed: Exited with 1
>=20
> =20
>=20
> Thanks
>=20
> Kishore.
>=20
>=20



