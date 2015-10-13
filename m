Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22B52E00CC3; Tue, 13 Oct 2015 12:26:32 -0700 (PDT)
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
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD8F5E00C8E
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:26:28 -0700 (PDT)
Received: by qgt47 with SMTP id 47so23966670qgt.2
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2ESsAp8dtrI9nNMDoikdSSi58EhtQG5XnDM/44mUtG0=;
	b=ScvJHuNZYvkFI0eqNatfwObthlmB5qyGIvUkvSESf3Cv7LODEvaFBgtDr9tRioiSZ1
	iZ878IWzdlDL8JP6wpNg/ALAdL6RJoUyIufgiG9xMu57TG3B+V1oNqtVhYmv3R+Uwtyi
	BB4cgdf/EfoVUwqQhJdbr1xQzY8XQxPUooyRSFGhQ8uCyZpsR65YoIzm8u0JDHYcjjX2
	0MQ9IQ0BWNPO4AaVBwUv6J96RR4cTL1rcHn2HNOTagMT+o2dRWz0Czq2SMK2txLGxVSS
	LNqaeSaQSHBm7N1dVsg98h2a15Q69AzOEv6DvtrFVbY3eXWMafx+qgOdpoxqLGCS+lS5
	qcwQ==
X-Gm-Message-State: ALoCoQkdonBEB1snXwNOh3olL7EHh2pFCZGlmfHYBqpk9pO+61nrmnsDqm4QGCKO46Md5sZjLfBo
X-Received: by 10.140.132.209 with SMTP id 200mr44580515qhe.64.1444764387404; 
	Tue, 13 Oct 2015 12:26:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Tue, 13 Oct 2015 12:26:07 -0700 (PDT)
In-Reply-To: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
References: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Oct 2015 20:26:07 +0100
Message-ID: <CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
To: Finn Carlsvi <finncarlsvi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cap'n Proto Recipe Help
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
X-List-Received-Date: Tue, 13 Oct 2015 19:26:32 -0000
Content-Type: multipart/alternative; boundary=001a11c07cca1886d90522016cd6

--001a11c07cca1886d90522016cd6
Content-Type: text/plain; charset=UTF-8

On 13 October 2015 at 20:13, Finn Carlsvi <finncarlsvi@gmail.com> wrote:

> I noticed that I have the cross compiled version of capnproto (capnp) in
> the images folder in my work directory, but the packages-split/capnproto
> directory is empy.
>

Sharing the recipe makes helping a lot easier.  Have a look in the
work/deploy-* directories to see what packages were actually created.

But FYI, upstream software which needs to build and run software to build
are generally a pain to package.

Ross

--001a11c07cca1886d90522016cd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 October 2015 at 20:13, Finn Carlsvi <span dir=3D"ltr">&lt;<a href=3D"=
mailto:finncarlsvi@gmail.com" target=3D"_blank">finncarlsvi@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I noticed that I ha=
ve the cross compiled version of capnproto (capnp) in the images folder in =
my work directory, but the packages-split/capnproto directory is empy.</div=
><div></div></blockquote></div><br>Sharing the recipe makes helping a lot e=
asier.=C2=A0 Have a look in the work/deploy-* directories to see what packa=
ges were actually created.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">But FYI, upstream software which needs to build and ru=
n software to build are generally a pain to package.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c07cca1886d90522016cd6--
