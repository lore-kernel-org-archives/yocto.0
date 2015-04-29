Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9170BE00998; Wed, 29 Apr 2015 08:29:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BEF5E007CC
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 08:29:34 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so30944980pac.1
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 08:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ynEq71xuI8OGixjcZMwaLYnsVx0QbFH9S3Sdd+FoqW4=;
	b=YFSQxyjbb6tmgAxP2PCq1GEje/xn59m9003q/2UTPxzm2FB3W6WiSRZyJxuLhuAdPh
	mHUfRUpVO8ppqGrsu1MIYBIeNBvfmwrCQxWbSHZPN2nV2yMnyIqqhulRJU/7Lao4JTBA
	F7YTgWSGsMX5xRQTBFfg0LGG8EgNaHNsGEUbRXnORETVStYOkw2pYnPBJGHckXGr1Qro
	dYgM5V8vTPIS5p0JqAydYWl9jdpQj/ozMz6PUgijmTtLrSkmfUJfDDeK++lgWXuXopZx
	3ROTqVg0pfY3feZgykiyp8RiWySatkIxtKaJDfQsxhlPRxTSHaeiauGFfZQhNMlrM2zI
	VcLg==
X-Received: by 10.68.223.226 with SMTP id qx2mr17687010pbc.71.1430321373983;
	Wed, 29 Apr 2015 08:29:33 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:d941:dcb3:8f51:b574?
	([2601:9:3580:84c:d941:dcb3:8f51:b574])
	by mx.google.com with ESMTPSA id
	pu1sm25812694pdb.33.2015.04.29.08.29.32
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 29 Apr 2015 08:29:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162CC536@SJEXCHMB12.corp.ad.broadcom.com>
Date: Wed, 29 Apr 2015 08:29:32 -0700
Message-Id: <AF3AF07B-30B6-40B8-BBA4-79407CCFAC51@gmail.com>
References: <9F136EE5FB53D64397ED1089A0E760E0162CC536@SJEXCHMB12.corp.ad.broadcom.com>
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel git repo fetch issue
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
X-List-Received-Date: Wed, 29 Apr 2015 15:29:37 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_65E45D83-A9E7-4223-8388-E2C25584BE12"

--Apple-Mail=_65E45D83-A9E7-4223-8388-E2C25584BE12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Apr 29, 2015, at 8:21 AM, Joel (Xi Zhou) Zhou =
<joel.zhou@broadcom.com> wrote:
>=20
> So in linux-lsk_3.14.29.bb file, we define:
> SRC_URI =3D =
"ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;branch=3D${K=
BRANCH} =
<ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;branch=3D${K=
BRANCH}>"
>=20


create a .netrc in your home folder like

machine  git-ccxsw.inhouse.com <http://git-ssxsw.inhouse.com/> login =
svcswgit  password <passwd>


then change the SRC_URI to something

SRC_URI =3D =
=E2=80=9Cgit://git-ccxsw.inhouse.com/linux.lsk;bareclone=3D1;branch=3D<bra=
nch> =
<git://git-ccxsw.inhouse.com/linux.lsk;bareclone=3D1;branch=3D%3Cbranch%3E=
>;protocol=3Dssh"=

--Apple-Mail=_65E45D83-A9E7-4223-8388-E2C25584BE12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 29, 2015, at 8:21 AM, Joel (Xi Zhou) Zhou &lt;<a =
href=3D"mailto:joel.zhou@broadcom.com" =
class=3D"">joel.zhou@broadcom.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">So in linux-lsk_3.14.29.bb file, we define:<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt 0.5in; =
font-size: 11pt; font-family: Calibri, sans-serif; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D"">SRC_URI =3D "<a =
href=3D"ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;branc=
h=3D${KBRANCH}" style=3D"color: purple; text-decoration: underline;" =
class=3D"">ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;br=
anch=3D${KBRANCH}</a>"<o:p class=3D""></o:p></div><br =
class=3D"Apple-interchange-newline"></div></blockquote></div><br =
class=3D""><div class=3D""><br class=3D""></div><div class=3D"">create a =
.netrc in your home folder like</div><div class=3D""><br =
class=3D""></div><div class=3D"">machine &nbsp;<a =
href=3D"http://git-ssxsw.inhouse.com" class=3D"">git-ccxsw.inhouse.com</a>=
 login svcswgit &nbsp;password &lt;passwd&gt;</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">then=
 change the SRC_URI to something</div><div class=3D""><br =
class=3D""></div><div class=3D"">SRC_URI =3D =E2=80=9C<a =
href=3D"git://git-ccxsw.inhouse.com/linux.lsk;bareclone=3D1;branch=3D%3Cbr=
anch%3E" =
class=3D"">git://git-ccxsw.inhouse.com/linux.lsk;bareclone=3D1;branch=3D&l=
t;branch&gt;</a>;protocol=3Dssh"</div></body></html>=

--Apple-Mail=_65E45D83-A9E7-4223-8388-E2C25584BE12--
