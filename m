Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B61CE00C5B; Tue, 10 Apr 2018 08:57:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F0BE009C9
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 08:57:56 -0700 (PDT)
Received: from resomta-ch2-09v.sys.comcast.net ([69.252.207.105])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id 5vcmfLR0eOtE45veefLZTh; Tue, 10 Apr 2018 15:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1523375876;
	bh=HMWFeaR53xsVD7NUTlBSVfkALp+SRQSTcyyiAMN2U2w=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=SIEnnjEfRW37hjwu7oinZp97IDNP1Z5cpGgdY/ZlmXpUL33m7nqa0Wy99p/dFH69b
	7yTCTMMgGb0169SLwdGCFiK2CD5ByVDAP5LDigO8vTObLzRLHILysy34k/aAa09v6B
	1o1He79cHfCLFR32SgB8ZiL/9GTTVJldBHR2GviGEuxdauPlnfp7P07m48T+9YqcQ+
	h/iZwr7bXD5FrdJ80DwaFWCQ06A7J+fKTwEWKpVdLbBsoquPnfB/rVVTz4EaISFVhN
	x4FRZbpUGvXBq18ZUOBToa/ZuW0fx3keYLjUlDkcUIM/qY1Fbc4mAlGjwS49sWM97U
	8IsdPDjfD9+QQ==
Received: from oxapp-asd-64o.email.comcast.net ([96.115.230.155])
	by resomta-ch2-09v.sys.comcast.net with SMTP
	id 5vedfaD8dkUWe5vedfGN5l; Tue, 10 Apr 2018 15:57:56 +0000
Date: Tue, 10 Apr 2018 11:57:55 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: yocto@yoctoproject.org
Message-ID: <2028529317.567858.1523375875524@connect.xfinity.com>
In-Reply-To: <2BF5B08D-E9E9-4DEC-BFA0-FFBBDF724795@comcast.net>
References: <2BF5B08D-E9E9-4DEC-BFA0-FFBBDF724795@comcast.net>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev12
X-Originating-IP: 96.115.228.130
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfPQiQUdMrvysCX15udVRMtmcwrxqbWkz+TpTo6tSz13GS6NotPRdwLHPwcicQiFqKhxvpWWLeZM7GfDg3ZvY472VLLaUN7ng344eAoQZ7n4v86Noi59F
	SD8UrhxfUBq3lio4RcbgEisVKMA3s4LLODMdIhc/3+Phik/BGvhO77rXXHABfPy0CcYuSrUsyEH0RtpPprVcF7yuj+MMes+0Q2o=
Subject: Re: out of tree module dependencies
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2018 15:57:59 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_567857_1113976862.1523375875521"

------=_Part_567857_1113976862.1523375875521
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have been debugging this issue and could use some advice.

The basic issue I see is that do_make_scripts executes and fails. I have se=
en different fails but in the end it all comes back to something being requ=
ired in recipe-sysroot or recipe-sysroot-native and it's not there. For ins=
tance gcc-cross-aarch64 is missing from recipe-sysroot-native.

Yocto build dependencies is a rather advanced topic and I certainly don't f=
eel I understand exactly what the issue is... but here is my guess.

1. I changed my linux kernel recipe.
2. Because of #1, the cross compiler decided to rebuild. Generally, this is=
n't an issue. In fact the old cross compiler should *still* be in recipe-sy=
sroot-native.
3. Once the kernel build artifacts is done... my module recipes fire. The f=
irst thing they want to do is run do_cve_check.
4. This is the part that causes the problem... do_cve_check DELETES gcc-cro=
ss-aarch64 from the sysroot! This is because it cannot find gcc-cross-aarch=
64.complete... which points to a manifest file. I think this manifest file =
is created by the gcc-cross-aarch64.do_populate_sysroot. Problem is, cve_ch=
eck does not depend on that?

This race condition does not always present itself so I am running tests...=
 my solution?

