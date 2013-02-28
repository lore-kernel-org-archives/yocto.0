Return-Path: <tocallaghan@meyn.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 78E85E0071E
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 06:43:08 -0800 (PST)
Received: from mail181-ch1-R.bigfish.com (10.43.68.251) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.23; Thu, 28 Feb 2013 14:43:07 +0000
Received: from mail181-ch1 (localhost [127.0.0.1])	by
	mail181-ch1-R.bigfish.com (Postfix) with ESMTP id 11E9840222	for
	<yocto@yoctoproject.org>; Thu, 28 Feb 2013 14:43:07 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:157.56.252.37; KIP:(null); UIP:(null); IPV:NLI;
	H:DB3PRD0510HT001.eurprd05.prod.outlook.com; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: PS-1(zz14ffIzz1f42h1ee6h1de0h1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h19ceh1ad9h1155h)
Received-SPF: pass (mail181-ch1: domain of meyn.com designates 157.56.252.37
	as permitted sender) client-ip=157.56.252.37;
	envelope-from=tocallaghan@meyn.com;
	helo=DB3PRD0510HT001.eurprd05.prod.outlook.com ; .outlook.com ; 
Received: from mail181-ch1 (localhost.localdomain [127.0.0.1]) by mail181-ch1
	(MessageSwitch) id 1362062585115455_17667;
	Thu, 28 Feb 2013 14:43:05 +0000 (UTC)
Received: from CH1EHSMHS034.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.252])	by mail181-ch1.bigfish.com (Postfix) with ESMTP id
	193214000F9	for <yocto@yoctoproject.org>;
	Thu, 28 Feb 2013 14:43:05 +0000 (UTC)
Received: from DB3PRD0510HT001.eurprd05.prod.outlook.com (157.56.252.37) by
	CH1EHSMHS034.bigfish.com (10.43.70.34) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Thu, 28 Feb 2013 14:43:04 +0000
Received: from DB3PRD0510MB368.eurprd05.prod.outlook.com ([169.254.4.37]) by
	DB3PRD0510HT001.eurprd05.prod.outlook.com ([10.255.46.36]) with mapi id
	14.16.0275.006; Thu, 28 Feb 2013 14:43:03 +0000
From: Tim O'Callaghan <tocallaghan@meyn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build Flavors help.
Thread-Index: Ac4Vwi0Eo0O+YL/eTyyunElJd/hl4w==
Date: Thu, 28 Feb 2013 14:43:03 +0000
Message-ID: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [93.154.102.135]
MIME-Version: 1.0
X-OriginatorOrg: meyn.com
Subject: Build Flavors help.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Feb 2013 14:43:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I've been digging through the documentation, and dipping into the recipes, =
but have not been able to come up with a definitive approach to managing wh=
at I call different build flavors. I am using the term flavor to distinguis=
h it from the 'variant' term mentioned in the docs, at least not as I curre=
ntly understand what BB thinks is a variant.=20

Essentially I want to be able to create one recipe for a given image, then =
during build feed the recipe flavor information to create a different image=
 per flavor.=20
An example would be to be that I want to create 30 images each with its own=
 splash screen, host name, IP etc, without having to create 30 different re=
cipes.

The example I examined is code in the psplash recipe, which can create a di=
fferent installable packages based on the SPLASH_IMAGES variable, which can=
 then be mixed into an image recipe.=20

I can see how that method can be applied to create package flavors, but how=
 would I go about image flavors? If I have to dig into the BB/Poky code, wh=
ere should I start looking? I'm guessing the best approach is to build a he=
lper class I can include in package and image recipes that I want to add fl=
avor to?=20

Best regards,

Tim.


