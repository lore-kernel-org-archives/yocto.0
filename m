Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47474E00C77; Mon, 23 Jul 2018 13:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 883A4E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:45:12 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id 126-v6so1309254qke.5
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 13:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MsxL5rCNPNI6vURGGFtvd4K3/iO30axH8vk4CNxzGZ8=;
	b=zbksLYqt2lDNZJcmQntjK0KZjhjpM+F/ZFEHPc+rxLNKEyp9h1NOI9Se5Q1P258Ips
	8mF9KibcorsFNxNWCl9/xwMox2HBG6MsWs6qXDQkZqnJQarRflzz3u5DOvZABgHO5Asj
	B2BHZ28slo2K1W9mlEOClQX3rXqzoC/PNI5m8GfE/7v8MC4f5mm+cNzVc4rarAY4WN42
	yGF+1yAPkx4EtTfxXq1J6SI+ndXVAPIdCJRukAs3A5KfH3Lrfod8MlxJKoNvluL/uaf+
	gHdrWmyNLGrWefx0uhcR2F6YSmvGY7gP93LNOV948cnF3EfoX/jQcHcHmxjGEH8sr1gR
	MGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MsxL5rCNPNI6vURGGFtvd4K3/iO30axH8vk4CNxzGZ8=;
	b=qwAVh5sB+nlTByd3vN4VD207xq6WVz7RQ81eYnsRPcTCg5N7O1ZX2pCD00gq9mMMM0
	qgITY8RmGczs4d2Nl+hqyBKz+PpdkXE8GQv2FsrB8G+vFj9SEDolb35a4Gol/rOZ0Byg
	lou6jc9/F2j73pQTIwn5VoHBK6jX3NgADkgMg9d576L9k8EQeSEgw1KCs6EKUOKBoY3C
	serXxPNmeKGEvOiqNVW1rq36LcohbW0I8DMnQWm6JmQS0cUVHreyFA6ViaUtq+x26Ldf
	KeLYJDEhXsAv027mWbMK3qRkqwutwZMXeUWvOB6OWAzk801yCARjhPbWswN5sQfHOeFJ
	1kjg==
X-Gm-Message-State: AOUpUlHrsiaXD47YdY3zP+UokuY8IfupuhjTn0W/4gUoQjJWxtrAAXn1
	mVQyNkV1VXQCAYnuxtKHdcte2gYSkppQcWG+1lk3Pq/H57pCdQ==
X-Google-Smtp-Source: AAOMgperaYUtTeCjyMA4LVmpFN0aUNBqEvQBGV1Nx2tZjmKAblUbrH6xXi6591Teez5ficuI9i8OcGcusqJ0LgZoQ3c=
X-Received: by 2002:a37:71c7:: with SMTP id
	m190-v6mr12958758qkc.275.1532378711833; 
	Mon, 23 Jul 2018 13:45:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Mon, 23 Jul 2018 13:45:11 -0700 (PDT)
In-Reply-To: <6605202.trP80IfoMo@localhost.localdomain>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
	<CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
	<CAJTo0LaBSZdOVh7QEWvtr=S+ft99J7W=dodXTK0OTJp9A9sDNA@mail.gmail.com>
	<6605202.trP80IfoMo@localhost.localdomain>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Mon, 23 Jul 2018 16:45:11 -0400
Message-ID: <CANmTPBb4izbEgFR2uo9Jd32tBZLbyPKhHuLfXMUkdyqTdNd91w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to download a recipe
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
X-List-Received-Date: Mon, 23 Jul 2018 20:45:13 -0000
Content-Type: multipart/alternative; boundary="000000000000c7d55b0571b0b8c4"

--000000000000c7d55b0571b0b8c4
Content-Type: text/plain; charset="UTF-8"

So I cloned the git meta-networking.

Copied the whole
meta-openembedded/meta-networking/recipes-devtools/grpc

into my layer.  Ran bitbake and I get the following errors:


$ bitbake grpc
Loading cache: 100%
|#################################################################################|
Time: 0:00:01
Loaded 3076 entries from dependency cache.
Parsing recipes: 100%
|###############################################################################|
Time: 0:00:01
Parsing of 2334 .bb files complete (2333 cached, 1 parsed). 3064 targets,
288 skipped, 2 masked, 0 errors.
WARNING: No bb files matched BBFILE_PATTERN_phytec
'^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'gflags-native' (but
virtual:native:/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-devtools/grpc/
grpc_1.8.5.bb DEPENDS on or otherwise requires it). Close matches:
  glslang-native
  slang-native
  lua-native
ERROR: Required build target 'grpc' has no buildable providers.
Missing or unbuildable dependency chain was: ['grpc', 'grpc-native',
'gflags-native']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
$


