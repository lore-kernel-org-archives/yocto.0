Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6204AE007B5; Fri, 22 Jan 2016 13:45:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3E0E0045F
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 13:45:36 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id cy9so47760885pac.0
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 13:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kCv7N83hxVeB32XOb9tT0pHZGtBqdjf4woaPQSJwPBY=;
	b=iCtcQNDnBdFJTbrFUh4cPNfcoGN3VOrKuBrN846sGNFFn1yJAbillRMBmlDg6p/ztI
	iiSDLfwH1xP+BElh2RXK3cNTbT2SjOYKDHQIU1UD0RINpUhtJU5wUEsIO+cWk4mpijJv
	rSsO+Wv9Q9RLCaPFoQY+MdZi1Gk2uNxBokfgvLsnlrLsmN5jqZj32DvQ3ueZRBNFuj0s
	RTeI3ldJIeqDexE4FhG8vj/JL3bUFzdeuXgkHhmmgWkwGY/Y4W95Mwfhq7Ht/9L9qY61
	8Sna53cJa5q2XLHHE/Y0xeX0ygGlJv1RZmBK14D/iio9gH0H8lfYu3LzhGJPL8Prp9dR
	krkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=kCv7N83hxVeB32XOb9tT0pHZGtBqdjf4woaPQSJwPBY=;
	b=FfFjFm4rv2A+CK9MuSak3lInv12M+CHp/eZE8hDmeCUaSd/iFCy+YuHVw8+MYj+7xI
	H9Pkc5Y4u5jI/IzyI9bRAc54gluiUADNN/OBbAxB2drR+gTzxbUb8+JTBNWWnOGh6242
	h1Bu6XszTjn3JQWkX7OtedoI7lDHgrIbQNO9uutdiptA95B4vcf4ulR7It6B8hMkur0D
	K3cRJ2Gm65DOJKnzaFbUuRplFycKT10c8UQEkXIxpxyYfiTmKFLcwG9uvYx5nruYWv7I
	myTtItb14ICxRbdA9vq9wXKze78rCU7YWTwb0gPaGW/5I1HJPPjuzkNkUNCThe+MP+qy
	/cNA==
X-Gm-Message-State: AG10YORgj3dw3tfHQ2qtN4m5TaMs/+5wEnXiqTtRVqJheTo61vJHB88Y56YufiRrh/nM9w==
X-Received: by 10.66.120.77 with SMTP id la13mr7789393pab.74.1453499136335;
	Fri, 22 Jan 2016 13:45:36 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:e5eb:ae30:b4f8:4402?
	([2601:646:8802:5d5c:e5eb:ae30:b4f8:4402])
	by smtp.gmail.com with ESMTPSA id
	n8sm11819276pfj.46.2016.01.22.13.45.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jan 2016 13:45:34 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5C2350E2-2C6A-40AF-9997-2BBEB854F025@gmail.com>
Date: Fri, 22 Jan 2016 13:45:30 -0800
Message-Id: <B7194848-F744-45BD-8B75-D13D14A671D2@gmail.com>
References: <1450569917-439-1-git-send-email-raj.khem@gmail.com>
	<CAJTo0Lbbpd8gqaDPiMQsD_ynZEa2Q5T1i_-nHY-FhbA__g2Dvg@mail.gmail.com>
	<CAJTo0Lap1WUuDoqx38TbQFP7YFm-Z9cGXOgZtcAF2deXzUFn0g@mail.gmail.com>
	<5C2350E2-2C6A-40AF-9997-2BBEB854F025@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][PATCH] poky-tiny: Use musl for default system C library
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
X-List-Received-Date: Fri, 22 Jan 2016 21:45:38 -0000
X-Groupsio-MsgNum: 28083
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E14A41A2-FD29-44D9-8972-13AC71ABD18F";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E14A41A2-FD29-44D9-8972-13AC71ABD18F
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FF59A1DD-45E5-4F94-9EA6-AECD85451399"

