Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8047E00A97; Thu, 30 Jul 2015 02:06:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D0FCE00A5B
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:06:06 -0700 (PDT)
Received: by qged69 with SMTP id d69so19775015qge.0
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:06:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UsivUCueTL9W3o7MUgplLYHWHzvXwvqJQX6VCY8N+mo=;
	b=TNJRv8Lo4wqAOcqFyWlO2boqAdXt0K6FYt7R9bLmwZCZ/rJP6ovXhDU3WqG80i4jAd
	nXYTn3i8zKkv05jsbRpw0ecDwDx1YguOfRK++GDKbUkWao0bWqqhuJp1JoJOfgiUIVc1
	bvQyYafuHSM5aBgNNQpIP2r9NIIJvygkBR5fd0Fvq2u4xgUQeJ7ACChC5QKXgwW8INS9
	qp4vsicaok1poAx2RJNfRuARl8H2+L1vZ4+4KkPO5DE5QA3L4IDUr9kgJHdA/9r7iLs0
	mALoLZREvWqxwR30Q4Gzzks6NNe995AeyEnw+UPnnxLnzrVfhPyETTVfaggArpONsbrR
	dL7g==
X-Gm-Message-State: ALoCoQlfongPgpeE/Af/vTEpOfN8WRjWZ3gkIJMaG2zbRTh56etxQE9zfHzeTRf1rBqdFP0md3CO
X-Received: by 10.140.147.137 with SMTP id 131mr3845547qht.17.1438247165098;
	Thu, 30 Jul 2015 02:06:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 30 Jul 2015 02:05:45 -0700 (PDT)
In-Reply-To: <9EB14782B17D6549A78433A42753B30B244FA7F7@EUNOEUR-EXS010.teu.tomra.corp>
References: <9EB14782B17D6549A78433A42753B30B244FA7F7@EUNOEUR-EXS010.teu.tomra.corp>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Jul 2015 10:05:45 +0100
Message-ID: <CAJTo0Lb-y1MG9-uPP+kDE5gUNFPOvrAEnbevG=gN9-cOwZeCaw@mail.gmail.com>
To: Eirik Solberg Hamnvik <eirik.solberg.hamnvik@tomra.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Core-image-weston network problems
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
X-List-Received-Date: Thu, 30 Jul 2015 09:06:09 -0000
Content-Type: multipart/alternative; boundary=001a11356464601661051c140368

--001a11356464601661051c140368
Content-Type: text/plain; charset=UTF-8

On 30 July 2015 at 06:28, Eirik Solberg Hamnvik <
eirik.solberg.hamnvik@tomra.com> wrote:

> The perfect thing would be to make my package dependent on whichever
> package that configures the network settings, so I am guaranteed that it
> will download succesfully. Which one is that? Or are there any better
> solutions?
>
>
Don't use a postinstall script, which by definition has to run early.
Write a normal init script that deletes itself after completion and
schedule it to come after networking (which is a can of worms, you'll have
more luck if you use systemd here).

Ross

--001a11356464601661051c140368
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 July 2015 at 06:28, Eirik Solberg Hamnvik <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:eirik.solberg.hamnvik@tomra.com" target=3D"_blank">eirik.solbe=
rg.hamnvik@tomra.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><p class=3D"MsoNormal"><span lang=3D"EN-US">The perfect thing would be to=
 make my package dependent on whichever package that configures the network=
 settings, so I am guaranteed that it will download succesfully. Which one =
is that? Or are there any better solutions?
<span class=3D"HOEnZb"><font color=3D"#888888"><u></u><u></u></font></span>=
</span></p><span class=3D"HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal"></p></font></span></blockquote></div><br>Don&#39;t u=
se a postinstall script, which by definition has to run early.=C2=A0 Write =
a normal init script that deletes itself after completion and schedule it t=
o come after networking (which is a can of worms, you&#39;ll have more luck=
 if you use systemd here).</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a11356464601661051c140368--
