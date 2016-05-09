Return-Path: <btv1==9370c4ed2b5==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC041E004A0; Mon,  9 May 2016 08:51:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1114 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 May 2016 08:51:19 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D5EE00343
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 08:51:19 -0700 (PDT)
X-ASG-Debug-ID: 1462807964-0b39aa668a27d270001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id LDtP7fRzRzolP9Zx (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 09 May 2016 08:32:44 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Mon, 9 May 2016 08:32:44 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Mon, 9 May 2016 08:32:44 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Paul Knopf <pknopf@medxchange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Recipe that creates empty /var/log directory is
	auto-mounted to /var/volatile/log
X-ASG-Orig-Subj: Re: [yocto] Recipe that creates empty /var/log directory is
	auto-mounted to /var/volatile/log
Thread-Index: AQHRqfuDkAXa4CrD+Ui2JZjOPREC6Z+wu89H
Date: Mon, 9 May 2016 15:32:43 +0000
Message-ID: <1462807953706.30266@seescan.com>
References: <CABfz71cxNpHg5u13k_brL=2+fGTc2zK7E-OTMW3Gn9ndsWsnMw@mail.gmail.com>
In-Reply-To: <CABfz71cxNpHg5u13k_brL=2+fGTc2zK7E-OTMW3Gn9ndsWsnMw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1462807964
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1565
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.4999 1.0000 0.0000
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No, SCORE=0.50 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.29430
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.50 BSF_RULE7568M          Custom Rule 7568M
Subject: Re: Recipe that creates empty /var/log directory is	auto-mounted to /var/volatile/log
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
X-List-Received-Date: Mon, 09 May 2016 15:51:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Some people choose a read-only file system. Thus /var/log is not writable.


However, some software expects to use the hard coded path of /var/log.


Thus, there's a symlink to the ramdisk to solve both problems.

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Paul Knopf <pknopf@medxchange.com>
Sent: Monday, May 9, 2016 7:02 AM
To: yocto@yoctoproject.org
Subject: [yocto] Recipe that creates empty /var/log directory is auto-mount=
ed to /var/volatile/log

I have a simple recipe that places files on the system.

-------------
do_install() {
  # create this directory, because our "normal" fstab file will mount a log=
 partition to it.
  install -d ${D}/var/log
  install -d ${D}${sysconfdir}
  install -m 0644 ${WORKDIR}/fstab-normal ${D}${sysconfdir}/fstab
}
-------------

The fstab-normal file has an entry that mounts a partition to this created =
/var/log directory.

-------------
/dev/mmcblk0p3       /var/log             auto       defaults  0  0
-------------

However, when the package get's created, /var/log gets pointed to /var/vola=
tile/log. Where is this happening, and why?

-------------
pknopf@ubuntu:~/Git/recipes/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-g=
nueabi/base-files-fstab-normal/1.0-r0/package$ tree
.
??? etc
?   ??? fstab
??? var
    ??? log -> volatile/log
    ??? volatile
        ??? log

-------------

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com<mailto:pknopf@medxchange.com>

