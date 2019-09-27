Return-Path: <dmitry.n.kargin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6314BE007E1; Fri, 27 Sep 2019 14:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dmitry.n.kargin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7C8E00890
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 14:52:37 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id q203so3245955qke.1
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 14:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=PQKI3wc1Of9uim7wfPFwQNR3VeKkdq7LsDwTIP+8hso=;
	b=Wt/t2cJlcvmlij3XInhfdCpwtj+QYROPdLUULZmNozXtmbLLsUXr2oEJDnr2eMBHVM
	8NpYI+sKtP3KRcE0S1jf9Kzj7FZPZ1FihG2/F6ynNWc1QTMIkmbV3FYBKBBTzlQhYnhT
	bVjbQ/aKxSnk7hOoQCKajB5zvC02utC3CQcC6PIGf/hh12YQDvoy7Sgh0huAS4Qs3tzO
	T3lXnT+gdQr7IJG07E6WHtqImqdSETanAXoo01vs4z5IfP0ix9/Na1bzSeKIq3BS0fuN
	1nqMy7/UiFfj51OwgSY3bLO5fV4u3ZdgC+GgTg7RjIpzuKPSwfPZL2T/f3oQZ8fOh8JH
	oJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=PQKI3wc1Of9uim7wfPFwQNR3VeKkdq7LsDwTIP+8hso=;
	b=qjKQxjFQxyQ5OT/mq58d3s30e7NKEW8qeIFu7gj2rqR6nHkVSYl4g5uNVos2aHM++Z
	YKRsyAkoVeactDJpkw25PeGCDOb/7OBLSGxmLOxbReuGZZCiZ6qIocnta41BwEGBVltp
	XTk+tR0hRe6tcaKnkhnjHreiuv1ugB+VuhqAo3aB8TmkRwXMlNrXWYQLg8WmK71HxKIY
	6G3xAHUd5wcBzFGRGhyTD9hbYvnA838u2Xm8juCgj6KxtdbufAz6fg11CEZzMvrwTPGs
	OzRKvGwJNFzbQ5x4gtISfz35sSQ+GoVTrH3Q3Z3mqp84hPqcqTCfFD8jDImFar4cFPrb
	kqaA==
X-Gm-Message-State: APjAAAXiyXVs4eM1elD0FHFvfPwfuksUmZMVR+fzLSIThGJqXnJGuTvu
	B4Kw1ewJg0RBZCUjnj0ZrZk6bUbpRfV7+RKIsJk=
X-Google-Smtp-Source: APXvYqxWh383hqYgKmzOz+YxhGM5PKPkjzexD7ndL2v0gLMrLIC+fLOKOJ+96duI8325sD0YF3hCsXcsmwQP+UyNa2E=
X-Received: by 2002:a37:541:: with SMTP id 62mr7181757qkf.371.1569621157289;
	Fri, 27 Sep 2019 14:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <MWHPR02MB2576ADF2408BAAF0BF27D82BB0810@MWHPR02MB2576.namprd02.prod.outlook.com>
In-Reply-To: <MWHPR02MB2576ADF2408BAAF0BF27D82BB0810@MWHPR02MB2576.namprd02.prod.outlook.com>
From: Dmitry Kargin <dmitry.n.kargin@gmail.com>
Date: Sat, 28 Sep 2019 00:52:26 +0300
Message-ID: <CAFCaPfyh14v2HPZ8vNDoeVM18XtAiK9zOCJT3_1Wrh5BHOpH-w@mail.gmail.com>
To: Chandana Kalluri <ckalluri@xilinx.com>
X-Mailman-Approved-At: Mon, 30 Sep 2019 02:59:37 -0700
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: Xilinx/meta-jupyter layer
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
X-List-Received-Date: Fri, 27 Sep 2019 21:52:39 -0000
Content-Type: multipart/alternative; boundary="00000000000083240805938fe7c3"

--00000000000083240805938fe7c3
Content-Type: text/plain; charset="UTF-8"

Nice job!

