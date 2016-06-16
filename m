Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E97E00D69; Thu, 16 Jun 2016 00:58:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B3A4E00D49
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 00:58:32 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id z189so129485017itg.0
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 00:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HLRrAXdlbZNEBS28DLYqmPFBQcK2uFLtLmjXgXM9Xtk=;
	b=gjVEUQA/SoaCXDE18gYrty6wtEyA3UoGCxPsqaY8ly/EqwcB2LzkvyrxOzSc3EwvtD
	MTfIdx5p/1iRps3bVXqomelrCErNcfbFHIlSmT5fhjIQJlbEWy72w49h/7H6Akf1lbJW
	FTMiD1g4e648HZ+ahXe/jgZnIrq6EGbVOJHONeDCoh16yglnX18iYhcGMSfswved2c9D
	45xoWdhdZfe+54m6+xvxdb4ywfG1kjs2q6PJXEsHiGibcSh7afLMMT5zoblfbs5yovzE
	0bdOziD22EUoQhBxfFGQhtjTDzlMCJaysxyDxZ1DdauUmY2NskHkYfofa1lB/4gv53hX
	wT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HLRrAXdlbZNEBS28DLYqmPFBQcK2uFLtLmjXgXM9Xtk=;
	b=Sdq+W6ltguz4Y5lfMEwMjK+LkNRdYuSMVq8420D4YuQG7zStLkbWW9W+eYXOboSlg9
	1FqhekTvX253W1wEmAB3jzL3YWE4wmAkmv4OX7HbzFLiFR088YaUcdvcGLoBxezvkJTk
	/CdQTU8OqE4Z59Utrf+5f9zyuK9tngZldLFhm5DwG3bId6bvLQeZLiqmG2VUYNaPevTN
	ZYhQC8iVJ0B+OiB3msxL/6mrLnc2EfI6db6MPaDNKpi6TIqCvogilfIMCYraiZOuzl77
	dvaThqzHhLKywDdaV09XeTKfdVzGEwxWjG0fvnbmhx2iEuVuV9WyZ4K3xThgO8K3eI2e
	6jRA==
X-Gm-Message-State: ALyK8tKLJsYs03KVxbB1Y6SSZemTo8J03iO4tNJ3ZFho2UutfRk57YiL753ZHRGOfNHpqVR+DxqmqXDl4Z0ziV/I
X-Received: by 10.36.217.68 with SMTP id p65mr5782270itg.38.1466063911543;
	Thu, 16 Jun 2016 00:58:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 16 Jun 2016 00:58:12 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F40D70@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F40D70@MBX114.d.ethz.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 16 Jun 2016 08:58:12 +0100
Message-ID: <CAJTo0LaXXfdYV9Z+ia1MnZHMgA6LPLveggaba2bc1MvvjO72VQ@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-qt3 and meta-qt4
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
X-List-Received-Date: Thu, 16 Jun 2016 07:58:34 -0000
Content-Type: multipart/alternative; boundary=001a114631b6aa82720535609a1d

--001a114631b6aa82720535609a1d
Content-Type: text/plain; charset=UTF-8

On 16 June 2016 at 07:33, Anicic Damir (PSI) <damir.anicic@psi.ch> wrote:

> I do not find meta-qt3 & meta-qt4 in Yocto 2.1
>

That's because they're not included as in general they are not needed.

https://layers.openembedded.org/layerindex/branch/master/layer/meta-qt3/
https://layers.openembedded.org/layerindex/branch/master/layer/meta-qt4/

Ross

--001a114631b6aa82720535609a1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 June 2016 at 07:33, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a href=
=3D"mailto:damir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);borde=
r-left-style:solid;padding-left:1ex"><div style=3D"direction:ltr;font-famil=
y:Tahoma;color:rgb(0,0,0);font-size:10pt">I do not find meta-qt3 &amp; meta=
-qt4 in Yocto 2.1<span class=3D""><font color=3D"#888888"><br></font></span=
></div></blockquote></div><br></div><div class=3D"gmail_extra">That&#39;s b=
ecause they&#39;re not included as in general they are not needed.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"htt=
ps://layers.openembedded.org/layerindex/branch/master/layer/meta-qt3/">http=
s://layers.openembedded.org/layerindex/branch/master/layer/meta-qt3/</a><br=
></div><div class=3D"gmail_extra"><a href=3D"https://layers.openembedded.or=
g/layerindex/branch/master/layer/meta-qt4/">https://layers.openembedded.org=
/layerindex/branch/master/layer/meta-qt4/</a><br></div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114631b6aa82720535609a1d--
