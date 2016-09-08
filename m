Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6196E00DA6; Thu,  8 Sep 2016 08:38:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED3FE00D81
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 08:38:50 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id c198so88042856ith.1
	for <yocto@yoctoproject.org>; Thu, 08 Sep 2016 08:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=848FYwdhnA8KvIUw2mzB4kDe7UMCJA/bCE4nYgLbNNU=;
	b=zCofnz5m13eY6SZhHdh7zRTjUv/c/5tfbe23HQo5+YZPsyyg5/F9AU/KjmmHYNbC4J
	FqMUQHHioY++oodhPUa3fLsn+OjcfP6lLHSddYc4pRl6M2AzgQNkohB8ELJGV9P96RAF
	N/Gb9L5nKB4W7JU4eY/yr+Nnn14GcLH9CLWnxeujnwMG3mk6zBUcv6c6OPLggIkeWnGI
	OV6evd1T18vahhKc1EajOdF/nBqrCT16PetIG860Rw19nFmGsi6HyztFhl3bOX6TLF/K
	NpU0d8TmwX1fosL9X5QksrmQUV8vOTNQ+IihnAszkL/c8SEIzLicuBOXxgIRPs9ErrJ2
	iXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=848FYwdhnA8KvIUw2mzB4kDe7UMCJA/bCE4nYgLbNNU=;
	b=hntb8tTWZdmK9pj3zSZYEIYyc9z7n1ipFt4ZDETG9QRhmyyvruBUK1qHGooHfeDRIO
	1HKL+oozaguPSmtS/nAOjEHeImtye8lWPol7YI1ANXYl6+9wNoypzlWnTTV0ltiHf68B
	ApM3+CbTs6Jr/0ExnNDRLspig5lj9DrMxV++OvyF6M1sQP2HqnKDS1dmjXlyHmYZL+4T
	b491nE7UbAjCr2XfWy89RJdcBxEx4j6S2wQGFK7GSRA6Vgfx5PZaMc+mBteiIp7vtzwI
	2bjOUKapA9elXjDzTkJLNOtGRFksb+8J/DU+kPc3IJz4PpIThndOB1x9IMDtwWWu+G2k
	WM6g==
X-Gm-Message-State: AE9vXwP0yoQswJQIUvNy3sXCxo6sPpWxfAjTIa/2dn6qAF2Z9KBxAd/SjUODPYFJ0miKQbN2wRNfr+pVXMT6DCzB
X-Received: by 10.36.121.206 with SMTP id z197mr16760523itc.22.1473349130460; 
	Thu, 08 Sep 2016 08:38:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 8 Sep 2016 08:38:30 -0700 (PDT)
In-Reply-To: <CABPh3UMatDBGkpS7wm8MT1zRBqYNMfg0Rj=aaeGe7ApjiHUh4A@mail.gmail.com>
References: <CABPh3UMatDBGkpS7wm8MT1zRBqYNMfg0Rj=aaeGe7ApjiHUh4A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Sep 2016 16:38:30 +0100
Message-ID: <CAJTo0LYGdfXnJeg8fY2B84n9PJ7BG0ZonOoTO6VNcSCrh4UH6w@mail.gmail.com>
To: nick83ola <nick83ola@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building python-gst without x11
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
X-List-Received-Date: Thu, 08 Sep 2016 15:38:53 -0000
Content-Type: multipart/alternative; boundary=001a114aa8208d7ed4053c00d308

--001a114aa8208d7ed4053c00d308
Content-Type: text/plain; charset=UTF-8

On 8 September 2016 at 15:36, nick83ola <nick83ola@gmail.com> wrote:

> it gives me an error because gtk+ requires it and python-pygst is a
> dependance of python-gst
>

Looking at the pygtk configure you might be able to change the pygtk recipe
to not pull in the gtk+ and so on dependencies if X11 isn't in
DISTRO_FEATURES, as it appears to do conditional checks.

Ross

--001a114aa8208d7ed4053c00d308
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 September 2016 at 15:36, nick83ola <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:nick83ola@gmail.com" target=3D"_blank">nick83ola@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div>it gives me an error beca=
use gtk+ requires it and python-pygst is a dependance of python-gst</div><d=
iv></div></blockquote></div><br>Looking at the pygtk configure you might be=
 able to change the pygtk recipe to not pull in the gtk+ and so on dependen=
cies if X11 isn&#39;t in DISTRO_FEATURES, as it appears to do conditional c=
hecks.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a114aa8208d7ed4053c00d308--
