Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 454DFE00D12; Wed, 27 Mar 2019 13:54:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1197 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Mar 2019 13:54:09 PDT
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF60E00CE0
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 13:54:09 -0700 (PDT)
Received: from svr-orw-mbx-02.mgc.mentorg.com ([147.34.90.202])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1h9FFT-0007ng-6Y from Joe_MacDonald@mentor.com ;
	Wed, 27 Mar 2019 13:34:11 -0700
Received: from svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Wed, 27 Mar 2019 13:34:09 -0700
Received: from svr-orw-mbx-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4]) by
	SVR-ORW-MBX-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4%22]) with
	mapi id 15.00.1320.000; Wed, 27 Mar 2019 13:34:09 -0700
From: "MacDonald, Joe" <Joe_MacDonald@mentor.com>
To: Chris PeBenito <Christopher.PeBenito@microsoft.com>
Thread-Topic: [PATCH 1/1] libselinux.inc: Add python-shell to
	libselinux-python RDEPENDS.
Thread-Index: AQHU5NbKA55oCOL4hEmFOkobOWJEO6Yf7y7G
Date: Wed, 27 Mar 2019 20:34:09 +0000
Message-ID: <437a120a-86f1-4fd2-938d-c34481a1fbca@email.android.com>
References: <20190327195340.12869-1-Christopher.PeBenito@microsoft.com>
In-Reply-To: <20190327195340.12869-1-Christopher.PeBenito@microsoft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] libselinux.inc: Add python-shell to libselinux-python RDEPENDS.
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
X-List-Received-Date: Wed, 27 Mar 2019 20:54:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_437a120a86f14fd2938dc34481a1fbcaemailandroidcom_"

--_000_437a120a86f14fd2938dc34481a1fbcaemailandroidcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Chris, I will merge this soon as I just tripped over it yesterday. G=
ood timing.

Please try to remember to flag stuff for meta-selinux with that in the subj=
ect, though, so it gets caught by correct filters on our end.

Thanks,
-J.

On Mar 27, 2019 15:53, Chris PeBenito <Christopher.PeBenito@microsoft.com> =
wrote:
The libselinux SWIG wrapper imports shutil.

Signed-off-by: Chris PeBenito <Christopher.PeBenito@microsoft.com>
---
 recipes-security/selinux/libselinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/sel=
inux/libselinux.inc
index 33621cc..6e115e3 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -9,7 +9,7 @@ inherit lib_package pythonnative

 DEPENDS +=3D "libsepol python libpcre swig-native"
 DEPENDS_append_libc-musl =3D " fts"
-RDEPENDS_${PN}-python +=3D "python-core"
+RDEPENDS_${PN}-python +=3D "python-core python-shell"

 PACKAGES +=3D "${PN}-python"
 FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-package=
s/*"
--
2.17.1

--_000_437a120a86f14fd2938dc34481a1fbcaemailandroidcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div dir=3D"auto">Thanks Chris, I will merge this soon as I just tripped ov=
er it yesterday. Good timing.
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Please try to remember to flag stuff for meta-selinux wit=
h that in the subject, though, so it gets caught by correct filters on our =
end.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Thanks,&nbsp;</div>
<div dir=3D"auto">-J.&nbsp;</div>
</div>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">On Mar 27, 2019 15:53, Chris PeBenito &lt;Chri=
stopher.PeBenito@microsoft.com&gt; wrote:<br type=3D"attribution">
</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">The libselinux SWIG wrapper imports shutil.<br>
<br>
Signed-off-by: Chris PeBenito &lt;Christopher.PeBenito@microsoft.com&gt;<br=
>
---<br>
&nbsp;recipes-security/selinux/libselinux.inc | 2 &#43;-<br>
&nbsp;1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
<br>
diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/sel=
inux/libselinux.inc<br>
index 33621cc..6e115e3 100644<br>
--- a/recipes-security/selinux/libselinux.inc<br>
&#43;&#43;&#43; b/recipes-security/selinux/libselinux.inc<br>
@@ -9,7 &#43;9,7 @@ inherit lib_package pythonnative<br>
&nbsp;<br>
&nbsp;DEPENDS &#43;=3D &quot;libsepol python libpcre swig-native&quot;<br>
&nbsp;DEPENDS_append_libc-musl =3D &quot; fts&quot;<br>
-RDEPENDS_${PN}-python &#43;=3D &quot;python-core&quot;<br>
&#43;RDEPENDS_${PN}-python &#43;=3D &quot;python-core python-shell&quot;<br=
>
&nbsp;<br>
&nbsp;PACKAGES &#43;=3D &quot;${PN}-python&quot;<br>
&nbsp;FILES_${PN}-python =3D &quot;${libdir}/python${PYTHON_BASEVERSION}/si=
te-packages/*&quot;<br>
-- <br>
2.17.1<br>
</div>
</span></font>
</body>
</html>

--_000_437a120a86f14fd2938dc34481a1fbcaemailandroidcom_--
