Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E92E0076F; Mon, 14 Jul 2014 05:48:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B135E0053E;
	Mon, 14 Jul 2014 05:48:23 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id k48so3115768wev.11
	for <multiple recipients>; Mon, 14 Jul 2014 05:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=PxORxiTPEtZLTWTvzhIMQehD+oNp6Kao1uTAJ4QJgZc=;
	b=RPirM0mPr0zQOFdzatQXp97TykPMMC08I0WoTo7npclw92phy2yEeRzDvKz8trDvTC
	2qSPBwEX2wIHWQH1nUhrdJXhkymJ6vEVBu+YmO+YMmmnk7g8NWz51K8LVusMq4/Ci8Gh
	I7TENI0IElY3Ljiso+mQA/MXTiB50chc/JWvyFICC7oQxPSpl7KK+Gz3P4MuPQh0+S2t
	sSGYXReU1vVvoih9kIr1koSKkh7oevyCXVbcKz5maLFfRIqt/gniBuKJbQOqzRlHvqWT
	80iQ2+3u8gQZgbzfJy/hqO4q+k9fMqo9ORJQHBIzn4mSttaafeIkQrw4ZFdb+eNSzMhG
	V4rQ==
X-Received: by 10.180.188.166 with SMTP id gb6mr11314309wic.7.1405342101535;
	Mon, 14 Jul 2014 05:48:21 -0700 (PDT)
Received: from jenss-mbp.rdm.local (pd956d8ef.dip0.t-ipconnect.de.
	[217.86.216.239]) by mx.google.com with ESMTPSA id
	cz4sm30797633wib.23.2014.07.14.05.48.17 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 14 Jul 2014 05:48:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <7B87B364-748C-49B1-A0D5-EB0FFB54D254@gmail.com>
Date: Mon, 14 Jul 2014 14:48:15 +0200
Message-Id: <45468D9E-2414-4D9F-AF00-E06E4EE81F6D@gmail.com>
References: <5D390CCC-BE0C-424B-99C4-0D127E618934@gmail.com>
	<53BEFCFB.4020707@linaro.org>
	<7B87B364-748C-49B1-A0D5-EB0FFB54D254@gmail.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1878.6)
Cc: meta-freescale@yoctoproject.org
Subject: Re: [meta-freescale] Developer-Image
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
X-List-Received-Date: Mon, 14 Jul 2014 12:48:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Am 13.07.2014 um 10:18 schrieb Jens Rehsack <rehsack@gmail.com>:

>=20
> Am 10.07.2014 um 22:52 schrieb Trevor Woerner =
<trevor.woerner@linaro.org>:
>=20
>>=20
>> Since these questions aren't really FSL-specific you might find you =
get
>> a better response time (and maybe even better responses!) on the =
generic
>> yocto mailing list :-)
>=20
> Let's try that :)

Response time was worse :)

>> On 07/10/14 16:14, Jens Rehsack wrote:
>>> is there an easy way to build an image which contains debug symbols
>>=20
>> add "dbg-pkgs" to EXTRA_IMAGE_FEATURES in conf/local.conf
>>=20
>>> and header files?
>>=20
>> add "dev-pkgs" to EXTRA_IMAGE_FEATURES in conf/local.conf
>=20
> Added both as described in =
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html =
(having a patterns speeds up search ^^) to =
https://github.com/rehsack/meta-jens/blob/master/recipes-graphics/images/x=
bmcdev-image.bb (also conf/local.conf, but seems I forgot to push),
> but still no debug symbols neither header files.
>=20
> I found another place (SDKIMAGE_FEATURES) to add, but don't know how =
to deal with that. What does the sdk-info.txt means?
>=20
> I lurk for xbmc debug symbols because it crashes very often and I want =
to get a smell of the root-cause. I don't expect a general xbmc issue, =
because it would sound different in community than ;)
>=20
> Additionally, for an internal add-on we're needing libxml2 header =
files, which are missing either.
>=20
> Thanks in advance for additional hints.

Ms. Google pointed several old issues together with =
PACKAGE_CLASS=3D"package_rpm" and arch's with -&_ - package_ipk seems to =
solve it.

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






