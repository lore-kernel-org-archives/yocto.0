Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 803E3E0052B; Fri, 17 Mar 2017 01:47:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.176 listed in list.dnswl.org]
Received: from mail-yw0-f176.google.com (mail-yw0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F270E003C1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 01:47:31 -0700 (PDT)
Received: by mail-yw0-f176.google.com with SMTP id o4so48891861ywd.3
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 01:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pls/Lk0VBpN70cHOAU1tfKp9L1JZOasxSkDDMkxEpp0=;
	b=y1kXvR4aVVxhmLtu4l4QMco5IEsEiaUJ3W+i0ft4SvwlaXbWJ7/q1El8Xufdn9/Sn3
	tUiz1txuVC6+4f/ykfbW49AqOc53Pjq8QFATSCd0Nfprp6+DuIuX7ehOxpbM8s1CSqoQ
	+1q9SAv+4mB5ZbWeUFLnAsy1IFqVjRVlu3DbD+tJY/Pq0WnKV5O1ThHf+Wsd2oBxSJEb
	9Anj5Fpu0X19dtW09j2ZOXEVJXyo0kLv1eWXJbryNVeES9WWVwjatjVVK198zqdHY5e2
	Uks8mz99eslaGkLFWujXWuWvXd1LjLQgJD01sARVyBtoGEVzsg92yKLHbUw0XtP5fXa3
	Aasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pls/Lk0VBpN70cHOAU1tfKp9L1JZOasxSkDDMkxEpp0=;
	b=c+gZzCrPeV3wQOryHgk2RfZdcHxSgjxymUuaRColT+6eUK/k54ZJ+GgdruFqH5+2cq
	6vWXhtd/0OKh0XamYKYc93Si2+Avs4Y0L+7zNnwnIxCzpPbPw8Gcn1AxRXzxDA6VN8Z8
	Vv8SlCVjGQgroNfqSMygpA1gmtSRA+DupAjI9BB5+ffVCLcmt9WyVHLLmaafL0GGT1v+
	aJx7gvAJ9e5jTxkRp/E5/b68aGPFpM5SaeVihKIR5uKC2evnRfBhNff/1popGJDH85xi
	B9hZIPfqoUSUwPKlRERaF8tSBcu4+jZyWYg9U9/FdI1lJENhuxbMyNseLXF2e2VD0PEW
	gLQg==
X-Gm-Message-State: AFeK/H3giRFSCCaFOSFxUnN9zIJQoCJSbgv+wf90xndsp9+5S9xuGgiDQp+RZGEaRIOm0T4359Mp/WioxREXZwsK
X-Received: by 10.37.35.205 with SMTP id j196mr743356ybj.3.1489740450717; Fri,
	17 Mar 2017 01:47:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Fri, 17 Mar 2017 01:47:00 -0700 (PDT)
In-Reply-To: <20170316153425.19041-1-jose.perez.carranza@linux.intel.com>
References: <20170316153425.19041-1-jose.perez.carranza@linux.intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 17 Mar 2017 10:47:00 +0200
Message-ID: <CAHiDW_GFPTZsfjbRpdP+vDaiE-OEVwD+1xZagL1q-z7pR3NrcQ@mail.gmail.com>
To: jose.perez.carranza@linux.intel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [qa-tools][PATCH] full-test-cycle-wrapper: Correct qemu-auto variables
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
X-List-Received-Date: Fri, 17 Mar 2017 08:47:34 -0000
Content-Type: multipart/alternative; boundary=001a113d45085f7827054ae93ad7

--001a113d45085f7827054ae93ad7
Content-Type: text/plain; charset=UTF-8

On 16 March 2017 at 17:34, <jose.perez.carranza@linux.intel.com> wrote:
>
> From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
>
> Update variables for creating test runs for qemu ato component
>
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
> ---
>  scripts/full-test-cycle-wrapper.sh | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/full-test-cycle-wrapper.sh
b/scripts/full-test-cycle-wrapper.sh
> index f52cd96..3a6ba0f 100755
> --- a/scripts/full-test-cycle-wrapper.sh
> +++ b/scripts/full-test-cycle-wrapper.sh
> @@ -82,8 +82,8 @@ create_yocto(){
>     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
>
>     #QEMUs Autos
> -   EVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64"
"qemuppc" "qemux86-64" "qemux86-lsb" "qemux86_64-lsb")
> -   ECUTION_TYPE="AUTO"
> +   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64"
"qemuppc" "qemux86-64")

