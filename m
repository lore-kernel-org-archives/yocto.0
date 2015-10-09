Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72D46E00CA9; Fri,  9 Oct 2015 03:40:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5856E00B21
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 03:40:08 -0700 (PDT)
Received: by qgez77 with SMTP id z77so65092309qge.1
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 03:40:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GltDdJ/pv12bzohHbKzkGtNnE34TxS+6byafbE5OfI8=;
	b=JiiDAS3+rdElA318i+cnuba+d6RrydhEQ9aS0tzGr1iz/Uvrf/UT+U/ae1HMB5ZZMF
	XkvBy1PST7c266SBWeVDAmL3UTCCB0R77gAROIENC0L3SsKHOljeIXfbOf42lVAnmLQ4
	arsiwgwZzl1ospDSWJN4tuM6mZXcuRxKe19uGRr9MbVN04xsW+SWEVVnac1PphOD+Wyi
	jn6/fj46/qkawxpNV6Y3lTskZzgKMQjIDP9Hsa/sJ7raiGeYFYTPtuXlZ0SOL4oj0ev4
	K+GWkfltCbGafncMQbIFe8AWtyfzLsaXjh10DIVpZxr20dU/aqCA6rMEGThpLD50MdG+
	g2Aw==
X-Gm-Message-State: ALoCoQnfhRfLcIsq3XHUDQ1opSdhGIHs+llMJezLNqNX4w0XIwq932ccjwwtFEf5jggimBP5Kfvg
X-Received: by 10.140.235.147 with SMTP id g141mr14093670qhc.22.1444387208180; 
	Fri, 09 Oct 2015 03:40:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Fri, 9 Oct 2015 03:39:48 -0700 (PDT)
In-Reply-To: <9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16@SAFEX1MAIL1.st.com>
References: <9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16@SAFEX1MAIL1.st.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Oct 2015 11:39:48 +0100
Message-ID: <CAJTo0LY2PfQTa5BDngDQHscRM2Phqmek3MeEwZwDmzOisz90Lg@mail.gmail.com>
To: Gilles CARRY <gilles.carry@st.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intelligent global config files setting
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
X-List-Received-Date: Fri, 09 Oct 2015 10:40:11 -0000
Content-Type: multipart/alternative; boundary=001a11376e6e766f000521a99af8

--001a11376e6e766f000521a99af8
Content-Type: text/plain; charset=UTF-8

On 9 October 2015 at 08:38, Gilles CARRY <gilles.carry@st.com> wrote:

> I tried to use ROOTFS_POSTPROCESS_COMMAND in c1.bb and c2.bb but this
> mechanism only seems to work in images recipes. (inherit core-image)
>
>
Use a package postinst to modify the configuration files when the rootfs is
generated?

Ross

--001a11376e6e766f000521a99af8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 October 2015 at 08:38, Gilles CARRY <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gilles.carry@st.com" target=3D"_blank">gilles.carry@st.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><span =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0=
02052">I tried to use ROOTFS_POSTPROCESS_COMMAND in <a href=3D"http://c1.bb=
" target=3D"_blank">c1.bb</a> and <a href=3D"http://c2.bb" target=3D"_blank=
">c2.bb</a> but this mechanism only seems to work in images recipes. (inher=
it core-image)<u></u><u></u></span></p><p class=3D"MsoNormal"></p></blockqu=
ote></div><br>Use a package postinst to modify the configuration files when=
 the rootfs is generated?</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--001a11376e6e766f000521a99af8--
