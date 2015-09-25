Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D877EE00F97; Fri, 25 Sep 2015 10:22:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [70.40.196.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Sep 2015 10:22:23 PDT
Received: from gproxy7-pub.mail.unifiedlayer.com
	(gproxy7-pub.mail.unifiedlayer.com [70.40.196.235])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7E791E006CD
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 10:22:23 -0700 (PDT)
Received: (qmail 18075 invoked by uid 0); 25 Sep 2015 17:15:42 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy7.mail.unifiedlayer.com with SMTP; 25 Sep 2015 17:15:42 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by CMOut01 with 
	id MVFW1r00x4Y0hd901VFZvQ; Fri, 25 Sep 2015 11:15:41 -0600
X-Authority-Analysis: v=2.1 cv=EbVbHpWC c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=mHfT8ucao3sA:10 a=o0XNLtqhUCMA:10
	a=ff-B7xzCdYMA:10 a=xzIOphvLoMXCduDK-aYA:9 a=pILNOxqGKmIA:10
	a=qYUWsgJ4AAAA:8
	a=vtqslJOIAAAA:8 a=dm5lOLV0U4HhIAc6:21 a=_W_S_7VecoQA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=674I6F04pSJkl+88rcynHvoT5IjP3vgPlHI8qWwFUQY=; 
	b=NgAGOJpchseNms6Y4mjaQBm8KMHWvDQMthipk/OATvcf8xi/Ay+5ex34nzqK+qm4mA20ENnSgyUh1GmjN+LlwwQvdfuaiCx4uJMaLXfqszy3mGKeyJIGmze74vksLS4I;
Received: from [68.225.237.157] (port=52461 helo=[192.168.0.6])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZfWap-0004us-LL; Fri, 25 Sep 2015 11:15:31 -0600
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Allen Curtis <allen.curtis@curtisembedded.com>
In-Reply-To: <CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
Date: Fri, 25 Sep 2015 10:15:28 -0700
Message-Id: <3FA71175-E6BE-46FE-9DA4-8284FFB58F49@curtisembedded.com>
References: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
	<CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Fri, 25 Sep 2015 17:22:24 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D0F9ACD0-7197-4393-A37F-6E47ACA5E35C"

--Apple-Mail=_D0F9ACD0-7197-4393-A37F-6E47ACA5E35C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

> I am working with a BSP that has multiple image recipes.
>=20
> foo-hwbringup-image.bb
> foo-qt5demo-image.bb
>=20
> foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"
>=20
> However if I create foo-hwbringup-image.bbappend, it gets ignored.
>=20
> What are the rules with appending included recipes?
>=20
> bbappends do not append arbitrary files, only recipes (and in this =
case, the inclusion treats them as an arbitrary file). They do not apply =
to anything included or required, only the recipe itself. So you'll need =
to bbappend every recipe that includes foo-hwbringup-image.bb in this =
case.

This is unfortunate since foo-hwbringup-image.bb is also a valid recipe. =
It just doesn't contain the graphics support.

Is there a better way to add your custom components to "core-image" I =
guess=85..

TIA



--Apple-Mail=_D0F9ACD0-7197-4393-A37F-6E47ACA5E35C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; " =
class=3D""><div><blockquote type=3D"cite"><div dir=3D"ltr" class=3D""><div=
 class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote =
style=3D"margin: 0px 0px 0px 0.8ex; border-left-width: 1px; =
border-left-color: rgb(204, 204, 204); border-left-style: solid; =
padding-left: 1ex; position: static; z-index: auto; " =
class=3D"gmail_quote"><div id=3D":1v3" style=3D"overflow:hidden" =
class=3D"a3s">I am working with a BSP that has multiple image =
recipes.<br class=3D"">
<br class=3D"">
<a href=3D"http://foo-hwbringup-image.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">foo-hwbringup-image.bb</a><br class=3D"">
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">foo-qt5demo-image.bb</a><br class=3D"">
<br class=3D"">
<a href=3D"http://foo-qt5demo-image.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">foo-qt5demo-image.bb</a> contains "require =
<a href=3D"http://foo-hwbringup-image.bb/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">foo-hwbringup-image.bb</a>"<br class=3D"">
<br class=3D"">
However if I create foo-hwbringup-image.bbappend, it gets ignored.<br =
class=3D"">
<br class=3D"">
What are the rules with appending included =
recipes?</div></blockquote></div><br class=3D"">bbappends do not append =
arbitrary files, only recipes (and in this case, the inclusion treats =
them as an arbitrary file). They do not apply to anything included or =
required, only the recipe itself. So you'll need to bbappend every =
recipe that includes <a href=3D"http://foo-hwbringup-image.bb/" =
class=3D"">foo-hwbringup-image.bb</a> in this case.<br =
class=3D""></div></div></blockquote><br></div><div>This is unfortunate =
since foo-hwbringup-image.bb is also a valid recipe. It just doesn't =
contain the graphics support.</div><div><br></div><div>Is there a better =
way to add your custom components to "core-image" I =
guess=85..</div><div><br></div><div>TIA</div><div><br></div><br =
class=3D""></body></html>=

--Apple-Mail=_D0F9ACD0-7197-4393-A37F-6E47ACA5E35C--
