Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08111E00D71; Wed,  3 Aug 2016 12:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9EF9E00D54
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 12:38:28 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id m101so252801951ioi.2
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2016 12:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F0VZEXm8KIIAwJ2sB+QZvmIiklpYRDuJo72sB4lNnYI=;
	b=zChJr3+2nXlfdg0+2kwCwsab+sUYmEKeYonFBkYQ+HIvOAJZU6sJXXoX+EfbrCSNxu
	1HLMdiHEvq3qWXVmcAPafmu60OQpE+ugMy7XRmLhOKoeekQZAVRfkXV06NIe2bFVA8Ub
	lM+g5tl6UDU8G+N8oJ667wAcABFBtF/urNCn5a45HVFhnAUXWjAESzDvCwlBNlFrBT4J
	5BCyUWtg9psM38gEw3v38TJnDDdZYpURvlGpV6Kfw4MGRl1OJYyBGj3EkhGBkgVgknBY
	KGIQr4TDpqJ425rbohxoKUcA4zu21J/XDV2SxHqPE6NGCdSm+F94Ri1p338HCGbA66vC
	aLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F0VZEXm8KIIAwJ2sB+QZvmIiklpYRDuJo72sB4lNnYI=;
	b=fUUGySBu/PU7YujPVw1gvwvq8tJnmGbjzXqaxP4hwVYNcFAfP7z9xnD7hao3eEwbGH
	UwiW4FtDLNGQf9CJdZv6/eeDPrDUaSMx12Q2yRUihn8HjdB1O0wYAVmUG0ySKgwoyHil
	DS2uXlH2TH1l+4vsaqys3SwxNwJ8Gm9+bcAD6LrvLRj40fKOtjJeZjl4uJZH5HyQ+2Dd
	JcxmCsdsWVHl85Dh8XiyfMiJeTr+pOi/wPN91OjPSwmqk/1tIxGPdMzhlyiHoWWgqC7Z
	S8yxsd/DXACjruBLh+knFEfSQ826tZgYAYfYRSpKsd4/76UroLSHlMkdsIoh2fGFOF4y
	qO0g==
X-Gm-Message-State: AEkoouv+u90e5ODuiPN4MIO99XN1+5um6UVuGVBE8p+a0bKFICIONOx/lR9r2APPyDiaOYf33rRZGxvcC2azwXg6
X-Received: by 10.107.135.142 with SMTP id r14mr77045624ioi.133.1470253107914; 
	Wed, 03 Aug 2016 12:38:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 3 Aug 2016 12:38:07 -0700 (PDT)
In-Reply-To: <CAAJbk1Fr-=jn7Mk8hOVuuTkW3hq2fv+amP13Agaar21DBwFvOg@mail.gmail.com>
References: <CAAJbk1Fr-=jn7Mk8hOVuuTkW3hq2fv+amP13Agaar21DBwFvOg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Aug 2016 20:38:07 +0100
Message-ID: <CAJTo0La4Kqio-a3BqDX4yHtzB5dZbND54vSchO-AajkwetD=4A@mail.gmail.com>
To: Joel Zhou <joel.zhou@broadcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: krogoth: quilt-native failed on Ubuntu 14
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
X-List-Received-Date: Wed, 03 Aug 2016 19:38:32 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc3a616b05392ffaa3

--001a113eccbc3a616b05392ffaa3
Content-Type: text/plain; charset=UTF-8

On 3 August 2016 at 20:34, Joel Zhou <joel.zhou@broadcom.com> wrote:

> WARNING: quilt-native-0.64-r0 do_populate_lic: Could not copy license file
> /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING
> to
> /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/license-destdir/quilt-native/COPYING:
> [Errno 2] No such file or directory:
> '/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING'
> *ERROR: quilt-native-0.64-r0 do_configure: no configure script found at
> ./configure*
> *ERROR: quilt-native-0.64-r0 do_configure: Function failed: do_configure
> (log file is located at
> /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29952)*
> ERROR: Logfile of failure stored in:
> /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29952
> ERROR: Task 29
> (/home/joelz/poky2.1/poky/build/../meta/recipes-devtools/quilt/
> quilt-native_0.64.bb, do_configure) failed with exit code '1'
>

Those warnings don't look good, can you just delete your build directory
entirely to be sure there's not some weird corruption going on?

Ross

--001a113eccbc3a616b05392ffaa3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 August 2016 at 20:34, Joel Zhou <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:joel.zhou@broadcom.com" target=3D"_blank">joel.zhou@broadcom.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>WARNING: quilt-na=
tive-0.64-r0 do_populate_lic: Could not copy license file /home/joelz/poky2=
.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/quilt-0.64/COPYING=
 to /home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0.64-=
r0/license-destdir/quilt-native/COPYING: [Errno 2] No such file or director=
y: &#39;/home/joelz/poky2.1/poky/build/tmp/work/x86_64-linux/quilt-native/0=
.64-r0/quilt-0.64/COPYING&#39;</div></div><div><div><b>ERROR: quilt-native-=
0.64-r0 do_configure: no configure script found at ./configure</b></div></d=
iv><div><div><b>ERROR: quilt-native-0.64-r0 do_configure: Function failed: =
do_configure (log file is located at /home/joelz/poky2.1/poky/build/tmp/wor=
k/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29952)</b></div><=
/div><div><div>ERROR: Logfile of failure stored in: /home/joelz/poky2.1/pok=
y/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_configure.29=
952</div></div><div><div>ERROR: Task 29 (/home/joelz/poky2.1/poky/build/../=
meta/recipes-devtools/quilt/<a href=3D"http://quilt-native_0.64.bb" target=
=3D"_blank">quilt-native_0.64.bb</a>, do_configure) failed with exit code &=
#39;1&#39;</div></div></blockquote></div><br>Those warnings don&#39;t look =
good, can you just delete your build directory entirely to be sure there&#3=
9;s not some weird corruption going on?</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a113eccbc3a616b05392ffaa3--
