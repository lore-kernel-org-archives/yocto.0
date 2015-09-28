Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1928EE00ED0; Mon, 28 Sep 2015 10:15:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Sep 2015 10:15:48 PDT
Received: from FLEMING.seektech.com (unknown [50.59.178.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43ECEE00708
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 10:15:48 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Mon, 28 Sep 2015 10:14:43 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Mon, 28 Sep 2015 10:14:44 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Mon, 28 Sep 2015 10:14:44 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Khem Raj' <raj.khem@gmail.com>
Thread-Topic: [yocto] What's mounting this partition?
Thread-Index: AdD4gj7dMYvb0uMvQHWwzTxnHKcXegAPOD2AACFzGoAAMv00wA==
Date: Mon, 28 Sep 2015 17:14:43 +0000
Message-ID: <1443460395301.80501@seescan.com>
References: <9442195A2002444AA4EDA23A47FEAE09@PAULD>
	<60B7F68D-8325-47A6-936B-6CE9DA574210@gmail.com>,
	<88D02BC0E4774023AEAC272E942EFFB2@PAULD>
In-Reply-To: <88D02BC0E4774023AEAC272E942EFFB2@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's mounting this partition?
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
X-List-Received-Date: Mon, 28 Sep 2015 17:15:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If you have a sda1 drive, you can do:=0A=
=0A=
udevadm test /sys/class/block/sda1=0A=
=0A=
to get debug info.=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Paul D. DeRocco <pderocco@ix.netcom.com>=0A=
Sent: Sunday, September 27, 2015 2:52 AM=0A=
To: 'Khem Raj'=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] What's mounting this partition?=0A=
=0A=
> From: Khem Raj [mailto:raj.khem@gmail.com]=0A=
>=0A=
> are you installing udev-extraconf into image? IIRC that was=0A=
> doing it in my cases some time ago.=0A=
=0A=
That adds some rules to /etc/udev/rules.d, including automounting. I had=0A=
that in there for a day or so, because I also need to access an external=0A=
flash drive sometimes, but it had some insoluble issues, so I took it out=
=0A=
again. So none of those rules are present now, nor is the mount.sh script.=
=0A=
There are a bunch more rules in /lib/udev/rules.d, but none have anything=
=0A=
to do with mounting, as far as I can see.=0A=
=0A=
I wish there was a way I could see this mysterious mounting happen.=0A=
Nothing shows up in dmesg or in journalctl.=0A=
=0A=
--=0A=
=0A=
Ciao,               Paul D. DeRocco=0A=
Paul                mailto:pderocco@ix.netcom.com=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

