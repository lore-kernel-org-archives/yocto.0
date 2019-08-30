Return-Path: <bri@readysetstem.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB246E00C46; Fri, 30 Aug 2019 06:52:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [23.83.212.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1077 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Aug 2019 06:52:25 PDT
Received: from bisque.elm.relay.mailchannels.net
	(bisque.elm.relay.mailchannels.net [23.83.212.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCF2E00B8E
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 06:52:25 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|support@readysetstem.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 96F4A50199B
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 13:34:27 +0000 (UTC)
Received: from pdx1-sub0-mail-a66.g.dreamhost.com
	(100-96-6-54.trex.outbound.svc.cluster.local [100.96.6.54])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id 85B1B501BCC
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 13:34:26 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|support@readysetstem.com
Received: from pdx1-sub0-mail-a66.g.dreamhost.com ([TEMPUNAVAIL].
	[64.90.62.162]) (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.17.5); Fri, 30 Aug 2019 13:34:27 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|support@readysetstem.com
X-MailChannels-Auth-Id: dreamhost
X-Print-Wide-Eyed: 4016de8c778f9d0e_1567172066998_1706613272
X-MC-Loop-Signature: 1567172066975:2039121630
X-MC-Ingress-Time: 1567172066975
Received: from pdx1-sub0-mail-a66.g.dreamhost.com (localhost [127.0.0.1])
	by pdx1-sub0-mail-a66.g.dreamhost.com (Postfix) with ESMTP id
	E473680919
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 06:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=readysetstem.com; h=
	mime-version:from:date:message-id:subject:to:content-type; s=
	readysetstem.com; bh=v1kCz8RsSRCQWJaQ1zvS3fTEy1Q=; b=ZLwAFQAn5j/
	b9t3wWi8QoocXInZ9ks2HHo1yUPeyg+AjNmvD6i8PsOpGsz/wg4MqlZ+JEFXtYCO
	Iv7ZSo1iym8XEDVZd6KvhVkeAE7+7t/8RmNn32TcdtY09sDckFz5On/eZpYHir8L
	RrmGyqOcKzK0A71oH56DGg8TewccWjCY=
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: support@readysetstem.com)
	by pdx1-sub0-mail-a66.g.dreamhost.com (Postfix) with ESMTPSA id
	A7CF67F03D
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 06:34:25 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id s142so2464711ybc.6
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 06:34:25 -0700 (PDT)
X-Gm-Message-State: APjAAAUE8MM+MF1iNgLTaeRntaPbZNAi6TGs/sSgcR5ZMo3XGvH5cRbJ
	4VZGeJJFGIF92xsihRDbMF1y+GTZdoebG+hDywU=
X-Google-Smtp-Source: APXvYqy83OGqIV9IebdAHtIW37LVUxMtpyWdrxOARn94RNdAtf1c+Cv9OWtpbZVsQqT2d/cw4OMWDX+4GR7fZNNCvLI=
X-Received: by 2002:a25:9782:: with SMTP id i2mr10827026ybo.315.1567172064821; 
	Fri, 30 Aug 2019 06:34:24 -0700 (PDT)
MIME-Version: 1.0
X-DH-BACKEND: pdx1-sub0-mail-a66
From: Brian Silverman <bri@readysetstem.com>
Date: Fri, 30 Aug 2019 09:34:14 -0400
X-Gmail-Original-Message-ID: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
Message-ID: <CAJKO-ja632JpvyfytYme9tGn3RWx5pBHr9Up59gXtw_bqmP-9g@mail.gmail.com>
To: yocto@yoctoproject.org
X-VR-OUT-STATUS: OK
X-VR-OUT-SCORE: 0
X-VR-OUT-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudeigedgieeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuggftfghnshhusghstghrihgsvgdpffftgfetoffjqffuvfenuceurghilhhouhhtmecufedttdenucenucfjughrpegghfffkffuvfgtsegrtderredttdejnecuhfhrohhmpeeurhhirghnucfuihhlvhgvrhhmrghnuceosghrihesrhgvrgguhihsvghtshhtvghmrdgtohhmqeenucffohhmrghinhepshhomhgvlhgrhigvrhdurdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpmhihlhgrhigvrhdrtghomhdpshhomhgvlhgrhigvrhdvrdgtohhmnecukfhppedvtdelrdekhedrvdduledrudejtdenucfrrghrrghmpehmohguvgepshhmthhppdhhvghlohepmhgrihhlqdihsgduqdhfudejtddrghhoohhglhgvrdgtohhmpdhinhgvthepvddtledrkeehrddvudelrddujedtpdhrvghtuhhrnhdqphgrthhhpeeurhhirghnucfuihhlvhgvrhhmrghnuceosghrihesrhgvrgguhihsvghtshhtvghmrdgtohhmqedpmhgrihhlfhhrohhmpegsrhhisehrvggrugihshgvthhsthgvmhdrtghomhdpnhhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Subject: Fetching Yocto layers
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
X-List-Received-Date: Fri, 30 Aug 2019 13:52:27 -0000
Content-Type: multipart/alternative; boundary="00000000000039c727059155ae2d"

--00000000000039c727059155ae2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there a way to automatically fetch/add a yocto layer from another layer?

My problem is that I=E2=80=99d like to be able to build instructions of my =
product
from one version number.  But here=E2=80=99s our normal (example) build
instructions:

git clone git://git.yoctoproject.org/poky -b some_poky_tag

cd poky
git clone git://git.somelayer1.com/meta-layer1 -b some_layer1_tag

git clone git://git.somelayer2.com/meta-layer2 -b some_layer2_tag

git clone git://git.mylayer.com/meta-mylayer -b some_mylayer_tag

source ./oe-init-build-env
bitbake-layers add-layer ../meta-layer1
bitbake-layers add-layer ../meta-layer2
bitbake-layers add-layer ../meta-mylayer

bitbake mylayer-image


The tags chosen above are based on what we test and ship.  So my issue is
that someone has to correctly follow the above instructions for different
versions of multiple layers if they want a reproducible build of a specific
version of mylayer-image.

Is there a canonical why to encode this information within my layer?
Obviously I could script the above, store it in my layer, and have the user
run that script.  But, that seems very unyocto-like.

--=20

Brian Silverman

Ready Set STEM

bri@readysetstem.com

--00000000000039c727059155ae2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Is there a way=
 to automatically fetch/add a yocto layer from another layer?<div><br></div=
><div>My problem is that I=E2=80=99d like to be able to build instructions =
of my product from one version number.=C2=A0 But here=E2=80=99s our normal =
(example) build instructions:</div><blockquote style=3D"margin:0px 0px 0px =
40px;border:none;padding:0px"><div>git clone git://<a href=3D"http://git.yo=
ctoproject.org/poky">git.yoctoproject.org/poky</a> -b some_poky_tag</div></=
blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding=
:0px"><div>cd poky</div><div>git clone git://<a href=3D"http://git.somelaye=
r1.com/meta-layer1">git.somelayer1.com/meta-layer1</a> -b some_layer1_tag</=
div><div><div></div></div></blockquote><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px">git clone git://<a href=3D"http://git.som=
elayer2.com/meta-layer2">git.somelayer2.com/meta-layer2</a> -b some_layer2_=
tag<br></blockquote><div></div><blockquote style=3D"margin:0px 0px 0px 40px=
;border:none;padding:0px">git clone git://<a href=3D"http://git.mylayer.com=
/meta-mylayer">git.mylayer.com/meta-mylayer</a> -b some_mylayer_tag<br><br>=
source ./oe-init-build-env<br>bitbake-layers add-layer ../meta-layer1<br>bi=
tbake-layers add-layer ../meta-layer2<br>bitbake-layers add-layer ../meta-m=
ylayer</blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none=
;padding:0px">bitbake mylayer-image</blockquote><div dir=3D"ltr"><br></div>=
The tags chosen above are based on what we test and ship.=C2=A0 So my issue=
 is that someone has to correctly follow the above instructions for differe=
nt versions of multiple layers if they want a reproducible build of a speci=
fic version of mylayer-image.</div><div dir=3D"ltr"><br></div><div dir=3D"l=
tr">Is there a canonical why to encode this information within my layer?=C2=
=A0 Obviously I could script the above, store it in my layer, and have the =
user run that script.=C2=A0 But, that seems very unyocto-like.</div><div di=
r=3D"ltr"><br><div></div><div>-- <br><div dir=3D"ltr" class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div dir=3D"ltr"><p>Brian Silverman<br></p><p>Ready S=
et STEM</p><p><a href=3D"mailto:bri@readysetstem.com" target=3D"_blank">bri=
@readysetstem.com</a></p><p><br></p></div></div></div></div></div></div></d=
iv></div></div></div></div></div>

--00000000000039c727059155ae2d--
