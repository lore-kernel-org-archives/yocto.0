Return-Path: <timo.j.pulkkinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D3B3E00815; Tue, 27 Jan 2015 11:19:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (timo.j.pulkkinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22594E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:19:15 -0800 (PST)
Received: by mail-we0-f175.google.com with SMTP id p10so16773958wes.6
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=iFxCSqlGqtCCFxhUg32PmuEdSMsmHvxDXETS1+TCjhU=;
	b=P6gOiAjVV8se9R9Zn1x6xmVq2G91fo8yCUvnjaEvF6HubmJRzTWJYY1WB6M+TpY2J4
	GU574MpCa7Ri4GRn83zkBpWS1QxIYJQNPO1IE5vQqZ3DCpEMEQj/pwBz7nmMmp+aOxvR
	DpeRDumrnzL/8utm2G1bTMzi8h0HiF9KMg1j4fKPX4POO37mJpa7sKf6n11t2d3mQnLo
	+cSZ2w1hLghcfzw3AeaCMW5VMvi2qtmaEHrB5uhEjuM2PmTc5tbT/DfCLsaOYNnDZdYb
	biI5ZNmPE4na/NQzvET0Of4EJTyoGmf8YUZ3mjI7TmC4SdybmCAmXGN8vxoSK7WyjrSj
	McKg==
X-Received: by 10.180.208.74 with SMTP id mc10mr8918665wic.51.1422386354028;
	Tue, 27 Jan 2015 11:19:14 -0800 (PST)
Received: from [192.168.1.3] (mobile-internet-2e84bc-7.dhcp.inet.fi.
	[46.132.188.7])
	by mx.google.com with ESMTPSA id g10sm19346486wic.7.2015.01.27.11.19.12
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 27 Jan 2015 11:19:13 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
In-Reply-To: <CAJTo0LbHT2Pksxog-aaHravsy9sqyK1pdqz+rhsDWUGkX_7FTQ@mail.gmail.com>
Date: Tue, 27 Jan 2015 21:19:01 +0200
X-Mao-Original-Outgoing-Id: 444079141.277728-f72bf8e6160a77ce9c15b6dd50b3cecc
Message-Id: <E690085A-252E-472B-8683-4E4590CDB2AA@gmail.com>
References: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
	<CAJTo0LbHT2Pksxog-aaHravsy9sqyK1pdqz+rhsDWUGkX_7FTQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Google Chrome recipe and systemd => how to satisfy runtime requirement for libudev.so.0?
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
X-List-Received-Date: Tue, 27 Jan 2015 19:19:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 27.1.2015, at 14.32, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>>=20
>> On 27 January 2015 at 11:46, Timo Pulkkinen =
<timo.j.pulkkinen@gmail.com> wrote:
>>=20
>> error: Can't install google-chrome-40.0.2214.91+1-r0@x86_64: no =
package provides libudev.so.0()(64bit)
>=20
> My guess is that you didn't wipe away your tmp when changing =
DISTRO_FEATURES, which leads to the sysroot and package deploy =
directories having both udev and systemd in.
>=20
> Try deleting your tmp/ directory (sstate-cache will be used to rebuild =
everything quickly) and then cleaning Chrome (bitbake -ccleansstate =
google-chrome) before building the image again.
>=20
Hello,

tried this (I wasn't sure if I had done -ccleanstate for google-chrome =
before together after removing the tmp), but it doesn't help. Sysroot =
correctly contains /lib/libudev.so.1 (libudev.so.1.6.0, systemd).
tmp/deploy/rpm/ contains udev rpms also - is this a problem, or do they =
just get built before systemd preference takes over?

I looked more closely on my google-chrome recipe build (bitbake -v) and =
it warns about missing library already on (i think) qa task:=20
NOTE: Couldn't find shared library provider for libudev.so.0, used by =
files: =
/.../poky/nuc/tmp/work/x86_64-poky-linux/google-chrome/40.0.2214.91-1-r0/p=
ackages-split/google-chrome/opt/google/chrome/chrome

Is there really a provider for libudev.so.0 when using systemd?



Timo




