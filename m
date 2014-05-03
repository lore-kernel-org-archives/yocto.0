Return-Path: <elvis.dowson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C206BE009D1; Fri,  2 May 2014 20:41:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (elvis.dowson[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B0C2E009C1
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 20:40:58 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id d17so3630914eek.32
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 20:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=7k9Bx+9IKrbjFBeY/Lcl6NVOZoD7w/I20aHay4Q1aQs=;
	b=ey6czgZsQw8SUiv06ivMOYTs7Yy97/3mhq96lSrin5Zs3KvasftNMq62WJvA5fhCph
	FfKqhU0FII8l3lkifYbCiFv33EWYnjK/uGnw5dAJuNkHCpb6cteeFttNJ3yT6QuYbTif
	Cnj2UTfMr7NRNAuyT5qbZm7CCx0M3Cf3ZFs6BldyU1QGclu6Q2UsJwKdTBibdi92fez/
	KIQBs+UnRmD8DpxsIOWJRpVnqbbYDK6xhUtOco/tqEXr9ermQzLjy1yV2L16FBR7b6Pk
	WVgBJVZpL46DglIS68Ld6rB7Dfs4J/RF14QdlAd4M0+aNYTN2uBhH6p092RKVCfT23K2
	CTeg==
X-Received: by 10.15.24.201 with SMTP id j49mr18265307eeu.99.1399088457530;
	Fri, 02 May 2014 20:40:57 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.15])
	by mx.google.com with ESMTPSA id x43sm9426747eeo.26.2014.05.02.20.40.55
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 02 May 2014 20:40:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sr++otJ6AWZ_c5u1Lu9=jEXpw0X-Mi7i_w7CgC_1xQQZg@mail.gmail.com>
Date: Sat, 3 May 2014 07:40:49 +0400
Message-Id: <F3A1107D-3957-4E89-9085-0464F49AF88A@gmail.com>
References: <14A30120-E178-40D2-B950-115746B8CF3F@gmail.com>
	<CAMKF1sr++otJ6AWZ_c5u1Lu9=jEXpw0X-Mi7i_w7CgC_1xQQZg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1878.2)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [poky] Error patching gcc-4.8.2
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
X-List-Received-Date: Sat, 03 May 2014 03:41:04 -0000
X-Groupsio-MsgNum: 19343
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4EC3365A-C490-4DAE-9579-5744C968BF87";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_4EC3365A-C490-4DAE-9579-5744C968BF87
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On May 3, 2014, at 7:24, Khem Raj <raj.khem@gmail.com> wrote:

> I am subsumed with gcc 4.9 work however haven't seen this happening so =
far.
> may be you should clean the build tree and retry

This was with a clean build.

There are a bunch of changes to the gcc recipes done by Richard Purdie
starting with this one, which appears to have triggered the build =
failure with the gcc-4.8.2 recipe

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D03a0f8e8b4e286=
bfcc0076e7380ce26d1b1b106a

Reverting to commit 17daa2ba6280304771c5fe52b94eb56f0c087490 for poky
master branch helps complete the build. This was a commit from 3 days =
ago

=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D17daa2ba628030=
4771c5fe52b94eb56f0c087490

Regards,

Elvis Dowson

--Apple-Mail=_4EC3365A-C490-4DAE-9579-5744C968BF87
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQQcBAEBCgAGBQJTZGVBAAoJENajI+UwiZtEcycgAL9t53SnMzZxwHZw4sPkHKrT
3utdDA/B+NzV6DXisTGwC1BmB5VjDINk0GblsEoh/iX/7fF+Q62NiYvj6211hcIG
pnOdcxcMZ3FJW/gHLMkeGTe4LHL9BqUTL3xYLl6fy1o4lObUEVDzbgjB0eRufZbv
vgzkwoTZ7dT0KpCCd4TlAuDK41oWZNEPd0GsIkrCMJ6A8c6gerWpjstwubu+nQPC
xE+9GafK1y4FrPR7E+WM819ZZ+fn4hynvOO5SRbYXV5wPAkfw1o/D79tdpODW4qo
3I/4kuE6UnUSytXzxgUdOGemE2RGCDZLrZDll2KJHKAiAH/hS7ZqTU94arpdtSaV
68aemv8voxKWPsiMCiuRgw11y9j6nQ5QI3ofOKLGen0iuFwUg4aVidhkNtoROzon
E4ydfNI8KKwAUKesfvkNN7/j8bR8MBn6Ra+4ADWYphUIXprXxA6isnqdkZL23v0p
EK6+Gz2psFH5uMlOgtTvzUIm8xjaHNRRj354WzUelgnF2FNcfJoUYYphR8t/x3ZF
e20n+JXbJMc0pzDihO0lgHkQ0+LFtQ/iQv4X2lTcI5IwwspyGUUcy61U1j/TkuLt
heBg1eyu/hzreWUC/rrjsony3B0Ff9irTeZ3Oa06hEO3wNqY1zqBv4IM3OEoOKW3
SB04uZGexLNLQWWi/UGmy3H6iERX/2vyVq3pwDjfq4TsWhFhuD+0YLYwdxw7NI5I
V22CuRxmPQjZKMIBy3raAx/kk+/wJkL+ZhbBrWo8xdUVAXB6uuoBqXfxhxaiV+9r
vPN47/N+pHxsqhcy2TOXkCnrYx8COJjKVIwFCbRJdUX5XQP4qAfmJhy2CCvwNAJw
ymASajO5chQ56VhN73Ef+kIFHaq5QKXSRIRg2XJsPJE9hU44oDM7Cm73JQlHfD5E
vXgK3j1EMGAsoh8QUXYjKDQX7nUM1xawM6OPoUJ3y6VZTGSUIf7VzJJKyGuRduzC
JwQ/+Pitkt0+6NwnwPU8rLzwI8jtlYGWw1OqWID6dKEaJwoicbUCyV9AI0yyFS9U
ho9Rl+NIckJASHm8KeNj1KxjAoS5rC1eRLQWGLo0m6KnprKZKax6XU8cR3y2NxXu
/62AKYWojdiILSXqDTh0S6zm2ERbgJCZ0xDs/WukIJWsFUowosjpmpRFxSURrbg0
5KAUGcNaB57x/tGy+3DUwtwUJ045Hc/qWG1mSdK06rpDdu8vhbrgigxkvpre0q7p
Ec43tq+sAMxwHXYpm3+aGez7hSGxZkDIqR2ZzQRHNH+X5pB5l4T24YTxdWlGpr0Y
/rgD8NBvwRjKsbT50yOK0YQLS6vYnXltmeArTP+4+22GtrflG5MJ+cqdR/PWXOI=
=zgqW
-----END PGP SIGNATURE-----

--Apple-Mail=_4EC3365A-C490-4DAE-9579-5744C968BF87--
