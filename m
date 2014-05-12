Return-Path: <PMcGougan@topcon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50810E00B70; Sun, 11 May 2014 22:57:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from smtpca.topcon.com (unknown [12.107.178.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF0DCE00AEE
	for <yocto@yoctoproject.org>; Sun, 11 May 2014 22:56:55 -0700 (PDT)
X-ASG-Debug-ID: 1399874208-0526480f281b7010001-yzSStA
Received: from LIV-EXCHCAS1.TOPCON.com (liv-exchcas1.topcon.com [10.1.4.56])
	by smtpca.topcon.com with ESMTP id JwYFrv6hpc4C9Zhv for
	<yocto@yoctoproject.org>; Sun, 11 May 2014 22:56:48 -0700 (PDT)
X-Barracuda-Envelope-From: PMcGougan@topcon.com
Received: from ADL-EXCHCAS1.TOPCON.com (10.48.4.102) by
	LIV-EXCHCAS1.TOPCON.com (10.1.4.56) with Microsoft SMTP Server (TLS) id
	14.3.123.3; Sun, 11 May 2014 22:56:48 -0700
Received: from ADL-EXCHMBX1.TOPCON.com ([169.254.1.232]) by
	ADL-EXCHCAS1.TOPCON.com ([10.48.4.102]) with mapi id 14.03.0123.003;
	Mon, 12 May 2014 15:26:45 +0930
From: Paul McGougan <PMcGougan@topcon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question / issue
X-ASG-Orig-Subj: RE: [yocto] Question / issue
Thread-Index: Ac9rQ7UAhL6Gq3gDT7KT8K1XExAUWAAAcm4AAJfqkSA=
Date: Mon, 12 May 2014 05:56:45 +0000
Message-ID: <C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<536CE9B4.6050303@windriver.com>
In-Reply-To: <536CE9B4.6050303@windriver.com>
Accept-Language: en-GB, en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.1.46]
MIME-Version: 1.0
X-Barracuda-Connect: liv-exchcas1.topcon.com[10.1.4.56]
X-Barracuda-Start-Time: 1399874208
X-Barracuda-URL: http://10.1.4.69:8000/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at topcon.com
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.5738
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 12 May 2014 05:57:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
=A0
> > Secondly, (and this is our main issue) I have found that by adding the=
=20
> > do_install_append function, even if it is completely empty, whenever I=
=20
> > try to bitbake anything that depends on the kernel, that bitbake always=
=20
> > re-runs the kernel install stage, even when there have been no changes.=
=20
> > Literally I can run a bitbake, then run the same bitbake command again,=
=20
> > and both times the kernel install stage gets run (this is a problem=20
> > because it takes a long time to run). It appears to be happening becaus=
e=20
> > the stampfile is not found every time (the hash appears to be wrong).=
=20
> > Is this a bug? Is there a fix or work-around for this problem?

> In this front, I'm not the best reference. Checking the sstate signature
> might help, it should show which variables are being used .. and possibly
> invalidating the signature, triggering the steps to run again.

Thanks Bruce.

Just for reference of anyone else who runs into a similar issue our issue w=
as:
1. The do_install_append function was not *really* empty, the content of it=
=20
was commented out.
2. The dependency parser when parsing recipes not only looks for content
changes, but for also for changes to the values of referenced variables, and
unfortunately it still performs variable-value substitution in commented-out
code. In our case, we had the variable $DATETIME in there (but commented
out), this caused the dependency checker to substitute in the current value=
 for
DATETIME which of course changed on each run.

The fix was to add:
do_install[vardepsexclude] +=3D "DATETIME"

Regards,
Paul McGougan

Confidentiality Notice:  This message (including attachments) is a private =
communication solely for use of the intended recipient(s).  =0D
If you are not the intended recipient(s) or believe you received this messa=
ge in error, notify the sender immediately and then delete this =0D
message.  Any other use, retention, dissemination or copying is prohibited =
and may be a violation of law, including the Electronic =0D
Communication Privacy Act of 1986."