It seems this is in master already so I'll just mention the typo for
future: ENVIRONMETS should probably be ENVIRONMENTS in whole file.

  Jussi

> +   EXECUTION_TYPE="AUTO"
>     create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
>
>     #QEMUs Autos LSB
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a113d45085f7827054ae93ad7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On 16 March 2017 at 17:34, &lt;<a href=3D"mailto:j=
ose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.intel.com</a>=
&gt; wrote:<br>&gt;<br>&gt; From: Jose Perez Carranza &lt;<a href=3D"mailto=
:jose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.intel.com</=
a>&gt;<br>&gt;<br>&gt; Update variables for creating test runs for qemu ato=
 component<br>&gt;<br>&gt; Signed-off-by: Jose Perez Carranza &lt;<a href=
=3D"mailto:jose.perez.carranza@linux.intel.com">jose.perez.carranza@linux.i=
ntel.com</a>&gt;<br>&gt; ---<br>&gt; =C2=A0scripts/full-test-cycle-wrapper.=
sh | 4 ++--<br>&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions(-)<b=
r>&gt;<br>&gt; diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/fu=
ll-test-cycle-wrapper.sh<br>&gt; index f52cd96..3a6ba0f 100755<br>&gt; --- =
a/scripts/full-test-cycle-wrapper.sh<br>&gt; +++ b/scripts/full-test-cycle-=
wrapper.sh<br>&gt; @@ -82,8 +82,8 @@ create_yocto(){<br>&gt; =C2=A0 =C2=A0 =
create_test_run &quot;${1}&quot; &quot;core-image-sato-sdk_ANYQEMU&quot;<br=
>&gt;<br>&gt; =C2=A0 =C2=A0 #QEMUs Autos<br>&gt; - =C2=A0 EVIRONMETS=3D(&qu=
ot;qemu-x86&quot; &quot;qemuarm&quot; &quot;qemuarm64&quot; &quot;qemumips&=
quot; &quot;qemumips64&quot; &quot;qemuppc&quot; &quot;qemux86-64&quot; &qu=
ot;qemux86-lsb&quot; &quot;qemux86_64-lsb&quot;)<br>&gt; - =C2=A0 ECUTION_T=
YPE=3D&quot;AUTO&quot;<br>&gt; + =C2=A0 ENVIRONMETS=3D(&quot;qemu-x86&quot;=
 &quot;qemuarm&quot; &quot;qemuarm64&quot; &quot;qemumips&quot; &quot;qemum=
ips64&quot; &quot;qemuppc&quot; &quot;qemux86-64&quot;)<div><br></div><div>=
It seems this is in master already so I&#39;ll just mention the typo for fu=
ture: ENVIRONMETS should probably be ENVIRONMENTS in whole file.=C2=A0</div=
><div><br></div><div>=C2=A0 Jussi<br></div><div><br>&gt; + =C2=A0 EXECUTION=
_TYPE=3D&quot;AUTO&quot;<br>&gt; =C2=A0 =C2=A0 create_test_run &quot;${1}&q=
uot; &quot;core-image-sato-sdk_ANYQEMU&quot;<br>&gt;<br>&gt; =C2=A0 =C2=A0 =
#QEMUs Autos LSB<br>&gt; --<br>&gt; 2.11.0<br>&gt;<br>&gt; --<br>&gt; _____=
__________________________________________<br>&gt; yocto mailing list<br>&g=
t; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a></div></div>

--001a113d45085f7827054ae93ad7--
