Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34FF5E008E0; Fri, 23 Jan 2015 06:53:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD435E005A9
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 06:53:15 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id i50so6316891qgf.8
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 06:53:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Xjowe3c6iOjRUgn+ZE23Ra9wHwCgahRkNedch+ZXmSo=;
	b=hU7wZPNbmh4oWJs5z00qD9RMdMhMBkPEf2G6+6zXmZEXjnMWnfUvpw1zsbZzxrsM+Y
	e0js/dCi9lsE+M/V5N+z8KCaKEigGa166chxA7IG6tGdBsQqMDDtievM7rfq7tpokvkk
	2YRZJzeg2OnQbiOGjM6vvtp/cu096/r4CoK7GHLg1tjV+UfMgErwaHzkOqawp3cnr4J3
	6iJOG/dOdUH0nt/og2Y7o8Wh1rP0aPeesizx3Eauboc+RhXW4iVqLxtggSoPpIztMWQ0
	/ZHiPHD5bORRoAXyKRzbvk+9QxOwFsHN0sILcTOAZ5naULdVsUh/aXEhVOhAF5iqA050
	7CpQ==
X-Gm-Message-State: ALoCoQkfT3zO7jS5u/Vvl1corfAfLLNHszM3SL97hA0uc/28oJ1SAK/gIBECJJnls9oFi2H7be39
X-Received: by 10.224.93.6 with SMTP id t6mr8718026qam.93.1422024794987; Fri,
	23 Jan 2015 06:53:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Fri, 23 Jan 2015 06:52:54 -0800 (PST)
In-Reply-To: <1421986511-44679-1-git-send-email-leimaohui@cn.fujitsu.com>
References: <1421986511-44679-1-git-send-email-leimaohui@cn.fujitsu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 23 Jan 2015 14:52:54 +0000
Message-ID: <CAJTo0LaPunQcZWf+XE+8yNkN2hGK6FgKF4i+0shGbOb+rgEW9g@mail.gmail.com>
To: Lei Maohui <leimaohui@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] libidn_0.6.14: fix the QA Issue
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
X-List-Received-Date: Fri, 23 Jan 2015 14:53:21 -0000
Content-Type: multipart/alternative; boundary=089e01495028c4ae68050d52f25d

--089e01495028c4ae68050d52f25d
Content-Type: text/plain; charset=UTF-8

Hi Lei,

Patches for oe-core should go to the openembedded-core@ mailing list, not
yocto@.  But thanks, I've queued this for master.

Ross

On 23 January 2015 at 04:15, Lei Maohui <leimaohui@cn.fujitsu.com> wrote:

> To fix the QA Issue as following:
> ERROR: QA Issue: libidn: Files/directories were installed but not shipped
>   /usr/share/emacs
>   /usr/share/emacs/site-lisp
>   /usr/share/emacs/site-lisp/punycode.el
>   /usr/share/emacs/site-lisp/idna.el [installed-vs-shipped]
>
> Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
> ---
>  meta/recipes-extended/libidn/libidn_0.6.14.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta/recipes-extended/libidn/libidn_0.6.14.bb
> b/meta/recipes-extended/libidn/libidn_0.6.14.bb
> index ff8d345..4df1d08 100644
> --- a/meta/recipes-extended/libidn/libidn_0.6.14.bb
> +++ b/meta/recipes-extended/libidn/libidn_0.6.14.bb
> @@ -29,4 +29,5 @@ do_configure_prepend() {
>
>  do_install_append() {
>         rm -rf ${D}${libdir}/Libidn.dll
> +       rm -rf ${D}${datadir}/emacs
>  }
> --
> 1.8.4.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01495028c4ae68050d52f25d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lei,<div><br></div><div>Patches for oe-core should go t=
o the openembedded-core@ mailing list, not yocto@.=C2=A0 But thanks, I&#39;=
ve queued this for master.</div><div><br></div><div>Ross</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 23 January 2015 at 04=
:15, Lei Maohui <span dir=3D"ltr">&lt;<a href=3D"mailto:leimaohui@cn.fujits=
u.com" target=3D"_blank">leimaohui@cn.fujitsu.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">To fix the QA Issue as following:<br>
ERROR: QA Issue: libidn: Files/directories were installed but not shipped<b=
r>
=C2=A0 /usr/share/emacs<br>
=C2=A0 /usr/share/emacs/site-lisp<br>
=C2=A0 /usr/share/emacs/site-lisp/punycode.el<br>
=C2=A0 /usr/share/emacs/site-lisp/idna.el [installed-vs-shipped]<br>
<br>
Signed-off-by: Lei Maohui &lt;<a href=3D"mailto:leimaohui@cn.fujitsu.com">l=
eimaohui@cn.fujitsu.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-extended/libidn/<a href=3D"http://libidn_0.6.14.bb" targ=
et=3D"_blank">libidn_0.6.14.bb</a> | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta/recipes-extended/libidn/<a href=3D"http://libidn_0.6.14.b=
b" target=3D"_blank">libidn_0.6.14.bb</a> b/meta/recipes-extended/libidn/<a=
 href=3D"http://libidn_0.6.14.bb" target=3D"_blank">libidn_0.6.14.bb</a><br=
>
index ff8d345..4df1d08 100644<br>
--- a/meta/recipes-extended/libidn/<a href=3D"http://libidn_0.6.14.bb" targ=
et=3D"_blank">libidn_0.6.14.bb</a><br>
+++ b/meta/recipes-extended/libidn/<a href=3D"http://libidn_0.6.14.bb" targ=
et=3D"_blank">libidn_0.6.14.bb</a><br>
@@ -29,4 +29,5 @@ do_configure_prepend() {<br>
<br>
=C2=A0do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -rf ${D}${libdir}/Libidn.dll<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${datadir}/emacs<br>
=C2=A0}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.4.2<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e01495028c4ae68050d52f25d--
