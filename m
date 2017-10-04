Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6C1EE00D6A; Wed,  4 Oct 2017 15:59:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 284 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Oct 2017 15:59:16 PDT
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E366AE00D1C
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 15:59:16 -0700 (PDT)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.21/8.16.0.21) with SMTP id v94Mpq9x024069
	for <yocto@yoctoproject.org>; Wed, 4 Oct 2017 15:54:32 -0700
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2da6tv7kt8-1
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 15:54:32 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: AC655E34:B4B3A1E0-882581AF:007C1B86;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFAC655E34.B4B3A1E0-ON882581AF.007C1B86-882581AF.007DD7C9@selinc.com>
From: Aaron_Wright@selinc.com
Date: Wed, 4 Oct 2017 15:54:32 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP8|February  23,
	2017) at 10/04/2017 03:54:32 PM,
	Serialize complete at 10/04/2017 03:54:32 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8674
	signatures=668571
Subject: local fetcher and devtool don't work well together
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
X-List-Received-Date: Wed, 04 Oct 2017 22:59:18 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 007DD7C9882581AF_="

--=_alternative 007DD7C9882581AF_=
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: Quoted-printable

I have a recipe with:

SRC_URI =3D "file://a/b/c/d;subdir=3Dsrc"
S =3D "${WORKDIR}/src/a/b/c/d"

First off, ${S} must be set to the full path because the basepath uri=20
parameter[1] doesn't work. So this doesn't work:

SRC_URI =3D "file://a/b/c/d;subdir=3Dsrc;basepath=3Da/b/c/d"
S =3D "${WORKDIR}/src"

I wish it would, but that's ok. I can deal with the long ${S} path as it=20
compiles and works fine with bitbake. However, it doesn't work with=20
devtool:

$ devtool modify -n d ~/mysrc/a/b/c/d
NOTE: Creating workspace layer in <... snip=20
...>/yocto/poky/build/workspace
NOTE: Enabling workspace layer in bblayers.conf
Parsing recipes..done.
NOTE: Recipe d now set up to build from ~/mysrc/a/b/c/d/b/c/d

Where is the extra 'b/c/d' coming from in where it will be built from?=20
This directory is reflected in the bbappends created the workspace:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
FILESPATH_prepend :=3D "~/mysrc/a/b/c/d/b/c/d/oe-local-files:"

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in=20
the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC_pn-backtrace =3D "~/mysrc/a/b/c/d/b/c/d"

If I fix the path in the workspace bbappends, it does compile and work=20
file.

Is it possible to have a ${S} of "${WORKDIR}/src" in this situation?
How can I get devtool to behave and not duplicate the path?

PS - This also doesn't work with a normal 'devtool modify d'.

[1] -=20
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__www.yoctoproject.org_=
docs_latest_bitbake-2Duser-2Dmanual_bitbake-2Duser-2Dmanual.html-23bb-2Dthe=
-2Dunpack&d=3DDwIBAg&c=3DzVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-Gb60_N6TVnLk&r=3DIZ=
3mUDA8X9CZR4hNctKngDDYs_BhK3qVNLG-nWGbW2E&m=3DwH_YZj_cv9gBOhJqSKTr4fiuM5UCT=
phWx9zfY2ceudg&s=3D2z9LBCu2xDjBhB51eToRNH7-wsLrFY4NPKy4_cwuRI0&e=3D=20=

--=_alternative 007DD7C9882581AF_=
Content-Type: text/html; charset="US-ASCII"
Content-Transfer-Encoding: Quoted-printable

