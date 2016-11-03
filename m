Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D6BDE00C19; Wed,  2 Nov 2016 22:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A23E00B9E
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 22:58:02 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id y68so3801658pfb.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 22:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=o+EIRbCHMK2eM9dSBsB4Rtf0C4auPVBrE2ieWZ19X9M=;
	b=ML8U4Qj/0g3SlmYc5UUNupotGcLbF5WqBraVuhqEuWNVGT+j4Aunb4O/BeyPDpuhra
	g1iyud9ugNA85ZHUpZscZQAPHX+bYD1pAG+73SWZi2XCgugmMJx5x/vCRRv5P830MrE5
	4Y2QyQaUmKCgThxdotL7p+CQXKJowiMDqV0vEmo1Gj71gAyAetQdulrT0MOUPjRecG2I
	aPcJ736BmhaEB7WLoH747PHk8cPlp3rMeCICxx2Poz2zFCeOD5T08uInEFGmbMKFrSqz
	gMNKuBV2ArYBztOZ4xRtZyfmpemcd5+xs4t8RUDdzV5hgF00wvmVIAOtgJm0KW6nw0b6
	2VQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=o+EIRbCHMK2eM9dSBsB4Rtf0C4auPVBrE2ieWZ19X9M=;
	b=AORoBiimt+fXvEe+dwnWOEXusifGM/s4cmNIJ1CKJF5L+mbX8Q5lkNBjU5wWLquyL1
	q0xR+mbNf679Tnn5soE9mdWUfw94P4ffo2gk9jWXSwXhH+AOxLOXWrvtUSAMimmvVw5X
	jeBf3P4YF+gTSyJINVQ5gAPNXHD5xxUMAqqFtIbtiCWxSY59hoqTZbzS7RDA/UqNh/T3
	pGc2QAEOLho4UXfykh4Krvk/Wt+uLBlSkmBYOQBL8sJMsaT+y24eEHZrP7L4qwRaaKZ1
	L++UqsRuFui2dO4LbefoNOnOjKS8PrG22Ml3F2p8yEmRnU9c75n55l1vF9Rl+Y9fA3Md
	OSiA==
X-Gm-Message-State: ABUngvdVaskKSyH+HEUUpB5oO0faxumgysUUtyikTHaoDYBwDneVuBpmmDYbSDdyV7wucA==
X-Received: by 10.98.97.71 with SMTP id v68mr13842226pfb.133.1478152682180;
	Wed, 02 Nov 2016 22:58:02 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:99b5:6af1:c0c3:9e76?
	([2601:646:8882:b8c:99b5:6af1:c0c3:9e76])
	by smtp.gmail.com with ESMTPSA id
	g78sm9064606pfe.19.2016.11.02.22.58.00
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 22:58:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161102082830.584afd43@nuc.betafive.co.uk>
Date: Wed, 2 Nov 2016 22:58:00 -0700
Message-Id: <56A3639E-D5FD-45C7-AB37-AAE334C5BCBE@gmail.com>
References: <20161101134647.11370-1-net147@gmail.com>
	<20161102082830.584afd43@nuc.betafive.co.uk>
To: Paul Barker <paul@paulbarker.me.uk>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: Fix appending to RDEPENDS
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
X-List-Received-Date: Thu, 03 Nov 2016 05:58:04 -0000
X-Groupsio-MsgNum: 32795
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C16E2839-C023-4703-B608-9E86F6767FDC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C16E2839-C023-4703-B608-9E86F6767FDC
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Nov 2, 2016, at 1:28 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> 
> On Wed,  2 Nov 2016 00:46:47 +1100
> Jonathan Liu <net147@gmail.com> wrote:
> 
>> The += operator should not be used in combination with overrides as it
>> will clear any existing values in the variable.
>> 
>> Example:
>> FOO = "bar"
>> FOO_rpi += "baz"
>> 
>> The above example would result in FOO being equal to " baz" instead of
>> "bar baz".
>> 
>> The bbappend is changed to use a wildcard instead of a specific
>> version to simplify updating U-Boot.
>> 
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>> recipes-bsp/u-boot/u-boot_%.bbappend       | 1 +
>> recipes-bsp/u-boot/u-boot_2016.03.bbappend | 1 -
>> 2 files changed, 1 insertion(+), 1 deletion(-)
>> create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
>> delete mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend
>> 
>> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend
>> b/recipes-bsp/u-boot/u-boot_%.bbappend new file mode 100644
>> index 0000000..3781666
>> --- /dev/null
>> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
>> @@ -0,0 +1 @@
>> +RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
>> diff --git a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
>> b/recipes-bsp/u-boot/u-boot_2016.03.bbappend deleted file mode 100644
>> index 35dfc37..0000000
>> --- a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
>> +++ /dev/null
>> @@ -1 +0,0 @@
>> -RDEPENDS_${PN}_rpi += "rpi-u-boot-scr"
> 
> Looks good. Thanks for picking this up!

I have staged it for testing

--Apple-Mail=_C16E2839-C023-4703-B608-9E86F6767FDC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlga0egACgkQuwUzVZGdMxTwlwCfdXoViF3WwUbC780asViXAcqI
Eb0AmQFd4nZufC45yhkfLKLQvI0g3jQZ
=p2rd
-----END PGP SIGNATURE-----

--Apple-Mail=_C16E2839-C023-4703-B608-9E86F6767FDC--
