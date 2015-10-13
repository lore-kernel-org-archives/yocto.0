Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC293E00D7A; Tue, 13 Oct 2015 13:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 761DCE00D56
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:28:46 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so209208247wic.0
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version;
	bh=rJpXfQBMnvItDmVeF9ISMYT/QS6cko9l+DdU3byr+Ew=;
	b=Fs92CI5330gg9i4kBGiGg1evrOSNFCAyrBJ03p8e3q3KF71xtHIwbIDaMXFBL/9X9Y
	RhCPqkhAuoUZcgQl3PAs80yjGM1DQZvTijx0NvyBYpdcDbpDlJD2PAr6yC8he+qqlZi6
	QjQi0ROORLe+BfWtTc7FlZqJau7Xh4GitIBE2vxrKYstvjm/YVa8VmrF9qOGqmlEkoio
	NzfifnUi/Gj1pZoh9PKbywwSiDrluL2yya8YUkZgiLZbQVOksyu83ohCJzNTgtGmV5RF
	MrwyFOGHhx489EVEoqFGBcoScIA7k6BoMUWQ9yetgH8xml11Jd+B8/YWRXg2QDETyomw
	WI9w==
X-Received: by 10.180.88.227 with SMTP id bj3mr886961wib.80.1444768125377;
	Tue, 13 Oct 2015 13:28:45 -0700 (PDT)
Received: from [172.22.60.125] (ip-109-91-252-249.hsi12.unitymediagroup.de.
	[109.91.252.249]) by smtp.gmail.com with ESMTPSA id
	fr10sm16369723wib.14.2015.10.13.13.28.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 13 Oct 2015 13:28:44 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Date: Tue, 13 Oct 2015 22:28:44 +0200
Message-Id: <8902125C-84F5-4E42-9BC3-0CF0F5AD3B7A@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 2/6] rrdtool: adding the capability of native-builds to get rrdtool-oo in meta-cpan running
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
X-List-Received-Date: Tue, 13 Oct 2015 20:28:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


An additional layer for Perl modules from cpan =
(https://github.com/rehsack/meta-cpan)
provides additional modules for dealing with rrd files: RRDTool::OO from =
Michael Schili.
This extension requires an executable version of rrdtool.

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb =
b/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
index 91a30cf..aba342b 100644
--- a/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
+++ b/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
@@ -17,6 +17,8 @@ S =3D "${WORKDIR}/git"
=20
 inherit autotools-brokensep gettext pythonnative perlnative python-dir =
cpan-base
=20
+BBCLASSEXTEND =3D "native"
+
 EXTRA_AUTORECONF =3D "-I m4"
=20
 PACKAGECONFIG ??=3D "python perl"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


