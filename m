Return-Path: <btv1==973eb3babd0==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67EA3E00C1F; Tue, 14 Jun 2016 09:01:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0153EE00C02
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 09:01:54 -0700 (PDT)
X-ASG-Debug-ID: 1465920113-0b39aa1573fec40001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id PeS5u6IrwR9HeoCj (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 14 Jun 2016 09:01:53 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 14 Jun 2016 09:01:53 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Tue, 14 Jun 2016 09:01:53 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Burton, Ross" <ross.burton@intel.com>, Jeffrey D Boyer
	<Jeffrey.D.Boyer@jci.com>
Thread-Topic: [yocto] Mounting USB drives on a "read-only-rootfs" based system
X-ASG-Orig-Subj: Re: [yocto] Mounting USB drives on a "read-only-rootfs" based
	system
Thread-Index: AdHFuMNyfcoYoG6/QWuF1oCmyic8agAQP+UAACAItAAAAQ2QgAABZ90A//+kcJ0=
Date: Tue, 14 Jun 2016 16:01:52 +0000
Message-ID: <1465920093479.94024@seescan.com>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
	<5760041E.1010809@topic.nl>
	<ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>,
	<CAJTo0LanVXcMNzpcaeA45L2+1Y1PGDYJt6hxgcJ-Q7k_LV0rbA@mail.gmail.com>
In-Reply-To: <CAJTo0LanVXcMNzpcaeA45L2+1Y1PGDYJt6hxgcJ-Q7k_LV0rbA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1465920113
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1204
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0142 1.0000 -1.9285
X-Barracuda-Spam-Score: -1.93
X-Barracuda-Spam-Status: No,
	SCORE=-1.93 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.30429
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Tue, 14 Jun 2016 16:01:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

There's also bind mounts as an option.


       The bind mounts.
              Since Linux 2.4.0 it is possible to remount part of the file =
hierarchy somewhere else.  The call is:

                     mount --bind olddir newdir

              or by using this fstab entry:

                     /olddir /newdir none bind

              After this call the same contents are accessible in two place=
s.  One can also remount a single  file  (on  a
              single file).

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, June 14, 2016 7:28 AM
To: Jeffrey D Boyer
Cc: yocto@yoctoproject.org; Christopher Larson
Subject: Re: [yocto] Mounting USB drives on a "read-only-rootfs" based syst=
em


On 14 June 2016 at 14:48, Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com<mailto:J=
effrey.D.Boyer@jci.com>> wrote:
FYI, I'm running 3.14 kernel.  Is this a job for aufs?  If so, how would I =
go about configuring it?

If you want to support arbitrary mounts then it's probably simplest to eith=
er change /media to be a symlink to /run/media, or put a tmpfs on /media.

Ross

