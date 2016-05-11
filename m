Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C431FE00E60; Wed, 11 May 2016 05:54:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.106 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 101 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 May 2016 05:54:42 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0106.outbound.protection.outlook.com [157.56.112.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92308E00E5A
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 05:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XMHIUqizZvxDz4EL0gD1+pioPVy78rDJMuFqxa6xoGo=;
	b=U7H8DnwV7USXuPscT/O3L+8ihJ/ur/e0l55Ujz4reOz446qIp1Tyucmxi3kZjh+meK/x8dxjHYHtmI6SsbjsZ/DVtfZ9ahGirJT534xH5ela5VKc4wSwvOEyA6CPLDEpf5wHmZLJv7XUTemt7ZieD4zG3bcwIBgT5ZWf6C15i+k=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=qt.io; 
Received: from piippo.intra.qt.io (192.89.120.53) by
	AM2PR02MB0564.eurprd02.prod.outlook.com (2a01:111:e400:840b::20) with
	Microsoft SMTP Server (TLS) id 15.1.492.11;
	Wed, 11 May 2016 12:39:03 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Wed, 11 May 2016 15:39:54 +0300
Message-ID: <1462970394-21768-1-git-send-email-samuli.piippo@qt.io>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.89.120.53]
X-ClientProxiedBy: HE1PR03CA0007.eurprd03.prod.outlook.com
	(2a01:111:e400:5351::17) To AM2PR02MB0564.eurprd02.prod.outlook.com
	(2a01:111:e400:840b::20)
X-MS-Office365-Filtering-Correlation-Id: dca7ab95-6f71-4b18-3f77-08d379993c0c
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0564;
	2:JSxiVf3VDhgWsG1MS3FQwTlQYjltUjAJzATbwzDD29VGUkIvENtpLnCj26LjDXzlvax+Z3Wv59dPxj1ok7EWmBzwCNaDsB99q/maf3a41xPUOsRDixyZh50NwbAhR+Pcno4OLXmmSOFFyUsBImFYApfd0odXarUfZdZhDg3NUQwQLNAwqQpZ27SC6lWKaRTb;
	3:grtup0e9DQGLJmuAL708D3qdvn+Ao/Ag3BMF6LHNvq2ieFvZeaCIsjSmIr5TKonQjzEG8S9Anm9LuI5GnC5JDfzAyPVXRJgNuo2dLOPxP6z496zuiWaTWgHh60fOdE/l
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR02MB0564;
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0564;
	25:fvUIXqDXi1Bd9R7Spokzdiewf/cVBlD0e15S7NRnvbb8uFnuqBCWDM2qjmM1iQnJgN2HPC4BYMq4UzeR4YPQopcHqNc8PNkDgJPY+jy78kffcOu8WIfdK3KCGruCxOHoycOjq+PUvzF9ag+tsuzs1U2uhlB5Oo9t22IvQl1bT7pNweg8j0qI8sDenVDxhkqnU3Y68jaAoRR04ogFFBgTaDeJjrkf8YG/mN1gEfPhETcF4uKT8UAGKdjIifP7nsLsgfiMfNk3TL1Wx1pp2sx7fQ9Hfmck4YxJIizVEdsVfO1V9eCGzv3ARIieAZDqBNldtuvKgUGL4VFki5kX0MnERwYY9GJRCu/vcP0xsWBTh94MAuWRTMjHP4syK4ZDnPmRsMQNMcNsFsMOCT6upPbjkNPW56Sp4fXKXdPu45o2EsE9wu3l+R7lWONSnujcGb9dqqFEssaGmPd1ufGgd3tgUBTLLZL4LWf/ew7YJKuWtcz+prxjC7OpiselxKIOhI19QzWbTlb6h9Wvh7agbPuSZ1ErvkTO1ncD6FUlE+81vXKyMZF7p3kh/RxucOXL/3SvFPr5GMafjMI5Z+c4D77Su9Wb7Yf0773Z3eB5hz3PwWBJ4pGcNzTvqV3nWWHucZTTMIDauikuLlTx1GbfX+UN1JjmbR9qEcHlJzmNWQvgvyE28XcC/VmJhIq7Chnobmew9EmUk7a0Cx0kczKQyKK2hivkzchwsqaDjToPASdZdvc=;
	20:C3y52YwWPvuctZ0IjtP8+SQCeXIpS4P9thKOidUE2oADbH2UfuvI5nHq7lShYeb2PH8S/ZuF6GL3xNEArnxGg13VBpURCl1whmpwbcbREd8dL8ybcA1pdMbrX8dWILtHg+sh3CwmtIa+DT+4NDs92nJspOI+JsP6wLEmFUFJr0U=
