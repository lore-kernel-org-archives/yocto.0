Return-Path: <btv1==899fd463ce1==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45F2DE00CA0; Fri,  1 Apr 2016 09:51:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1030 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Apr 2016 09:51:17 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD49E00C9A
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 09:51:17 -0700 (PDT)
X-ASG-Debug-ID: 1459528445-0b39aa668ae6990001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id 4Y7F6z0Q8tARvtqN (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 01 Apr 2016 09:34:05 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 1 Apr 2016 09:34:05 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 1 Apr 2016 09:34:05 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Debian Stretch build error "Install SDL devel"
X-ASG-Orig-Subj: Re: [yocto] Debian Stretch build error "Install SDL devel"
Thread-Index: AQHRi6Bs/OcTJN+KDUy6xQhciuh9A590662AgABlFYg=
Date: Fri, 1 Apr 2016 16:34:05 +0000
Message-ID: <1459528442651.16321@seescan.com>
References: <32E0B8718AB0814882747D62286E529302958AF532@ex10.portwell.com.tw>
	<1459379742245.35790@seescan.com>
	<1459464929161.35262@seescan.com>,
	<CAJ86T=UKMP7xh-BoC4st5B-Pq2eJ=3qrUjq2jTjf_GhctTuu+A@mail.gmail.com>
In-Reply-To: <CAJ86T=UKMP7xh-BoC4st5B-Pq2eJ=3qrUjq2jTjf_GhctTuu+A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.98]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1459528445
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1957
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.5000 1.0000 0.0000
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.28367
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debian Stretch build error "Install SDL devel"
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
X-List-Received-Date: Fri, 01 Apr 2016 16:51:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Confirmed that commenting out the following in my build/conf/local.conf all=
owed me to build qemu-native. (I don't need qemu at all).

# PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
# PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
# ASSUME_PROVIDED +=3D "libsdl-native"

Thank-you for the quick and accurate reply.

Frederick

From: Andre McCurdy <armccurdy@gmail.com>
Sent: Thursday, March 31, 2016 8:30 PM
To: Fred Ollinger
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Debian Stretch build error "Install SDL devel"

On Thu, Mar 31, 2016 at 3:55 PM, Fred Ollinger
<Fred.Ollinger@seescan.com> wrote:
> I know that Debian Stretch is not supported, but I'd like to help shake o=
ut the errors to get support.
>
>
> I'm on poky
>
>
> commit 9fd145d27ec479668fac490a9f1078089f22bf59
>
>
> I tried to build qemu-native and it failed with the following:
>
>
> | ERROR: User requested feature sdl
> |        configure was not able to find it.
> |        Install SDL devel
>
>
> libsdl1.2-dev is installed.
>
>
> Any ideas?

See the "Qemu configuration" section of conf/local.conf.

You can either disable qemu support for SDL by commenting out the
following lines:

  PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
  PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"

Or (if you do actually need qemu with SDL support enabled) try using
OE's version of libsdl instead of the one provided by the host system,
by commenting out:

  ASSUME_PROVIDED +=3D "libsdl-native"

Note that using OE's version of libsdl was only recently enabled in
OE's master branch (see below) so may or may not work with the Dizzy
based release you are using.

  http://git.openembedded.org/openembedded-core/commit/?id=3D81f009d173f245=
01ab0e04d845db74ecb5f8e332


>
> Frederick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

