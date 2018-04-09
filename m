Return-Path: <epsi@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CB2EE00B66; Mon,  9 Apr 2018 03:22:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (epsi[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0033]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Apr 2018 03:22:15 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BCF2E007E1
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 03:22:15 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs79.server.lan (via HTTP); Mon, 9 Apr 2018 12:17:10 +0200
MIME-Version: 1.0
Message-ID: <trinity-1101ecc5-fcf9-4690-9f44-4ba6adb37022-1523269030673@3c-app-gmx-bs79>
From: "Arno Steffens" <epsi@gmx.de>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Mon, 9 Apr 2018 12:17:10 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:9HIC6i2uTyoiEDd6g+1NU46XZ6sFH0mB1oqkwS85hVy
	XCq/mzsnBznvJvx2jIIhLfhata+eIumwp77cKO/AyaiNtxdpbt
	Yr2bCLFMTURPcklALtRbIUw74zTIOZCy/DMLMkkQYQceolNMUr
	14J2PfXe377pkcB5rcw01LYNzNWQp5Jr1I3fbU33shxJ+Z8tXr
	mzlevpnEMuucsJ7/kpwFWjBfSsubpJTnPjaNHRjXz01n5cA2vS
	1TumvDrpEZhW8WUVN2tzfeGBGal9dVJIglTYFH1m38+ujonv5G wc+YSM=
X-UI-Out-Filterresults: notjunk:1;V01:K0:n/NDYoldkLY=:T4FztdvckhLEZBNuRKVDG8
	iSXIXoMV0uusx8PY1QIA1JplT6J5LDzVYEj7Zl916Zy0fmY1VJE2yH8gFvLIm6s6ECMJ12utn
	qvYiiTxCcRgfJDJlCBUK5JzPONVPxtmbIde3CA76jfouNPTtL+CO9IGFbsBXtq4bg1uJRSOXr
	TPwZUDe0FVgyLDwCcVTz/Lim0MSUZ/uEatNmXwF7l0BRawjp7V8XUuchCcUqLzR76Va0Iz4f+
	PBX7JN84sJ37a89xcXcQ7ZZWIzv1+ClI11cWWh3/0/DGoDP//MB0oz8bq3Qh57D2LUFpf1iO3
	knM00RIAzi1DsX39JLXEKs1CQ0GnPVbwvukDyq2LI2efyRF1gDWNdbk1pIvzsYLmrqLd5pUmP
	wqH+Bpg6tNXi+6odonAOMd7rnVYRdzvWOyhGzRNNu4knJewueI+o2NWtQJYlcYezW2Ecej6b9
	a8xbr3vEOlbhGYHqPofQxpJbm+FouD6LcXa0eOMloFqUF130eqO3
X-Mailman-Approved-At: Tue, 10 Apr 2018 09:11:57 -0700
Subject: Update a recipe to use newer sources
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
X-List-Received-Date: Mon, 09 Apr 2018 10:22:16 -0000
Content-Type: text/plain; charset=UTF-8

Can you please help me? 
For one or 2 packages I need newer sources than available via yocto. Is there a guide what and how I have to modify (or better copy, modify and add???) a recipe where the only change is a newer source code release? I am aware that this can create trouble, but sometimes I need a bugfix that it is only in recent versions available.
Thank you
Arno

