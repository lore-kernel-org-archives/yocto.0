Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A603E00CA4; Wed, 28 Mar 2018 03:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic317-29.consmr.mail.bf2.yahoo.com
	(sonic317-29.consmr.mail.bf2.yahoo.com [74.6.129.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD82BE00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 03:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1522234618; bh=WC4izAMIwY2ahNZCCOkJekRZzSZbLj61VCN6puwVHYM=;
	h=Date:From:To:Subject:References:From:Subject;
	b=cktNzZZ1huJzOCWAKSpJTsMuvfOCjhBJFQeXzOIJyzSdsTdTdvvF98ti6gKYLF4USYlQAKscVz5vqTyNrSClV21aEsXqifbqEd8UtHdq9UXq3PmYn6fNHvdmgfO+AMl2Bdu32r7JQEZHiPoemNVNFxhN+jPyeUBQBA8jOC4Yt2TEr/52kUACsXP79On0ScbkiIqQYgLfw0uesO3PHEGCzkVrIT/JhrpclDQTbDxfnydfV2vVqaKV6nI2wA0SfRAajXF5FLpqFVYOPJOiMJlwI4rSNmNaxezx4abOL/1hZS+OErtuI4Sjvxwz5R8VqYp1xtVq+TYbz4NDxrq0c3bIhg==
X-YMail-OSG: 3gl2bVQVM1k3VkWOVhFHm4QadAdOm9cZGsxrC.SCgDzivShzYpnYo4QLp2X0Ibe
	kWqs39NpeuSVlz7tZwrTxu3LK9YN2LhA_C28U4LyqNZqMDSKRw99DXXIOYwtD2saejbXzEfNULJT
	AzTnGuz_K92ZZKOfcU19gEvba.gzhjbvzfxi4I8aWMb3z_TQKH4SLWC5KzT_CY0glbUGwXHwmrzD
	17QRxlNDn_Rd7DTFL.bnVLNYbkm07Y07kY94jEvyKdNSqGa681_lY19OUxD.I.oT6XwicLoIf8fm
	eGYUytk7.LaOfv99X0If0XSrfJbb.mW3iRJZmXv8o5AB3hMlGhvsMh6rnR2bPolRKpFBnFOOgLbF
	IA98ZISRchdffXR1V49.P4sD07HnHQdQ1tDlCjEw5U9F30uHsZpzVoQzem_j.eOlB6VJVZFlmWJv
	akbv2WIKvbuL2U8DFVdLIGedjyxlFDiD9HF26hceKw2PYzeq.DnFEinHxF82XRPTV_orAD3ER1A-
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 28 Mar 2018 10:56:58 +0000
Date: Wed, 28 Mar 2018 10:56:48 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <41794666.168957.1522234608843@mail.yahoo.com>
MIME-Version: 1.0
References: <41794666.168957.1522234608843.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11643 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186
	Safari/537.36
X-Mailman-Approved-At: Wed, 28 Mar 2018 04:00:53 -0700
Subject: how to add libsrtp and libsrtp-staticdev to sdk
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
X-List-Received-Date: Wed, 28 Mar 2018 10:57:01 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_168956_63233318.1522234608841"

------=_Part_168956_63233318.1522234608841
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks.Here is the whole story:I have a recipe named "libjrtp" that depends=
 on "libsrtp".When I build "libjrtp" recipe I faced the following error:
-- ERROR: jrtplib-3.11.1-r0 do_populate_sysroot: QA Issue: jrtplib.pc faile=
d sanity test (tmpdir) in path /opt/yocto/toradex-morty/build-intercom/tmp-=
glibc/work/armv7at2hf-neon-angstrom-linux---- gnueabi/jrtplib/3.11.1-r0/sys=
root-destdir/usr/lib/pkgconfig [pkgconfig]-- ERROR: jrtplib-3.11.1-r0 do_po=
pulate_sysroot: QA staging was broken by the package built above-- ERROR: j=
rtplib-3.11.1-r0 do_populate_sysroot: Function failed: do_qa_staging
If I remove the "libsrtp" from depends list or if do not install "jrtplib.p=
c"=C2=A0to=C2=A0${D}${libdir}/pkgconfig/jrtplib.pc", it built OK. I think s=
omething is wrong with "libsrtp".
An other problem is that I can not add libsrtp nor "libsrtp-staticdev" to m=
y image. when I add "libsrtp" to depends list of my image I get the followi=
ng error:
-- Collected errors:--=C2=A0 * opkg_solver_install: Cannot install package =
libsrtp.



Is there any one did that?Regards,

------=_Part_168956_63233318.1522234608841
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div style=3D"font-family:Helvetica N=
eue, Helvetica, Arial, sans-serif;font-size:13px;"><div style=3D"font-famil=
y:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div>Thanks=
.</div><div>Here is the whole story:</div><div>I have a recipe named "libjr=
tp" that depends on "libsrtp".</div><div>When I build "libjrtp" recipe I fa=
ced the following error:</div><div><br></div><div><span><div>-- ERROR: jrtp=
lib-3.11.1-r0 do_populate_sysroot: QA Issue: jrtplib.pc failed sanity test =
(tmpdir) in path /opt/yocto/toradex-morty/build-intercom/tmp-glibc/work/arm=
v7at2hf-neon-angstrom-linux---- gnueabi/jrtplib/3.11.1-r0/sysroot-destdir/u=
sr/lib/pkgconfig [pkgconfig]</div><div>-- ERROR: jrtplib-3.11.1-r0 do_popul=
ate_sysroot: QA staging was broken by the package built above</div><div>-- =
ERROR: jrtplib-3.11.1-r0 do_populate_sysroot: Function failed: do_qa_stagin=
g</div><div><br></div></span>If I remove the "libsrtp" from depends list or=
 if do not install "<span>jrtplib.pc"&nbsp;</span>to&nbsp;<span>${D}${libdi=
r}/pkgconfig/jrtplib.pc", it built OK. I think something is wrong with "lib=
srtp".</span></div><div><span><br></span></div><div>An other problem is tha=
t I can not add libsrtp nor "libsrtp-staticdev" to my image. when I add "li=
bsrtp" to depends list of my image I get the following error:</div><div><br=
></div><div><span><div>-- Collected errors:</div><div>--&nbsp; * opkg_solve=
r_install: Cannot install package libsrtp.</div><div><br></div></span><br><=
/div><div><br></div><div><br></div><div>Is there any one did that?</div><di=
v>Regards,</div><div><span><br></span></div></div></div></div></body></html=
>

------=_Part_168956_63233318.1522234608841--
