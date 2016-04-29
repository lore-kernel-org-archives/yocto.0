Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E21B5E00E5C; Fri, 29 Apr 2016 07:52:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4C5BE00D91
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:52:23 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id d62so109891566iof.2
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6MZVjrzViKLAkuxow/VgwGy1gePyoi+ZzvmTr1zLYuI=;
	b=OGunAeZhxmXZ/xCZ8cgVa2fQ/ktrxyQK0ZpxvL0KHsR/A/o7OoYpU7OSdOQu6H2m2N
	I6xfYFJRWQgRQO7zf8136osmy9pHrG7tdAMDR7/vPd8oQf4dE1+Nqm/RLNaim1l05isq
	i6psDi2cEGRv+eNt8n1GVv04FogXn/IG9sODq3PpVHp5007Vres39j7bnNd5uoXfrhnr
	geT1ynzYcjKHb5L2BUj8naJ0PBNsNJKVhMaHACHVGQBH7sEi18dGq33DHt21gXTX8mfe
	JXhjGLb7popSsxL9Bkv1BLEXusT+f7olntXCSmH2mG+bOcT3YZkoBxGMHMga6r6kifRs
	E5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6MZVjrzViKLAkuxow/VgwGy1gePyoi+ZzvmTr1zLYuI=;
	b=cOVTAOIzA2/rmmGInvWfpiLrHw4cCuBz1y7fu0/GgG891bTmyDpkmVT8EAOZZY234t
	JihNUXBtAbtsBXSMuD4SaaiNfJlzLtvs1pQU7Ni/ccJeRJBkLqA+bpx/Fg73oyPtqB+s
	90v5e6FvXyW40EWR5qnI/D0DklhytljruymL5SfV1Z76HnI85FyPFmrnwoYa0iRKYiPW
	WWIy0ci/vBVIgtHKj6UYXpIGT4rqOgJlW4BzLrkkk9RPCfsfpbdk9U2kRhb9yaM14NhW
	pK/ksIsjn+st/e82MD0/EGVxr19n8PWW/PzXjbY5f7tDtjTJeg7OzZ8HXeiYgr/GZ3Rq
	1MfQ==
X-Gm-Message-State: AOPr4FUa+GIFO/kA24URMM3u9ykZ+Ih2uwn1bwFfkcFgf2bmm5BaE5yyhAzv8mqLqQTYUC06c+VGRc2pfBvrV5Uo
X-Received: by 10.107.135.211 with SMTP id r80mr26680910ioi.133.1461941542588; 
	Fri, 29 Apr 2016 07:52:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 07:52:03 -0700 (PDT)
In-Reply-To: <4a06d2169cf1fdcb4427c105fdc54fc80c3f334b.1461913863.git.jussi.kukkonen@intel.com>
References: <cover.1461913863.git.jussi.kukkonen@intel.com>
	<4a06d2169cf1fdcb4427c105fdc54fc80c3f334b.1461913863.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 15:52:03 +0100
Message-ID: <CAJTo0Lbh=ZWyniBOC-+nD6jKxVjAR15v4yOPhzBaBYymW0HPzw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xsettings-daemon][PATCH 2/2] Use gdk-x11-3.0 instead of 2.0
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
X-List-Received-Date: Fri, 29 Apr 2016 14:52:27 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a542b460531a0cafa

--001a113ed20a542b460531a0cafa
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 08:47, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> -PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-2.0 x11])
> +PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-3.0 x11])
>

Looking at this, so little of GTK+ is used (just gdkx).  Maybe we should
port this to pure XLib?

Ross

--001a113ed20a542b460531a0cafa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 April 2016 at 08:47, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2ni" c=
lass=3D"a3s aXjCH">-PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-2.0 x11])<br>
+PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-3.0 x11])<br></div></blockquote>=
</div><br>Looking at this, so little of GTK+ is used (just gdkx).=C2=A0 May=
be we should port this to pure XLib?</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Ross</div></div>

--001a113ed20a542b460531a0cafa--
