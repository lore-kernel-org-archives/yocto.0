Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A095E00E3D; Mon, 29 Jan 2018 20:39:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC52FE00E36;
	Mon, 29 Jan 2018 20:39:46 -0800 (PST)
Received: by mail-ua0-f172.google.com with SMTP id e25so6260071uan.5;
	Mon, 29 Jan 2018 20:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6bNO4a2vdU1xt/OwZbOc5zhXUtrA6vv7hOVXevBdeyk=;
	b=f6rK+C4exje5sBsx8tuV/O6Nkpa6ewCbwCbnd9kXLDyVlTPAarNHwbvVpcKdorwG1t
	n2WaN52Iqnb2ljiAaUaJoEjYZsxU/rY+NdDLlObBPYbEDli5RR1pUTbOQE6C1Kpa2IWc
	8OmFXPzvZfcpZm424e4Ne2AnP6lvKvERJ9ZRUpuOjFhauXL5r42SPXg+L1R3qOJmp5vv
	zaBld2rDts6BWzEs4AnM67ZjFgKn7QepOSAFSQN5PR4HKkEvnlVBxqRKke2204vGv3/F
	Z+Re2wk/f1dX8MCgs09fIese9g7oWXBB/DC8DAnxavL3QDoLljWtlvSJ9eRX3cEjf+du
	i7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6bNO4a2vdU1xt/OwZbOc5zhXUtrA6vv7hOVXevBdeyk=;
	b=MatT9c+Nm4gr8sb1rTut0PFlLuxJkm4ILqpWqI5sy4xuVg9PoiGuVQdEl3yGNyAgv/
	jH+rG0JgITLlcG+jgh1pJ4ad4ObLqor4OgRkGX9UtqFcF/NWqRlsbGSvAfcki+RWCire
	ueR9xJG2PjCIj1rcgtphfJSAS3d0wDD310qwQj1RQy/jnv7twskaYAgcned+TszuQ5W4
	deiwQoVU/sbVALYpZ+o3K/RJw8CLpQgTmnhY+SlPzMrZqkVFwI2flzR8j1lQmbfy8kYJ
	Guvxq7bTPTPQL1Yuoofy2wRgVKlupjhqmMvLQIGMytjiPn3jkzGAKMGOVFFX+VbkcfdS
	p/zA==
X-Gm-Message-State: AKwxytdb5xrnZTdq70itRzmUAlVFCZGpuEsoqkZP+5d9LxlGQ+IlNyjf
	XBVd2u/4oS2F5lNXYSiyetMeJsX8+SUnA0Chz6E=
X-Google-Smtp-Source: AH8x226rfNZrjGsCpn86odXitHtk0FFOEgb2hbE4lJZ1d1m17aE6DWNfMTQ0ff7KWtZIMsT5vHy8V6qKWSnbL2PmAPw=
X-Received: by 10.176.83.76 with SMTP id y12mr22997747uay.109.1517287185595;
	Mon, 29 Jan 2018 20:39:45 -0800 (PST)
MIME-Version: 1.0
References: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
	<CAHUNapSsTcYd=VEaSawmHuKswSV3By4V6n3FEVqm0czAcRQCUw@mail.gmail.com>
In-Reply-To: <CAHUNapSsTcYd=VEaSawmHuKswSV3By4V6n3FEVqm0czAcRQCUw@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 30 Jan 2018 04:39:35 +0000
Message-ID: <CANx9H-DM2UCnAwM4T5YnTLTmswzC-Lhrh5nAfKWKX_=YwK84Xw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	eclipse-poky@yoctoproject.org,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Eclipse plugin plans
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
X-List-Received-Date: Tue, 30 Jan 2018 04:39:47 -0000
Content-Type: multipart/alternative; boundary="94eb2c192576b841ed0563f6f367"

--94eb2c192576b841ed0563f6f367
Content-Type: text/plain; charset="UTF-8"

The same as it is now. The CROPS Docker containers already support that.

https://github.com/crops/docker-win-mac-docs/wiki

On Mon, Jan 29, 2018 at 8:25 PM Trevor Woerner <twoerner@gmail.com> wrote:

> Just to clarify... will non-IDE non-Linux development be explicitly
> supported?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c192576b841ed0563f6f367
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>The same as it is now. The CROPS Docker containers already support tha=
t.</div><div><br><a href=3D"https://github.com/crops/docker-win-mac-docs/wi=
ki">https://github.com/crops/docker-win-mac-docs/wiki</a><br><br><div class=
=3D"gmail_quote"><div>On Mon, Jan 29, 2018 at 8:25 PM Trevor Woerner &lt;<a=
 href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Just to clarify..=
. will non-IDE non-Linux development be explicitly supported?<br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c192576b841ed0563f6f367--
