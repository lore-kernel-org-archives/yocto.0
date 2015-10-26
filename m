Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4247E00748; Mon, 26 Oct 2015 13:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F1FDE0059B
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 13:08:29 -0700 (PDT)
Received: by wicfv8 with SMTP id fv8so133004142wic.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 13:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=I6Js+dM0GYZE2WhJyQ9ZJcxJf/pJJ8/gmrxGv1Y3mXU=;
	b=ATBakDx1Lvg8+iH8sU2Dp691EqotzutKwji/dmg9UknLcCUJepVPuDKrX/zth5jvZD
	u7I0sGj+fovO8p05yAjIuv4WwCP/mybKzPB6zm/P2/2FAq9yA7KWkaxKsamhn+h8oQ3I
	BWlf3iCE9/2zDuFk08GnBnZOMg0ooMqGqnjYSnbyc10xREhUFeixju33veWz/Kf4aVK5
	w2/n6JoeQ0HMhV7ETID18rQ6kAVgPGem0FKASMLglD4Xv7O8F8tdFcELqfQO8+kUHJge
	wvwYYhs185zm8RmX/4Wjj7uny8nR3qVmf2meUMkv0AU2GgP3QAzUb7uXapnBckSVy6xx
	bWYQ==
X-Received: by 10.180.11.196 with SMTP id s4mr8527080wib.33.1445890098742;
	Mon, 26 Oct 2015 13:08:18 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	om1sm37638588wjc.2.2015.10.26.13.08.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 13:08:17 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 26 Oct 2015 21:08:29 +0100
To: openembedded-devel@lists.openembedded.org
Message-ID: <20151026200829.GI2554@jama>
References: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] OE/Yocto developer survey
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
X-List-Received-Date: Mon, 26 Oct 2015 20:08:33 -0000
X-Groupsio-MsgNum: 27052
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cVp8NMj01v+Em8Se"
Content-Disposition: inline

--cVp8NMj01v+Em8Se
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 26, 2015 at 03:18:54PM -0400, Cliff Brake wrote:
> How long have you been using OE?

+=3D 10 years (more actively for last 6 years)

> How do you use OE/Yocto?
[ X ] product development
[ X ] hobby/research/education/yocto core developer, etc

> What distro do you use?
[   ] Poky
[   ] Angstrom
[ X ] nodistro or custom

> How do you organize multiple git repos?
[   ] Git submodules
[   ] Repo
[ X ] Other

> What packaging system?
[ X ] OPKG
[   ] RPM
[   ] Other

> What GUI toolkits?
[ X ] Qt
[ X ] Gtk
[ X ] EFL
[ X ] HTML5/JS
[   ] Other

> What init system?
[ X ] systemd
[   ] sysvinit
[   ] busybox init
[ X ] Other (upstart)

> What libc?
[ X ] glibc
[   ] uclibc
[   ] musl
[   ] Other

> How do you develop custom applications?
[   ] application-SDK
[ X ] devshell
[ X ] develop on PC, test on target
[   ] Other

> What language do you primarily use for custom applications?
[ X ] C
[ X ] C++
[   ] Python
[ X ] Javascript
[   ] Lua
[   ] Other

> What do you use for Continuous Integration?
[   ] Buildbot
[ X ] Jenkins
[   ] Other

> Do you use any any of the tooling projects
> (https://www.yoctoproject.org/tools-resources/projects) such as ADT,
> Hob, Toaster, etc?

No

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--cVp8NMj01v+Em8Se
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYuiDwACgkQN1Ujt2V2gBzJWgCgkQSPpJnKqNFp3BdjwMqLvfaF
RMIAoLVTPeAV9sXUd4GHmQKq/3GbJty6
=rG70
-----END PGP SIGNATURE-----

--cVp8NMj01v+Em8Se--
