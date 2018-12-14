Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE6BDE00CEA; Thu, 13 Dec 2018 16:09:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7731E003E1
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 16:08:59 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id d39so3509403edb.12
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 16:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=t724QpexFPHHJhugwfZPpRVtdRlmxk/yE60YzQJtR68=;
	b=IMOob0nxCDrlhq0ZyzWzKzjgijqi8FC9QSY1sKtINHRfNLprhlSOr3gfR8wWmt4ESk
	LNYnmbCWDNXVfwY6Ati84Db+sW7EzgNhCYLelVEU+4Tw0X1sqcFoAtp3Ww1dmEdpZnUr
	aesir3nIBEzJs9CNKDHpZDfDr/nsybQlWLoSmeFCPV4lNRs/zlonViKK44LhFC7LdaKt
	GnMZMqCAuefdgDQ+vFX5UWsbTbIxw3+fmHSJsHmHRJ6zNHxj5xMa6+5N3zc5Mo7h+f2s
	/ul13Hi6DMuGwLkfhUpvC/Z9vBZ+YxABE+KP4OhNT4fpAtFayBlCqi8/YTbL8niogb+6
	VRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=t724QpexFPHHJhugwfZPpRVtdRlmxk/yE60YzQJtR68=;
	b=RZLMmr8KEe1sla+G+vnpVx+Pim0wfcfhMe4ZLC+bZeNpoUbEiQywX1ioY5O9uW3mn2
	5Gf6WQAWQy4MP2L/bN2TTNghgnV8cl4Lom7t4fljB0oGgE0zPC8rOts7RB2k5nxFilaI
	yKUjKmHMUsPV+DAvPCGwGoMZ7/EQ31P7qKdDrpBdJmWCgnWJ7FTwjIt6My8Ml84twHdv
	W0hYmALKMiyyBLApeTx/jW+XK6c53uqhcQ8YZstarTc7FPFxzFpKLg7wPeoVb9L4UU1p
	ptL4SKRsSIz4kZD2jZHzoPgYcfNtRYrn3KP1MjnhfzjXZ9gZvJgs4ya4ne286MmHkq+l
	EvLA==
X-Gm-Message-State: AA+aEWb6+6BC4HfQb+k8+izxsvaGN1aaXnGS94k6NKQG04NOSEkaGoeD
	aAqNZ13eeP6gcN87IrAQgOgNGA0k1R4scoL6rfHhzPYw
X-Google-Smtp-Source: AFSGD/V4wPaA/HDvHG8ZKloo4fc3kKIcTRy5S1ATA/HVEZ03ghfbiw8oCkeoC9MQYCIN3zRYqFltPlAUR25gySoh6TM=
X-Received: by 2002:aa7:d0c5:: with SMTP id u5mr1036085edo.158.1544746138979; 
	Thu, 13 Dec 2018 16:08:58 -0800 (PST)
MIME-Version: 1.0
References: <20181213112305.29609-1-pkj@axis.com>
	<20181213112305.29609-2-pkj@axis.com>
In-Reply-To: <20181213112305.29609-2-pkj@axis.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 13 Dec 2018 16:08:47 -0800
Message-ID: <CAFNP8Ov_gthOU7Mq1cpuGP63XrL+01vWnv6yCr6Sxq0sUNKhUA@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] ref-manual: Add missing whitespace around "=" in a few code examples
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
X-List-Received-Date: Fri, 14 Dec 2018 00:09:01 -0000
Content-Type: multipart/alternative; boundary="000000000000e1d41c057cf03c54"

--000000000000e1d41c057cf03c54
Content-Type: text/plain; charset="UTF-8"

Peter,

Thank you for the patch in the ref-manual.  I applied the patch (
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=0d22771c64d082bf86f5efd85ac9aaeb1c7f3093
)

You can see the changes in the upcoming version of the ref-manual.  I will
back port as needed too.
http://www.yoctoproject.org/docs/2.7/ref-manual/ref-manual.html.

Scott

