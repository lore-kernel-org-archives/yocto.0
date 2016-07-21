Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EF79E00E0C; Thu, 21 Jul 2016 15:08:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23CBE00E00
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 15:08:38 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g202so6111066pfb.1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 15:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=JIteNg8J4wXIh+CqebYkKt52vW4xwu4VSx+9AxJ6dBY=;
	b=xuktTg8yroCWNH2trngZEXCkFG5CRIIj3Q6mGO/eIe0jfvohSgsu6x7QBTNAa6e2Fb
	Z8eY01TuVdKc6Ri+JBj/7ZkmYzhxE875KSG7s79A2T1gOqdUEV7MQU+Kble8KyJka4lV
	szMhhCXIjpnpWZnzDwFH7BjgM5+SQp8rYzDxNBjf6QWyXiZUuJcCe6RayaKMMrTtVurS
	Ma5ORPUJySWydLxzAKNgMdAyO5oR2pG5GUTJCFs+d8dZE07HQxfo6FKW7bQ0QVg9NQxb
	MYdA0KuzLqlXnstGilZosG7uLZ4+hpEnPadmaaGV94RxbPJulAM7H9trRGio77Mk5+wu
	nFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=JIteNg8J4wXIh+CqebYkKt52vW4xwu4VSx+9AxJ6dBY=;
	b=ScrxlDQ05ogBWyv9WqC5Ll5gVhJ3F8+s8vNB3jmaCKPJnuTgVKBp1qqTILd+UZS/B5
	/BW0YTQLQTAg7YUqf7BvQjG8onYQJ41TayL7VKBtp4TGMPCyTpFzkKcqYz2clsuZ1VRn
	RjXlIAJcydChFytpRSGSqOFgyr2mhgLhkRtlKC0tA6yYwE4gigDwVDhCXggiYCPHdQLg
	2dzX1b9TM7FhKAiRPZ8xWd8tLFsoEPjYVlGjc3F1FXt6BzdxFn4aUU/q0+G0Jkc6Dawp
	Htlk5rHI0k0IRyO5di2s4qpBHctCDfjclaBj/IRpQgFFN4nl3rMzn+h0UeA32UIes5GM
	K+Zg==
X-Gm-Message-State: AEkoouto20RPE9MVZBgcp8dV/J29FbRkz0E81rCwOsRUxV4Bx0b9y5Mg7LZqPrCaBXAz1A==
X-Received: by 10.98.69.81 with SMTP id s78mr794459pfa.63.1469138916910;
	Thu, 21 Jul 2016 15:08:36 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:3c4d:dddf:359e:d5c?
	([2601:646:8882:b8c:3c4d:dddf:359e:d5c])
	by smtp.gmail.com with ESMTPSA id
	k78sm14544839pfa.78.2016.07.21.15.08.35
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 21 Jul 2016 15:08:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
Date: Thu, 21 Jul 2016 15:08:31 -0700
Message-Id: <662CD185-8933-4DEF-A46F-F4405875563D@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Thu, 21 Jul 2016 22:08:39 -0000
X-Groupsio-MsgNum: 31165
Content-Type: multipart/signed;
	boundary="Apple-Mail=_959E24DA-B533-4918-94C9-D8769EE2B778";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_959E24DA-B533-4918-94C9-D8769EE2B778
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F76B3260-ECAB-413B-B291-B7F16516C1D8"

--Apple-Mail=_F76B3260-ECAB-413B-B291-B7F16516C1D8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 21, 2016, at 2:59 PM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 21 July 2016 at 22:51, Vijayakumar Badiger <vijayakumarmb@gmail.com =
<mailto:vijayakumarmb@gmail.com>> wrote:
> =
/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-li=
nux/system-core/git-r17/system/core/libsync/sync.c:24:24: fatal error: =
linux/sync.h: No such file or directory
> compilation terminated.
> make[2]: *** [libsync_la-sync.lo] Error 1
>=20
> That's not a standard user-space kernel header and doesn't appear to =
be a standard header at all, so the question is where do you expect that =
header to come from?
>=20

Its from android sync driver for kernel, which is not upstreamed yet.

> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F76B3260-ECAB-413B-B291-B7F16516C1D8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2016, at 2:59 PM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 21 July 2016 at 22:51, Vijayakumar Badiger =
<span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank" =
class=3D"">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
class=3D"">/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarc=
h64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24: =
fatal error: linux/sync.h: No such file or directory</div><div =
class=3D"">compilation terminated.</div><div class=3D"">make[2]: *** =
[libsync_la-sync.lo] Error 1</div></blockquote></div><br class=3D"">That's=
 not a standard user-space kernel header and doesn't appear to be a =
standard header at all, so the question is where do you expect that =
header to come from?</div><div class=3D"gmail_extra"><br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>Its from android sync driver for kernel, which is =
not upstreamed yet.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_F76B3260-ECAB-413B-B291-B7F16516C1D8--

--Apple-Mail=_959E24DA-B533-4918-94C9-D8769EE2B778
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleRR+MACgkQuwUzVZGdMxTvBgCeLruVGqLIQsf6JfYFec7DUM2k
NeQAnj7ZC3QntpWwFc2WalYD/JgW+ON/
=LvrL
-----END PGP SIGNATURE-----

--Apple-Mail=_959E24DA-B533-4918-94C9-D8769EE2B778--