do_cve_check[depends] +=3D "${PN}:do_prepare_recipe_sysroot"

I do that because I believe do_prepare_recipe_sysroot already depends on wh=
atever is required in the recipe-sysroot dirs so it's a more general fix.

Does this make sense to anyone?

> On April 3, 2018 at 7:42 PM Russell Peterson <bluehills7@comcast.net> wro=
te:
>
>
> Hello,
>
> I have some out of tree modules that I have added to my custom meta layer=
.
> Normally things work fine, however, when I modify these recipes every now=
 and then the do_configure fails because the recipe_sysroot directory is no=
t populated. This seems related to the kernel-build-artifacts and the make_=
scripts task as well but I can=E2=80=99t quite figure it out. Seems like th=
e prepare_recipe_sysroot should execute but in these cases it does not.
>
> I realize I didn=E2=80=99t provide much info here but anyone see somethin=
g like this before? I do have an unpack_extra task as well that may somehow=
 be related?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

------=_Part_567857_1113976862.1523375875521
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body>I have been debugging this issue and could use some advice.<br=
><br>The basic issue I see is that do_make_scripts executes and fails.  I h=
ave seen different fails but in the end it all comes back to something bein=
g required in recipe-sysroot or recipe-sysroot-native and it&#39;s not ther=
e.  For instance gcc-cross-aarch64 is missing from recipe-sysroot-native.<b=
r><br>Yocto build dependencies is a rather advanced topic and I certainly d=
on&#39;t feel I understand exactly what the issue is... but here is my gues=
s.<br><br>1. I changed my linux kernel recipe.<br>2. Because of #1, the cro=
ss compiler decided to rebuild.  Generally, this isn&#39;t an issue.  In fa=
ct the old cross compiler should *still* be in recipe-sysroot-native.<br>3.=
 Once the kernel build artifacts is done... my module recipes fire.  The fi=
rst thing they want to do is run do_cve_check.<br>4. This is the part that =
causes the problem... do_cve_check DELETES gcc-cross-aarch64 from the sysro=
ot!  This is because it cannot find gcc-cross-aarch64.complete... which poi=
nts to a manifest file.  I think this manifest file is created by the gcc-c=
ross-aarch64.do_populate_sysroot.  Problem is, cve_check does not depend on=
 that?<br><br>This race condition does not always present itself so I am ru=
nning tests... my solution?<br><br>do_cve_check[depends] +=3D &#34;${PN}:do=
_prepare_recipe_sysroot&#34;<br><br>I do that because I believe do_prepare_=
recipe_sysroot already depends on whatever is required in the recipe-sysroo=
t dirs so it&#39;s a more general fix.<br><br>Does this make sense to anyon=
e?<br><br>&#62; On April 3, 2018 at 7:42 PM Russell Peterson &#60;bluehills=
7@comcast.net&#62; wrote:<br>&#62; <br>&#62; <br>&#62; Hello,<br>&#62; <br>=
&#62; I have some out of tree modules that I have added to my custom meta l=
ayer.<br>&#62; Normally things work fine, however, when I modify these reci=
pes every now and then the do_configure fails because the recipe_sysroot di=
rectory is not populated.  This seems related to the kernel-build-artifacts=
 and the make_scripts task as well but I can&#8217;t quite figure it out.  =
Seems like the prepare_recipe_sysroot should execute but in these cases it =
does not.<br>&#62; <br>&#62; I realize I didn&#8217;t provide much info her=
e but anyone see something like this before?  I do have an unpack_extra tas=
k as well that may somehow be related?<br>&#62; <br>&#62; <br>&#62; -- <br>=
&#62; _______________________________________________<br>&#62; yocto mailin=
g list<br>&#62; yocto@yoctoproject.org<br>&#62; https://lists.yoctoproject.=
org/listinfo/yocto<br></body></html>
=20

------=_Part_567857_1113976862.1523375875521--
