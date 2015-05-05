Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B17FE00997; Tue,  5 May 2015 03:53:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1537E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:53:13 -0700 (PDT)
Received: by qcyk17 with SMTP id k17so85569407qcy.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:53:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZnSSm0aUpGekvUgT4bXF+8UoARxfwHauw8PR1z0eScE=;
	b=ffOWtNpdmb9PSi6cljEGonDtIESOPd7xp+IFKzzLeydXYOaP9hptiy/x1eXdjvj0Oq
	sL3ZWQ992CcypePUiz92HeT+a2HKVpwKH7YW41OAAALDiTqKc/9ksg1k1SM4kuXn+kGb
	Qvs0EzLkXdislOYcmp8yKoaFm0tbMyaUiG0hO99zHM1BacAGmMFKqmWM5j9nh5d+NNJN
	bYBP186hVZvKJy392s3QMEy+AKRoadRpUuyOeil70y4KXVw8aIv5ieZVI6nYQIpoaRJT
	XvXgEV7CjdeJwGYiBo1APhrKV0776/QJE02lpaZ/hJ3NpehFXSQJA8eNk+GvXhleJ9Sa
	Rn4Q==
X-Gm-Message-State: ALoCoQkk7H0KAQdp/+HxYbGVaxgn6tM4ZS7JTzhZnFhpPlCfJm0UpxxDtwegqUlP711xpasOc7J1
X-Received: by 10.55.23.16 with SMTP id i16mr54435611qkh.14.1430823193046;
	Tue, 05 May 2015 03:53:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 5 May 2015 03:52:52 -0700 (PDT)
In-Reply-To: <CABc_YGAg0uJzFZDKX3rOQQCu9igBujG=XL2iRw2ugBp_s8V4jA@mail.gmail.com>
References: <CABc_YGDJ=yvOkU7Bpbwq-oxbJ7Ec4ZHgL-fy2BR2+pTKwSZWdQ@mail.gmail.com>
	<CAJTo0LafbAPvc_+AVQk-OnTeF7kjRkPxLcRPBM=PpXf+UzWfdg@mail.gmail.com>
	<CABc_YGAg0uJzFZDKX3rOQQCu9igBujG=XL2iRw2ugBp_s8V4jA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 May 2015 11:52:52 +0100
Message-ID: <CAJTo0Lbu7CrGwApZKV2F85B1vadd9t5CVb67ZNXZZAV-g2bfgw@mail.gmail.com>
To: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package group in one ipk package
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
X-List-Received-Date: Tue, 05 May 2015 10:53:14 -0000
Content-Type: multipart/alternative; boundary=001a1146f4ba28844d0515537c88

--001a1146f4ba28844d0515537c88
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 May 2015 at 11:49, Marcin Krzemi=C5=84ski <mar.krzeminski@gmail.com> w=
rote:

> Not exactly. I have strange development where I've got 12 kernel modules
> (with 12 recipes) built out site kernel tree. And then I have finally 12
> ipk's. I want to have only one ipk witch can update all kernel modules. I=
n
> this case safe sw update is not a goal.
>

If you really want a single package generated then you'll either need to
write a single recipe to build them all, or some crazy post-processing
stage where you extract all the generated packages and construct a single
package from them.

Ross

--001a1146f4ba28844d0515537c88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 May 2015 at 11:49, Marcin Krzemi=C5=84ski <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:mar.krzeminski@gmail.com" target=3D"_blank">mar.krzeminski@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">Not exactly. I have strange development where I&#39;ve got 12 kernel mo=
dules (with 12 recipes) built out site kernel tree. And then I have finally=
 12 ipk&#39;s. I want to have only one ipk witch can update all kernel modu=
les. In this case safe sw update is not a goal.</div></blockquote><div><br>=
</div><div>If you really want a single package generated then you&#39;ll ei=
ther need to write a single recipe to build them all, or some crazy post-pr=
ocessing stage where you extract all the generated packages and construct a=
 single package from them.</div><div><br></div><div>Ross=C2=A0</div></div><=
br></div></div>

--001a1146f4ba28844d0515537c88--
