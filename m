Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7EA1E00961; Fri,  5 May 2017 00:36:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.176 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f176.google.com (mail-yw0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B9EE0094C
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 00:36:13 -0700 (PDT)
Received: by mail-yw0-f176.google.com with SMTP id l135so17238706ywb.2
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 00:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uJPD+PEJ2cYCCoR5OYme3X5muMjxCpLBVq1TUQdNlwA=;
	b=jP+xgP+FiHrvaRfdKW1SJMYsEZHxJeyuGU1TmLAMOn0b4Y/6JwKwjH4CPdwwrvHHul
	e5fb5t4ti+d70YQ7nVE+5/h9a8RqtbRn2SUhjEkByQAw+NC+rxZY23VVd5YSOvi0nVCN
	331j47zIahRq1IqcbkPYfJKfk0SA3D1rAC8H+NgSLGZTJXDxTamETeeqe+ROFn88jzK0
	va9Fkd3mv//3pUYLlF9BquZzGYdL6bRiB14TOOK67A6oTYLc37eTib/pXRlFGlcKZKlX
	vfzdtA3TC6vRHoWXOmgNDoeUlrJrj6o/0OgjQXxTQh8PpKFUybEeGCO9evskiCxeLCZ/
	d4TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uJPD+PEJ2cYCCoR5OYme3X5muMjxCpLBVq1TUQdNlwA=;
	b=sBEYJM4odLFWGxoWmYUbvRXNX2lKixmdC1xwBM+EAdsC25/ECZ+JFIoZXrNTh/lWoI
	X0774QH+p+p+AbsiFeTYVTjXUIhFoX1PYNcPriQhYsHjBFUK7uxhJYMl6Y1VaPB8bCjW
	QL/VZluSaJwtWbquJc/bNQ7eSMt4537QghnYKAUvOzLrnH0+1TeKYj5TzWqBkve5O2ka
	QZxTsVxoihOYlAbt0lqSs0aPRM/kJhR4KoJ4VNuY4LlK5rIf4RiJvVhgWJMpSGAtfR8O
	YcXgVT3YwelD+Em7PuvzKvLIBF5+Q7Yf/DbOfdbQ1ZgVS9ZdbKV6DlpOmkWDSBCBppqh
	zBRQ==
X-Gm-Message-State: AN3rC/7mO8dRWnUE+wr+KbDkPQWF4kPo+pflS4Icmwg7p8NPwzUwsbOC
	W0ddw7X6rkbUu9VdPwQly2v5xgUvQtUa
X-Received: by 10.129.53.207 with SMTP id c198mr40906581ywa.14.1493969772478; 
	Fri, 05 May 2017 00:36:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Fri, 5 May 2017 00:35:42 -0700 (PDT)
In-Reply-To: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
References: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 5 May 2017 10:35:42 +0300
Message-ID: <CAHiDW_FG9OE8s6qrxU2JvEnwEHwRqeUpeLs0C=-DFwFBSYgJOQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Pre-compiling Python Byte Code
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
X-List-Received-Date: Fri, 05 May 2017 07:36:19 -0000
Content-Type: multipart/alternative; boundary=001a1142e7ec985223054ec1f154

--001a1142e7ec985223054ec1f154
Content-Type: text/plain; charset=UTF-8

On 3 May 2017 at 21:50, Chris Trobridge <christrobridge@hotmail.com> wrote:
> To improve startup speed I have decided to pre-compile python3 byte code
in my bb recipe.  This is done semi automatically with the rpm build for
Fedora but I've not found anything similar for Yocto.
>
> I initially tried to use compileall:
>
> python3 -m compileall ${D}/opt/test_app/python
>
> This almost worked but it uses the host python3 to failed with a slight
difference in magic.
>
> The following works, as it uses the native python3 compiled by bitbake
but it feels a little contrived.  Is there a better way of specifying the
native python3 interpreter, or a better way of getting my python byte code
compiled prior to generating the packages?
>
> ${STAGING_BINDIR_NATIVE}/python3-native/python3 -m compileall
${D}/opt/test_app/python

Looks fine to me. I believe distutils/setuptools would do this for you
though.

Jussi

--001a1142e7ec985223054ec1f154
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 May 2017 at 21:50, Chris Trobridge &lt;<a href=3D"mai=
lto:christrobridge@hotmail.com">christrobridge@hotmail.com</a>&gt; wrote:<b=
r>&gt; To improve startup speed I have decided to pre-compile python3 byte =
code in my bb recipe.=C2=A0 This is done semi automatically with the rpm bu=
ild for Fedora but I&#39;ve not found anything similar for Yocto.<br>&gt;<b=
r>&gt; I initially tried to use compileall:<br>&gt;<br>&gt; python3 -m comp=
ileall ${D}/opt/test_app/python<br>&gt;<br>&gt; This almost worked but it u=
ses the host python3 to failed with a slight difference in magic.<br>&gt;<b=
r>&gt; The following works, as it uses the native python3 compiled by bitba=
ke but it feels a little contrived.=C2=A0 Is there a better way of specifyi=
ng the native python3 interpreter, or a better way of getting my python byt=
e code compiled prior to generating the packages?<br>&gt;<br>&gt; ${STAGING=
_BINDIR_NATIVE}/python3-native/python3 -m compileall ${D}/opt/test_app/pyth=
on<br><br><div>Looks fine to me. I believe distutils/setuptools would do th=
is for you though.</div><div><br></div><div>Jussi</div></div>

--001a1142e7ec985223054ec1f154--
