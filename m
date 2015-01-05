Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19D94E0090F; Mon,  5 Jan 2015 03:42:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3441DE00751
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 03:42:38 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id b16so1542051igk.11
	for <yocto@yoctoproject.org>; Mon, 05 Jan 2015 03:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kvWR9at/6gk27FxOp7kbHL/oEgh89HIuzdIAwrgWBW4=;
	b=TzT2ZoRx+v0tuWNSJiB/RgzVtp0eOaMMS4H6UYKeZgELrnSAZB0DnqYwBQ6aEMwE8e
	KA5jQd3qwbb5UVscCJi9f+gRMxSii8v/sLN21i0WGGlqFBcf1MOTmd6UusvkzBp+LFkV
	uHJZ54MhC7hzwq8ZGfGUKhINrRfrr2rt/nlyb1sjBf+jlOixWfkuymuAuGpmSYgJ2FOa
	3kDjYQYHZrjPO8gqZjt1Vp05fxmvlq0Z0JlIHLflladEFh3nAvx/7v/VB4MgqdXLgtVe
	B5KZpcKJ/l62ZMQyL94RfFBZW+REneTL0MEEVSaN08CEyCKdMXZpWSjmDQUJK7kkXFLp
	eIDQ==
MIME-Version: 1.0
X-Received: by 10.50.117.68 with SMTP id kc4mr10385864igb.25.1420458158030;
	Mon, 05 Jan 2015 03:42:38 -0800 (PST)
Received: by 10.50.88.3 with HTTP; Mon, 5 Jan 2015 03:42:37 -0800 (PST)
In-Reply-To: <1416384786-18424-1-git-send-email-bobadeshrikant@gmail.com>
References: <1416384786-18424-1-git-send-email-bobadeshrikant@gmail.com>
Date: Mon, 5 Jan 2015 17:12:37 +0530
Message-ID: <CALwQEroEVq9XKxpy86M+38KQW2ojWFTFr-8-T66CaLMKo6TqDg@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH 1/3] V2 refpolicy:20140311 update for systemd
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
X-List-Received-Date: Mon, 05 Jan 2015 11:42:52 -0000
Content-Type: multipart/alternative; boundary=089e0111aed2ed85e0050be62f62

--089e0111aed2ed85e0050be62f62
Content-Type: text/plain; charset=UTF-8

Hello,

Please provide review comments or feedback if any, It will be a great
help.
@Ping.

Thanks
Shrikant

