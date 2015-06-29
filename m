Return-Path: <Mans.Andersson@nibe.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6613BE009E7; Mon, 29 Jun 2015 07:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.162.190.12 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Jun 2015 07:22:50 PDT
Received: from bmail.nibe.se (bmail.nibe.se [212.162.190.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC64E009D9
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 07:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=nibe.se; s=s1024; c=relaxed/simple;
	q=dns/txt; i=@nibe.se; t=1435586860; x=1438178860;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7edtkmc9uCLWxqVWM3+uIelXLYAp9+pod/56AIL7Yrk=;
	b=ZbXxFf3id2C5VzIQDj6/zXIqvz5q4298Sga7xORnJeFs29c9XU2p8Gj75LxoBBXZ
	6VieE9V3d8PUu8cz1zLiiMzMlAphFjIXIk/GIGhd3jtvtlaPPLpEPScF2LKMCM28
	rKsXG7FHbx0+ZYA71zEQMIyvYc51YWPNbOYswW6BYQs=;
X-AuditID: 0a0201f8-f79316d000000d60-80-5591512c1ef9
Received: from mail.nibe.se (nivm320.nibe.se [10.2.0.33])
	(using TLS with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by bmail.nibe.se (NIBE mail) with SMTP id B7.80.03424.C2151955;
	Mon, 29 Jun 2015 16:07:40 +0200 (CEST)
From: =?iso-8859-1?Q?M=E5ns_Andersson?= <Mans.Andersson@nibe.se>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Sftp deploy hangs when using dropbear and yocto fido.
Thread-Index: AdCydOtsDMShhNIgRtGU7vrHGPnrhQ==
Date: Mon, 29 Jun 2015 14:07:39 +0000
Message-ID: <3070750398d841b6866b97073c1bbeaa@nivm320.nibe.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.3.81]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA12TbUhTURjHO9vdui5PXe/mdlwpOfBD5msG9iFUiEhpYsYGvXywO7255dzm
	7iYuKKRAQVNUTEkqJ/ZCoplaaiBBsyhNyPKLlAmlaGZSlqYkavfebXb128Pv/zz/83/O4eBi
	sm+7GjdZHLTdQpk1UhkmE20Lj47KrNbHfZqKPlQz0ypNAamlryulJ8AZ2eEc2mwqpO2xSedk
	xsXyIZGtQlI0fLcdKwYVWBkIwBFxEHUXvxB5ayUaHm+XlgEZThLrAI3/WJRwgpRIQR23r/K1
	gkhExeWj/ICcSEJTzXXiMoCz/Ai6X37B2xKDSlq7pRzGiAi03KPjMGS7PVM9Eg4DIhStPuIN
	xYQKfZhs9CUg0J2+t2JvHYxmJtYk3joU/Ryp9/XHoNHrtVJvvR/da5oVe+2D0MCNSawKkA0C
	2wbBSINgpEEw4gZYC4CGfMpkjrGYDHQMQ3cC/mrBci+41bXPAwgcaAJhbXK1npRQhYwr3wMy
	cJEmGEpSWbTTYM1xGSnGmGV3mmlGo4DqEyyGG9jgNOdpwmD29yo9qdqgjJOxmbJNVieT5bSb
	PQDhYnZ0pIttgjmU6yJtt3oNPWA3jmlUMH6gREcSuZSDzqNpG233q6dwXIPgXAZ7ZpCdzqWL
	zpvMDr/MzvVzCiFU+EDhMJ0LpBYKWzOJ8AAP0OKBbLAQfifGRuUzplyftxyOcd6Bfsr7hsKT
	c6yv0g83ew6CLNy9/LFNRGIWq4VWq+ArPh7XbXRaNnKrlVA/w9rsEgicvXov7D1eqSdDBHzz
	Cd9AGvtccrjOR2M/y/+8JATcFjt8kI+7B2q5awj2sa1eWvadFbCFOxIyDsohXD5FW8kt76O+
	5ZM5qPTDzXbqYhBgnG17kPYnv74icTBTRQ7rHKsH4goMJXWKgnnbk5f9uumxPrjQHBvXL6/L
	dXTOpyWMNtp+/w3+6rqWMh95RXlzoSYssfLys6bMNqmyemjlzaXhL9aIzxPHzqLOrMawhHe/
	Vh4mhi8plubG1qJcR926PHfN41J5QdLzjqfpp99PazDGSMVHiu0M9Q9eWSm1TwQAAA==
Subject: Sftp deploy hangs when using dropbear and yocto fido.
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
X-List-Received-Date: Mon, 29 Jun 2015 14:22:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Does anyone know about a problem with dropbear and openssh-sftp-server on Y=
octo Fido?

After upgrading my build from Dora to Fido the deployment of builds from Qt=
Creator (3.2.2) to my qemuarm build stopped working. It just hangs waiting =
as if it's working, i.e. no error message. I've switched toolchains and emu=
lator images from my Dora and Fido builds back and forth and the only commo=
n denominator when it doesn't work is when using the Fido qemuarm build. Re=
gular SSH connections and manual sftp transfers (i.e. not initiated by Qt C=
reator) works, which just makes it even harder to debug.

Thanks in advance.
// M=E5ns


