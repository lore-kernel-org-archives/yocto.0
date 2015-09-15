Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BAA4E00DA9; Tue, 15 Sep 2015 03:44:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46EFDE00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 03:44:44 -0700 (PDT)
Received: by qkfq186 with SMTP id q186so69824731qkf.1
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 03:44:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ALLqVFzg99mzH/maUog9n7Hof0sNzFPdBU9GrdvIOqs=;
	b=ivt6zRS8iajIVZ7pvakJ1+kJ7j/BVP0cATywESNdctspRfQx+O8GmAyDhx2qcmBpnS
	ohI+U7ma0ZO+lD3yVo0b5uTMGsG1sRE+K76CxrzK0rVxwK4iXm1U/dbLhLDUvfbbbWga
	654Atq40fcZOHPmdyxKZuI/+RxKL2e3a7MOTNyLPPD74bV3V7VoThD1MatljTsSgmO2/
	PGXoSX3PTedXdE8j2NWKkDjJLS9ISlpKUeFFUjHZjj8AJLyJFXWzjFSHt6Km7cTYJT0E
	GfOWi0gd+055ny927uqIlHexf10lAYmVH76BDXLld6pSTdXiU2KglGZUMYGrDmOcTfR4
	w8ZA==
X-Gm-Message-State: ALoCoQms8dtvpNF97XLCxDdRrBzFNw4ZekWRA+V5mYPJjNe6ZgzjQqA3mBlQ447H1/1YO3Re5NR1
X-Received: by 10.55.195.86 with SMTP id a83mr30037902qkj.72.1442313883884;
	Tue, 15 Sep 2015 03:44:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Tue, 15 Sep 2015 03:44:24 -0700 (PDT)
In-Reply-To: <2359992.oyyONspMKy@peggleto-mobl.ger.corp.intel.com>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
	<2359992.oyyONspMKy@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Sep 2015 11:44:24 +0100
Message-ID: <CAJTo0LZr0W+Zynh4jpm=7FchKE1kFNWCmbSTMuQ6L8-2U8WxUw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 10:44:48 -0000
Content-Type: multipart/alternative; boundary=001a1142b950b43b73051fc6de64

--001a1142b950b43b73051fc6de64
Content-Type: text/plain; charset=UTF-8

On 15 September 2015 at 09:45, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> core-image-full-cmdline (and the packagegroup it uses,
> packagegroup-core-full-
> cmdline) should give you the former, and the full tools will in almost all
> cases take precedence simply by being installed by virtue of the
> alternatives
> system. In order to actually remove busybox though you'd need to break
> apart
> packagegroup-core-boot (i.e. include its constituent parts separately into
> your image instead of the packagegroup itself).
>

Wind River have started to send patches to enable this, so oe-core 2.0 may
be able to have images without busybox.

Ross

--001a1142b950b43b73051fc6de64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 September 2015 at 09:45, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 id=3D":33f" class=3D"a3s" style=3D"overflow:hidden">core-image-full-cmdlin=
e (and the packagegroup it uses, packagegroup-core-full-<br>
cmdline) should give you the former, and the full tools will in almost all<=
br>
cases take precedence simply by being installed by virtue of the alternativ=
es<br>
system. In order to actually remove busybox though you&#39;d need to break =
apart<br>
packagegroup-core-boot (i.e. include its constituent parts separately into<=
br>
your image instead of the packagegroup itself).</div></blockquote></div><br=
>Wind River have started to send patches to enable this, so oe-core 2.0 may=
 be able to have images without busybox.</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142b950b43b73051fc6de64--
