Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2DDDE006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 14:40:51 -0700 (PDT)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 25 Oct 2011 14:40:41 -0700
Received: by iakc1 with SMTP id c1so1493286iak.25
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 14:40:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.42.159.1 with SMTP id j1mr46697388icx.20.1319578840637; Tue,
	25 Oct 2011 14:40:40 -0700 (PDT)
Received: by 10.50.190.229 with HTTP; Tue, 25 Oct 2011 14:40:40 -0700 (PDT)
In-Reply-To: <4EA6CB6F.9060304@communistcode.co.uk>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
Date: Tue, 25 Oct 2011 14:40:40 -0700
Message-ID: <CAPhnLPD5jXHHtjS=8Z-Yv-+2-qe5r5zhr6P7F1x3G3QFRTgLKA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Tue, 25 Oct 2011 21:40:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 25, 2011 at 7:45 AM, Jack Mitchell <ml@communistcode.co.uk> wro=
te:
>
> Hi Jessica,
>
> I posted my environment settings earlier, which are located here:
> http://pastebin.com/4vnWPAD2
>
> Yes, I did use bitbake meta-ide-support to build my roo
>
> Hi Jessica,
>
> I just did a full fresh re-build from scratch and now my environment
> variables are as follows:
>
> http://ix.io/1Wf
>
> My current git status is:
>
> # On branch edision
> # Untracked files:
> #=A0=A0 (use "git add <file>..." to include in what will be committed)
> #
> #=A0=A0=A0 ../bitbake/lib/bb/pysh/pyshtables.py
> #=A0=A0=A0 ../conf/
> #=A0=A0=A0 ./
> #=A0=A0=A0 ../qemuarm-toolchain/
> nothing added to commit but untracked files present (use "git add" to tra=
ck)

Jack,

I just checked out a clean edison and ran bitbake meta-ide-support. My
env is showing export OECORE_DISTRO_VERSION=3D"1.1". My guess is that,
since you are not in master, then you have a TMPDIR from a master
build, or perhaps are using something left over from one, as the only
place DISTRO_VERSION =3D "1.1+snapshot-${DATE}" would be there. Prior to
c88b991 on edison, DISTRO_VERSION =3D "1.0+snapshot-${DATE}". So you're
picking that up from some prior master build. It's not an older
version of edison as if it was an older version of edison it would be
1.0+snapshot-${DATE

-b

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

