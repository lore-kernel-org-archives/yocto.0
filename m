Return-Path: <jim.schimpf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B508E0059B; Mon, 26 Oct 2015 08:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	URIBL_BLACK,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jim.schimpf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: configure.ac]
Received: from mail-yk0-f193.google.com (mail-yk0-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67CDE0048C
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 08:42:13 -0700 (PDT)
Received: by ykdr3 with SMTP id r3so16082349ykd.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 08:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:message-id:mime-version:subject:date:references
	:to:in-reply-to;
	bh=U6x2d+GNUfZ5lTAyCoRGlpPwBIBFHp45k3NbL0qBpJA=;
	b=1BgANnwbsaKyCEGXKBenMncw/2/Bz8HyU+A8/VDaQyw0NSgBpI90ZIu88m3rl25D5U
	6+euUhpUE0KHwv65l69U6+u4Qi0jGGE7MM7no+uzQz9r80FfJz1Nmg24GvOyJp1q/EPk
	WZzVM03d6tPOb4yhFPKZq65jyE416B800ld5Z6awBh7b3ikPzdBvWEb99XhpGSby/GVc
	brfZ8V/Q/dUlCvp3TU+a0d2O7pUuE0kG+fJBlRAQJ0JWXUoAQuSjw0Ilqm/ZC2/BB3fK
	41qxr9hWlKTEuX36z5PPpHxEz5QHgjem+8lOHJe4L7qczGayocqpJB+J30HnceblmS7E
	wokw==
X-Received: by 10.129.92.68 with SMTP id q65mr29372100ywb.239.1445874132800;
	Mon, 26 Oct 2015 08:42:12 -0700 (PDT)
Received: from [10.1.2.3] (static-72-95-129-76.pitbpa.fios.verizon.net.
	[72.95.129.76]) by smtp.gmail.com with ESMTPSA id
	q2sm24782888ywd.11.2015.10.26.08.42.11
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 26 Oct 2015 08:42:12 -0700 (PDT)
From: jim Schimpf <jim.schimpf@gmail.com>
Message-Id: <72AB2501-7BA8-45AE-A995-4BAA3F7D13AB@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
Date: Mon, 26 Oct 2015 11:42:10 -0400
References: <78B5DEF9-516A-4367-B960-6BAB1EA1DF43@gmail.com>
	<43816726.rZz34WOpqq@peggleto-mobl.ger.corp.intel.com>
	<CAJTo0LaEVC8uvPy-KxbCC4kzb8uHeU7m0bJw9hwGT+TChgysUQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Paul Bartlett <paul@nearearth.aero>, yocto@yoctoproject.org
In-Reply-To: <CAJTo0LaEVC8uvPy-KxbCC4kzb8uHeU7m0bJw9hwGT+TChgysUQ@mail.gmail.com>
X-Mailer: Apple Mail (2.2104)
Subject: Re: Problem with library recipe
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
X-List-Received-Date: Mon, 26 Oct 2015 15:42:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_975595F0-EE7F-4140-94EF-A24AE3CEF017"

--Apple-Mail=_975595F0-EE7F-4140-94EF-A24AE3CEF017
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,
	I think I found it in the configure.ac

=
##########################################################################=
######
#  Libtool                                                               =
      										=
#
=
##########################################################################=
######

LT_INIT

DOLT   <=E2=80=94 This invokes doitlibtool

I removed this line and it worked, compiled, moved to sysroot and =
packaged just fine.  Thank you guys for the help.  I will send a note to =
the maintainer and ask him to change it in GitHub.

Thanks again.
 =E2=80=94jim

> On 26 Oct, 2015, at 10:49, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>=20
> On 26 October 2015 at 14:29, Paul Eggleton =
<paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>> =
wrote:
> It looks like this library is using DOLT. Anyone remember how to deal =
with
> that? Ross?
>=20
> One thing to try would be to simply drop the DOLT line from =
configure.ac <http://configure.ac/> and
> see if that helps.
>=20
> Yeah, DOLT is broken and it's trying to invoke "libtool" directly when =
our cross-aware binaries get prefixed with the toolchain triplet.  =
Removing the DOLT line from configure.ac <http://configure.ac/> should =
let it just use libtool properly, and I recommend telling upstream that =
DOLT isn't really needed these days now that libtool is a lot faster.
>=20
> Ross


--Apple-Mail=_975595F0-EE7F-4140-94EF-A24AE3CEF017
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>I think I found it in the =
configure.ac</div><div class=3D""><br class=3D""></div><div =
class=3D"">###############################################################=
#################<br class=3D""># &nbsp;Libtool &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; <span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
								=
</span>#<br =
class=3D"">###############################################################=
#################<br class=3D""><br class=3D"">LT_INIT<br class=3D""><br =
class=3D"">DOLT &nbsp; &lt;=E2=80=94 This invokes doitlibtool</div><div =
class=3D""><br class=3D""></div><div class=3D"">I removed this line and =
it worked, compiled, moved to sysroot and packaged just fine. =
&nbsp;Thank you guys for the help. &nbsp;I will send a note to the =
maintainer and ask him to change it in GitHub.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Thanks again.</div><div =
class=3D"">&nbsp;=E2=80=94jim</div><div class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
26 Oct, 2015, at 10:49, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 26 October 2015 at 14:29, Paul Eggleton <span =
dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank" =
class=3D"">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1df" =
class=3D"a3s" style=3D"overflow:hidden">It looks like this library is =
using DOLT. Anyone remember how to deal with<br class=3D"">
that? Ross?<br class=3D"">
<br class=3D"">
One thing to try would be to simply drop the DOLT line from <a =
href=3D"http://configure.ac/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">configure.ac</a> and<br class=3D"">
see if that helps.</div></blockquote></div><br class=3D"">Yeah, DOLT is =
broken and it's trying to invoke "libtool" directly when our cross-aware =
binaries get prefixed with the toolchain triplet.&nbsp; Removing the =
DOLT line from <a href=3D"http://configure.ac/" =
class=3D"">configure.ac</a> should let it just use libtool properly, and =
I recommend telling upstream that DOLT isn't really needed these days =
now that libtool is a lot faster.</div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">Ross</div></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_975595F0-EE7F-4140-94EF-A24AE3CEF017--