There is no instructions on how we can compile this grpc into image?

Thanks,
S




On Tue, Jul 17, 2018 at 3:11 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Thursday, 12 July 2018 7:51:35 PM CEST Burton, Ross wrote:
> > On 12 July 2018 at 18:49, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> > > for grpc, there are 2 of them:
> > >
> > > http://layers.openembedded.org/layerindex/recipe/72419/
> > > Layer meta-oe
> > > <http://layers.openembedded.org/layerindex/branch/master/
> layer/meta-oe/>
> > > (master branch)
> >
> > That's a bug in the tool, as meta-networking is a sublayer of meta-oe.
> If
> > you look at the paths, they're the same file.
>
> That is indeed a bug in the layer index update script - at some point in
> the
> past the recipe was moved and the move wasn't handled properly. I have a
> fix
> and will be sending it shortly.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
>

--000000000000c7d55b0571b0b8c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So I cloned the git meta-networking.</div><div><br></=
div><div>Copied the whole <br></div><div><span style=3D"font-family:monospa=
ce,monospace">meta-openembedded/meta-networking/recipes-devtools/grpc</span=
></div><div><br></div><div>into my layer.=C2=A0 Ran bitbake and I get the f=
ollowing errors:</div><div><br></div><div><br></div><div><span style=3D"fon=
t-family:monospace,monospace">$ bitbake grpc<br>Loading cache: 100% |######=
###########################################################################=
| Time: 0:00:01<br>Loaded 3076 entries from dependency cache.<br>Parsing re=
cipes: 100% |##############################################################=
#################| Time: 0:00:01<br>Parsing of 2334 .bb files complete (233=
3 cached, 1 parsed). 3064 targets, 288 skipped, 2 masked, 0 errors.<br>WARN=
ING: No bb files matched BBFILE_PATTERN_phytec &#39;^/opt/PHYTEC_BSPs/yocto=
_imx7/sources/meta-phytec/common/&#39;<br>NOTE: Resolving any missing task =
queue dependencies<br>ERROR: Nothing PROVIDES &#39;gflags-native&#39; (but =
virtual:native:/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-n=
etworking/recipes-devtools/grpc/<a href=3D"http://grpc_1.8.5.bb">grpc_1.8.5=
.bb</a> DEPENDS on or otherwise requires it). Close matches:<br>=C2=A0 glsl=
ang-native<br>=C2=A0 slang-native<br>=C2=A0 lua-native<br>ERROR: Required b=
uild target &#39;grpc&#39; has no buildable providers.<br>Missing or unbuil=
dable dependency chain was: [&#39;grpc&#39;, &#39;grpc-native&#39;, &#39;gf=
lags-native&#39;]<br><br>Summary: There was 1 WARNING message shown.<br>Sum=
mary: There were 2 ERROR messages shown, returning a non-zero exit code.<br=
>$ </span><br></div><div><br></div><div><br></div><div>There is no instruct=
ions on how we can compile this grpc into image?</div><div><br></div><div>T=
hanks,</div><div>S</div><div><br></div><div><br></div><div><br></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jul 17, 2=
018 at 3:11 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.=
eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Thursday, 12 July 2018 7:51:35 PM CEST Burton, Ross wrote:<br>
&gt; On 12 July 2018 at 18:49, Simon Chamlian &lt;<a href=3D"mailto:simon.c=
hamlian@mpbc.ca">simon.chamlian@mpbc.ca</a>&gt; wrote:<br>
&gt; &gt; for grpc, there are 2 of them:<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"http://layers.openembedded.org/layerindex/recipe/72419=
/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.<wbr>org=
/layerindex/recipe/72419/</a><br>
&gt; &gt; Layer meta-oe<br>
</span>&gt; &gt; &lt;<a href=3D"http://layers.openembedded.org/layerindex/b=
ranch/master/layer/meta-oe/" rel=3D"noreferrer" target=3D"_blank">http://la=
yers.openembedded.<wbr>org/layerindex/branch/master/<wbr>layer/meta-oe/</a>=
&gt;<br>
&gt; &gt; (master branch)<br>
<span class=3D"">&gt;<br>
&gt; That&#39;s a bug in the tool, as meta-networking is a sublayer of meta=
-oe.=C2=A0 If<br>
&gt; you look at the paths, they&#39;re the same file.<br>
<br>
</span>That is indeed a bug in the layer index update script - at some poin=
t in the <br>
past the recipe was moved and the move wasn&#39;t handled properly. I have =
a fix <br>
and will be sending it shortly.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
</font></span></blockquote></div><br></div>

--000000000000c7d55b0571b0b8c4--
