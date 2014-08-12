Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE43AE00799; Tue, 12 Aug 2014 09:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Aug 2014 09:21:00 PDT
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 565AAE006EF
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 09:21:00 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Tue, 12 Aug 2014 12:19:54 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Force recipe to provide specific file
Thread-Index: AQHPtkNNf9LpculLN0a+RIkxmXAz7g==
Date: Tue, 12 Aug 2014 16:19:54 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D5C7389@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: Re: Force recipe to provide specific file
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
X-List-Received-Date: Tue, 12 Aug 2014 16:21:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >   why not just provide a .bbappend file and an overriding file?=0A=
> =0A=
> Do you mean that I should integrate my version of the files into the=0A=
> ghostscript package?=0A=
> This is what I want to avoid because all cups-filters should reside in th=
e=0A=
> cups-filters package.=0A=
> =0A=
=0A=
It is not necessarily true that all cups-filter programs should reside in t=
he cups-filters package.=0A=
Remember that the CUPS system expects a PostScript printer, and the filters=
 in the cups-filters=0A=
package filter (or convert) non-PostScript input to PostScript.=0A=
=0A=
The ghostscipt package is a PostScript interpreter that is capable of takin=
g a PostScript=0A=
input file and producing output in several different formats.=0A=
Since the ghostscript package creates filters that convert files from PostS=
cript=0A=
to a different format, both the gstopxl and gstoraster filter programs requ=
ire the=0A=
ghostscript interpreter package for them to execute properly.=0A=
Note that the ghostscript recipe lists 'cups' in the DEPENDS.=0A=
=0A=
A system where the cups* packages are installed, but the ghostscript packag=
e=0A=
is not can still print to a printer capable of accepting PostScript print j=
obs.=0A=
Such a system would not be able to print to a PCL or dot-matrix printers ho=
wever.=0A=

