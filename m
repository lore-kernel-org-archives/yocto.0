Subject: Re: SSH_AUTH_SOCK unavailable when pulling modules #golang
To: yocto@lists.yoctoproject.org
From: "Sven" <sven@svenschwermer.de>
X-Originating-Location: Trondheim, Trøndelag, NO (84.215.47.26)
X-Originating-Platform: Mac Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 May 2021 22:37:12 -0700
References: <293588c569ff3b6031b42fdbfadfb6c421158857.camel@linuxfoundation.org>
In-Reply-To: <293588c569ff3b6031b42fdbfadfb6c421158857.camel@linuxfoundation.org>
Message-ID: <25191.1620279432275274109@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Unfortunately, that doesn't make the error messages go away. I agree that =
it's not great that go-mod fetches during do_compile but that's the way it =
currently is.

For completeness sake, here is the complete minimal example that _does_ co=
mpile. However, error messages =C3=A0 la

ERROR: When reparsing [...]/golang-test/golang-test.bb:do_compile, the bas=
ehash value changed from be5e3ca0e52fd3e3a0315fb32a2845f097bb6925940a8141b6=
f4d99fa2423e20 to fc952756231a898ae7d3fd611607066b349042f5313b8363d11eef18e=
d317ed2. The metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake golang-test -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake golang-test -cdo_compile -Sprintdiff

are spewed out. Here's the recipe:

LICENSE =3D "CLOSED"
GO_IMPORT =3D "bitbucket.org/sven_schwermer/golang-a"
SRC_URI =3D "git://git@${GO_IMPORT};protocol=3Dssh;branch=3Dmaster"
SRCREV =3D "f7d820d09a5b2332737a8105b3efd9c1e8e51d32"
inherit go-mod
do_compile() {
    export SSH_AUTH_SOCK=3D"${@d.getVar('BB_ORIGENV', False).getVar('SSH_A=
UTH_SOCK', False)}"
    go_do_compile
}

bitbucket.org/sven_schwermer/golang-a pulls in a secondary dependency (bit=
bucket.org/sven_schwermer/golang-b) which is not publicly available. This i=
s golang-a's go.mod:

module bitbucket.org/sven_schwermer/golang-a
go 1.16
require bitbucket.org/sven_schwermer/golang-b v0.0.0-20210505180831-90ba3c=
d6391e

I have tested this also on latest poky@master (5a0679cb75) with identical =
results.
