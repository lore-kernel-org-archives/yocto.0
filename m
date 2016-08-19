Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EEA5E00F41; Fri, 19 Aug 2016 06:40:44 -0700 (PDT)
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
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9CE5E00ED8
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 06:40:41 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id vy10so3477339pac.0
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 06:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=fCfadcT7KASyZ2ZqNkVB0SMEj30C2uWP7IGMUQlMRsg=;
	b=b+eeyd7Mldq1S+O5mM+a6jtsgDf8+m/WMKgMAtfIHYi+RHPE6AFLbrXS2cWTwNMWfL
	KVRHhLd/5Cq0imdrhJ80e8QQkJxeHQNXsTWjNUg41zH3dx3FXd7aHJoErJz0nuzC9I+c
	zc1gktOcnFT3oIQ53lA+UMoC0zEF6BbEZlPTOxQWUr5hIrZGYSyptgJKGV8mnkX4YRAf
	wlKJo1obXmdduFqDtFau2qTUd41MdITmC/5ydi9Su9jM0qAtPn0d13Zt8GAuXzuvMrHn
	knKe8YvpP6T24joHj4oTzSrI0A9Pdd5Q8Z84bz7gvj53vwwfbgynFNkqNiX/+dICeCjA
	6nBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=fCfadcT7KASyZ2ZqNkVB0SMEj30C2uWP7IGMUQlMRsg=;
	b=YbzhoQnpFc2uZghqoN6z5nPfao3fC1jpNKOAezTvWqj3SN+63jGTVm2kXm+eQ3Ba9V
	3JlihGoueVqtW3+oYloKWQpbpnjNxzdPXa+UrAuYG4Qk0eIOAYQcs3RxYqZuoPlPibRC
	SGenz9S2nc9WjfgPPGmE6TC+6yWWTs+6D6+GW0IVPpVqszSWMEKkjkMP+8qkbbnyYobG
	rkYSz8GQntK6bjjFRME1ggAGxT+rVERzhyz0LOmwAOU6ctZk9YAijYDL9hT5/lF4i4M1
	uc41i7MuHnp1+0tXzUaj3ZT+XM12nTtwGKkULCa2MXocn8M5rdts1Hp2CjKNZa7CahL0
	Q7qQ==
X-Gm-Message-State: AEkoouuDTU4VRovXctD9ihj2kx6BcidhnUARUXp6eN8kGUiZFW0gKrSQkl3veMgd6DtnPQ==
X-Received: by 10.66.233.38 with SMTP id tt6mr13633235pac.99.1471614041057;
	Fri, 19 Aug 2016 06:40:41 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	n69sm6843388pfa.77.2016.08.19.06.40.39
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 19 Aug 2016 06:40:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1471601644.16712.23.camel@linuxfoundation.org>
Date: Fri, 19 Aug 2016 06:40:36 -0700
Message-Id: <D00F6189-93E5-47F1-B2CB-E07F1F0C2B50@gmail.com>
References: <888B09F3-F9A2-49C1-86E8-E33FA1FE6521@gmail.com>
	<1471601644.16712.23.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc 6.2 RC1 update
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
X-List-Received-Date: Fri, 19 Aug 2016 13:40:44 -0000
X-Groupsio-MsgNum: 31553
Content-Type: multipart/signed;
	boundary="Apple-Mail=_98E4BD7B-A531-41FA-9898-13E82B9EB779";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_98E4BD7B-A531-41FA-9898-13E82B9EB779
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 19, 2016, at 3:14 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Tue, 2016-08-16 at 11:55 -0700, Khem Raj wrote:
>> Hi All
>>=20
>> I have put together recipe upgrade for upcoming gcc 6.2 release now
>> that it entered RC phase. With gcc 6.2 the recipes are using tarballs
>> instead of git fetcher as promised :)
>> Please help testing it out in your setups and report any issues you
>> see.
>>=20
>> The commit you need to cherry-pick for OE-core is this one
>>=20
>> https://github.com/kraj/openembedded-core/commit/0319b603761a16e65d70
>> 4336112c3709a8bf771c
>>=20
>> Thank you for your help
>=20
> I put this through the autobuilder and it passed so I've merged it. I
> did this quickly as we're putting a "pre M3" build through a QA cycle
> and I wanted to get some of the more invasive changes into that build
> so we don't have a stampeding herd of patches breaking everything
> coming up to the final feature freeze for 2.2.
>=20
> In other news, we are now also testing musl world builds on the
> autobuilder as part of regular testing.

Fantastic !

>=20
> Cheers,
>=20
> Richard
>=20
>=20


--Apple-Mail=_98E4BD7B-A531-41FA-9898-13E82B9EB779
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle3DFkACgkQuwUzVZGdMxR4twCaA7Q1+zA2v8piVasrBZsoJH/X
7ckAmwXHGX1swoOQxFU66nO+o3DaPA6i
=YOP1
-----END PGP SIGNATURE-----

--Apple-Mail=_98E4BD7B-A531-41FA-9898-13E82B9EB779--
