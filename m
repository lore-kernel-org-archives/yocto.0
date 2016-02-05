Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E56E00D28; Fri,  5 Feb 2016 08:37:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A38E00D14
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 08:37:53 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 5 Feb 2016 08:37:51 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 5 Feb 2016 08:37:52 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 5 Feb 2016 08:37:51 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Nathan Sowatskey <nathan@nathan.to>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] libQt5Network.so.5 - How does one get that please?
Thread-Index: AQHRX2rslt9qmiRHeEO3Q+F9THfYrp8dsiKA///1hBw=
Date: Fri, 5 Feb 2016 16:37:51 +0000
Message-ID: <1454690157417.180@seescan.com>
References: <6A2B2841-46AB-4B44-A675-CF5B1EEF545D@nathan.to>,
	<26F7901E-8417-4F1F-B758-088CE182C2D2@nathan.to>
In-Reply-To: <26F7901E-8417-4F1F-B758-088CE182C2D2@nathan.to>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.98]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: Re: libQt5Network.so.5 - How does one get that please?
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
X-List-Received-Date: Fri, 05 Feb 2016 16:37:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Did you try =0A=
=0A=
 $ ldd program-name=0A=
=0A=
This should tell you which libraries are missing and where it is looking.=
=0A=
=0A=
Then you can do:=0A=
=0A=
 $ find / -name libname.so=0A=
=0A=
To find them.=0A=
=0A=
Finally, you can fix your /etc/ld.so.conf with the path to your libs.=0A=
=0A=
Then do=0A=
=0A=
 $ ldconfig # refresh library cache so your libs are found=0A=
=0A=
And you should be able to run your app.=0A=
=0A=
Then, obviously, this can all be put into a bitbake recipe.=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Nathan Sowatskey <nathan@nathan.to>=0A=
Sent: Friday, February 5, 2016 1:13 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] libQt5Network.so.5 - How does one get that please?=0A=
=0A=
It turns out that the build is correct, in that the libraries are there, bu=
t the test program I am using is not finding them :-/=0A=
=0A=
So, for future reference, at least part what is required to work is correct=
 in my build.=0A=
=0A=
Regards=0A=
=0A=
Nathan=0A=
=0A=
> On 4 Feb 2016, at 17:39, Nathan Sowatskey <nathan@nathan.to> wrote:=0A=
>=0A=
> Hi=0A=
>=0A=
> My application has a dependency on libQt5Network.so.5.=0A=
>=0A=
> I have my build configured here:=0A=
>=0A=
> https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf=0A=
>=0A=
> I expect that some combination of the BBLAYERS and the IMAGE_INSTALL_appe=
nd should allow me to get that library in my Yocto image.=0A=
>=0A=
> I am not sure which layer has the qtnetwork recipe in it, as I can=92t fi=
nd that here:=0A=
>=0A=
> http://layers.openembedded.org/layerindex/branch/master/layers/=0A=
>=0A=
> Any ideas gratefully received.=0A=
>=0A=
> Many thanks=0A=
>=0A=
> Nathan=0A=
>=0A=
> =97=0A=
> Nathan John Sowatskey=0A=
> Consulting Engineer - Programmable Infrastructure, DevOps, IoT and SDN=0A=
> nathan@nathan.to=0A=
> www.linkedin.com/in/nathandevops=0A=
> XMPP: nathandotto@im.koderoot.net=0A=
> Google: nathanjohnsowatskey@gmail.com=0A=
> Skype: nathan_sowatskey=0A=
> Twitter: NathanDotTo=0A=
> GitHub: https://github.com/DevOps4Networks=0A=
> http://www.kipling.org.uk/poems_if.htm=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

