Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FA6AE00860; Thu, 20 Nov 2014 06:38:14 -0800 (PST)
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
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6106BE007B9
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 06:38:07 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id l18so3919695wgh.16
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 06:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=mckOImVP/a8FpY6Y8TuSQgC58DQEslehx9yloyEJVa0=;
	b=t/x650sh31gpGC3qctlQOsAOHmBTyKhLyKcFPYLyModHukXTjmL0qB5oqCSi643y5W
	bJloLXfpgNEPLivyw7uzRwJWOQyOLBK+jbWOWmDzIB3dHsCo0NlCUlsiUtjihG4rMScy
	1kL97Ty3I0rKxBNyu2FsVjLKRpwtX5C6QdukwXbBuwjSmaUQbdWHGM/IgMhcIj6+Gbod
	r6cZugNWse9kFc5kpE1RGbvVAa4X2mwZ/uQh+c/jyVm4WzV4Dy1Ikb556ZXuVAFynYKT
	etdtB6KaC/Tt4SHR+ypTAKuaudW0uEfsCTyj8uipnH5j295EFWeJVTvP7ix8uszlGVtB
	/ddw==
X-Received: by 10.194.234.40 with SMTP id ub8mr38834041wjc.100.1416494285367; 
	Thu, 20 Nov 2014 06:38:05 -0800 (PST)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id q9sm6886724wix.6.2014.11.20.06.38.03
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 20 Nov 2014 06:38:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
Date: Thu, 20 Nov 2014 15:37:59 +0100
Message-Id: <A414C97C-00DA-4FC1-895D-12B9A97DB66A@gmail.com>
References: <37719788-60D1-4C79-BCC4-4F4FA3DFDEB1@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1878.6)
Cc: yocto@yoctoproject.org
Subject: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Thu, 20 Nov 2014 14:38:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Richard,

I've seen you sent a patch for Yocto for =
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6890 which seems to =
me (compared to Wolfgang's Patch) incomplete and shows another issue ^^.

1st - Wolfgang's Patch also fixes the native-perl, which is important =
when having a native module requiring another native-module which isn't =
core...
Think about taking the entire fix from Wolfgang =
(https://www.mail-archive.com/yocto@yoctoproject.org/msg21489.html) and =
also patch daisy.

2nd: See =
https://github.com/rdm-dev/poky/commit/d58539e94126019126565e7e76f406f0d49=
75a0e for some other Perl quirks when using CPAN modules ...

3rd: =
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools=
/perl/perl-native_5.20.0.bb?id=3D6839a39912d483c6a403bd52e5f889547f1f4807#=
n10 - compare to $(corelist -a Module::Build) - there is no =
Module::Build in 5.20 anymore.

Maybe a look to 5.20.1 is also recommended: =
https://metacpan.org/pod/distribution/perl/pod/perldelta.pod


Anfang der weitergeleiteten Nachricht:

> Von: Jens Rehsack <rehsack@gmail.com>
> Betreff: Aw: [yocto] [PATCH] Perl: fix PERL5LIB settings
> Datum: 8. November 2014 13:47:01 MEZ
> An: "Burton, Ross" <ross.burton@intel.com>
> Kopie: Wolfgang Denk <wd@denx.de>, "yocto@yoctoproject.org" =
<yocto@yoctoproject.org>
>=20
>=20
> Am 07.11.2014 um 12:55 schrieb Burton, Ross <ross.burton@intel.com>:
>=20
>> Hi Wolfgang,
>>=20
>> On 5 November 2014 19:29, Wolfgang Denk <wd@denx.de> wrote:
>> meta/recipes-devtools/perl/perl-native_5.14.3.bb | 4 ++--
>> meta/recipes-devtools/perl/perl_5.14.3.bb        | 2 +-
>> 2 files changed, 3 insertions(+), 3 deletions(-)
>>=20
>> Perl was upgraded to 5.20.0 in July, can you rebase and verify that =
this is still required?
>=20
> I can finally confirm that it fixes the issues in daisy (bitbaking =
Dancer2 using =
https://github.com/rehsack/meta-cpan/tree/master/recipes-www/dancer2-perl)=
.
> You can try whether Dancer2 bitbakes for dizzy and/or master to verify =
- for me it's impossible to create a dizzy build - to many daisy =
adoptions and release pressure for next weeks.
> If you know someone having dizzy - bitbake Dancer2, Unix::Statgrab or =
alike to prove ...

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






