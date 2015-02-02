Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4DEDE008BC; Mon,  2 Feb 2015 09:51:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1EFBE0086F
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:51:09 -0800 (PST)
Received: by mail-qg0-f43.google.com with SMTP id e89so48593734qgf.2
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:51:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TtsCqboOVxoCcvJ+3OEysKFuRTgOSWNbH/oesMbJP7g=;
	b=hwbkmGs9idfNAPJHJL4Bl8cyr797MY88j5vUVLtVdCzohkJbq2GOBP3+S6672o0UaG
	XfwHH5vBg5IknomGlNbotW0W8YlUTZYSSiujexMF0V2rTda+4hQ8llVEg3hsa7BpD19w
	K9KLxKk1yHnTSnB83OtOnfisWp++cSGjwaJG3/QDJupoqHEuYK2o49Wa1FEN/fkjUmxD
	A5GmF1lgMblP7G0TU40Ze8J29yujDZB2iLq1nJ882MsGe7VJqW/OUDpGOAQmnbOYk/7q
	Z0ucex+vK7Xhb3ZhT1WoRFDSbWtAfkRGpop3PQd5sp+BLMXtkYbf/ca1QCaAvNTkD13H
	rR1w==
X-Gm-Message-State: ALoCoQn+2wo2O/TTqeYZLk2B06gHs/CAkOYoWaO9x9PNq8fHhNGYkIhtLEezP25JVMe5ozDvQdO0
X-Received: by 10.229.80.3 with SMTP id r3mr510379qck.23.1422899468596; Mon,
	02 Feb 2015 09:51:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 2 Feb 2015 09:50:48 -0800 (PST)
In-Reply-To: <EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Feb 2015 17:50:48 +0000
Message-ID: <CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 17:51:14 -0000
Content-Type: multipart/alternative; boundary=001a1133cb7860aa73050e1e99ec

--001a1133cb7860aa73050e1e99ec
Content-Type: text/plain; charset=UTF-8

On 2 February 2015 at 17:40, Khem Raj <raj.khem@gmail.com> wrote:

> Yeah, you must be using a weirdly compiled gcc on your host which is
> defaulting to -std  < c99 and hence the problem. I have fix for that issue
> already locally.


$ gcc --version
gcc (Debian 4.7.2-5) 4.7.2

This is the default gcc in current Debian stable.

Ross

--001a1133cb7860aa73050e1e99ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 February 2015 at 17:40, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex">Yeah, you must be using a weirdly compiled gcc o=
n your host which is defaulting to -std =C2=A0&lt; c99 and hence the proble=
m. I have fix for that issue already locally.</blockquote></div><br><div cl=
ass=3D"gmail_extra">$ gcc --version</div><div class=3D"gmail_extra">gcc (De=
bian 4.7.2-5) 4.7.2</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">This is the default gcc in current Debian stable.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div><=
/div>

--001a1133cb7860aa73050e1e99ec--
