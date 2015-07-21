Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC3ACE009C5; Mon, 20 Jul 2015 19:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE4AE008DC
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 19:45:06 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%16]) with
	mapi; Tue, 21 Jul 2015 12:45:03 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 21 Jul 2015 12:45:02 +1000
Thread-Topic: Recipe with dynamic variable in do_compile not rebuilding
Thread-Index: AdDDXkcvZSIg+TwxRqSmzY31izmyeA==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227C1CBAA94@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21688.007
x-tm-as-result: No--37.449900-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Recipe with dynamic variable in do_compile not rebuilding
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
X-List-Received-Date: Tue, 21 Jul 2015 02:45:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I want to make an 'os-build-revisions' package that will create /etc/os-bui=
ld-revisions containing a list of git revisions in all layers.

I've quoted the recipe below. It mostly works. However, it's not rebuilding=
 if a layer changes its git revision.

I've used :=3D on OS_BUILD_REVISIONS, and I've used do_compile[vardeps] and=
 tried do_compile[nostamp], but it doesn't seem to help.

I've also run 'bitbake os-build-revisions -e' and confirmed that OS_BUILD_R=
EVISIONS contains the updated git revision value. But it still doesn't trig=
ger a rebuild of the package. What do I need to add to ensure that the pack=
age rebuilds whenever OS_BUILD_REVISIONS changes?

os-build-revisions.bb:
---------------------------------
inherit allarch

SUMMARY =3D "Yocto build revisions"
DESCRIPTION =3D "The /etc/os-build-revisions file contains data about git r=
evisions of layers used in the build."
LICENSE =3D "MIT"
INHIBIT_DEFAULT_DEPS =3D "1"

do_fetch[noexec] =3D "1"
do_unpack[noexec] =3D "1"
do_patch[noexec] =3D "1"
do_configure[noexec] =3D "1"

def buildhistory_get_metadata_revs(d):
    # We want an easily machine-readable format here, so get_layers_branch_=
rev isn't quite what we want
    layers =3D (d.getVar("BBLAYERS", True) or "").split()
    metadata_revs =3D []
    for layer in layers:
        name =3D os.path.basename(layer)
        branch =3D base_get_metadata_git_branch(layer, None).strip()
        revision =3D base_get_metadata_git_revision(layer, None)
        metadata_revs.append('{0:17} =3D {1}:{2}'.format(name, branch, revi=
sion))
    return '\n'.join(metadata_revs)

OS_BUILD_REVISIONS :=3D "${@buildhistory_get_metadata_revs(d)}"

do_compile() {
    echo "${OS_BUILD_REVISIONS}" > ${B}/os-build-revisions
}
do_compile[vardeps] +=3D "OS_BUILD_REVISIONS"
do_compile[nostamp] +=3D "1"

do_install () {
    install -d ${D}${sysconfdir}
    install -m 0644 os-build-revisions ${D}${sysconfdir}/
}


