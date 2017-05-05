Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 355E4E00AF2; Fri,  5 May 2017 10:04:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C3AE009AA
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 10:04:26 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id o5so31420358ith.1
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 10:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TL6dz/1R66umC8M8WH3HiylY/edRDQ6WX+OXooAckAo=;
	b=ERfhLHWqBtsOG1rsLO/0EFZUV6e84mGddzRssys9Y+COlUxkwsbJpTiqwUmr7EblHE
	a82eGxs+GZW0hcx2+l44B3BjEr2JpTzR5gl5F+QC0ObijdlLbD7W7NGiI0B4zDRMTDHY
	5Fjh27QqmMxhZIEqMSEfqNstmcRSEae9nvwbM6eIonefWlloSAcIUovp8PQZESG7Dabx
	TdoMjzvX6ftKBym7azKMU5iOukO6q26kJazHmkm/YyAymiN8o7FXJShBwxenXwkODVU6
	Q1QT4RwugOWCOt+RX5W3eh3TpTP6NWa/VwipaFLO9zYZiPQxy6HQRj6pImd7a288euWk
	GKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TL6dz/1R66umC8M8WH3HiylY/edRDQ6WX+OXooAckAo=;
	b=kbjAXU58QwY1u8TfIeYZDAjKCgagz+RCKsD6V3RCR5HHPtgGpMf1TTBQUuZw0kbCIj
	zPTt7Q61p4dhIfz5C/0hsvWj2lp45wyAOOl0b2T8xf2TRknNweC3IAWtG6qOCsKY3C8T
	siyuYe7DsQRC+BHjd1o7iCKsxW1Ee+gNtE+UihiMPBrYY9tUnBRWGx/NhDn86621NyXo
	9JcWCyll70YbwwZhr9xhhfykaS4SSRfNb3Hd+ctRIxnfoc+113OqaZ2leREs7SULNQrU
	A3/DaSBpAkivG1YrzFdTxUADR60/EOZa/Dxogjj/wyE+JtaUJyFmfirqBGP/lDURWCAj
	qWzQ==
X-Gm-Message-State: AODbwcAstqF3ueAGDyPxfN6zo5GBypMZdq8EMyC37+ZaGBit/idG8WOp
	/EbfU8rEl6kTUgWY1pCdTlZZhBVlVw==
X-Received: by 10.202.225.5 with SMTP id y5mr287299oig.52.1494003865846; Fri,
	05 May 2017 10:04:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Fri, 5 May 2017 10:04:25 -0700 (PDT)
In-Reply-To: <CAOiuDAXJjtK37Zx-7WmoUW9PUXQPdBLorcx7d17=s3gEwaqutg@mail.gmail.com>
References: <CAOiuDAXJjtK37Zx-7WmoUW9PUXQPdBLorcx7d17=s3gEwaqutg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 5 May 2017 19:04:25 +0200
Message-ID: <CAC+thW3i5+o4sGWCDBeP95NXqDN=zdiH1sBUHGLs0v+jY+OhWg@mail.gmail.com>
To: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a new recipe
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
X-List-Received-Date: Fri, 05 May 2017 17:04:30 -0000
Content-Type: multipart/alternative; boundary=001a113d469eb78c3c054ec9e17a

--001a113d469eb78c3c054ec9e17a
Content-Type: text/plain; charset=UTF-8

On Fri, May 5, 2017 at 4:40 PM, Giuseppe Di Guglielmo <
giuseppe.diguglielmo@gmail.com> wrote:

> Hi all,
> I am trying to create a new recipe for Bazel (from Google):
> https://bazel.build/versions/master/docs/install-compile-source.html
>
> The standard compilation flow is relatively simple: "Unzip the archive
> and call bash ./compile.sh; this will create a bazel binary in
> output/bazel. This binary is self-contained, so it can be copied to a
> directory on the PATH (such as /usr/local/bin) or used in-place."
>
> I need some support on how to debug the recipe file that I attach.
>
> In do_compile(), I run bash ./compile.sh. This requires the JAVA_HOME
> variable that I export hard-coded because at the moment I do not know how
> to fetch that path in a recipe. At this point the compile.sh fails and I do
> not know how to debug. Please, can you have a look at it and provide me
> some comments?
>

How does it fail? What is the log from bitbake? Please also provide the
layers configuration that bitbake shows.

--001a113d469eb78c3c054ec9e17a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, May 5, 2017 at 4:40 PM, Giuseppe Di Guglielmo <span dir=3D"ltr">&lt;<a =
href=3D"mailto:giuseppe.diguglielmo@gmail.com" target=3D"_blank">giuseppe.d=
iguglielmo@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr">Hi all,<div>I am trying to create a new recipe for Bazel=
 (from Google):</div><div><a href=3D"https://bazel.build/versions/master/do=
cs/install-compile-source.html" target=3D"_blank">https://bazel.build/versi=
ons/<wbr>master/docs/install-compile-<wbr>source.html</a><br></div><div><br=
></div><div>The standard compilation flow is relatively simple:=C2=A0<span =
style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&q=
uot;,helvetica,arial,sans-serif;font-size:14px">&quot;Unzip the archive and=
 </span>call=C2=A0<code style=3D"font-size:13px;box-sizing:border-box;font-=
family:&quot;source code pro&quot;,monospace;padding:2px 4px;color:rgb(199,=
37,78);background-color:rgb(249,249,249);border-radius:4px">bash ./compile.=
sh</code>;<span style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;=
helvetica neue&quot;,helvetica,arial,sans-serif;font-size:14px"> this will =
create a </span>bazel<span style=3D"color:rgb(68,68,68);font-family:robotod=
raft,&quot;helvetica neue&quot;,helvetica,arial,sans-serif;font-size:14px">=
 binary </span>in=C2=A0<code style=3D"font-size:13px;box-sizing:border-box;=
font-family:&quot;source code pro&quot;,monospace;padding:2px 4px;color:rgb=
(199,37,78);background-color:rgb(249,249,249);border-radius:4px">output/baz=
el</code>.<span style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;=
helvetica neue&quot;,helvetica,arial,sans-serif;font-size:14px"> This binar=
y is self-contained, so it can be copied to a directory on the PATH (such a=
s=C2=A0</span><code style=3D"font-size:13px;box-sizing:border-box;font-fami=
ly:&quot;source code pro&quot;,monospace;padding:2px 4px;color:rgb(199,37,7=
8);background-color:rgb(249,249,249);border-radius:4px">/usr/local/bin</cod=
e><span style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;helvetic=
a neue&quot;,helvetica,arial,sans-serif;font-size:14px">) or used </span>in=
-place<span style=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;helv=
etica neue&quot;,helvetica,arial,sans-serif;font-size:14px">.</span>&quot;<=
/div><div><br></div><div>I need some support on how to debug the recipe fil=
e that I=C2=A0attach.</div><div><br></div><div>In do_compile(), I run=C2=A0=
<font face=3D"monospace, monospace" size=3D"1" color=3D"#ff0000">bash ./com=
pile.sh</font>. This requires the JAVA_HOME variable that I export hard-cod=
ed because at the moment I do not know how to fetch that path in a recipe. =
At this point the compile.sh fails and I do not know how to debug. Please, =
can you have a look at it and provide me some comments?</div></div></blockq=
uote><div><br></div><div>How does it fail? What is the log from bitbake? Pl=
ease also provide the layers configuration that bitbake shows.</div></div><=
/div></div>

--001a113d469eb78c3c054ec9e17a--
