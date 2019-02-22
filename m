Return-Path: <luciosantinell@libero.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A196EE00CCE; Fri, 22 Feb 2019 03:16:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (luciosantinell[at]libero.it)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.209.12.17 listed in list.dnswl.org]
Received: from libero.it (smtp-17-i2.italiaonline.it [213.209.12.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EB8E009A0
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 03:16:22 -0800 (PST)
Received: from oxapps-17-102.iol.local ([10.101.8.112])
	by smtp-17.iol.local with ESMTPA
	id x8oXgjSxYmRNcx8oXg2yJw; Fri, 22 Feb 2019 12:16:21 +0100
x-libjamoibt: 1601
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=libero.it; s=s2014;
	t=1550834181; bh=9Y42WiIanP5P+kxhvIuw8EYadblMrqbg1bDvS0UqG94=;
	h=Date:From:To:Subject;
	b=prOIDyH+CSoaeCHLV/FhlGLE9QjEBg+s5v2oNOMcbIKlPPFQGj6nL+yJ0KeaVsVA4
	DJBS9svwquyrYho4a6DBoVZcb098yGHwjLAnbOhrAH8bKQxu7rPOxoFi57dw4pr9dh
	5eCuJVMcQondbk2oGOV1PC5u+hgKyBTQ99dgHNFvYIiGl1GP5h79ZvlTyyuKyDpvNT
	xWtxZpYz8VAu9qtLXE7lP1MQmzie8jdJIWw+ddct6CObMEvTuXyRG1+LB3xuC/LfuM
	dRfZMkpE3YoqaEdVtqD5uQ7yQT5zwpoGdW1ojaU9G7dCYHtdNfoZ52J2xtOIBRLlCn
	BwcqAsHEovQjw==
X-CNFS-Analysis: v=2.3 cv=HpKn5HbS c=1 sm=1 tr=0
	a=E1RCJGfwAbxyPyamIe/mbQ==:117 a=1VHoG3c1NY8A:10 a=1Y-2xJgGt1QA:10
	a=qynIG0bdtEz0dDjCupIA:9 a=QEXdDO2ut3YA:10 a=STBujvbztNR-63vAijcA:9
	a=f2Uf84KDbe4tWx4X:21 a=_W_S_7VecoQA:10
Date: Fri, 22 Feb 2019 12:16:21 +0100 (CET)
From: luciosantinell@libero.it
To: yocto@yoctoproject.org
Message-ID: <1943518046.601531.1550834181325@mail.libero.it>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev52
X-Originating-IP: 87.9.31.50
X-Originating-Client: open-xchange-appsuite
x-libjamsun: vjKvNfTwzZHrLriHpvGz3nB03Xm1C/dla7crR/OWiDM=
x-libjamv: NTXqvMZ6dOs=
X-CMAE-Envelope: MS4wfC5WmCK/EmD5WF9GoIwnm6iG2jYNxpzdZVpe8OY72sq0/n6eaP79i0nE+plMHT7aLXYAxCQgjylkSz7L1TEqMUDRIosUCVPo+7ztgQ80UFrOfM6TbeeG
	FaTdInQSz8y6qlvAmV2wHYcs060uw1hfjP9cuoS0OPoELfNTFgBrBbg97DnIcOJI3oP+qbzAXudFfA==
Subject: Ifdef on devicetree
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
X-List-Received-Date: Fri, 22 Feb 2019 11:16:23 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_601530_1083448144.1550834181323"

------=_Part_601530_1083448144.1550834181323
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

i'm trying to add some #ifdef on my device tree in order to separate two different imports.

#include "imx6q.dtsi"
#ifdef MMC_WRITE
#include "imx6qdl-sabre-mmc.dtsi"
#elif
#include "imx6qdl-sabre-sd.dtsi"
#endif

where can i add a macro to select what kind of device tree i must import?
in /arch/arm/boot i found a Makefile
and another one in /arch/arm/boot/dts
but i dont know how to define a macro for device-trees.

Thanks

------=_Part_601530_1083448144.1550834181323
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html><head>
    <meta charset="UTF-8">
</head><body><p>Hi, <br><br>i&#39;m trying to add some #ifdef on my device tree in order to separate two different imports. <br><br>#include &#34;imx6q.dtsi&#34;<br>#ifdef MMC_WRITE<br>#include &#34;imx6qdl-sabre-mmc.dtsi&#34;<br>#elif<br>#include &#34;imx6qdl-sabre-sd.dtsi&#34;<br>#endif<br><br>where can i add a macro to select what kind of device tree i must import? <br>in /arch/arm/boot i found a Makefile <br>and another one in /arch/arm/boot/dts<br>but i dont know how to define a macro for device-trees. <br><br>Thanks<br></p></body></html>
 

------=_Part_601530_1083448144.1550834181323--
