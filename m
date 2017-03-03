Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70CEAE00AAB; Fri,  3 Mar 2017 08:06:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36188E00A26
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 08:06:29 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id v125so3182091qkh.2
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 08:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wZ423RbgTS5KQRwmDW/LB4b0OQpwS70eo7gLdbsc3c0=;
	b=rc9xSkGLpqVrcvEqiyKj9Tvzasz0DWBvAb/5gVBHxsIsdEo4n2+kgg1utVdz72431X
	gAg8sV62h+qXttu2SUiZVa4zQwy6VPX/jeiii6xFHp71E2dzG4I94p+c6ne26pnGkZ8z
	jcG7NwxrRm865N8pzM7ZqwDTcHT2CcaxCq1v9vuiIEf0hx/zgiyn+BNV8jB92NeSsy4L
	Kf+WEWBC6jzViCHSepjW4ECqv/szmwzoJe9FnbMQCVOUZrRkaZ1DEePWz1AaRX67iTR7
	5L8t3hl7GxgVDXIOlp2ODtRgc7/6O4WbvJ3dcpBiRgOwzDoizvWJf9T7FIQgDFhxS58r
	usqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wZ423RbgTS5KQRwmDW/LB4b0OQpwS70eo7gLdbsc3c0=;
	b=fhkvGmgen9BX1i7UyaQdDwFKTpfnD69+vd/6vdilB1Ed03amJ4UyRguY1YQPhTAqvr
	25wO3lPdv0q6WcDQf97z8pXhz8XFvtk8kD1dYopy6ykHh7/cx22KCCqsJbiZaQq8eCez
	kqqdx2O3/dU2d3QsJsY0QNVLPh/xuME/kSzj86N8MTn98pDvJphtjiw79HBFS0q2QjEU
	K9dgYDb8lnOVGjLK0NBBP/FcMqrBIzEqZQ+5TI9iWDPwp5AkHV+Z06tgmWvBAl7WfmWR
	aP8GkPPEL8A94SIVrmU4EaZ97bdT7vTOd3Jg3LhE6ijz+EpMrcbUSutYI37Yr6jabchA
	lP4A==
X-Gm-Message-State: AMke39laBJ+34HsJN7nW6+/bdP5j7mb/ywKz6R9fgafbG2odVyMGbgsS6BuxTslWCalJf+30aU+m5sdKYpUfm5IO
X-Received: by 10.55.3.151 with SMTP id 145mr3189671qkd.244.1488557189056;
	Fri, 03 Mar 2017 08:06:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 3 Mar 2017 08:06:08 -0800 (PST)
In-Reply-To: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
References: <CAFq4t4h_PuOC8JDN2z6NWRZGHZMZWRr7aB+XYDCta1cvJV49CA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Mar 2017 16:06:08 +0000
Message-ID: <CAJTo0LZPA1ta5Jp9q6yeEz+V3Vt+pye6NpmEHg97U87FjXqwUQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto's framebuffer-vncserver
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
X-List-Received-Date: Fri, 03 Mar 2017 16:06:31 -0000
Content-Type: multipart/alternative; boundary=94eb2c0b93a07b76130549d5babd

--94eb2c0b93a07b76130549d5babd
Content-Type: text/plain; charset=UTF-8

On 3 March 2017 at 16:04, Peter Balazovic <balazovic.peter@gmail.com> wrote:

> I am not successfull to include it into my image, here is a part of a log
> build:
>
> | ../git/configure: line 13581: syntax error near unexpected token `GTK,'
> | ../git/configure: line 13581: `PKG_CHECK_MODULES(GTK, gtk+-2.0,,:)'
> | NOTE: The following config.log files may provide further information.
> | WARNING: exit code 1 from a shell command.
> | NOTE: /mnt/work/Linux/build-fb/tmp/work/aarch64-poky-linux/
> libvncserver/git-r1+gitrAUTOINC+5b322f523f/build/config.log
> | ERROR: configure failed
> | ERROR: Function failed: do_configure (log file is located at
> /mnt/work/Linux//build-fb/tmp/work/aarch64-poky-linux/libvncserver/git-r1+
> gitrAUTOINC+5b322f523f/temp/log.do_configure.11798)
> ERROR: Task 866 (/mnt/work/Linu//sources/meta-
> openembedded/meta-oe/recipes-graphics/famebuffer-vnc/libvncserver_git.bb,
> do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5407 tasks of which 5406 didn't need to be
> rerun and 1 failed.
>
> Does anybode have idea where problem might be?
>

Inherit pkgconfig in your recipe.

Ross

--94eb2c0b93a07b76130549d5babd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 March 2017 at 16:04, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"=
mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I am not su=
ccessfull to include it into my image, here is a part of a log build:</div>=
<div><br></div><div>| ../git/configure: line 13581: syntax error near unexp=
ected token `GTK,&#39;</div><div>| ../git/configure: line 13581: `PKG_CHECK=
_MODULES(GTK, gtk+-2.0,,:)&#39;</div><div>| NOTE: The following config.log =
files may provide further information.</div><div>| WARNING: exit code 1 fro=
m a shell command.</div><div>| NOTE: /mnt/work/Linux/build-fb/tmp/<wbr>work=
/aarch64-poky-linux/<wbr>libvncserver/git-r1+<wbr>gitrAUTOINC+5b322f523f/bu=
ild/<wbr>config.log</div><div>| ERROR: configure failed</div><div>| ERROR: =
Function failed: do_configure (log file is located at /mnt/work/Linux//buil=
d-fb/tmp/<wbr>work/aarch64-poky-linux/<wbr>libvncserver/git-r1+<wbr>gitrAUT=
OINC+5b322f523f/temp/<wbr>log.do_configure.11798)</div><div>ERROR: Task 866=
 (/mnt/work/Linu//sources/meta-<wbr>openembedded/meta-oe/recipes-<wbr>graph=
ics/famebuffer-vnc/<a href=3D"http://libvncserver_git.bb" target=3D"_blank"=
>libvnc<wbr>server_git.bb</a>, do_configure) failed with exit code &#39;1&#=
39;</div><div>NOTE: Tasks Summary: Attempted 5407 tasks of which 5406 didn&=
#39;t need to be rerun and 1 failed.</div><div><br></div><div>Does anybode =
have idea where problem might be?</div><div></div></blockquote></div><br>In=
herit pkgconfig in your recipe.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--94eb2c0b93a07b76130549d5babd--