--Apple-Mail=_FF59A1DD-45E5-4F94-9EA6-AECD85451399
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 17, 2016, at 11:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>>=20
>> On Jan 8, 2016, at 1:21 AM, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
>>=20
>>=20
>> On 8 January 2016 at 09:09, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
>> For anyone else reading, I just gave this a test locally, and for =
context the previous poky-tiny was using a tuned glibc and the rootfs =
came in at 1.5M.
>>=20
>> Finished my comparison builds:
>>=20
>> musl:
>> -rw-r--r-- 1 ross ross  731681 Jan  7 23:46 =
core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz
>> glibc:
>> -rw-r--r-- 1 ross ross 1569610 Jan  8 00:01 =
core-image-minimal-qemux86-20160107235147.rootfs.cpio.gz
>> uclibc:
>> -rw-r--r-- 1 ross ross  669759 Jan  8 09:14 =
core-image-minimal-qemux86-20160108090512.rootfs.cpio.gz
>>=20
>> So it's a slightly increase over uclibc, but by default poky-tiny =
uses glibc so this is a massive win.  In the greater scheme of things =
musl is trending to be worth the increase over uclibc too.
>>=20
>=20
> Thanks Ross for this info. I think it will be interesting to know the =
sizes of packages contributing to image from buildhistory if you have it =
lying around.
> musl has libpthread/libm etc. all bundled into single .so for =
simplicity reasons. I would like to get to bottom of the slight increase =
of musl over uclibc based system
>=20

musl/core-image-minimal ( 690K )

601 KiB busybox
598 KiB musl
23 KiB netbase
5 KiB update-rc.d
4 KiB update-alternatives-opkg
3 KiB busybox-udhcpc
3 KiB busybox-mdev
3 KiB base-files
2 KiB run-postinsts
2 KiB busybox-syslog

uclibc/core-image-minimal ( 614K)

603     KiB busybox
515     KiB uclibc
73      KiB libm1
23      KiB netbase
5       KiB update-rc.d
4       KiB update-alternatives-opkg
3       KiB busybox-udhcpc
3       KiB busybox-mdev
3       KiB base-files
2       KiB run-postinsts
2       KiB busybox-syslog


I don=E2=80=99t know why musl one is 690K where as the factored  sizes =
are quite same for both images . May be because it is on different =
machine.


>=20
>=20
>> Ross