On Thu, Dec 13, 2018 at 3:24 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 7dc3a3f79a..730737226e 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -7655,9 +7655,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
> "${INC_PR}.3"
>                      <literallayout class='monospaced'>
>       KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc
> features/taskstats/taskstats.scc"
>       KERNEL_FEATURES_append = " ${KERNEL_EXTRA_FEATURES}"
> -     KERNEL_FEATURES_append_qemuall=" cfg/virtio.scc"
> -     KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
> -     KERNEL_FEATURES_append_qemux86-64=" cfg/sound.scc"
> +     KERNEL_FEATURES_append_qemuall = " cfg/virtio.scc"
> +     KERNEL_FEATURES_append_qemux86 = " cfg/sound.scc
> cfg/paravirt_kvm.scc"
> +     KERNEL_FEATURES_append_qemux86-64 = " cfg/sound.scc"
>                      </literallayout></para>
>              </glossdef>
>          </glossentry>
> @@ -10422,7 +10422,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                              <filename>PACKAGECONFIG</filename>.
>                              You can either completely override the
> variable:
>                              <literallayout class='monospaced'>
> -     PACKAGECONFIG="f4 f5"
> +     PACKAGECONFIG = "f4 f5"
>                              </literallayout>
>                              Or, you can just append the variable:
>                              <literallayout class='monospaced'>
> @@ -10436,7 +10436,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                              As with append files previously described,
>                              you can either completely override the
> variable:
>                              <literallayout class='monospaced'>
> -     PACKAGECONFIG_pn-<replaceable>recipename</replaceable>="f4 f5"
> +     PACKAGECONFIG_pn-<replaceable>recipename</replaceable> = "f4 f5"
>                              </literallayout>
>                              Or, you can just amend the variable:
>                              <literallayout class='monospaced'>
> --
> 2.12.0
>
>

--000000000000e1d41c057cf03c54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Peter, <br></div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr">Thank you for the patch in the ref-manual.=C2=A0 I appl=
ied the patch (<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/yocto-=
docs/commit/?id=3D0d22771c64d082bf86f5efd85ac9aaeb1c7f3093">https://git.yoc=
toproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=3D0d22771c64d082bf86f5efd=
85ac9aaeb1c7f3093</a>)</div><div dir=3D"ltr"><br></div><div>You can see the=
 changes in the upcoming version of the ref-manual.=C2=A0 I will back port =
as needed too.=C2=A0 <a href=3D"http://www.yoctoproject.org/docs/2.7/ref-ma=
nual/ref-manual.html">http://www.yoctoproject.org/docs/2.7/ref-manual/ref-m=
anual.html</a>.</div><div><br></div><div>Scott<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr">On Thu, Dec 13, 2018 at 3:24 AM Peter Kj=
ellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjeller=
stedt@axis.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Signed-off-by: Peter Kjellerstedt &lt;<a href=3D"mailto:peter=
.kjellerstedt@axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&g=
t;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 10 +++++-----<br>
=C2=A01 file changed, 5 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index 7dc3a3f79a..730737226e 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -7655,9 +7655,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =3D=
 &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 KERNEL_EXTRA_FEATURES ?=3D &quot;features/netfilter/ne=
tfilter.scc features/taskstats/taskstats.scc&quot;<br>
=C2=A0 =C2=A0 =C2=A0 KERNEL_FEATURES_append =3D &quot; ${KERNEL_EXTRA_FEATU=
RES}&quot;<br>
-=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemuall=3D&quot; cfg/virtio.scc=
&quot;<br>
-=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound.scc =
cfg/paravirt_kvm.scc&quot;<br>
-=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemux86-64=3D&quot; cfg/sound.s=
cc&quot;<br>
+=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemuall =3D &quot; cfg/virtio.s=
cc&quot;<br>
+=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemux86 =3D &quot; cfg/sound.sc=
c cfg/paravirt_kvm.scc&quot;<br>
+=C2=A0 =C2=A0 =C2=A0KERNEL_FEATURES_append_qemux86-64 =3D &quot; cfg/sound=
.scc&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/literallayout&gt;&lt;/para&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
@@ -10422,7 +10422,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;filename&gt;PACKAGECONFIG&lt;/filename&g=
t;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0You can either completely override the varia=
ble:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&#39;monospaced&#3=
9;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG=3D&quot;f4 f5&quot;<br>
+=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG =3D &quot;f4 f5&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Or, you can just append the variable:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&#39;monospaced&#3=
9;&gt;<br>
@@ -10436,7 +10436,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0As with append files previously described,<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you can either completely override the varia=
ble:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&#39;monospaced&#3=
9;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG_pn-&lt;replaceable&gt;recipename&lt;/rep=
laceable&gt;=3D&quot;f4 f5&quot;<br>
+=C2=A0 =C2=A0 =C2=A0PACKAGECONFIG_pn-&lt;replaceable&gt;recipename&lt;/rep=
laceable&gt; =3D &quot;f4 f5&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Or, you can just amend the variable:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&#39;monospaced&#3=
9;&gt;<br>
-- <br>
2.12.0<br>
<br>
</blockquote></div>

--000000000000e1d41c057cf03c54--
