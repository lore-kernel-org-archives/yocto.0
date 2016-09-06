Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF87E00FB7; Tue,  6 Sep 2016 11:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFBDAE00FA6
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 11:11:05 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 128so399200pfb.0
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 11:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=XXi+bunQqi+YcVI7j8RIQBjNon9XuqlZ4YcIUshNM3g=;
	b=hct3AM6jVqWqUnf7dp0W3fSsgGtMt99uh7g1mnLYX2cgf1x/OiIqJ9xXOlvVwNnFdR
	1rDtCSnTOxx0V/kVUlMpazkby/JyQWc5SZn3k+Avmmtv852LD2BnL9WLt6Dni74R2LFM
	q0OK+myI9QQlvyGAVw1O20ntV1AJIexz4qiP8wn0zdpolLwCHSC1EtxQ5cuSoI4hMoNC
	IW8r5h3HSnZiDTJDZQPFy0z8Mp8h7SCV1/3qfLh+Rt9lXYaHKvwGs86Lp3R3f3Z/VWp5
	Gn4XpSiux6vYZ3BwWS2mxhp7VhRNzajLrzORGK4j1kTWm9HpvcgsACXA9Ef1gMRCIixg
	OVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=XXi+bunQqi+YcVI7j8RIQBjNon9XuqlZ4YcIUshNM3g=;
	b=IBfwwUIp1+8BIrJ03QYI544R0fbljcf8Sx1VXXVI8sg4pmTGI4n9GbbwqE6P1UVa9m
	xxrmsUwpqfyNa7tYy4/dJCE/uE7khPDmf60NY8J5nebVksBqn8Rj2krt/QL8oEcJWnO3
	2THNt5hJLpMeGLHWx8JKouZVYhfk1h2V8bKxiKCMVOmm2/4V5ZegOMX3QZt1GTbWPRWy
	TN4EORhDkdndi88ZMX4xwKs6rKAzFnFe6vc4360xQB+2Eo9AGv5CRHVVkCd+wvsSzPb2
	NzbUaxC8jjdyOXtVHAS3fFuzec41aBsCMmMzvEA0oyObDVMqaE5zIYEiuE7xoKn1Y1SC
	6G+w==
X-Gm-Message-State: AE9vXwOXvKtMuOAFZRFOKzBwnyvFQa75mRTXieH4MhJN9gw8+3LgpnVYO40Z1IZ1pAF8wg==
X-Received: by 10.98.144.144 with SMTP id q16mr74861718pfk.98.1473185464830;
	Tue, 06 Sep 2016 11:11:04 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id
	75sm42589342pfw.92.2016.09.06.11.11.03
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 11:11:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAGiJk9fFfgezxUdR3+bEXmoRhqEubNgRQTs8yeBc3-QoBE5Wyg@mail.gmail.com>
Date: Tue, 6 Sep 2016 11:11:06 -0700
Message-Id: <5A1D0C5D-A6AF-4C6F-A058-1E07935E8A93@gmail.com>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
	<CAGiJk9fFfgezxUdR3+bEXmoRhqEubNgRQTs8yeBc3-QoBE5Wyg@mail.gmail.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Pietro <pulsarpietro@posteo.net>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Tue, 06 Sep 2016 18:11:23 -0000
X-Groupsio-MsgNum: 31807
Content-Type: multipart/signed;
	boundary="Apple-Mail=_826550EB-E0D1-4916-A561-DE9B944438D9";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_826550EB-E0D1-4916-A561-DE9B944438D9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 1, 2016, at 3:57 AM, Samuel Stirtzel =
<s.stirtzel@googlemail.com> wrote:
>=20
> 2016-09-01 12:34 GMT+02:00 Jussi Kukkonen <jussi.kukkonen@intel.com>:
>> On 1 September 2016 at 13:21, Herman van Hazendonk <me@herrie.org> =
wrote:
>>>=20
>>> Hi Pietro,
>>>=20
>>> You can override the recipe by adding a recipe for version 3.0.0+ in =
your
>>> own layer and making sure your layer has a higher priority in =
bblayers.conf.
>>> See for example what we do in our project:
>>>=20
>>>=20
>>> =
https://github.com/webOS-ports/webos-ports-setup/blob/testing/conf/bblayer=
s.conf
>>>=20
>>> openembedded-core provides ofono 1.1.7 for example with
>>> =
https://github.com/openembedded/openembedded-core/tree/krogoth/meta/recipe=
s-connectivity/ofono
>>>=20
>>> However we want to use ANOTHER version of ofono (1.1.7 based, but =
from a
>>> different repo/project).
>>>=20
>>> So we have our own .bbappend at
>>> =
https://github.com/webOS-ports/meta-webos-ports/blob/krogoth/meta-luneos/r=
ecipes-connectivity/ofono/ofono_git.bbappend
>>> where we specify the different repo etc to use.
>>>=20
>>> This doesn't apply 1:1 in your case, but you could simply add a
>>> protobuf_3.0.0.bb in your own layer and it should build that =
instead. Just
>>> make sure you have your layer at a higher position compared to
>>> meta-openembedded in your bblayers.conf
>>=20
>>=20
>> In the normal case (a simple upgrade to the newest version) the best =
choice
>> would be to send a upgrade patch to openembedded-devel list: that way =
you
>> never have to maintain it in your own layer.
>>=20
>=20
> Hi,
>=20
> protobuf 2.x and 3.x are incompatible, there is also a protobuf3
> recipe in meta-maker.
>=20

why is it in meta-maker and not in meta-oe ?

>=20
> --
> Regards
> Samuel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_826550EB-E0D1-4916-A561-DE9B944438D9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfPBroACgkQuwUzVZGdMxRImwCeMrOsMePFV8JuENbWAH0ixnEO
+oMAnA6EkTuTzLkYNP50CDgUk9+bwJ8+
=PsGz
-----END PGP SIGNATURE-----

--Apple-Mail=_826550EB-E0D1-4916-A561-DE9B944438D9--
