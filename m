Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 871BFE0070F; Wed, 18 Jun 2014 09:10:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3780E003DA
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:10:16 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Jun 2014 09:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,501,1400050800"; d="scan'208";a="447094508"
Received: from tlankage-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by azsmga001.ch.intel.com with ESMTP; 18 Jun 2014 09:09:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Laurent =?ISO-8859-1?Q?d=27Hav=E9?= <ldhave@gmail.com>
Date: Wed, 18 Jun 2014 17:09:43 +0100
Message-ID: <3008226.YT4zIGGLGl@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
References: <53A194E1.1080206@gmail.com>
	<3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 18 Jun 2014 16:10:24 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 18 June 2014 17:06:31 Paul Eggleton wrote:
> Hi Laurent,
>=20
> On Wednesday 18 June 2014 15:32:17 Laurent d'Hav=E9 wrote:
> > Hello
> > In a recipe i'm writing, i need to simply copy a .jar file.
> > Since it's specified in SRC_URI , bitbake extracts it, making WORKD=
IR a
> > complete mess, and makes it impossible to copy the .jar file to
> > destination.
> >=20
> >=20
> > How would i go about simply copying it ? Anyway to tell bitbake NOT=
 to
> > extract content of it ?
>=20
> if you add ;unpack=3D0 to the end of the entry for the jar file withi=
n
> SRC_URI, it should prevent it from being unpacked.
>=20
> (I see we don't have this documented anywhere, I will add it to the
> documentation todo list.)

Actually, I was mistaken - it is mentioned in the reference manual:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var=
-SRC_URI

(FWIW, I'm happy to answer questions even if they are covered by
the manual, this is just an aside ;)

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

