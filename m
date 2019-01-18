Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CFAAE00CE2; Fri, 18 Jan 2019 09:51:31 -0800 (PST)
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
	*      [209.85.208.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E80BE00C77
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 09:51:29 -0800 (PST)
Received: by mail-ed1-f66.google.com with SMTP id y56so11754121edd.11
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 09:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2n8NwF2dU+Jf08gXQS4yFJl7VUG+8WcignPAGkorDOc=;
	b=KsDe5neq6NBc0B8m3YzzrTePFdM+gcQ4uX9tuuitfWon9XcEFrrvauwPSUs8/hxRJw
	1lKCDf+xRdBVN8WsVOrhkcjp74P345Jk4RfOuctcKr1CJPEk2n8/aU/oVW4bUlsEpYeG
	KSU7dNdz3npCZ4hWMtp6RU34RaMMnj3QQMRVPg9cd4ekZt6s38cmOY1GDF6CitP75usz
	GsWkB4vhQjPaQYHqZWhn/hUcPkFlMQxJQ1nLbs8tRLN6Io49Jk5omtGS9m3gH1p7VZz4
	QgUuAMNU5q/NomsAwQwA5HPIaHFRsCsx5nqSqrYzBH1WSid8NS9QpcwZbwmcetFWcUm9
	n27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2n8NwF2dU+Jf08gXQS4yFJl7VUG+8WcignPAGkorDOc=;
	b=MMWPi2xoemY/Ow5ZiFl2C7ojNqFpFc2njesbtG2DDJxtMaqPsCh2Guu24jU7B9VbNX
	FhK0rlTW0qFo6eKkiEp5rhAnfX6z4jz1Bmnc0JgvyEx+wKXtp0m5mHqVwa/aW4ezVzob
	mpxgO2t9YYj7EV/Wtw5sBO0uEabKRdwDfJOoEkJLhbQQC/0cw1jqm/o/b2ehjRzkIwQ8
	T6G43dJi+x2qKPcyjPg3VYgbQhEJpwdXzqnc9s01uuBXFroYuyecZRU4EubsVuWdR9aq
	7QxzVAg2Df6ROJ48gMRIJ9MxEzr3M09wAEI7ogryMQjdPUTi8J/OXNu6n4uNeUqUXj1n
	SSiw==
X-Gm-Message-State: AJcUukeDQKYApBBOqY0Oqga4kUYvU5VnJEtJHkjwQ3b4syZR5Ps7uH8b
	H9dSyUnPI4qQHXAqnbl5uvyDCtijp5j4s1xme1A=
X-Google-Smtp-Source: ALg8bN4i9l2ODbt/aVLzXpmj/gUx1MoJPyjeJ9tel4FCdEPTZROitAwQ5b7G6Wi1V8ficnK/9K/Dja6OEhwhfJHUiTc=
X-Received: by 2002:a50:b36f:: with SMTP id r44mr16722762edd.284.1547833889138;
	Fri, 18 Jan 2019 09:51:29 -0800 (PST)
MIME-Version: 1.0
References: <20190118160145.21209-1-pkj@axis.com>
In-Reply-To: <20190118160145.21209-1-pkj@axis.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 18 Jan 2019 09:51:17 -0800
Message-ID: <CAFNP8OtScpuBw7GT6tGB2rJnpMiOaNvPUJbe3T5afFMK-eCqMw@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] ref-manual: Update the definition of SDK_VERSION
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
X-List-Received-Date: Fri, 18 Jan 2019 17:51:31 -0000
Content-Type: multipart/alternative; boundary="000000000000222f89057fbf2993"

--000000000000222f89057fbf2993
Content-Type: text/plain; charset="UTF-8"

Peter,

Thanks for the patch.  See
https://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-SDK_VERSION
for the update.

Scott

On Fri, Jan 18, 2019 at 8:02 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> The definition in poky.conf has been updated.
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
> This of course assumes that the corresponding patch that I just sent
> to the openembedded-core mailing list has been integrated first.
>
>  documentation/ref-manual/ref-variables.xml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index ed65727fc7..4b243a12dd 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -13045,7 +13045,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
> = "${INC_PR}.3"
>                      <filename>/meta-poky/conf/distro/poky.conf</filename>)
>                      defines the <filename>SDK_VERSION</filename> as
> follows:
>                      <literallayout class='monospaced'>
> -     SDK_VERSION :=
> "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
> +     SDK_VERSION =
> "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}','snapshot')}"
>                      </literallayout>
>                  </para>
>
> --
> 2.12.0
>
>

--000000000000222f89057fbf2993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Peter, <br></div><div><br></div><div=
>Thanks for the patch.=C2=A0 See <a href=3D"https://yoctoproject.org/docs/2=
.7/ref-manual/ref-manual.html#var-SDK_VERSION">https://yoctoproject.org/doc=
s/2.7/ref-manual/ref-manual.html#var-SDK_VERSION</a> for the update.</div><=
div><br></div><div>Scott<br></div></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 18, 2019 at 8:02 AM Pet=
er Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kj=
ellerstedt@axis.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">The definition in poky.conf has been updated.<br>
<br>
Signed-off-by: Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@=
axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
---<br>
This of course assumes that the corresponding patch that I just sent<br>
to the openembedded-core mailing list has been integrated first.<br>
<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index ed65727fc7..4b243a12dd 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -13045,7 +13045,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D &quot;${INC_PR}.3&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;filename&gt;/meta-poky/conf/distro/poky.conf&lt;/filename&gt;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0defines the &lt;filename&gt;SDK_VERSION&lt;/filename&gt; as follows:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0SDK_VERSION :=3D &quot;${@&#39;${DISTRO_VERSION}&#39;.=
replace(&#39;snapshot-${DATE}&#39;,&#39;snapshot&#39;)}&quot;<br>
+=C2=A0 =C2=A0 =C2=A0SDK_VERSION =3D &quot;${@d.getVar(&#39;DISTRO_VERSION&=
#39;).replace(&#39;snapshot-${DATE}&#39;,&#39;snapshot&#39;)}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
<br>
-- <br>
2.12.0<br>
<br>
</blockquote></div>

--000000000000222f89057fbf2993--
