Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 509F1E00B37; Fri, 23 Oct 2015 16:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E0CE00B31
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:43:29 -0700 (PDT)
Received: by qgem9 with SMTP id m9so79321560qge.1
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 16:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=W28Atjm3i4YJaXgTfX7ng0o89HkQ+WaFhm0de4L613A=;
	b=fR3ORZk8aSj9UwY63df302ppMeX9b/U2SxQmJUJ8Kj6UUfjCgVP+VI0UKZCLOHfzVx
	JS8gzIuzllS/093GnuBNWAViBQZ170zmJ+CMUMiGEjLcNsmHdrXMaHZCmuXoXjVRUBHP
	A1YyWxbfyVeCc63CS8VEdwh4lvFamNHyLR9RTFDYttv4vn/KFD2UTq4tZ9hTTXRmgf2b
	bVTZYZftCj14DCCpQBnDOhHmWcbGsvf8tzTE7AbcfNQPHChcfPoegUfTOX+H/Vpeo0cI
	JQ35iUITbd50SI63oqK8fZYwgIDYR9VIORvZjHrHiq7EzH3uBth3LUcBr7fjzdgqP2V1
	dfXw==
X-Gm-Message-State: ALoCoQk4jDK3wGlSJfnAuK+HPTzzur2AzErbzw9c2/0jhOpEB6lQ1G9jclh9AgK+HJ7hHOspPGJe
X-Received: by 10.140.44.54 with SMTP id f51mr685643qga.80.1445643808635; Fri,
	23 Oct 2015 16:43:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Fri, 23 Oct 2015 16:43:09 -0700 (PDT)
In-Reply-To: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
References: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 24 Oct 2015 00:43:09 +0100
Message-ID: <CAJTo0LaqsGry89MGvS=7Q9kWn1Cz9ZZ=eH9vFOG=j4mPE2CP8g@mail.gmail.com>
To: Todd Efflam <todd.efflam@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling ipv6
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
X-List-Received-Date: Fri, 23 Oct 2015 23:43:32 -0000
Content-Type: multipart/alternative; boundary=001a113b4cb6af93d00522ce2dce

--001a113b4cb6af93d00522ce2dce
Content-Type: text/plain; charset=UTF-8

On 24 October 2015 at 00:28, Todd Efflam <todd.efflam@gmail.com> wrote:

> We're trying to disable ipv6 in our build and are able to do so by
> directly editing the file
> meta/conf/distro/include/default-distrovars.inc and deleting "ipv6"
> from "DISTRO_FEATURES_LIBC_DEFAULT ?= "ipv4 ipv6 libc-backtrace
> lib..."
>
> Is there a better way to disable ipv6 so that we can do this from
> within our own branch?
>

In your distro configuration either define your own DISTRO_FEATURES
entirely from scratch, or use DISTRO_FEATURES_remove = "ipv6".

Ross

--001a113b4cb6af93d00522ce2dce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 October 2015 at 00:28, Todd Efflam <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:todd.efflam@gmail.com" target=3D"_blank">todd.efflam@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":415" class=3D=
"a3s" style=3D"overflow:hidden">We&#39;re trying to disable ipv6 in our bui=
ld and are able to do so by<br>
directly editing the file<br>
meta/conf/distro/include/default-distrovars.inc and deleting &quot;ipv6&quo=
t;<br>
from &quot;DISTRO_FEATURES_LIBC_DEFAULT ?=3D &quot;ipv4 ipv6 libc-backtrace=
<br>
lib...&quot;<br>
<br>
Is there a better way to disable ipv6 so that we can do this from<br>
within our own branch?</div></blockquote></div><br>In your distro configura=
tion either define your own DISTRO_FEATURES entirely from scratch, or use D=
ISTRO_FEATURES_remove =3D &quot;ipv6&quot;.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113b4cb6af93d00522ce2dce--
