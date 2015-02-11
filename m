Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38034E00717; Tue, 10 Feb 2015 17:59:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978D8E002F9
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 17:59:31 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id k11so533864wes.11
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 17:59:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=f3qG212JX1LG1TFRciYi4f9annCgD8CC1ctCNXLrhJs=;
	b=CGVECfTB3S8m8iy80UjeStag5N6WplbsWbYN1QPhB1M1JP28z15RcdFMQhX7UFUkzu
	kieJKE4DnLqoA2cwrLqykfZJWoc4ZxxZevTIdLVZBMPByqiGIw8tGnuq9eQMwbrkr5b7
	TAtmEiwy9lyUagvWWEvVqjGyrwafFcCXsxiMnwopJKS7Hu+Kpkc4UEIEcWLDGN3CGOvd
	BChdfMNrJ6reQsImICiuPbazgSiTPXY2sDSuRe9N6f6Dww+YymsJY4Rc+6ip64rB9Ora
	sd88CV5D9jAGTO9G+gLNz4F0hRac4BgVzUs69j5kZTWkPs+Gi7Tv96RHpu5k0nkQMqHt
	zMeQ==
X-Gm-Message-State: ALoCoQk/KsqbH6C6M5GTghxLCcRnOPG2kdmjEtPfh3oMSfN0hyzy01fDve7/Y0y6o2O2/uBcxRkT
X-Received: by 10.194.238.193 with SMTP id vm1mr17186900wjc.124.1423619970435; 
	Tue, 10 Feb 2015 17:59:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.162.2 with HTTP; Tue, 10 Feb 2015 17:59:10 -0800 (PST)
X-Originating-IP: [195.249.186.165]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Feb 2015 02:59:10 +0100
Message-ID: <CAK18fxEL_-Fq0x+korV73Of5sswfTkjGgJW_3wRW-P+QUmgmSw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Issues with vardeps
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
X-List-Received-Date: Wed, 11 Feb 2015 01:59:42 -0000
Content-Type: multipart/alternative; boundary=089e01493ceca22397050ec65aa8

--089e01493ceca22397050ec65aa8
Content-Type: text/plain; charset=UTF-8

I encounter issues when using vardeps on do_install.

I have a recipe with a do_install function and want to do stuff inside
based on a specific DISTRO_FEATURE.

<-->if
${@bb.utils.contains('DISTRO_FEATURES','my-production','true','false',d)};
then
...
<-->else
...
<-->fi

I have a distro file where I inject a specific VARIABLE in the
DISTRO_FEATURES:

BUILD_TYPE ?= "production"
DISTRO_FEATURES_append = " my-${BUILD_TYPE}"

In order to force the dependency of do_install on DISTRO_FEATURES, I use:
do_install[vardeps] += "DISTRO_FEATURES"

For whatever reason this doesn't work as expected. To be more specifically,
it works for 2-3 changes of BUILD_TYPE (in local.conf) and then it just
ignores the BUILD_TYPE changes. I checked the dumpsig and after 2-3 changes
of BUILD_TYPE the hash of the last sig file doesn't change anymore even
though DISTRO_FEATURES is there.

http://pastebin.com/8AFxb4FZ

Any idea why do I get this behavior? Is this a known issue or do I miss
something? What I want to accomplish is to force do_install every-time
DISTRO_FEATURES changes.

-- 
*Andrei Gherzan*

--089e01493ceca22397050ec65aa8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I encounter issues when using vardeps on do_install.<div><=
br></div><div><div>I have a recipe with a do_install function and want to d=
o stuff inside based on a specific DISTRO_FEATURE.</div><div><br></div><div=
><div>&lt;--&gt;if ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;,&#39;my-p=
roduction&#39;,&#39;true&#39;,&#39;false&#39;,d)}; then</div><div>...</div>=
<div>&lt;--&gt;else</div><div>...</div><div>&lt;--&gt;fi</div></div><div><b=
r></div><div>I have a distro file where I inject a specific VARIABLE in the=
 DISTRO_FEATURES:</div><div><div><br></div><div>BUILD_TYPE ?=3D &quot;produ=
ction&quot;<br></div><div>DISTRO_FEATURES_append =3D &quot; my-${BUILD_TYPE=
}&quot;</div></div><div><br></div><div>In order to force the dependency of =
do_install on DISTRO_FEATURES, I use:</div><div><div>do_install[vardeps] +=
=3D &quot;DISTRO_FEATURES&quot;<br></div></div><div><br></div><div>For what=
ever reason this doesn&#39;t work as expected. To be more specifically, it =
works for 2-3 changes of BUILD_TYPE (in local.conf) and then it just ignore=
s the BUILD_TYPE changes. I checked the dumpsig and after 2-3 changes of BU=
ILD_TYPE the hash of the last sig file doesn&#39;t change anymore even thou=
gh DISTRO_FEATURES is there.</div><div><br></div></div><div><a href=3D"http=
://pastebin.com/8AFxb4FZ">http://pastebin.com/8AFxb4FZ</a><br></div><div><b=
r clear=3D"all"><div>Any idea why do I get this behavior? Is this a known i=
ssue or do I miss something? What I want to accomplish is to force do_insta=
ll every-time DISTRO_FEATURES changes.</div><div><br></div>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:center"></d=
iv><div style=3D"text-align:center"><div align=3D"left"><b style=3D"font-fa=
mily:Arial;font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gh=
erzan</b><br></div></div></div></div>
</div></div>

--089e01493ceca22397050ec65aa8--
