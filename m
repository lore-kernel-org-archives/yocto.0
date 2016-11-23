Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C87CBE00ABE; Wed, 23 Nov 2016 02:00:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.97.165 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm39-vm6.bullet.mail.ir2.yahoo.com
	(nm39-vm6.bullet.mail.ir2.yahoo.com [212.82.97.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DFFAE00A61
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 02:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1479895253; bh=eddmfI16atr2vYc7Ap1w+mOGXFqPg4lK0UDH2HwDXx8=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=BkAxJ3FXb6+9jGzYMYzRpbJ9bjUaWoEx8iFwIHPlMzd/rqQb9P2r4awbpUG2eV2ptgeAbaaPZuTuoov/PNN3iTkonmn34Ux94B1eP9JXhGcb50cVfBzd7mKZfbqCRO72DzcpxbeBUe20gq4IdVj/TjLoGXpHsBN+iOn2ohea2VCttG2hC6fkK4VpGjtFOYIT8uia+qzebRHmfz011pnUTZBVeSJqZYixNRUEXDLZvmHFq1XWDPqXV7rqf639DTw9dc5cTzcDnErPS5s+GMDp/MrIu3PvYH+UklPn3JOR6wi0m2qKvydvkuR4zigt35sMn7eSrgfiucfgLrCEvB5HVw==
Received: from [212.82.98.57] by nm39.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Nov 2016 10:00:53 -0000
Received: from [212.82.98.67] by tm10.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Nov 2016 10:00:53 -0000
Received: from [127.0.0.1] by omp1004.mail.ir2.yahoo.com with NNFMP;
	23 Nov 2016 10:00:53 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 705433.29501.bm@omp1004.mail.ir2.yahoo.com
X-YMail-OSG: s840JZsVM1kEV1TxP3xxApvxMyn0Ff2mSVxElbbjncf2ZzPbL9BHcoLxKWBpcSl
	7kpEZCe1rzezjEYruhUMXOpnNgO8hk1avF4z.9a6uWFDxoZxSD.LlTr3z8qa38SNdniphro6zGBA
	l81BEs16J6nqCzMeFJtdc0f3AkX3FibQwubjjQJzs..pIcP1O0enfVJ1OHhdvKSkQNrVOmF_HdDY
	tB19zHyTRNAlv4fSUinXw_sGU7ijw18cYsx8aogpVlirxUAgPvgDPvoVDTSYiF5E_B7zh08RTBnT
	8gOhl5dJddtNwvr4vIr.5lVCRD0oAO.0LtLNPIyuI9uPc1Mx3PZRJSez9f_YAzkxPF_DwNwrTwEv
	UbDvRv7IaEt8SBLgusQwYLSyHlgO4TBzG7n0SOsm1Ta9W7vzHODSeTFztdGEeYdaszJjUVLs3f_W
	9CH.vkVp7uAycAQ_7QL5DM2qqrIovbbHaB0ZPDkkrlW8t6DV68bpRRbWEffBFIfJsABJkw31hT4d
	PM2Ks6q_2o0vtQw--
Received: from jws700009.mail.ir2.yahoo.com by
	sendmailws161.mail.ir2.yahoo.com;
	Wed, 23 Nov 2016 10:00:52 +0000; 1479895252.973
Date: Wed, 23 Nov 2016 10:00:34 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <1587381958.322993.1479895234059@mail.yahoo.com>
MIME-Version: 1.0
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
Subject: Use recipes but not whole layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Nov 2016 10:00:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_322992_848329120.1479895234057"

------=_Part_322992_848329120.1479895234057
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,
When a layer is included in the build (conf/bblayers.conf), all the bbappends and distro configurations, apply to the current build. Is there something additional which the build is affected after a layer included?
What is the preferred way if in you are only interested in one specfic recipe of the new layer?
a) You could invalidate via BBMASK all the specific pathsb) Could somehow modify the BBFILE to remove the undesired "${LAYERDIR}/recipes-*/*/*.bbappend"?
I am not confortable with either ways, what is the official approach?
Regards


------=_Part_322992_848329120.1479895234057
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1479894428778_14625">Hel=
lo,</div><div><br></div><div id=3D"yui_3_16_0_1_1479894428778_14412">When a=
 layer is included in the build (conf/bblayers.conf), all the bbappends and=
 distro configurations, apply to the current build. Is there something addi=
tional which the build is affected after a layer included?</div><div id=3D"=
yui_3_16_0_1_1479894428778_14411"><br></div><div id=3D"yui_3_16_0_1_1479894=
428778_14410">What is the preferred way if in you are only interested in on=
e specfic recipe of the new layer?</div><div id=3D"yui_3_16_0_1_14798944287=
78_14469"><br></div><div id=3D"yui_3_16_0_1_1479894428778_14535" dir=3D"ltr=
">a) You could invalidate via BBMASK all the specific paths</div><div id=3D=
"yui_3_16_0_1_1479894428778_11218" dir=3D"ltr">b) Could somehow modify the =
BBFILE to remove the undesired "${LAYERDIR}/recipes-*/*/*.bbappend"?</div><=
div id=3D"yui_3_16_0_1_1479894428778_14534" dir=3D"ltr"><br></div><div id=
=3D"yui_3_16_0_1_1479894428778_14454" dir=3D"ltr">I am not confortable with=
 either ways, what is the official approach?</div><div id=3D"yui_3_16_0_1_1=
479894428778_14630" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_147989442=
8778_14631" dir=3D"ltr">Regards<br></div><div id=3D"yui_3_16_0_1_1479894428=
778_11018"><br></div></div></body></html>

------=_Part_322992_848329120.1479895234057--
