Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ADE9E007AA; Fri,  2 Dec 2016 12:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C43BFE007AA
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 12:29:50 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP; 02 Dec 2016 12:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,288,1477983600"; 
	d="asc'?scan'208";a="36594362"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.137])
	([10.219.5.137])
	by orsmga004.jf.intel.com with ESMTP; 02 Dec 2016 12:29:49 -0800
To: yocto@yoctoproject.org
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
Date: Fri, 2 Dec 2016 14:29:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v4] patchwork.models: Include first patch's name in series name
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
X-List-Received-Date: Fri, 02 Dec 2016 20:29:53 -0000
X-Groupsio-MsgNum: 33254
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="95VSKH2MotAvbDd7KJ0s3FeOKI9EiCFtQ"

--95VSKH2MotAvbDd7KJ0s3FeOKI9EiCFtQ
Content-Type: multipart/mixed; boundary="oxVFiqdWVcX7uxMn87RDLfEs8CTuiLk1k";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Message-ID: <2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
Subject: [yocto][patchwork][PATCH v4] patchwork.models: Include first patch's
 name in series name
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
In-Reply-To: <1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>

--oxVFiqdWVcX7uxMn87RDLfEs8CTuiLk1k
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Patch Series created without a cover letter are named using a
non-descriptive generic string.

This change names the series using either the first 30 characters in
patch #1 plus the remaining patches number, or the patch name for
one-patch (1/1) series.

[YOCTO #10625]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/models.py | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/patchwork/models.py b/patchwork/models.py
index 3f531e6..1521641 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1042,6 +1042,19 @@ def _series_supersede_previous_patches(series):
 def _on_revision_complete(sender, revision, **kwargs):
     series =3D revision.series

+    # Now we know how many patches are in the revision,
+    # so we can update the name for series without a cover letter
+    if series.name =3D=3D SERIES_DEFAULT_NAME:
+        name =3D series.latest_revision().ordered_patches()[0].name
+        n =3D re.compile(r'(\[\d+\/\d+\]\s?)')
+        name =3D n.sub('', name)
+        c =3D len(series.latest_revision().ordered_patches())
+        # For one-patch series (1/1) without cover letter
+        if c =3D=3D 1:
+            series.name =3D name
+        elif c > 1:
+            series.name =3D "\"%s...\" and %s more" % (name[:30], c-1)
+
     # update series.last_revision
     series.last_revision =3D series.latest_revision()
     series.save()


--oxVFiqdWVcX7uxMn87RDLfEs8CTuiLk1k--

--95VSKH2MotAvbDd7KJ0s3FeOKI9EiCFtQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJYQdm9AAoJEFJAtowlSEbnmPMH/ApoXufe/MmFCOcUw/bA2UdO
N8FQ135+dKFbxZUEk1ZzsxVsRMxXxIrvT3F5Lm10bvrAmwtYH3DUwVoem9tgNTXD
CWDyHF7rabOTLajELsfhdmdX0A4UQAXPb/WbNqAOv/pxjhpXO0daL9h4I6bYe9dh
ALhvOwtB+m84O5/b/M8Gwq6YZImEh+E/a2s7FdvzmvvKeT7BOp2prukN+qnGmMMc
oQynOp6whJsUDjnPBCSXBUp4S9CU4adjM87+dr2H5bWgUJk/LW98tVR/lfyMHrOn
8hfzDSZj8nJmu5/mT4CCjCfzIL+EnouoPKMRwyiqyvCKUNBdeaYRojWquMiLu1Y=
=nZCb
-----END PGP SIGNATURE-----

--95VSKH2MotAvbDd7KJ0s3FeOKI9EiCFtQ--
