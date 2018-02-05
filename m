Return-Path: <MBishop@smithsinterconnectinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A377E00E08; Mon,  5 Feb 2018 12:34:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.smithsinterconnectinc.com (mail.smithsinterconnectinc.com
	[66.32.24.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A57DE00CF1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 12:34:07 -0800 (PST)
X-ASG-Debug-ID: 1517862846-0abaef37d3756f70001-yzSStA
Received: from ERDCSEXCH01.SMITHSSII.NET ([10.16.188.3]) by
	mail.smithsinterconnectinc.com with ESMTP id u9De8TXpooMoahPR
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 05 Feb 2018 15:34:06 -0500 (EST)
X-Barracuda-Envelope-From: MBishop@smithsinterconnectinc.com
Received: from ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) by
	ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Mon, 5 Feb 2018 15:34:28 -0500
Received: from ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07]) by
	ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07%12]) with mapi id
	15.00.0847.040; Mon, 5 Feb 2018 15:34:28 -0500
From: "Bishop, Mark (STRT)" <MBishop@smithsinterconnectinc.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] changing the apache2 conf (meta-webserver)
X-ASG-Orig-Subj: RE: [yocto] changing the apache2 conf (meta-webserver)
Thread-Index: AdOeueMHB3Xq3AvOS3GDkubTz1Lp5QALOzKAAAmPNJA=
Date: Mon, 5 Feb 2018 20:34:28 +0000
Message-ID: <97c4b56389024d0f84707755e37df905@ERDCSEXCH01.SMITHSSII.NET>
References: <ee89ad67e5a34d4986cdcf3f708199f5@ERDCSEXCH01.SMITHSSII.NET>
	<ec1d089c-4606-00b5-4ab2-f5b84e1b1838@gmail.com>
In-Reply-To: <ec1d089c-4606-00b5-4ab2-f5b84e1b1838@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.178.113]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.16.188.3]
X-Barracuda-Start-Time: 1517862846
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://sirblockalot.smithssii.net:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1221
X-Virus-Scanned: by bsmtpd at smithsinterconnectinc.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=7.0 KILL_LEVEL=8.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.47601
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: changing the apache2 conf (meta-webserver)
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
X-List-Received-Date: Mon, 05 Feb 2018 20:34:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I want to change the ErrorLog entries.  It's a common thing to do but I nee=
d help in how to do that in Yocto.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Khem Raj
Sent: Monday, February 05, 2018 3:07 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] changing the apache2 conf (meta-webserver)

On 2/5/18 11:45 AM, Bishop, Mark (STRT) wrote:
> Let me start with that I'm new to Yocto.
>=20
> =A0
>=20
> I've been able to get apache2 onto my zynq board but I need to change=20
> the config.=A0 I'm using a read-only rootfs and apache won't start=20
> because it wants to write to a log file.=A0 I know what I need to change=
=20
> in the apache config but I have no idea how to do that in Yocto.=A0=20
> Could anyone walk me through it and if I am in the wrong spot, my apologi=
es.

you might need to provide some r/w storage here it seems. Either you can sy=
mlink back /tmp to /var/log ( a hack ) or provide a  proper storage thats p=
ersistent and mount it on /var/log or whereever it is expecting to write.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



