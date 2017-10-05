Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A31B0E00D85; Thu,  5 Oct 2017 12:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22CE1E00CB4
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 12:18:43 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f72so7844106ioj.5
	for <yocto@yoctoproject.org>; Thu, 05 Oct 2017 12:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J5lLDtMZb7KO9Nc3mPqcoyJ8PDdjWIibBVphCuFgvZQ=;
	b=0nseAztjRC94bepsLWyEeZ+NJh1Cofh+EoTAMj7OR29P678+nHiyY2crFA7XT1CP6T
	NfRlGb5vioBl70c/JAvBy219HPaUFAnYcvn8vhpehF+cY80cHTVmAxTYqgshEAHgbb5v
	TF03umnOZn+hKfQrd1HkL6UVNap37U63wy1S1RxnCnoJgOY5yEaYvGPqEHkse0MfXT7f
	qSc8GVRCLLI660yFaPIQlwf/wjtccmu3g5IGD5oZuEq7Ti1QyVc2vclyatE6JIlDn17m
	J+7UcPOtalOmUXbYdAbcy0XpmrUphLFqWjTXrJ1T98DJFSlbsa3jUk7nUIkROwzzfCmn
	OKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J5lLDtMZb7KO9Nc3mPqcoyJ8PDdjWIibBVphCuFgvZQ=;
	b=mpl3b7gx5m26uSQ+Yr4eWTgp0TNSA85h6q33oRUipkqBR+YcEj7Eb6HTagYuSaBmt9
	WmN81Q4gRVgh6Qov1qAB3vdB+s9w8f+SteQ9Ybi4zKlqvfCicMpEK9zdD5FE9RH5MgSk
	8sow2XblACZkQ2PAS149LUdKsOuJUgiSghz3soulaTwoChQOox+cPbN6jBWQPwArTwVO
	fC9pKySEOcJITgqQDJQ0wllGf/lCicxLYfg3AnGF/wB3TKuObJ6FjsOb2wOLUaDF0iL4
	RUBjTwSYQXuSmuMkWeGxpVFM+zIv1RCo4Oi339kGCiwsrpnko301PPx0Ky3Z3oX8ZfkA
	77qg==
X-Gm-Message-State: AMCzsaWgelxzSJGOpqJwC/gGAjHc5YG0XdXuKERacJ6jlKm5iecVzfoB
	E13AduGAvRwYhLov9VyJFsmR8kSqHLMWHn/QTLKJyg==
X-Google-Smtp-Source: AOwi7QCYJswSu0N4pGoON61j1rYz0Vio5u3Plc4PvERQLL3VuCygAWnCJIUBuoPQvgKGEy8kVvgnSM63no1LZKEr9+Y=
X-Received: by 10.107.164.28 with SMTP id n28mr36755296ioe.175.1507231123418; 
	Thu, 05 Oct 2017 12:18:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.59.22 with HTTP; Thu, 5 Oct 2017 12:18:22 -0700 (PDT)
In-Reply-To: <8c87603b0e564a00b7ef230b0e24b41d@sakuraus.com>
References: <2376f96acc0f4c3db9c3b40a3cfc98f3@sakuraus.com>
	<3688235.HQgvHeQ0bO@peggleto-mobl.ger.corp.intel.com>
	<8c87603b0e564a00b7ef230b0e24b41d@sakuraus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Oct 2017 20:18:22 +0100
Message-ID: <CAJTo0LZsJMtOUx9V9PJ959=w4r+r0Ow-AWEn6cgit90HqP5Dmw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Having trouble getting recipe to run in proper directory
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
X-List-Received-Date: Thu, 05 Oct 2017 19:18:44 -0000
Content-Type: multipart/alternative; boundary="001a114223acb4f140055ad1977c"

--001a114223acb4f140055ad1977c
Content-Type: text/plain; charset="UTF-8"

On 5 October 2017 at 18:51, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> ERROR: configure failed
> Unknown argument --build=x86_64-linux
>
> so bitbake is including an option that the configure script doesn't
> understand. Is there a way to delete that option
>

If configure doesn't recognise that option then it's not really autotools
and you shouldn't be using the autotools class.

Looking at it I'm right,
https://bitbucket.org/Mongo/canfestival-3-asc/src/8973dd8be7e8d65a25f608fc57557c80edf20bb4/configure?at=default&fileviewer=file-view-default
is just a hand-crafted script using bash that is called "configure".  Don't
inherit autotools, and instead look at the --help output and pass all the
values you'll need to (such as --cc).  Hopefully it cross-compiles
correctly...

Ross

--001a114223acb4f140055ad1977c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 5 October 2017 at 18:51, Greg Wilson-Lindberg <span dir=
=3D"ltr">&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWil=
son@sakuraus.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-col=
or:rgb(204,204,204);padding-left:1ex">





<div>


<div dir=3D"ltr">
<div id=3D"gmail-m_4999844221184459532x_divtagdefaultwrapper" style=3D"font=
-size:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif"=
>
<p><span style=3D"font-family:&quot;Courier New&quot;,monospace;font-size:1=
2pt">ERROR: configure failed</span><br></p>
<div><span style=3D"font-family:&quot;Courier New&quot;,monospace">Unknown =
argument --build=3Dx86_64-linux</span></div>
<div><br>
</div>
so bitbake is including an option that the configure script doesn&#39;t und=
erstand. Is there a way to delete that option</div></div></div></blockquote=
><div><br></div><div>If configure doesn&#39;t recognise that option then it=
&#39;s not really autotools and you shouldn&#39;t be using the autotools cl=
ass.</div><div><br></div><div>Looking at it I&#39;m right,=C2=A0<a href=3D"=
https://bitbucket.org/Mongo/canfestival-3-asc/src/8973dd8be7e8d65a25f608fc5=
7557c80edf20bb4/configure?at=3Ddefault&amp;fileviewer=3Dfile-view-default">=
https://bitbucket.org/Mongo/canfestival-3-asc/src/8973dd8be7e8d65a25f608fc5=
7557c80edf20bb4/configure?at=3Ddefault&amp;fileviewer=3Dfile-view-default</=
a> is just a hand-crafted script using bash that is called &quot;configure&=
quot;.=C2=A0 Don&#39;t inherit autotools, and instead look at the --help ou=
tput and pass all the values you&#39;ll need to (such as --cc).=C2=A0 Hopef=
ully it cross-compiles correctly...</div><div><br></div><div>Ross</div></di=
v></div></div>

--001a114223acb4f140055ad1977c--
