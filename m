Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 891E8E00D4F; Wed,  8 May 2019 04:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 May 2019 04:11:03 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08863E00D47
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 04:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557313862;
	bh=hIrw9Ol3BQhTfEhXhWdpPCWAXMVNwAZHMHemKh2YHsc=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=Re3nAOkOsYeOALDuuAKJAhNgRpwEGn0d2dy5cwHJE6Fw0BhSU0pyID5zDhZn1La0Y
	93TNUeEFJMQaxMX8tiIs9IUX+hvh0T349TKOHJzYW882Efo1ZjFMMC0h0fVxMeFP0x
	SxgphkLJgBK7tHd3twbSKsILdezVwi2JdlRiC8+s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs06.server.lan [172.19.170.55]) (via HTTP); Wed, 8 May 2019
	13:06:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-ee79f97b-ae6e-4e44-bef7-07fa5c0e3085-1557313560088@3c-app-gmx-bs06>
From: "Arno Steffens" <star@gmx.li>
To: yocto@yoctoproject.org
Date: Wed, 8 May 2019 13:06:00 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:x2RX69EIpni/hE0RLJzC/st3J/0ZbeJow2T39pP27rW68RdJqbRunDewohsugCRXTlFMP
	rjSY8YpvP1VBuY/q4IwYXAqUjmXrsl6wO8CSYIu6ecrCY0WxcPaJfN9XtkZnqSxNM2EkG/OdyKU5
	YirndU2J57yKim+38HyPDguaugXpLpMN/pHfA5PwrqaDQgshldKieU5D6aKBJEEQK3nIsz1DjZGE
	LpGkHL+0oSs8v+inTKgsuF/U5afIdpHJ4fjG9jJ3wb7Ts5D6DgNyMXq41ynO8RQKi2ZUITFX/DKV
	aE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:eVa/+tvKBrk=:ksOF2xB9X9LEX4YRNcgW2J
	FclSzY0DNkkcmW4V14dMtZNbhZXw+eachkOmbGSUHGTIudLW0MQcgKsUsmNYlx/YDW8o9w5ov
	csDiJ738kvnFLrKJ0XDIZHyiqWvWX0/jRzxL4aQly5c2rLWrcYeApLqqMf2XM2fDaWFmHmhfY
	doYRjqTkRQnVzB1fKz5rZftmejpzCRwW+vQtpiOgyyvg0YfdfA5u1uBLiCIaCuc6iZvgrl1qI
	n7CKZM8wLzmG0pBzfuIrzWbtjH5oAo4qF7mr0S625O245xo8F0G7P4XKGIj3gARv7MkXFXPbP
	fJMzOP6QXdIhTwGDUVnO+yeZdopMRhIWwnaBkyJC1YKq1qUHrNF77o7vEZdOAWG6U30LRcbfy
	/A1q3E1DSAwOz27/EWqWTYxUppwK5unP35QVtHJdy6gT2C6w/u6GTzft8XEp0TwmbiJYZc1uQ
	nUgeyVaZh273FxPg+DCexItFj5rfE9gpXhOyoAwpDWKPOrWrdwDj/HqeVMFimNm2xiesnk1ma
	fFvhOMwLwLlmE/Ztuv3EAdRYt2GM17s/PU0vo/KrDIWa/Km0eTZvslkxSP/RyFDGLXfLo4DWc
	nxi84ydlriH28gr60cW4GI7/wcWn136wMpYtq1ugiID9rd7kHaDSbEpg==
Subject: Eclipse (plugin, settings)
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
X-List-Received-Date: Wed, 08 May 2019 11:11:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I want to use Eclipse as IDE for coding/debugging.
What do I have to set to get the proper compiler prefixes and pathes, libs=
 and includes ?
Or any way to combine the environment setup with start of eclipse?

I have seen there was a Eclipse plugin, but not for newer versions as 2019=
.03.

Here (https://www.yoctoproject.org/software-item/eclipse-ide-plug-in/) is =
referenced to the eSDK manual, but no word about eclipse in it. Til now I =
just use SDK.

Thanks
Arno

