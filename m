Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CD41E00914; Thu, 19 Mar 2015 20:13:13 -0700 (PDT)
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
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B8E6E00779;
	Thu, 19 Mar 2015 20:13:09 -0700 (PDT)
Received: by padcy3 with SMTP id cy3so94758119pad.3;
	Thu, 19 Mar 2015 20:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=G8/1uCjCH6ylyfwojgzPzbI9+9H1bUTGnga9ohY3NKk=;
	b=wn5SLu6RKkGRFxWkD0YYATk90A2Kl0AO+zDczFzK6DxFdboOUDcu3QR+mO6vq/hqht
	3Kz0d1D855GLghyRN0ZIOzHBQ7fUZ9HksS8CbS0Dz+bSU+kUJe32SiNjoJ4kw5gKuS68
	2LfvO8b2/uNWs7Ufi8RZOeF75OScKedgWUDeBVTp3ut3OrqT3Yonj6LMEvqBFfRneieM
	6mz31ZEmNx2io5fpUpOVps9TiWezXEQ6twUTjFDb72r9YnugOaIG/IslXug1YBek71aq
	YU5DbNWL2zM8hpb5c2hoQvBbTRC/W/qHbTPgzjHF5A4y6XyVbvKlms9MBXbZUQmaCJqd
	cOJA==
X-Received: by 10.66.121.161 with SMTP id ll1mr144649730pab.131.1426821189509; 
	Thu, 19 Mar 2015 20:13:09 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:f151:f903:f72b:3094?
	([2601:9:3580:84c:f151:f903:f72b:3094])
	by mx.google.com with ESMTPSA id x4sm5320118pas.40.2015.03.19.20.13.08
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Mar 2015 20:13:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALTPfpEioQubDTeBdE6yoVff1_hVu4G7LDqx3On1uGraQTHi1g@mail.gmail.com>
Date: Thu, 19 Mar 2015 20:13:17 -0700
Message-Id: <4A18F97D-CBE3-4D8E-9242-7A0774D2DD4B@gmail.com>
References: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
	<CALTPfpEioQubDTeBdE6yoVff1_hVu4G7LDqx3On1uGraQTHi1g@mail.gmail.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
X-Mailer: Apple Mail (2.2070.6)
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Including Static Libraries from sysroot in an autotools based package
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
X-List-Received-Date: Fri, 20 Mar 2015 03:13:13 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1F69BB0B-4105-445E-9800-ECE64268730B"

--Apple-Mail=_1F69BB0B-4105-445E-9800-ECE64268730B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Mar 19, 2015, at 2:07 AM, Priya Agarwal =
<priya_agarwal@students.iitmandi.ac.in> wrote:
>=20
> Hi,
>=20
> I need to link some libraries which are in sysroot into my source =
code. These are usdpaa libraries.
>=20
> I added DEPENDS +=3D "usdpaa" in .bb file.
> Apart from that also changed the Makefile.am of my source to include =
the following:
> area_LDADD =3D -lusdpaa_of
> Then I ran aclocal, autoconf, automake --add-missing and retarred my =
package.
>=20
> When the package is being built from recipe, do_compile fails. It =
shows "undefined reference to" error.
> So this means that libraries are not getting linked by just doing the =
above changes. What else I need to change?

I think you need to specify them in Makefile.am using LDADD since it is =
using auto tools. Please take a look at Automake documentation
http://www.gnu.org/software/automake/manual/html_node/Linking.html =
<http://www.gnu.org/software/automake/manual/html_node/Linking.html>
might be helpful.

>=20
> I think this problem is specific to autotools based projects as when I =
include the libraries during the gcc command they are easily included.
>=20
> do_compile() {
>     ${CC} check.c -o check -lusdpaa_of
> }
> link to area.bb <http://area.bb/>
> http://pastebin.com/Bef2C7nX <http://pastebin.com/Bef2C7nX>--=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1F69BB0B-4105-445E-9800-ECE64268730B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 19, 2015, at 2:07 AM, Priya Agarwal &lt;<a =
href=3D"mailto:priya_agarwal@students.iitmandi.ac.in" =
class=3D"">priya_agarwal@students.iitmandi.ac.in</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D"">Hi,<br class=3D""><br =
class=3D""></div>I need to link some libraries which are in sysroot into =
my source code. These are usdpaa libraries.<br class=3D""><br =
class=3D""></div><div class=3D"">I added DEPENDS +=3D "usdpaa" in .bb =
file.<br class=3D"">Apart from that also changed the Makefile.am of my =
source to include the following:<br class=3D""></div><div =
style=3D"margin-left:40px" class=3D"">area_LDADD =3D -lusdpaa_of<br =
class=3D""></div><div class=3D"">Then I ran aclocal, autoconf, automake =
--add-missing and retarred my package.<br class=3D""><br =
class=3D""></div><div class=3D"">When the package is being built from =
recipe, do_compile fails. It shows "undefined reference to" error.<br =
class=3D""></div>So this means that libraries are not getting linked by =
just doing the above changes. What else I need to change?<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>I =
think you need to specify them in Makefile.am using LDADD since it is =
using auto tools. Please take a look at Automake =
documentation</div><div><a =
href=3D"http://www.gnu.org/software/automake/manual/html_node/Linking.html=
" =
class=3D"">http://www.gnu.org/software/automake/manual/html_node/Linking.h=
tml</a></div><div>might be helpful.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><br =
class=3D"">I
 think this problem is specific to autotools based projects as when I=20
include the libraries during the gcc command they are easily =
included.<br class=3D""><div style=3D"margin-left:40px" class=3D""><br =
class=3D"">do_compile() {<br class=3D"">&nbsp;&nbsp;&nbsp; ${CC} check.c =
-o check -lusdpaa_of<br class=3D"">}<br class=3D""></div>link to <a =
href=3D"http://area.bb/" target=3D"_blank" class=3D"">area.bb</a><br =
class=3D""><a href=3D"http://pastebin.com/Bef2C7nX" target=3D"_blank" =
class=3D"">http://pastebin.com/Bef2C7nX</a></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_1F69BB0B-4105-445E-9800-ECE64268730B--
