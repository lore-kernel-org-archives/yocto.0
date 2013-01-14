Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13E9FE00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 12:06:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2013 12:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,468,1355126400"; d="scan'208";a="246549354"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2013 12:06:21 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 14 Jan 2013 12:06:17 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.188]) with mapi id
	14.01.0355.002; Mon, 14 Jan 2013 12:06:17 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>, Jerrod Peach <peachj@lexmark.com>
Thread-Topic: [yocto] SRCPV description
Thread-Index: Ac3yZs+nKWhPkX2ZQdqv7/VG//MDcAARZm4AAAJcsQAACNbFQA==
Date: Mon, 14 Jan 2013 20:06:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D24178@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
	<20130114161836.GE2992@jama>
In-Reply-To: <20130114161836.GE2992@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SRCPV description
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
X-List-Received-Date: Mon, 14 Jan 2013 20:06:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the explanations for this variable all.

Scott

>-----Original Message-----
>From: Martin Jansa [mailto:martin.jansa@gmail.com]
>Sent: Monday, January 14, 2013 8:19 AM
>To: Jerrod Peach
>Cc: Rifenbark, Scott M; Yocto discussion list
>Subject: Re: [yocto] SRCPV description
>
>On Mon, Jan 14, 2013 at 10:10:58AM -0500, Jerrod Peach wrote:
>> On Mon, Jan 14, 2013 at 9:52 AM, Rifenbark, Scott M <
>> scott.m.rifenbark@intel.com> wrote:
>>
>> > Hi,
>> >
>> > I need a description of the SRCPV variable for the YP reference
>glossary.
>> >  I have been told that it is generated and not assigned and that it
>> > is used to define PV values that include the source revisions from
>> > an RCS.  By default it is set to the following in the
>conf/bitbake.conf file:
>> >
>> > SRCPV =3D "${@bb.fetch2.get_srcrev(d)}"
>> >
>> > Can anyone provide more information on this variable?
>> >
>> > Thanks,
>> > Scott
>> >
>> >
>> >
>> > Scott Rifenbark
>> > Intel Corporation
>> > Yocto Project Documentation
>> > 503.712.2702
>> > 503.341.0418 (cell)
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>> Scott,
>>
>> Off the top of my head, I know SRCPV is a combination of the VCS type
>> and revision used in the actual build. Most interestingly, SRCPV will
>> always contain the real revision used in the build, even if ${AUTOREV}
>> is specified as the SRCREV for a given package. Note that if a package
>> does not include SRCPV somewhere within its recipe, I believe setting
>> SRCREV to ${AUTOREV} will have no effect, as ${AUTOREV} by itself
>> simply resolves to the string "AUTOINC", which does not permute the
>hash of the recipe.
>>
>> Note that I'm not really a Yocto expert nor am I sitting with the code
>> in front of me right now, so someone can jump in if I missed something
>> or got a detail incorrect.  I don't remember the exact format of the
>> string, but I want to say its a combination of the VCS name, a
>> Yocto-internal VCS identification number (just like 1 or 2, not some
>> huge int), and the revision (be it a hash it git or an integer in SVN
>> or whatever else is used by a supported VCS).
>
>There isn't VCS type in SRCPV (that's why there is always prefix like
>1.0+git${SRCPV}, 1.0+svn${SRCPV}). Some recipes even in oe-core are
>using wrong prefix like -git or ~git:
>meta/recipes-connectivity/ofono/ofono_git.bb:PV  =3D "0.12-git${SRCPV}"
>meta/recipes-extended/libzypp/libzypp_git.bb:PV =3D "0.0-git${SRCPV}"
>meta/recipes-extended/sat-solver/sat-solver_git.bb:PV =3D "0.0-
>git${SRCPV}"
>meta/recipes-extended/zypper/zypper_git.bb:PV =3D "1.5.3-git${SRCPV}"
>meta/recipes-graphics/mesa/mesa-git.inc:PV =3D "9.1~git${SRCPV}"
>
>And +git/+gitr, +svn/+svnr prefixes are inconsistently used.
>
>AUTOINC is used instead of LOCALCOUNT only after
>http://git.openembedded.org/bitbake/commit/?id=3D61cf01c5c236b4218f40cfae7
>c059c2b86765dbd
>
>And AUTOREV should expand to latest revision in SRCREV even without
>SRCPV in recipe (SRCPV is already used in bitbake.conf
>meta/conf/bitbake.conf:SRCPV =3D "${@bb.fetch2.get_srcrev(d)}").
>
>Cheers,
>
>--
>Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

