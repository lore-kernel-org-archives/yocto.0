Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 994CCE00BB0; Thu,  3 Nov 2016 03:44:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AAAFE00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 03:44:35 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id q130so51212659qke.1
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 03:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qOlF8VXBck43DtRTINu6xlSNFMca4RFwoqFgwfde350=;
	b=eEHpsGD5/rEm/RinLPabzH9g6eUYirle94pkTEsIUj0kfTRQiC0xgS9oU/yv/PmXPS
	khgZdG+cnnb3K55nLapAziwpXsKOyWrS9Ht7yaDsHHVZqZ3+cQ0IUJzB+GLMgNEJ1foI
	JlvgogluvIgQY6q/F6f1qSH/eKJI5hT46UtGm9VhLjfgPdRVwjCfHkYv78k4LFtok5tk
	bittK1eiJNJopUlePpBOkqPDKy1JzVhgMhlkE33719e3tduFIq2bASj4oh7SpiwbLLp4
	VBZ+5tDKhWscYt28Cjzg0cN3XcMfVjO+TsbILcGpsreciJ6t6nNwdVTW3wPxH8bKkCga
	zWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qOlF8VXBck43DtRTINu6xlSNFMca4RFwoqFgwfde350=;
	b=GohHcActa9LfM3YgBbJsV2S30JGm/Ms6fGmurrUMPsCJ6RSWESp/z9WXFULXLaqVbM
	j/j4Uwnc00YgT5TpgymNtZzGZcvoBk0IsSKhmP3uXbGHkSQlrlp6pgMTiJfam3pMCUC0
	M1NI1KvkbjWEkKNNBWMMDRt/NmLzmiCz+0c9a6okR+P8mLDzSCNpyMYMv+U1spgBxOQf
	B8FWgUaOuAdmgfjTavxVuhYRrDb1+e2HH1Cl/FAf+dY4jywuTqovFBasTZvVBun5YDR6
	Qq/4vwtO9+nlvFN1SmbfNn26S5MP3zqbDzzrurmYfn7ESGrZLRFBUengY/DXyTc37M/O
	7tYA==
X-Gm-Message-State: ABUngvevDNi48OdECtWc9iQlT0RljzijLe+DIt/PJKF+UAsouXQCI8OgWzYLrsnl0KBg/x1yj+GBgmil+ukNIcam
X-Received: by 10.55.5.145 with SMTP id 139mr6984581qkf.77.1478169874535; Thu,
	03 Nov 2016 03:44:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 3 Nov 2016 03:44:14 -0700 (PDT)
In-Reply-To: <357f4773-a71c-4bd3-6f8b-55c3a23ba05e@topic.nl>
References: <CAEjjReLcovpDJoMi-AO8stp7CR5gEAe9K8xCCCUL6+v2=py6yQ@mail.gmail.com>
	<CAJTo0LZN5N5r58kn52yTgL32X+PF6RX4=Kr5ntdNHBQ0HucgwA@mail.gmail.com>
	<357f4773-a71c-4bd3-6f8b-55c3a23ba05e@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Nov 2016 10:44:14 +0000
Message-ID: <CAJTo0LYMciv0LRd-oxgaefRcGtSNi+z3mdq7qvNzywVA9x9D+Q@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [sstate-cache] using sstate-cache in parallel builds
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
X-List-Received-Date: Thu, 03 Nov 2016 10:44:38 -0000
Content-Type: multipart/alternative; boundary=001a114c8f844a52a60540633e0e

--001a114c8f844a52a60540633e0e
Content-Type: text/plain; charset=UTF-8

On 3 November 2016 at 09:57, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> Would it be safe to store the sstate-cache for a bunch of builds into a
> single directory, with builds running in parallel contributing to that?
>
> Each build would be using a different set of layers, different machines,
> and building different images, but there would be a lot of common things
> (usually they all refer to the same OE branches).
>
> We use a build server to share out sstate-cache for various builds, but as
> projects are getting added, it's getting more complicated with projects
> using the sstate-caches of other projects. It would make things quite
> simple if all builds just pointed to the same sstate-cache directory, so
> they could share whatever they want.
>

Mine all share a single sstate cache, as that's pretty much the point.  If
you're targetting different machines then there's a pretty good chance
there's no overlap anyway.

sstate fetch is basically "does a file with this recipe+sha exist", so as
long as files are written atomically then there's no race conditions.
 sstate write is done atomically to a temporary file which then then mv'd
to the real filename, so the only race here is that two parallel bitbakes
doing exactly the same build configuration (ie, same hash) can both not
find anything in sstate, both rebuild, and both write to sstate.  As the
write is atomic, worst case is more work done than required.

Ross

--001a114c8f844a52a60540633e0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 November 2016 at 09:57, Mike Looijmans <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.=
nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1ka"=
 class=3D"a3s aXjCH m15829a0fb0b71144">Would it be safe to store the sstate=
-cache for a bunch of builds into a single directory, with builds running i=
n parallel contributing to that?<br>
<br>
Each build would be using a different set of layers, different machines, an=
d building different images, but there would be a lot of common things (usu=
ally they all refer to the same OE branches).<br>
<br>
We use a build server to share out sstate-cache for various builds, but as =
projects are getting added, it&#39;s getting more complicated with projects=
 using the sstate-caches of other projects. It would make things quite simp=
le if all builds just pointed to the same sstate-cache directory, so they c=
ould share whatever they want.</div></blockquote></div><br>Mine all share a=
 single sstate cache, as that&#39;s pretty much the point.=C2=A0 If you&#39=
;re targetting different machines then there&#39;s a pretty good chance the=
re&#39;s no overlap anyway.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">sstate fetch is basically &quot;does a file with this=
 recipe+sha exist&quot;, so as long as files are written atomically then th=
ere&#39;s no race conditions. =C2=A0sstate write is done atomically to a te=
mporary file which then then mv&#39;d to the real filename, so the only rac=
e here is that two parallel bitbakes doing exactly the same build configura=
tion (ie, same hash) can both not find anything in sstate, both rebuild, an=
d both write to sstate.=C2=A0 As the write is atomic, worst case is more wo=
rk done than required.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a114c8f844a52a60540633e0e--
