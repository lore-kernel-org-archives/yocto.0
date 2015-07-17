Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBA0DE009E6; Fri, 17 Jul 2015 03:15:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6EF9E009D2
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 03:15:53 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so66707550qkd.3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 03:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vLVUl9k0HxGgv0HABctYp4f3i8kmysQYQ/J80z9zHfo=;
	b=LlP+pPAoNRYJTj94XM8AhlXxwgW1M+qhFw0oYPIOqhUzx9PS7hLOnlVn2kicOCPBF2
	fN7ACxC4h53c/mIHXbIdwB5gcD8NzSlUwgAyghy/n18oFin0UCrj4x6sTNq2BIM7VwBN
	a25Te6+OjsnbtwtUFLBn1C17OXtk6Z0Xhs22B1y2rbitThgd3VsPDu68JHwSPeavOsbI
	rTbdBQVfX7drZ0ifHGC6Tc4cheLK3WAC6B5DDZbe4lmfEdhY/4cd2MNnwApeYKCXWzkJ
	u4e4KqT4i/JwEFVi74/uZNKwP+a4/vyekZIPOY7QHF7fPRLqbnXxdPa1uMJaGKDhrO9W
	eeNQ==
X-Gm-Message-State: ALoCoQmelyzdCjKja4rojTm13asKnJW20Y4mY/YqrHzAplFyBqrx5DIeoRJ9PnrCljefADp/Rg71
X-Received: by 10.140.150.142 with SMTP id 136mr18169018qhw.17.1437128152815; 
	Fri, 17 Jul 2015 03:15:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 17 Jul 2015 03:15:33 -0700 (PDT)
In-Reply-To: <1437127559-9853-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1437127559-9853-1-git-send-email-Alexandru.Vaduva@enea.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 17 Jul 2015 11:15:33 +0100
Message-ID: <CAJTo0LYvZ4xfs=WsjkOwpXEs06a-Yf9Y-y7had=dVs3oR1=LcQ@mail.gmail.com>
To: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Fix LSB core sysvinit issue.
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
X-List-Received-Date: Fri, 17 Jul 2015 10:15:54 -0000
Content-Type: multipart/alternative; boundary=001a11357d4a0be77e051b0f7988

--001a11357d4a0be77e051b0f7988
Content-Type: text/plain; charset=UTF-8

You don't say what layer this is for... but it looks a lot like this fix
should go into oe-core (with an explanation of why it is needed).

Ross

On 17 July 2015 at 11:05, Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
wrote:

> From: Alexandra Safta <alexandra.safta@enea.com>
>
> [LXCR-3306]
> Signed-off-by: Alexandra Safta <alexandra.safta@enea.com>
> Signed-off-by: Tudor Florea <tudor.florea@enea.com>
> Signed-off-by: Alexandra Safta <alexandra.safta@enea.com>
> ---
>  recipes-core/sysvinit/sysvinit_2.88dsf.bbappend | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
>
> diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> new file mode 100644
> index 0000000..4fd3c00
> --- /dev/null
> +++ b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> @@ -0,0 +1,3 @@
> +do_install_append(){
> +        chmod o+x ${D}${base_sbindir}/shutdown
> +}
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11357d4a0be77e051b0f7988
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You don&#39;t say what layer this is for... but it looks a=
 lot like this fix should go into oe-core (with an explanation of why it is=
 needed).<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 17 Jul=
y 2015 at 11:05, Alexandru.Vaduva <span dir=3D"ltr">&lt;<a href=3D"mailto:A=
lexandru.Vaduva@enea.com" target=3D"_blank">Alexandru.Vaduva@enea.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Alexandra Safta &l=
t;<a href=3D"mailto:alexandra.safta@enea.com">alexandra.safta@enea.com</a>&=
gt;<br>
<br>
[LXCR-3306]<br>
Signed-off-by: Alexandra Safta &lt;<a href=3D"mailto:alexandra.safta@enea.c=
om">alexandra.safta@enea.com</a>&gt;<br>
Signed-off-by: Tudor Florea &lt;<a href=3D"mailto:tudor.florea@enea.com">tu=
dor.florea@enea.com</a>&gt;<br>
Signed-off-by: Alexandra Safta &lt;<a href=3D"mailto:alexandra.safta@enea.c=
om">alexandra.safta@enea.com</a>&gt;<br>
---<br>
=C2=A0recipes-core/sysvinit/sysvinit_2.88dsf.bbappend | 3 +++<br>
=C2=A01 file changed, 3 insertions(+)<br>
=C2=A0create mode 100644 recipes-core/sysvinit/sysvinit_2.88dsf.bbappend<br=
>
<br>
diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend b/recipes-core=
/sysvinit/sysvinit_2.88dsf.bbappend<br>
new file mode 100644<br>
index 0000000..4fd3c00<br>
--- /dev/null<br>
+++ b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend<br>
@@ -0,0 +1,3 @@<br>
+do_install_append(){<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod o+x ${D}${base_sbindir}/shutdown<br>
+}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--001a11357d4a0be77e051b0f7988--