X-Microsoft-Antispam-PRVS: <AM2PR02MB056407142B1455E60230CC65E9720@AM2PR02MB0564.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041072)(6043046);
	SRVR:AM2PR02MB0564; BCL:0; PCL:0; RULEID:; SRVR:AM2PR02MB0564; 
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0564;
	4:EIVreQjLzoCmY5SupKvBidFS4ot9B4mBHyK272nZZyPnqH6ttBDxqNPAR4Firr/+Kr9xtbi8zHCSzpxVxOBxKIBagtIYJaJVMStAiuzcOPZHCBbNqLEMMQANOLmmc0n03R8OWTyjGogBfiEzXkVyLH+naMS/j4RWgz03Tegj1l9ourkqHdYS8hARixK6yX7+QZaGlWErY5cKyTYAp0X0pV8G3jHt34z8vDvyTrutZnZCH3kRhBJ1iV6WsEHCWvILKH9Z6IHsQGDwTxWi6Ddy5O9YZfdN8XNwIBViHF0PoKs3sY+Qj4179I2311CSzF3y7bnwv9+jgofRE+D/h4c4ScSzhJ8/8G4JOZfrRPTUWjGH+1fo3QSNMt97nz7Ls7CFXzWGvGGlx5F2xxgxRPAysdKAlOy5pi0cqmAnY8DkrA8=
X-Forefront-PRVS: 0939529DE2
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(19580405001)(19580395003)(50466002)(2906002)(92566002)(33646002)(5001770100001)(50226002)(189998001)(5004730100002)(107886002)(5003940100001)(53416004)(86362001)(50986999)(42186005)(66066001)(5008740100001)(47776003)(6116002)(36756003)(229853001)(3846002)(586003)(48376002)(74482002)(81166006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR02MB0564;
	H:piippo.intra.qt.io; FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0564;
	23:XkO9VipUOeqaDRGtqOQYbg4MH4v+kB9who2jC6z4fJJgrcuFNKJsOLJds7QkCo06GoXN/EYMrMgn/ha34QGb8fP06ADWYGOYu0xieURxIvCCiT3AsJKBILa33TCB5WhLwJz9fc4n273lhHZJxQWuNYRRwt+Y5xzLZvv8BKYfi/VapO/JgatCEwB0QHRnvhWWHQ9HrH8yuBHWD32DFo/xEpv2Z1XBgPT+9v+vpvo7kUwhv/X9WEvkrAYWL2/+zXHd5UEpGdmDcUl3YmiiXhbWsWKdTYl1iCLKrB4zh2gVJjz74590ZcH7FbRbZNJ/fZ0vyxAF67IPoPbG3xEwCQEgdcodKrPgKHv7O2k9+QXuSNN0BSqN5BAPf589n31/YYclbnq9w1ja6jiFGHY2cEfB8Te/+NOC/KwhkDLkx4Uvo/L1RcFveFAF42UNArwIXRjYjRcYX4GqISCRgmZmMSgz472VZWTGP0KpKwl1k2gY7uujyITejGEX2XtW+EEvKqsPDmfx2YU8RyfHos+JtbNOuKbnSosd928J265FyZ0vo2j8SvfaH6U8+j6GDim4caTyPiSsesIjB+Iq8h99+kYOxydbp+/D/FpKRFzo3ey22mIxejuAo+rqfEyZhHZxJ4+BQrE11PtukFiJV7fXj3tRag62ex/ox7OON2C8QJt5e4zshXg+8E4XOwKP7H6ch2guPduMK2gajDI0rF9GiPw8ZqHP+WWeRUFOnGXv6NRwI8CnwauKUC16YFYp6XZ1D0LiW4qlWNfXrGanWev2c0mCQa6P9LDDAsOUX1qi7czvEjaiNx0UFGChD1oCJ27ePxUZmIVAqdZQ6UcVPmaqIBvVsw==
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0564;
	5:1pyXAqpBbIjxo6gC2YaBecQAwlubWjrJ8nrccPr4H7FVuYVyEpRim/GI6hSeUL69wzgcD94hIfB8HsJeRDzZv962R/EpuIO4aCz56L01afwSgwTRX6Zm5S7/7GDMOjTXLG391MHtq4sapERillNvrA==;
	24:jx95hDuotFi4KbiDyyGhoEAe9kNGAmOrcEOI6YHxUu7q85akXI543f5QENofN57467wqRfe4wv5R+7tJiQniWtbbDBqySAf+LeHSO0nWZfU=;
	7:fZKqPhQRyhHAkg+QQYIsioGNUsxX63BhxOpdY9Y7zrp0GSBhA8RDzQZydV5Plm5i5KHHLmz9nUdRQEkYNsOrpx4wMR4YAMh5WdBdk0YmOhSjNuk+bLcIK/mXfPAy0XeeHWDSM4MZda+72JD7QZDmLpusrG8U7BwbEAOe7EG9ikf+cvrxzI6X0umtYx8IJncW
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2016 12:39:03.1889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR02MB0564
Subject: [meta-mingw][PATCH] libgcc: move libgcc*.dll from /lib to /usr/bin
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
X-List-Received-Date: Wed, 11 May 2016 12:54:46 -0000
Content-Type: text/plain

Moved to /usr/bin so that any application there finds
it without setting additional PATHs.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/gcc/libgcc_%.bbappend | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
index dd95317..cbddead 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,2 +1,7 @@
-FILES_${PN}_append_mingw32 = " ${base_libdir}/libgcc*.dll"
+FILES_${PN}_append_mingw32 = " ${bindir}/libgcc*.dll"
 FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
+
+do_install_append_mingw32() {
+    install -d -m 0755 ${D}${bindir}
+    mv ${D}${base_libdir}/libgcc*.dll ${D}${bindir}/
+}
-- 
1.9.1


