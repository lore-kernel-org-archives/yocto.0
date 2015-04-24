Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66233E0095D; Fri, 24 Apr 2015 09:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12015E0086D
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 09:11:03 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-35.us.mimecast.lan; Fri, 24 Apr 2015 12:11:01 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Fri, 24 Apr 2015 09:10:58 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 24 Apr 2015 09:10:58 -0700
Thread-Topic: [yocto] Strange error trying to use externalsrc
Thread-Index: AdB+JH5lVTdPmPibToq75XM1SDrtjQAhE5zQ
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58BA6@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58B01@MSXBEBVT12.planar.net>
	<2862088.RI0PdWmfLM@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2862088.RI0PdWmfLM@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: l6otw5yYQJWubUxaG5CDHw-2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange error trying to use externalsrc
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
X-List-Received-Date: Fri, 24 Apr 2015 16:11:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, April 23, 2015 5:20 PM
> To: Matt Schuckmann
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Strange error trying to use externalsrc
>=20
> On Thursday 23 April 2015 12:37:30 Matt Schuckmann wrote:
> > I'm trying to use the externalsrc class to make it easier build an
> > application under active development.
> >
> > I'm working off of the Dylan branch.
> >
> > If I add the following 2 lines to my site.conf
> >
> > INHERIT +=3D "externalsrc"
> > S_pn-keypadd =3D "/home/dev/builds/zanzibar/keypadd"
> >
> > I get the following error when I try to build the keypadd recipe.
> >
> > ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points to
> > an invalid file:
> > /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> lina
> > ro-to
> > olchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-config-
> 20120
> > 814/co nfig.guess ERROR: Logfile of failure stored in:
> > /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> lina
> > ro-to
> > olchain/work/i686-linux/gnu-config-native/20120814-
> r0/temp/log.do_configure.
> > 11698
> > Log data follows:
> > | DEBUG: Executing python function sysroot_cleansstate
> > | DEBUG: Python function sysroot_cleansstate finished
> > | DEBUG: Executing shell function do_configure
> > | DEBUG: Shell function do_configure finished
> > | DEBUG: Executing python function do_qa_configure
> > | NOTE: Checking autotools environment for common misconfiguration
> > | DEBUG: Python function do_qa_configure finished
> > | ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points
> > | to an invalid file:
> > | /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> li
> > | naro-
> > | toolchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-config-
> 2
> > | 012081
> > | 4/config.guess
> > ERROR: Task 26
> > (virtual:native:/home/dev/builds/zanzibar/tisdk/zanzibar/sources/oe-
> co
> > re/me ta/recipes-devtools/gnu-config/gnu-config_20120814.bb,
> > do_configure) failed with exit code '1'
> >
> >
> > The keypadd recipe is marked as CLOSED but I've also tried MIT and
> > GPL. I've even added a license file and MD5 checksum. Interestingly
> > externalsrc seems to work if I add these 2 lines to the recipe.
> >
> > inherit externalsrc
> > S =3D "/home/dev/builds/zanzibar/keypadd"
> >
> > But I don't want to have to edit the recipe every time I want to
> > switch to building from a local directory.
> >
> > Any suggestions as to what is wrong?
>=20
> Don't set S to specify the path to the external source tree - set
> EXTERNALSRC instead, or otherwise externalsrc.bbclass's actual
> functionality isn't active.

Thanks for the reply Paul, but the Dylan (1.4) manual says to set S, also t=
he externalsrc.bbclass for Dylan doesn't reference EXTERNALSRC.=20
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#building-so=
ftware-from-an-external-source
https://github.com/openembedded/oe-core/blob/dylan/meta/classes/externalsrc=
.bbclass

Am I missing something?=20

Thanks,
Matt S.=20



