Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D50E00777; Wed, 16 Jul 2014 03:32:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx2.kistler.com (mx2.kistler.com [195.49.77.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A896EE0076B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 03:32:40 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,671,1400018400"; 
   d="scan'208";a="1758922"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	16 Jul 2014 12:32:39 +0200
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Wed, 16 Jul 2014 12:32:37 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.01,671,1400018400"; d="scan'208";a="11220515"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/AES128-SHA; 16 Jul 2014 12:32:37 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0181.006; Wed, 16 Jul 2014 12:32:37 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: 'Olof Johansson' <olof.johansson@axis.com>
Thread-Topic: [yocto] Bash parser
Thread-Index: Ac+g1sdj2Darbfk6Q4C/8hU3dszAFP//6IIA///UOKA=
Date: Wed, 16 Jul 2014 10:32:36 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E66886164990@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
	<20140716095330.GC23194@axis.com>
In-Reply-To: <20140716095330.GC23194@axis.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bash parser
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
X-List-Received-Date: Wed, 16 Jul 2014 10:32:45 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Olof,

Thank you very much for your prompt answer
>=20
> On 14-07-16 11:36 +0200, Isak Lichtenstein wrote:
> > In this method I'm using the bash syntax. But a lot of time the parser
> > doesn't manage to parse my file properly. Examples:
> >
> > 	TMP=3D"file1 file2"
> > 	read -a scripts <<< $tmp
> > generates
> > 	ShellSyntaxError: expecting here-document name, got '<'
> >
> > Or
> >
> > 	TMP=3D"file1 file2"
> > 	scripts=3D(${TMP})
> > generate
> > 	ShellSyntaxError: LexToken(TOKEN,'${TMP}',0,0)
> >
> >
> > Other bash commands are parsed properly, but generate an error while
> > executing them. Example:
> > 	TMP=3D"file1, file2"
> > 	tmp=3D${TMP//,/ }
> > generates
> > 	Bad substitution
> > 	| WARNING: exit code 2 from a shell command.
>=20
> Note that these features you describe here are all bash extensions. For D=
ebian
> users (and I think Ubuntu users as well?), the default /bin/sh is dash an=
d does not
> support either of these extensions. There are cases where the bitbake par=
ser will
> refuse valid portable shell script features as well though, like shell ar=
ithmetics, e.g.:

Ubuntu default is actually bash.
>=20
>  n=3D$((n+1))
>=20
> > Does a page exist somewhere describing the bash features supported by
> > the parser and also the execution environment?
> > Are arrays supported at all?
>=20
> I don't know of any such documentation, but if you stick to portable shel=
l script
> features, you should be mostly fine.
>=20
Thanks for the advice. Will try to stick to it.

Isak