You have my permission, if it is needed to change
https://layers.openembedded.org/layerindex/branch/master/layer/meta-jupyter/
links to your repository.

>Would you recommend maintaining this layer separately or...
I'd like to keep it separately from meta- and openembedded.

>Would you suggest having a separate mailing list
meta-jupyter mailing list is fine.

On Fri, 27 Sep 2019 at 23:12, Chandana Kalluri <ckalluri@xilinx.com> wrote:

> Hello all,
>
> https://github.com/Xilinx/meta-jupyter is a meta-jupyter layer containing
> recipes for jupyter notebook. The initial recipes are based of Dmitry
> Kargin's meta-jupyter layer
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-jupyter/.
> This layer has not been updated for a while.
>
> The Xilinx/meta-jupyter layer also adds recipes for python3 based
> notebooks apart from existing python2 based notebooks.
> This layer has been tested using Yocto thud layer and  by running jupyter
> notebooks on Ultra96 community boards.
> We would like to maintain Xilinx/meta-jupyter  layer actively and welcome
> contributions to this layer either through pull requests or via patches
> sent to meta-xilinx mailing list until a mailing list for meta-jupyter is
> in place. In the next cycle we will deprecate python2 recipes.
>
> A question to community,
>  - Would you recommend maintaining this layer separately in the current
> github.com/Xilinx location or be included under meta- openembedded layers.
> - Would you suggest having a separate mailing list ?
>
> Thanks,
> Chandana
>
>

--00000000000083240805938fe7c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Nice job!</div><div><br></div><div>You have my permis=
sion, if it is needed to change <a href=3D"https://layers.openembedded.org/=
layerindex/branch/master/layer/meta-jupyter/" rel=3D"noreferrer" target=3D"=
_blank">https://layers.openembedded.org/layerindex/branch/master/layer/meta=
-jupyter/</a> links to your repository. <br></div><div><br></div><div>&gt;W=
ould you recommend maintaining this layer separately or...</div><div>I&#39;=
d like to keep it separately from meta- and openembedded.</div><div><br></d=
iv><div>&gt;Would you suggest having a separate mailing list</div><div>meta=
-jupyter mailing list is fine.<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Sep 2019 at 23:12, Chand=
ana Kalluri &lt;<a href=3D"mailto:ckalluri@xilinx.com">ckalluri@xilinx.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
ello all,<br>
<br>
<a href=3D"https://github.com/Xilinx/meta-jupyter" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/Xilinx/meta-jupyter</a> is a meta-jupyter l=
ayer containing recipes for jupyter notebook. The initial recipes are based=
 of Dmitry Kargin&#39;s meta-jupyter layer <a href=3D"https://layers.openem=
bedded.org/layerindex/branch/master/layer/meta-jupyter/" rel=3D"noreferrer"=
 target=3D"_blank">https://layers.openembedded.org/layerindex/branch/master=
/layer/meta-jupyter/</a>. This layer has not been updated for a while. <br>
<br>
The Xilinx/meta-jupyter layer also adds recipes for python3 based notebooks=
 apart from existing python2 based notebooks.<br>
This layer has been tested using Yocto thud layer and=C2=A0 by running jupy=
ter notebooks on Ultra96 community boards. <br>
We would like to maintain Xilinx/meta-jupyter=C2=A0 layer actively and welc=
ome contributions to this layer either through pull requests or via patches=
 sent to meta-xilinx mailing list until a mailing list for meta-jupyter is =
in place. In the next cycle we will deprecate python2 recipes. <br>
<br>
A question to community,<br>
=C2=A0- Would you recommend maintaining this layer separately in the curren=
t <a href=3D"http://github.com/Xilinx" rel=3D"noreferrer" target=3D"_blank"=
>github.com/Xilinx</a> location or be included under meta- openembedded lay=
ers.<br>
- Would you suggest having a separate mailing list ?<br>
<br>
Thanks,<br>
Chandana<br>
<br>
</blockquote></div>

--00000000000083240805938fe7c3--
