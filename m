Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F21D6E00854; Sat, 14 Mar 2015 05:09:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B474E003FA
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 05:09:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2015 05:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,400,1422950400"; d="scan'208";a="692089488"
Received: from plaws-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.24.36])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2015 05:09:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Padam Jeet Singh <padam.singh@inventum.net>
Date: Sat, 14 Mar 2015 12:09:40 +0000
Message-ID: <1714419.cqQz9pfT8x@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F83C9D2F-6BCA-48A0-8C71-7DC701E57C50@inventum.net>
References: <37E841B8-5482-4E95-8A2E-08140957E3BF@inventum.net>
	<1947418.ggldqr5zsU@peggleto-mobl5.ger.corp.intel.com>
	<F83C9D2F-6BCA-48A0-8C71-7DC701E57C50@inventum.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Automatically include all recipes/packages in a custom layer
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
X-List-Received-Date: Sat, 14 Mar 2015 12:09:46 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Saturday 14 March 2015 17:12:11 Padam Jeet Singh wrote:
> > On 14-Mar-2015, at 5:05 pm, Paul Eggleton <paul.eggleton@linux.inte=
l.com>
> > wrote:>=20
> > On Saturday 14 March 2015 12:51:31 Padam Jeet Singh wrote:
> >> I am trying to build a custom layer on top of core-image-full-cmdl=
ine.
> >> Basically I did this:
> >>=20
> >> 1. Created a new general layer using the yocto-layer command. This=
 also
> >> generated a simple hello world recipe. 2. Added that layer in the
> >> conf/bblayers.conf BBLAYERS variable.
> >>=20
> >> Then I do a bitbake -v core-image-full-cmdline, and I don=E2=80=99=
t see
> >> /usr/bin/helloworld in the final rootfs.
> >>=20
> >> Then I edit the conf/local.conf and add the following:
> >>=20
> >> IMAGE_INSTALL_append =3D " example=E2=80=9D
> >>=20
> >> and then I can see the helloworld in the rootfs.
> >>=20
> >> Since I will be adding close to 50 recipes in this layer, isn=E2=80=
=99t there an
> >> option where all recipes in that layer are included by default? Ev=
en if I
> >> have to declare each recipe to be included, is there a place where=
 I can
> >> define those in my own layer configuration (layer.conf) rather tha=
n
> >> local.conf?
> >=20
> > Firstly, I'd recommend you create your own custom image recipe(s) r=
ather
> > than adding packages via local.conf.
>=20
> This is exactly what I am trying to avoid - it=E2=80=99s unmaintainab=
le.
>=20
> > Secondly, the way to handle bringing in a
> > large number of packages as a unit is to create a packagegroup reci=
pe
> > within your custom layer to pull in all the packages you want insta=
lled,
> > and then you just need to add that packagegroup to your image.
>=20
> This sounds good. Would I be referring to this group via the
> IMAGE_INSTALL_append =3D =E2=80=9C mygroup=E2=80=9D ?

Yes, although if you were defining your own image recipe you wouldn't n=
eed to=20
_append - you'd already be setting IMAGE_INSTALL outright to the desire=
d list=20
of packages.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

