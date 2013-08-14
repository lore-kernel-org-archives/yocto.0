Return-Path: <raj.khem@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA532E003D3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 17:39:20 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id er7so11336268obc.3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 17:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BDCGdTQF1v2G76GuJSw+KGQv0kt1CNe25H1urhLjOyk=;
	b=Ivs/7q/Tu3hluqO7j9i9f/hAEH6O0ZYC+05YXLoF+z+D9rHQftKvm1l178J2hhM/3j
	raaj6zdAGgVqpQoWOmJ1o/FlGWQuYByrA2FgJRbuSKhPbGZ8aHRW6tE16O4ArIS+Mjvy
	CTILvkF7PI7+Ciq8fVgTVe8WV3wZwtTe1tbM6ws/wAM2foD2cPMik8sF9b5OqveZ7srU
	t5vvPfRyiHykerh8jRIw/8V910vmfo+SRDyjHsRbwjr3FU6dzhs4rXoBEjVSDYID/yGs
	/1hapMX86KNLnCgct7gbFsYe2UkvAGveIR8vBt96TCpatHg884J592VTfc7tXcHlx4Qz
	kYBg==
X-Received: by 10.182.48.230 with SMTP id p6mr18482159obn.1.1376440759886;
	Tue, 13 Aug 2013 17:39:19 -0700 (PDT)
Received: from [172.23.7.190] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id it7sm3858566obb.11.2013.08.13.17.39.18
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 17:39:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <A322536D-FFE3-4631-919E-32AFFC538287@taser.com>
Date: Tue, 13 Aug 2013 17:39:16 -0700
Message-Id: <438582FE-EBCA-43C8-92AE-7D5978994B9D@gmail.com>
References: <A322536D-FFE3-4631-919E-32AFFC538287@taser.com>
To: Brad Litterell <bradl@taser.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a recipe class that simply installs files to the target?
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
X-List-Received-Date: Wed, 14 Aug 2013 00:39:24 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F9ED7532-5C52-44EE-A356-AF400A46D23A"

--Apple-Mail=_F9ED7532-5C52-44EE-A356-AF400A46D23A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 13, 2013, at 5:15 PM, Brad Litterell <bradl@taser.com> wrote:

> I have some scripts I'd like to copy to the target to a simple folder, =
e.g. /lib/foo
>=20
> Ideally I'd like to just create a simple recipe something like this:
>=20
> SRC_URI =3D "file://lib/foo/foo.sh"
> inherit install_only
>=20
> Is there a class like this? =20
>=20
> It seems like most recipes of this form accomplish this by a custom =
do_install step, such as this:
>=20
> do_install() {
>    install -D -m 755 ${S}/lib/foo/foo.sh ${D}/lib/foo
> }
>=20
> and I was just hoping there might be a base class for examining the =
input files and generating the install steps?
>=20


there isn't one. Its not as common a case to abstract out into a class =
additionally when you have such recipes then
the install paths aren't standard either so adding do_install to recipe =
and doing it there is OK



> Thanks,
> Brad
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F9ED7532-5C52-44EE-A356-AF400A46D23A
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Aug 13, 2013, at 5:15 PM, Brad Litterell &lt;<a href="mailto:bradl@taser.com">bradl@taser.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite">

<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">

<div style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">
<font face="Arial Unicode MS">I have some scripts I'd like to copy to the target to a simple folder, e.g. /lib/foo</font>
<div><font face="Arial Unicode MS"><br>
</font></div>
<div><font face="Arial Unicode MS">Ideally I'd like to just create a simple recipe something like this:</font></div>
<div><font face="Arial Unicode MS"><br>
</font></div>
<div>
<pre style="margin-top: 0px; margin-bottom: 0px; "><!--StartFragment--><font face="Arial Unicode MS">SRC_URI<span style=" color:#c0c0c0;"> </span>=<span style=" color:#c0c0c0;"> </span>"<a href="file:///lib/foo/foo.sh">file://lib/foo/foo.sh</a>"</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">inherit install_only<!--EndFragment--></font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS"><br></font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">Is there a class like this? &nbsp;</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS"><br></font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">It seems like most recipes of this form accomplish this by a custom do_install step, such as this:</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS"><br></font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">do_install() {</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">   install -D -m 755 ${S}/lib/foo/foo.sh ${D}/lib/foo</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">}</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS"><br></font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">and I was just hoping there might be a base class for examining the input files and generating the install steps?</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS"><br></font></pre></div></div></blockquote><div><br></div><div><br></div><div>there isn't one. Its not as common a case to abstract out into a class additionally when you have such recipes then</div><div>the install paths aren't standard either so adding do_install to recipe and doing it there is OK</div><div><br></div><div><br></div><br><blockquote type="cite"><div style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">Thanks,</font></pre>
<pre style="margin-top: 0px; margin-bottom: 0px; "><font face="Arial Unicode MS">Brad</font></pre>
</div>
</div>

_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_F9ED7532-5C52-44EE-A356-AF400A46D23A--
