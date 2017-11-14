Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA986E00C77; Mon, 13 Nov 2017 18:11:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC47E009B4
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 18:11:01 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id r11so5232114uah.12
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 18:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Cq6EelIPpoPAFwletPaB4416JKyJ5XyUoMK89+oTKis=;
	b=aS3nQTU2ZOOa+kzawyR6HPgbApyF9kcdzvM3xPJH2dWKSQ/5QPXFkLTO0Nhj7uydh6
	3gnMcLQbQx2VEWnwB3YRP81ft24kW2VR7UmoF9uHFaEH15QUvA8vVvmJVH+12k2tdd6g
	LzBwHDfSwBmHjOh/DN0/qr8Bbv2hb7NJIXYGwCJcoPNun7PBqBzRprFm9Pk+E/PexDY+
	IAkPzux8IEUyEmzyG9CQm6KdfybSY9eipFC+a4AC0GMGPpJnEQtARY/nQz5yMJ5V6PA0
	JIyYlA+3AaXUmBiO6NhXAxYtFiKbqxgwhMWikVJ/vRo16nzNBf5G9psbEI364gS+p3sG
	GgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Cq6EelIPpoPAFwletPaB4416JKyJ5XyUoMK89+oTKis=;
	b=bStwwL62UKnx78hI3j4yCx9XQ+5GB4IJuiAQKIVZaRMa53bHOo0QVNBOKSSxQN9D9l
	+q7DCZB1hORmDR48fQ8Ep25ZziFaa+7Vvx84YHoib7GpWWcg7yM/L3K50FFpDeXD9Uco
	kCgWHCo5qLYKAMmr72SHPazejUlCIwQRwuCpV73RC3U2raG9dkKNba9hpOp3SqMOMRtm
	qiIVmydoM5bhAcinlJRNYM+Eox7mKCxkbZNUl2DIbI1+mPDzB9ollYZa2Dd4mTraEknY
	1/NomHDTYlABAPBWycDmQW7dkjtJmNRhDjFBb3IVJaZvGgYx/JxloBpN7fXpSA8orEtQ
	Z2Ug==
X-Gm-Message-State: AJaThX5j54sw4dGLCOOsf8pnQ2MzwS7nmzBNHLD2uP5zLMesq9hIk6Oc
	w9//SHhYhVKNAFMoe82tyjkAwMk9gT0JcMWgF4nD6A==
X-Google-Smtp-Source: AGs4zMbDrMV54VbgH+noHZg/Xv/cTjub0RubjC/FNEAQD+dF9+WO234J91ubniQp8SvN8YDvXBIAuITyisK0KJkzl9A=
X-Received: by 10.176.9.93 with SMTP id c29mr8295604uah.68.1510625460387; Mon,
	13 Nov 2017 18:11:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.19.130 with HTTP; Mon, 13 Nov 2017 18:10:39 -0800 (PST)
In-Reply-To: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
References: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
From: Christopher Larson <kergoth@gmail.com>
Date: Mon, 13 Nov 2017 19:10:39 -0700
Message-ID: <CABcZANm=eqp+x9YPPrSUESXUCkowC0XfAXFvuJPGkWfFJ1s+Mw@mail.gmail.com>
To: Martyn Welch <martyn@welchs.me.uk>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 1/2] package.bbclass: add prohibited-path qa test
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
X-List-Received-Date: Tue, 14 Nov 2017 02:11:02 -0000
Content-Type: multipart/alternative; boundary="f403043eb564f483e0055de7e586"

--f403043eb564f483e0055de7e586
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2017 at 11:17 AM, Martyn Welch <martyn@welchs.me.uk> wrote:

> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
>
> Sometimes we wish to ensure that packages don't install files or
> directories somewhere that may prove detrimental to the operation of the
> system. For example, this may be the case if files are placed in a
> directory that is utilised as a mount point at run time, thus making them
> inaccessible once when the mount point is being utilised.
>
> Implement the prohibited-path QA test, which enables such locations to be
> specified in a "PROHIBITED_PATH" variable. This implementation allows for
> exact matches and simple wildcards (paths ending with an asterisk. An
> error will be raised should a match be found, or in the case of a
> wildcard, for any files added below the specificed location(s).
>
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Signed-off-by: Martyn Welch <martyn@welchs.me.uk>
> ---
>  meta/classes/insane.bbclass  |  2 +-
>  meta/classes/package.bbclass | 11 +++++++++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
> index def9c70..fb10681 100644
> --- a/meta/classes/insane.bbclass
> +++ b/meta/classes/insane.bbclass
> @@ -33,7 +33,7 @@ ERROR_QA ?=3D "dev-so debug-deps dev-deps debug-files a=
rch
> pkgconfig la \
>              perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
>              split-strip packages-list pkgv-undefined var-undefined \
>              version-going-backwards expanded-d invalid-chars \
> -            license-checksum dev-elf file-rdeps \
> +            license-checksum dev-elf file-rdeps prohibited-path \
>              "
>  # Add usrmerge QA check based on distro feature
>  ERROR_QA_append =3D "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge',=
 '
> usrmerge', '', d)}"
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index 2053d46..721ca1e 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -1162,6 +1162,17 @@ python populate_packages () {
>                  continue
>              seen.append(file)
>
> +            prohibited_path =3D d.getVar('PROHIBITED_PATH')
> +            if prohibited_path is not None:
> +                for p in prohibited_path.split():
> +                    exactmatch =3D True
> +                    if p.endswith("*"):
> +                        p =3D p[:len(p)-1]
> +                        exactmatch =3D False
> +                    if file[1:].startswith(p) and ((file[1:] !=3D p) or
> exactmatch) :
> +                        msg =3D "%s is in a prohibited path.\n" % file[1=
:]
> +                        package_qa_handle_error("prohibited-path", msg,
> d)
>

Unless I=E2=80=99m missing something, you aren=E2=80=99t checking for start=
swith(p +
os.sep), so a file in libexec would match a prohibited path of lib, as it=
=E2=80=99d
still start with that, no?
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--f403043eb564f483e0055de7e586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Nov 13, 2017 at 11:17 AM, Martyn Welch <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:martyn@welchs.me.uk" target=3D"_blank">martyn@welchs.me.uk<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Fabien Lahoud=
ere &lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk">fabien.lahouder=
e@collabora.<wbr>co.uk</a>&gt;<br>
<br>
Sometimes we wish to ensure that packages don&#39;t install files or<br>
directories somewhere that may prove detrimental to the operation of the<br=
>
system. For example, this may be the case if files are placed in a<br>
directory that is utilised as a mount point at run time, thus making them<b=
r>
inaccessible once when the mount point is being utilised.<br>
<br>
Implement the prohibited-path QA test, which enables such locations to be<b=
r>
specified in a &quot;PROHIBITED_PATH&quot; variable. This implementation al=
lows for<br>
exact matches and simple wildcards (paths ending with an asterisk. An<br>
error will be raised should a match be found, or in the case of a<br>
wildcard, for any files added below the specificed location(s).<br>
<br>
Signed-off-by: Fabien Lahoudere &lt;<a href=3D"mailto:fabien.lahoudere@coll=
abora.co.uk">fabien.lahoudere@collabora.<wbr>co.uk</a>&gt;<br>
Signed-off-by: Martyn Welch &lt;<a href=3D"mailto:martyn@welchs.me.uk">mart=
yn@welchs.me.uk</a>&gt;<br>
---<br>
=C2=A0meta/classes/insane.bbclass=C2=A0 |=C2=A0 2 +-<br>
=C2=A0meta/classes/package.bbclass | 11 +++++++++++<br>
=C2=A02 files changed, 12 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass<br>
index def9c70..fb10681 100644<br>
--- a/meta/classes/insane.bbclass<br>
+++ b/meta/classes/insane.bbclass<br>
@@ -33,7 +33,7 @@ ERROR_QA ?=3D &quot;dev-so debug-deps dev-deps debug-file=
s arch pkgconfig la \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0perms dep-cmp pkgvarcheck p=
erm-config perm-line perm-link \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0split-strip packages-list p=
kgv-undefined var-undefined \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0version-going-backwards exp=
anded-d invalid-chars \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license-checksum dev-elf file-rd=
eps \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license-checksum dev-elf file-rd=
eps prohibited-path \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0# Add usrmerge QA check based on distro feature<br>
=C2=A0ERROR_QA_append =3D &quot;${@bb.utils.contains(&#39;DISTRO_<wbr>FEATU=
RES&#39;, &#39;usrmerge&#39;, &#39; usrmerge&#39;, &#39;&#39;, d)}&quot;<br=
>
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass<br=
>
index 2053d46..721ca1e 100644<br>
--- a/meta/classes/package.bbclass<br>
+++ b/meta/classes/package.bbclass<br>
@@ -1162,6 +1162,17 @@ python populate_packages () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seen.append(file)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prohibited_path =3D d.getVar(&#3=
9;PROHIBITED_PATH&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if prohibited_path is not None:<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for p in prohibite=
d_path.split():<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exac=
tmatch =3D True<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if p=
.endswith(&quot;*&quot;):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 p =3D p[:len(p)-1]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 exactmatch =3D False<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if f=
ile[1:].startswith(p) and ((file[1:] !=3D p) or exactmatch) :<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 msg =3D &quot;%s is in a prohibited path.\n&quot; % file[1:]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 package_qa_handle_error(&quot;<wbr>prohibited-path&quot;, msg, d=
)<br></blockquote><div><br></div><div>Unless I=E2=80=99m missing something,=
 you aren=E2=80=99t checking for startswith(p + os.sep), so a file in libex=
ec would match a prohibited path of lib, as it=E2=80=99d still start with t=
hat, no?</div></div>-- <br><div class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Christopher Larson=
<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus=
<br>Senior Software Engineer, Mentor Graphics</div></div></div></div>
</div></div>

--f403043eb564f483e0055de7e586--
