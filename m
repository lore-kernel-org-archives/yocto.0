Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 751D1E00D72; Thu,  9 Jun 2016 12:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3C1E00D69
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 12:47:44 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id z189so163559284itg.0
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 12:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q10OChcKLwAuSS5r9m7SIpqsZnouBPhTfk2Wuj6HijQ=;
	b=IbBh/hTfwBv/2jex6zXDQPL4yrICpZEAsZuDqxvCdlyZQ8Lt+5isEJy2tI+Qsrgstg
	SEeE0AkoCsdt+QEhV0pRv1u7kVuo0vKnh30jtZJxJMraH1SQiwV2MpHtfDWe2QNSXeyf
	xiEX9du84qf1VHZEb/OpZ+Glf/DLCLCvRRIwhy2EuHYLjXhUjX+ewQLCKneUR9zFDLz3
	Pv5xRlZJYUC02s50NxJHqaXj5dCQzvuJXH3+V1uIcTxeX5IZCXQQKvHGLjAqNTn2XRHX
	+c2+aIVdDcTGfNILFGCbLEpkoRJzpWpVTI7M7uWGprbf1rWMGTk6hVy2p1QoGCFnt6Q1
	OIzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q10OChcKLwAuSS5r9m7SIpqsZnouBPhTfk2Wuj6HijQ=;
	b=HPjeCzNyrsuxWuCHVU//nEnR+8nKKKocy8q+oJJTkmI58jYTETUHVBqJZ9ywLKNriX
	qa10CnyAtNApbKNyBCG6OZhCxzbD+TSWR4QgYrQwJB4vpuDHz/ScXPTu0DxnCJi9ydJ1
	5bEEHgyC9l5NOlO6y5XuZkgvNoLg5b5j1P0uHBExgZlZZpMOTXrpNQhUHJvhdIAB4JfI
	vU5x65IpG8916X5+j6D1orEjTF9DHTaE+MxOdZL2eITrdfS4FUq7YGr2B1GJEjwqHKcp
	s3B6q44I8/Yq+NVXAGneRxcKpZEAy2fR/ik4RsYjqsNk1wL58eGDAjHbuI9ySmuzYB1w
	D4VQ==
X-Gm-Message-State: ALyK8tIlO47UHfbacRS2FmG58B7oBPCDBAZuAI1pPMq/QTf9iC2D1cPeQ/wesJTr24aqFE7NqfF26kyF+k4CWjwB
X-Received: by 10.36.120.193 with SMTP id p184mr25433683itc.22.1465501663567; 
	Thu, 09 Jun 2016 12:47:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 9 Jun 2016 12:47:24 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA5FDB96@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA5FD845@RCHEXMBP1.fnc.net.local>
	<CAJTo0LZePKfYZK+8Zkv6pGsaOXx_DsKsF-5ROSV7Kh+Y6BrG8w@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA5FDB96@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jun 2016 20:47:24 +0100
Message-ID: <CAJTo0LYZeh4qAW4PmDzc6vtTfd=199mprK=w-AY66JmNdmdspw@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing openvswitch
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
X-List-Received-Date: Thu, 09 Jun 2016 19:47:45 -0000
Content-Type: multipart/alternative; boundary=001a114aa4281339a60534ddb2db

--001a114aa4281339a60534ddb2db
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9 June 2016 at 19:56, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> Doesn=E2=80=99t that include the openvswitch folder as well? If it is, wh=
at else
> do I need to add/change?
>
>
You need to actually add the packages that you want to your image.

Ross

--001a114aa4281339a60534ddb2db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 19:56, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">Doesn=E2=80=99t that include the =
openvswitch folder as well? If it is, what else do I need to add/change?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>You need to actually add =
the packages that you want to your image.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114aa4281339a60534ddb2db--