<tt><font size=3D2>I have a recipe with:</font></tt>
<br>
<br><tt><font size=3D2>SRC_URI =3D &quot;</font></tt><a href=3D"file://fw/a=
pplications/general/backtrace;unpack=3D0"><tt><font size=3D2>file://a/b/c/d=
;subdir</font></tt></a><tt><font size=3D2>=3Dsrc&quot;</font></tt>
<br><tt><font size=3D2>S =3D &quot;${WORKDIR}/src/a/b/c/d&quot;</font></tt>
<br>
<br><tt><font size=3D2>First off, ${S} must be set to the full path because
the basepath uri parameter[1] doesn't work. So this doesn't work:</font></t=
t>
<br>
<br><tt><font size=3D2>SRC_URI =3D &quot;</font></tt><a href=3D"file://fw/a=
pplications/general/backtrace;unpack=3D0"><tt><font size=3D2>file://a/b/c/d=
;subdir</font></tt></a><tt><font size=3D2>=3Dsrc;basepath=3Da/b/c/d&quot;</=
font></tt>
<br><tt><font size=3D2>S =3D &quot;${WORKDIR}/src&quot;</font></tt>
<br>
<br><tt><font size=3D2>I wish it would, but that's ok. I can deal with the
long ${S} path as it compiles and works fine with bitbake. However, it
doesn't work with devtool:</font></tt>
<br>
<br><tt><font size=3D2>$ devtool modify -n d ~/mysrc/a/b/c/d</font></tt>
<br><tt><font size=3D2><b>NOTE</b>: Creating workspace layer in &lt;... snip
...&gt;/yocto/poky/build/workspace</font></tt>
<br><tt><font size=3D2><b>NOTE</b>: Enabling workspace layer in bblayers.co=
nf</font></tt>
<br><tt><font size=3D2>Parsing recipes..done.</font></tt>
<br><tt><font size=3D2><b>NOTE</b>: Recipe d now set up to build from ~/mys=
rc/a/b/c/d/b/c/d</font></tt>
<br>
<br><tt><font size=3D2>Where is the extra 'b/c/d' coming from in where it
will be built from? This directory is reflected in the bbappends created
the workspace:</font></tt>
<br>
<br><tt><font size=3D2>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:=
&quot;</font></tt>
<br><tt><font size=3D2>FILESPATH_prepend :=3D &quot;~/mysrc/a/b/c/d/b/c/d/o=
e-local-files:&quot;</font></tt>
<br>
<br><tt><font size=3D2>inherit externalsrc</font></tt>
<br><tt><font size=3D2># NOTE: We use pn- overrides here to avoid affecting
multiple variants in the case where the recipe uses BBCLASSEXTEND</font></t=
t>
<br><tt><font size=3D2>EXTERNALSRC_pn-backtrace =3D &quot;~/mysrc/a/b/c/d/b=
/c/d&quot;</font></tt>
<br>
<br><tt><font size=3D2>If I fix the path in the workspace bbappends, it does
compile and work file.</font></tt>
<br>
<br><tt><font size=3D2>Is it possible to have a ${S} of &quot;${WORKDIR}/sr=
c&quot;
in this situation?</font></tt>
<br><tt><font size=3D2>How can I get devtool to behave and not duplicate
the path?</font></tt>
<br>
<br><tt><font size=3D2>PS - This also doesn't work with a normal 'devtool
modify d'.</font></tt>
<br>
<br><tt><font size=3D2>[1] - </font></tt><a href=3D"https://urldefense.proo=
fpoint.com/v2/url?u=3Dhttp-3A__www.yoctoproject.org_docs_latest_bitbake-2Du=
ser-2Dmanual_bitbake-2Duser-2Dmanual.html-23bb-2Dthe-2Dunpack&d=3DDwMBAg&c=
=3DzVFQZQ67ypsA9mYKSCqWmQHiVkCCaN-Gb60_N6TVnLk&r=3DIZ3mUDA8X9CZR4hNctKngDDY=
s_BhK3qVNLG-nWGbW2E&m=3DwH_YZj_cv9gBOhJqSKTr4fiuM5UCTphWx9zfY2ceudg&s=3D2z9=
LBCu2xDjBhB51eToRNH7-wsLrFY4NPKy4_cwuRI0&e=3D"><tt><font size=3D2 color=3Db=
lue>http://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-use=
r-manual.html#bb-the-unpack</font></tt>[yoctoproject.org]</a>=

--=_alternative 007DD7C9882581AF_=--
