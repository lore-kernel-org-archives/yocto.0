Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 271D1E0082A; Wed, 18 Jun 2014 09:07:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8803E003DA
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:07:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jun 2014 09:06:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,501,1400050800"; d="scan'208";a="549902285"
Received: from tlankage-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2014 09:06:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Laurent =?ISO-8859-1?Q?d=27Hav=E9?= <ldhave@gmail.com>
Date: Wed, 18 Jun 2014 17:06:31 +0100
Message-ID: <3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <53A194E1.1080206@gmail.com>
References: <53A194E1.1080206@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recipe to Copy JAR files, not extract it
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
X-List-Received-Date: Wed, 18 Jun 2014 16:07:05 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Laurent,

On Wednesday 18 June 2014 15:32:17 Laurent d'Hav=E9 wrote:
> Hello
> In a recipe i'm writing, i need to simply copy a .jar file.
> Since it's specified in SRC_URI , bitbake extracts it, making WORKDIR=
 a
> complete mess, and makes it impossible to copy the .jar file to desti=
nation.
>=20
>=20
> How would i go about simply copying it ? Anyway to tell bitbake NOT t=
o
> extract content of it ?

if you add ;unpack=3D0 to the end of the entry for the jar file within =
SRC_URI,=20
it should prevent it from being unpacked.

(I see we don't have this documented anywhere, I will add it to the=20
documentation todo list.)

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

