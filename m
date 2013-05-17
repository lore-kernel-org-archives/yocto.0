Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F20EE01366
	for <yocto@yoctoproject.org>; Fri, 17 May 2013 01:53:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 17 May 2013 01:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,690,1363158000"; d="scan'208";a="335628173"
Received: from unknown (HELO helios.localnet) ([10.255.12.245])
	by fmsmga001.fm.intel.com with ESMTP; 17 May 2013 01:53:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Post, Travis" <travis.post@intel.com>
Date: Fri, 17 May 2013 09:53:55 +0100
Message-ID: <1825160.HcECli0hlK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <1B9AA52722844A4995CFFE20C2BC6B596B7A1105@ORSMSX107.amr.corp.intel.com>
References: <1B9AA52722844A4995CFFE20C2BC6B596B7A1105@ORSMSX107.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Customize Number of Threads per Task?
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
X-List-Received-Date: Fri, 17 May 2013 08:53:57 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Travis,

On Friday 17 May 2013 00:40:51 Post, Travis wrote:
> I=E2=80=99ve written a bitbake class that adds a custom task in-betwe=
en do_configure
> and do_compile, called =E2=80=98do_send_to_remote=E2=80=99. Is there =
any way for Yocto to
> allow only one instance of this task to run at a time? I know I can s=
et
> BB_NUMBER_THREADS =3D 1, but that will slow down everything. Is there=
 a way
> to do something like: BB_NUMBER_THREADS[do_send_to_remote] =3D 1?

I don't think we have anything quite like that, but we do have support =
for=20
locking via a "lockfiles" parameter on a task function; e.g. from=20
rootfs_rpm.bbclass:

do_rootfs[lockfiles] +=3D "${DEPLOY_DIR_RPM}/rpm.lock"

That should ensure only one instance of the task's code gets to run at =
a time.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