--Apple-Mail=_FF59A1DD-45E5-4F94-9EA6-AECD85451399
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 17, 2016, at 11:04 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><blockquote type=3D"cite" class=3D"" style=3D"font-family: =
Ubuntu; font-size: 14px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div =
class=3D""><br class=3D"Apple-interchange-newline">On Jan 8, 2016, at =
1:21 AM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 8 January 2016 at 09:09, Burton, Ross<span =
class=3D"Apple-converted-space">&nbsp;</span><span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
class=3D"">ross.burton@intel.com</a>&gt;</span><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px =
0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, =
204); border-left-style: solid; padding-left: 1ex;"><div =
class=3D"gmail_extra">For anyone else reading, I just gave this a test =
locally, and for context the previous poky-tiny was using a tuned glibc =
and the rootfs came in at 1.5M.</div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Finished my comparison =
builds:</div><div class=3D""><br class=3D""></div><div =
class=3D"">musl:</div><div class=3D"">-rw-r--r-- 1 ross ross =
&nbsp;731681 Jan &nbsp;7 23:46 =
core-image-minimal-qemux86-20160107234351.rootfs.cpio.gz</div><div =
class=3D"">glibc:</div><div class=3D"">-rw-r--r-- 1 ross ross 1569610 =
Jan &nbsp;8 00:01 =
core-image-minimal-qemux86-20160107235147.rootfs.cpio.gz</div><div =
class=3D"">uclibc:</div><div class=3D"">-rw-r--r-- 1 ross ross =
&nbsp;669759 Jan &nbsp;8 09:14 =
core-image-minimal-qemux86-20160108090512.rootfs.cpio.gz&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">So it's a slightly =
increase over uclibc, but by default poky-tiny uses glibc so this is a =
massive win.&nbsp; In the greater scheme of things musl is trending to =
be worth the increase over uclibc too.</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote><div =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br class=3D""></div><div =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">Thanks Ross for this info. I =
think it will be interesting to know the sizes of packages contributing =
to image from buildhistory if you have it lying around.</div><div =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">musl has libpthread/libm =
etc. all bundled into single .so for simplicity reasons. I would like to =
get to bottom of the slight increase of musl over uclibc based =
system</div><div style=3D"font-family: Ubuntu; font-size: 14px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><br =
class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>musl/core-image-minimal ( 690K )</div><div><br =
class=3D""></div><div><span style=3D"color: rgb(56, 56, 56); =
font-family: gotham, helvetica, arial, sans-serif;" class=3D"">601 KiB =
busybox</span><br style=3D"color: rgb(56, 56, 56); font-family: gotham, =
helvetica, arial, sans-serif;" class=3D""><span style=3D"color: rgb(56, =
56, 56); font-family: gotham, helvetica, arial, sans-serif;" =
class=3D"">598 KiB musl</span><br style=3D"color: rgb(56, 56, 56); =
font-family: gotham, helvetica, arial, sans-serif;" class=3D""><span =
style=3D"color: rgb(56, 56, 56); font-family: gotham, helvetica, arial, =
sans-serif;" class=3D"">23 KiB netbase</span><br style=3D"color: rgb(56, =
56, 56); font-family: gotham, helvetica, arial, sans-serif;" =
class=3D""><span style=3D"color: rgb(56, 56, 56); font-family: gotham, =
helvetica, arial, sans-serif;" class=3D"">5 KiB update-rc.d</span><br =
style=3D"color: rgb(56, 56, 56); font-family: gotham, helvetica, arial, =
sans-serif;" class=3D""><span style=3D"color: rgb(56, 56, 56); =
font-family: gotham, helvetica, arial, sans-serif;" class=3D"">4 KiB =
update-alternatives-opkg</span><br style=3D"color: rgb(56, 56, 56); =
font-family: gotham, helvetica, arial, sans-serif;" class=3D""><span =
style=3D"color: rgb(56, 56, 56); font-family: gotham, helvetica, arial, =
sans-serif;" class=3D"">3 KiB busybox-udhcpc</span><br style=3D"color: =
rgb(56, 56, 56); font-family: gotham, helvetica, arial, sans-serif;" =
class=3D""><span style=3D"color: rgb(56, 56, 56); font-family: gotham, =
helvetica, arial, sans-serif;" class=3D"">3 KiB busybox-mdev</span><br =
style=3D"color: rgb(56, 56, 56); font-family: gotham, helvetica, arial, =
sans-serif;" class=3D""><span style=3D"color: rgb(56, 56, 56); =
font-family: gotham, helvetica, arial, sans-serif;" class=3D"">3 KiB =
base-files</span><br style=3D"color: rgb(56, 56, 56); font-family: =
gotham, helvetica, arial, sans-serif;" class=3D""><span style=3D"color: =
rgb(56, 56, 56); font-family: gotham, helvetica, arial, sans-serif;" =
class=3D"">2 KiB run-postinsts</span><br style=3D"color: rgb(56, 56, =
56); font-family: gotham, helvetica, arial, sans-serif;" class=3D""><span =
style=3D"color: rgb(56, 56, 56); font-family: gotham, helvetica, arial, =
sans-serif;" class=3D"">2 KiB busybox-syslog</span></div><div><br =
class=3D""></div><div>uclibc/core-image-minimal =
(&nbsp;614K)</div><div><br class=3D""></div><div><div>603 &nbsp; &nbsp; =
KiB busybox</div><div>515 &nbsp; &nbsp; KiB uclibc</div><div>73 &nbsp; =
&nbsp; &nbsp;KiB libm1</div><div>23 &nbsp; &nbsp; &nbsp;KiB =
netbase</div><div>5 &nbsp; &nbsp; &nbsp; KiB update-rc.d</div><div>4 =
&nbsp; &nbsp; &nbsp; KiB update-alternatives-opkg</div><div>3 &nbsp; =
&nbsp; &nbsp; KiB busybox-udhcpc</div><div>3 &nbsp; &nbsp; &nbsp; KiB =
busybox-mdev</div><div>3 &nbsp; &nbsp; &nbsp; KiB base-files</div><div>2 =
&nbsp; &nbsp; &nbsp; KiB run-postinsts</div><div>2 &nbsp; &nbsp; &nbsp; =
KiB busybox-syslog</div></div><div><br class=3D""></div><div><br =
class=3D""></div><div>I don=E2=80=99t know why musl one is 690K where as =
the factored &nbsp;sizes are quite same for both images . May be because =
it is on different machine.&nbsp;</div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br class=3D""></div><br =
class=3D"" style=3D"font-family: Ubuntu; font-size: 14px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><blockquote type=3D"cite" class=3D""=
 style=3D"font-family: Ubuntu; font-size: 14px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div =
class=3D"">Ross</div></div></div></div></div></blockquote></div></blockquo=
te></div><br class=3D""></body></html>=

--Apple-Mail=_FF59A1DD-45E5-4F94-9EA6-AECD85451399--

--Apple-Mail=_E14A41A2-FD29-44D9-8972-13AC71ABD18F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaiov0ACgkQuwUzVZGdMxSnPQCbBIla/mFLC4hkMS/NtPNixIsJ
A1IAn3J7XN939U35SuRWpCdQlTgFltuX
=LGHg
-----END PGP SIGNATURE-----

--Apple-Mail=_E14A41A2-FD29-44D9-8972-13AC71ABD18F--