On Wed, Nov 19, 2014 at 1:43 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>
> Systemd init type and related allow rules
> updated for refpolicy.
>
> Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
> ---
>  .../refpolicy-update-for_systemd.patch             |   46
> ++++++++++++++++++++
>  .../refpolicy/refpolicy_2.20140311.inc             |    1 +
>  2 files changed, 47 insertions(+)
>  create mode 100644
> recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
>
> diff --git
> a/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
> b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
> new file mode 100644
> index 0000000..80b420c
> --- /dev/null
> +++
> b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
> @@ -0,0 +1,46 @@
> +refpolicy: update for systemd
> +
> +It provides the systemd support for refpolicy
> +and related allow rules.
> +The restorecon provides systemd init labeled
> +as init_exec_t.
> +
> +Upstream-Status: Pending
> +
> +
> +Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
> +
> +--- a/policy/modules/contrib/shutdown.fc
> ++++ b/policy/modules/contrib/shutdown.fc
> +@@ -5,6 +5,9 @@
> + /sbin/shutdown        --
> gen_context(system_u:object_r:shutdown_exec_t,s0)
> + /sbin/shutdown\.sysvinit      --
> gen_context(system_u:object_r:shutdown_exec_t,s0)
> +
> ++# systemd support
> ++/bin/systemctl        --
> gen_context(system_u:object_r:shutdown_exec_t,s0)
> ++
> + /usr/lib/upstart/shutdown     --
> gen_context(system_u:object_r:shutdown_exec_t,s0)
> +
> + /usr/sbin/shutdown    --
> gen_context(system_u:object_r:shutdown_exec_t,s0)
> +--- a/policy/modules/system/init.fc
> ++++ b/policy/modules/system/init.fc
> +@@ -31,6 +31,8 @@
> + #
> + /sbin/init(ng)?               --
> gen_context(system_u:object_r:init_exec_t,s0)
> + /sbin/init\.sysvinit  --
> gen_context(system_u:object_r:init_exec_t,s0)
> ++# systemd support
> ++/lib/systemd/systemd  --
> gen_context(system_u:object_r:init_exec_t,s0)
> + # because nowadays, /sbin/init is often a symlink to /sbin/upstart
> + /sbin/upstart         --
> gen_context(system_u:object_r:init_exec_t,s0)
> +
> +--- a/policy/modules/system/init.te
> ++++ b/policy/modules/system/init.te
> +@@ -913,3 +913,8 @@
> + optional_policy(`
> +       zebra_read_config(initrc_t)
> + ')
> ++
> ++# systemd related allow rules
> ++allow kernel_t init_t:process dyntransition;
> ++allow devpts_t device_t:filesystem associate;
> ++allow init_t self:capability2 block_suspend;
> diff --git a/recipes-security/refpolicy/refpolicy_2.20140311.inc
> b/recipes-security/refpolicy/refpolicy_2.20140311.inc
> index 8894583..557b4ab 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20140311.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20140311.inc
> @@ -29,6 +29,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
>              file://poky-fc-rpm.patch \
>              file://poky-fc-ftpwho-dir.patch \
>              file://poky-fc-fix-real-path_su.patch \
> +            file://refpolicy-update-for_systemd.patch \
>             "
>
>  # Specific policy for Poky
> --
> 1.7.9.5
>
>

--089e0111aed2ed85e0050be62f62
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br></div>Please provide rev=
iew comments or feedback if any, It will be a great help.=C2=A0 <br></div>@=
Ping. <br><br></div>Thanks<br></div>Shrikant<br><div><div><div><div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 19, 2014 at =
1:43 PM, Shrikant Bobade <span dir=3D"ltr">&lt;<a href=3D"mailto:bobadeshri=
kant@gmail.com" target=3D"_blank">bobadeshrikant@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D=
"h5">From: Shrikant Bobade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor.com=
">Shrikant_Bobade@mentor.com</a>&gt;<br>
<br>
Systemd init type and related allow rules<br>
updated for refpolicy.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor=
.com">Shrikant_Bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0.../refpolicy-update-for_systemd.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A046 ++++++++++++++++++++<br>
=C2=A0.../refpolicy/refpolicy_2.20140311.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
=C2=A02 files changed, 47 insertions(+)<br>
=C2=A0create mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/re=
fpolicy-update-for_systemd.patch<br>
<br>
diff --git a/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-upda=
te-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20140311/refp=
olicy-update-for_systemd.patch<br>
new file mode 100644<br>
index 0000000..80b420c<br>
--- /dev/null<br>
+++ b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_=
systemd.patch<br>
@@ -0,0 +1,46 @@<br>
+refpolicy: update for systemd<br>
+<br>
+It provides the systemd support for refpolicy<br>
+and related allow rules.<br>
+The restorecon provides systemd init labeled<br>
+as init_exec_t.<br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+<br>
+Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:Shrikant_Bobade@mento=
r.com">Shrikant_Bobade@mentor.com</a>&gt;<br>
+<br>
+--- a/policy/modules/contrib/shutdown.fc<br>
++++ b/policy/modules/contrib/shutdown.fc<br>
+@@ -5,6 +5,9 @@<br>
+ /sbin/shutdown=C2=A0 =C2=A0 =C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_cont=
ext(system_u:object_r:shutdown_exec_t,s0)<br>
+ /sbin/shutdown\.sysvinit=C2=A0 =C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_c=
ontext(system_u:object_r:shutdown_exec_t,s0)<br>
+<br>
++# systemd support<br>
++/bin/systemctl=C2=A0 =C2=A0 =C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_cont=
ext(system_u:object_r:shutdown_exec_t,s0)<br>
++<br>
+ /usr/lib/upstart/shutdown=C2=A0 =C2=A0 =C2=A0--=C2=A0 =C2=A0 =C2=A0 gen_c=
ontext(system_u:object_r:shutdown_exec_t,s0)<br>
+<br>
+ /usr/sbin/shutdown=C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_context(system=
_u:object_r:shutdown_exec_t,s0)<br>
+--- a/policy/modules/system/init.fc<br>
++++ b/policy/modules/system/init.fc<br>
+@@ -31,6 +31,8 @@<br>
+ #<br>
+ /sbin/init(ng)?=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--=
=C2=A0 =C2=A0 =C2=A0 gen_context(system_u:object_r:init_exec_t,s0)<br>
+ /sbin/init\.sysvinit=C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_context(system_u:ob=
ject_r:init_exec_t,s0)<br>
++# systemd support<br>
++/lib/systemd/systemd=C2=A0 --=C2=A0 =C2=A0 =C2=A0 gen_context(system_u:ob=
ject_r:init_exec_t,s0)<br>
+ # because nowadays, /sbin/init is often a symlink to /sbin/upstart<br>
+ /sbin/upstart=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--=C2=A0 =C2=A0 =C2=A0 gen=
_context(system_u:object_r:init_exec_t,s0)<br>
+<br>
+--- a/policy/modules/system/init.te<br>
++++ b/policy/modules/system/init.te<br>
+@@ -913,3 +913,8 @@<br>
+ optional_policy(`<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0zebra_read_config(initrc_t)<br>
+ &#39;)<br>
++<br>
++# systemd related allow rules<br>
++allow kernel_t init_t:process dyntransition;<br>
++allow devpts_t device_t:filesystem associate;<br>
++allow init_t self:capability2 block_suspend;<br>
diff --git a/recipes-security/refpolicy/refpolicy_2.20140311.inc b/recipes-=
security/refpolicy/refpolicy_2.20140311.inc<br>
index 8894583..557b4ab 100644<br>
--- a/recipes-security/refpolicy/refpolicy_2.20140311.inc<br>
+++ b/recipes-security/refpolicy/refpolicy_2.20140311.inc<br>
@@ -29,6 +29,7 @@ SRC_URI +=3D &quot;file://poky-fc-subs_dist.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://poky-fc-rpm.patch \<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://poky-fc-ftpwho-dir.p=
atch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://poky-fc-fix-real-pat=
h_su.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://refpolicy-update-for_syst=
emd.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0# Specific policy for Poky<br>
--<br>
1.7.9.5<br>
<br>
</div></div></blockquote></div><br></div></div></div></div></div></div>

--089e0111aed2ed85e0050be62f62--
