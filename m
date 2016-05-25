Return-Path: <btv1==95316c3f622==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE5C8E00D2C; Wed, 25 May 2016 09:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1191 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 May 2016 09:15:15 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0931E00D1C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 09:15:15 -0700 (PDT)
X-ASG-Debug-ID: 1464191722-0b39aa1571438a0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id u1vQqEywuJJ6fNvV (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 25 May 2016 08:55:22 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 25 May 2016 08:55:21 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 25 May 2016 08:55:21 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Martin Townsend <mtownsend1973@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] mount bind /var/lib and package management
X-ASG-Orig-Subj: Re: [yocto] mount bind /var/lib and package management
Thread-Index: AQHRtpdHhAY4h8457USmhs0sF5ygpZ/JzTTJ
Date: Wed, 25 May 2016 15:55:21 +0000
Message-ID: <1464191708134.90083@seescan.com>
References: <CABatt_w=BzX5MUg45tjWu+fRqZUr0r2QoduV3fiecfSsvoCw+w@mail.gmail.com>
In-Reply-To: <CABatt_w=BzX5MUg45tjWu+fRqZUr0r2QoduV3fiecfSsvoCw+w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1464191722
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1757
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.5000 1.0000 0.0000
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=MAILTO_TO_SPAM_ADDR
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.29894
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 MAILTO_TO_SPAM_ADDR URI: Includes a link to a likely spammer email
Subject: Re: mount bind /var/lib and package management
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
X-List-Received-Date: Wed, 25 May 2016 16:15:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Bind mount can allow mount to be two places:=0A=
=0A=
From the mount manpage:=0A=
=0A=
"       The bind mounts.=0A=
              Since Linux 2.4.0 it is possible to remount part of the file =
hierarchy somewhere else.  The call is:=0A=
=0A=
                     mount --bind olddir newdir"=0A=
=0A=
If you do this, then you have your files on tmpfs.=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Martin Townsend <mtownsend1973@gmail.com>=0A=
Sent: Wednesday, May 25, 2016 8:07 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] mount bind /var/lib and package management=0A=
=0A=
Hi,=0A=
=0A=
When using a read only rootfs it mount --binds /var/lib into=0A=
/var/volatile/lib which lives in tmpfs and makes sense.  The problem=0A=
is that I use dpkg but I'm assuming other package management tools use=0A=
/var/lib as their admin dir.=0A=
=0A=
Wouldn't this break package updates as the dpkg database files etc=0A=
will then be updated in tmpfs so a power cycle would means the changes=0A=
are lost? Or am I missing something?=0A=
=0A=
I tried to mount bind all directories except dpkg which I managed to=0A=
get working but other systemd services failed as they expected=0A=
/var/lib to be writeable (the service that creates /var/lib/machines).=0A=
I suppose I could alter this to remount / rw first but gave up at this=0A=
point.=0A=
=0A=
The next thing I tried was to use a new admindir for dpkg, ie=0A=
/lib/dpkg which I have working but I had to hack a lot of files=0A=
changing /var/lib to /lib including files for apt-get native.  I'm not=0A=
confident that I've got them all.=0A=
=0A=
Is there another solution I haven't thought of?=0A=
=0A=
Thanks in advance,=0A=
Martin.=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

