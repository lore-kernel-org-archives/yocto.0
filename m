Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D656E00BED; Tue, 15 Jan 2019 12:12:32 -0800 (PST)
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
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D6EAE0090E
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:12:31 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id b3so3651143ede.1
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YSbdgiTOBZbZr8yqWYLybOFzQKO6lbNcG1rjA8okScU=;
	b=X7DDww1lBC8mqWxUzXlZcw8d13wih024+BsOgjRKtx8I8YrvXXOoylaFvquQNjhYlr
	NDLTlS6n1JGgPra2s6ohf1EIt7BSnWlgR0B0AGzOhqGVaJMwV+TZoQV6Bbm6juQjr6yY
	NFzvnZWC3hJAyApVwxaIfTpo0a6puCz90KgWZdmP/ccmOaL/cGV00r1oc/uVtJ54VVKg
	SMZ5fCabTQHQFgoT8zETixkuZJZ2ZXhvBegsN7eEm6HdLm3IPeyO30qbcCJ3cDg2JCVB
	nhXK9tPjetjdRUGvmMRNIh//ysBN/lEtZbrkH2tIAd8YI3wNfPUtVAs8VnBJFbpTJPlF
	nC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YSbdgiTOBZbZr8yqWYLybOFzQKO6lbNcG1rjA8okScU=;
	b=qTRxvpQvhi+A2T2e72hhWNf46tmI0u3otOsB4o4mUNKIMAMHC+VUZWqp0wLO6xSJW5
	VhV4pAtiwN3nKNOHNqrTZ2+/VnhaLrBDt1U22ygZbFD3sdV3RHVFUZHHeyH7j4lVrqIG
	neSvCPcvd5bvOqTJZ5bjpxj4VFeD/wKc8cbykhfvmRQHSyKJXTkzRn+imh0aCRMI73vk
	TTgwAKRatfwqi8raGos90Z7RNdbGC5YYeIBa33ePvuSBlf4xrlUTy2pfaBlwEItoTtXg
	3vdJ1d69xqpO84ncdp2ZIUDZ2jN0S2JLckqc/SVh65WO5j0NYi1PyOjNZo6Bbg4YZ5Eq
	nILA==
X-Gm-Message-State: AJcUukfQZrzhyfcdm8hS5QjJ8ErklaSIQndUCYmXdGaMRh6bf9SxIwlU
	NiptpG3ZDFzT1A8NWWoqg/RlIRZMkDrsi/2zvkShwsyc
X-Google-Smtp-Source: ALg8bN7XFdd+u5hopj8bZzWnGk6C64xBysDBcGDmjPfDEq2DCc+M3YqGZjwvchocH0VZ3zeiyiYgJBnv0diL5gmrVuU=
X-Received: by 2002:a50:cf41:: with SMTP id d1mr4798391edk.242.1547583150646; 
	Tue, 15 Jan 2019 12:12:30 -0800 (PST)
MIME-Version: 1.0
References: <20190115150242.632-1-git@andred.net>
In-Reply-To: <20190115150242.632-1-git@andred.net>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 15 Jan 2019 12:12:19 -0800
Message-ID: <CAFNP8Ot-L5vJNzxCSRtSU6OKMdGmt1+qOYK6FknrR8_uvuvVNQ@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [documentation][PATCH] documentation: remove True option to getVar calls
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
X-List-Received-Date: Tue, 15 Jan 2019 20:12:32 -0000
Content-Type: multipart/alternative; boundary="000000000000f46da8057f84c7a8"

--000000000000f46da8057f84c7a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andre,

Thanks for the patch.  See
http://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#platdev-app=
dev-devpyshell
and
http://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#using-x32-p=
sabi
sections for the changes.

Thanks,
Scott Rifenbark



On Tue, Jan 15, 2019 at 7:03 AM Andr=C3=A9 Draszik <git@andred.net> wrote:

> From: Andr=C3=A9 Draszik <andre.draszik@jci.com>
>
> getVar() has been defaulting to expanding by default for
> a long time (2016), thus remove the True option from
> getVar() examples with a regex search and replace.
>
> Search & replace made using the following command:
>     sed -e 's|\(d\.getVar \?\)( \?\([^,()]*\), \?True)|\1(\2)|g' \
>         -i $(git grep -E 'getVar ?\( ?([^,()]*), ?True\)' \
>              | cut -d':' -f1 \
>              | sort -u)
>
> Note that there are are several other examples of getVar()
> usage which already don't explicitly add the True option,
> this patch just align some stray remainders.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@jci.com>
> ---
>  documentation/dev-manual/dev-manual-common-tasks.xml | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml
> index c75e718d67..af0e4d53bf 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -5116,15 +5116,15 @@
>              So, commands such as the following are useful when exploring
> the data
>              store and running functions:
>              <literallayout class=3D'monospaced'>
> -     pydevshell> d.getVar("STAGING_DIR", True)
> +     pydevshell> d.getVar("STAGING_DIR")
>       '/media/build1/poky/build/tmp/sysroots'
> -     pydevshell> d.getVar("STAGING_DIR", False)
> +     pydevshell> d.getVar("STAGING_DIR")
>       '${TMPDIR}/sysroots'
>       pydevshell> d.setVar("FOO", "bar")
> -     pydevshell> d.getVar("FOO", True)
> +     pydevshell> d.getVar("FOO")
>       'bar'
>       pydevshell> d.delVar("FOO")
> -     pydevshell> d.getVar("FOO", True)
> +     pydevshell> d.getVar("FOO")
>       pydevshell> bb.build.exec_func("do_unpack", d)
>       pydevshell>
>              </literallayout>
> @@ -6892,8 +6892,8 @@
>              <literallayout class=3D'monospaced'>
>       MACHINE =3D "qemux86-64"
>       DEFAULTTUNE =3D "x86-64-x32"
> -     baselib =3D "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE'=
,
> True) \
> -        or 'INVALID'), True) or 'lib'}"
> +     baselib =3D "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE'=
) \
> +        or 'INVALID')) or 'lib'}"
>              </literallayout>
>              Once you have set up your configuration file, use BitBake to
>              build an image that supports the x32 psABI.
> --
> 2.20.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f46da8057f84c7a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Andre, <br></div=
><div><br></div><div>Thanks for the patch.=C2=A0 See <a href=3D"http://www.=
yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#platdev-appdev-devpysh=
ell">http://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#platde=
v-appdev-devpyshell</a> and <a href=3D"http://www.yoctoproject.org/docs/2.7=
/dev-manual/dev-manual.html#using-x32-psabi">http://www.yoctoproject.org/do=
cs/2.7/dev-manual/dev-manual.html#using-x32-psabi</a> sections for the chan=
ges.</div><div><br></div><div>Thanks, <br></div><div>Scott Rifenbark<br></d=
iv><div><br></div><div><br></div></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr">On Tue, Jan 15, 2019 at 7:03 AM Andr=C3=A9 Draszik =
&lt;<a href=3D"mailto:git@andred.net">git@andred.net</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">From: Andr=C3=A9 Draszi=
k &lt;<a href=3D"mailto:andre.draszik@jci.com" target=3D"_blank">andre.dras=
zik@jci.com</a>&gt;<br>
<br>
getVar() has been defaulting to expanding by default for<br>
a long time (2016), thus remove the True option from<br>
getVar() examples with a regex search and replace.<br>
<br>
Search &amp; replace made using the following command:<br>
=C2=A0 =C2=A0 sed -e &#39;s|\(d\.getVar \?\)( \?\([^,()]*\), \?True)|\1(\2)=
|g&#39; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -i $(git grep -E &#39;getVar ?\( ?([^,()]*), ?T=
rue\)&#39; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| cut -d&#39;:&#39; -f1 \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| sort -u)<br>
<br>
Note that there are are several other examples of getVar()<br>
usage which already don&#39;t explicitly add the True option,<br>
this patch just align some stray remainders.<br>
<br>
Signed-off-by: Andr=C3=A9 Draszik &lt;<a href=3D"mailto:andre.draszik@jci.c=
om" target=3D"_blank">andre.draszik@jci.com</a>&gt;<br>
---<br>
=C2=A0documentation/dev-manual/dev-manual-common-tasks.xml | 12 ++++++-----=
-<br>
=C2=A01 file changed, 6 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documen=
tation/dev-manual/dev-manual-common-tasks.xml<br>
index c75e718d67..af0e4d53bf 100644<br>
--- a/documentation/dev-manual/dev-manual-common-tasks.xml<br>
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml<br>
@@ -5116,15 +5116,15 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0So, commands such as the fo=
llowing are useful when exploring the data<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0store and running functions=
:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&=
#39;monospaced&#39;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;STAGING_DIR&quot;, True)=
<br>
+=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;STAGING_DIR&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 &#39;/media/build1/poky/build/tmp/sysroots&#39;<br>
-=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;STAGING_DIR&quot;, False=
)<br>
+=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;STAGING_DIR&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 &#39;${TMPDIR}/sysroots&#39;<br>
=C2=A0 =C2=A0 =C2=A0 pydevshell&gt; d.setVar(&quot;FOO&quot;, &quot;bar&quo=
t;)<br>
-=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;FOO&quot;, True)<br>
+=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;FOO&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 &#39;bar&#39;<br>
=C2=A0 =C2=A0 =C2=A0 pydevshell&gt; d.delVar(&quot;FOO&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;FOO&quot;, True)<br>
+=C2=A0 =C2=A0 =C2=A0pydevshell&gt; d.getVar(&quot;FOO&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 pydevshell&gt; bb.build.exec_func(&quot;do_unpack&quot=
;, d)<br>
=C2=A0 =C2=A0 =C2=A0 pydevshell&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/literallayout&gt;<br>
@@ -6892,8 +6892,8 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;literallayout class=3D&=
#39;monospaced&#39;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 MACHINE =3D &quot;qemux86-64&quot;<br>
=C2=A0 =C2=A0 =C2=A0 DEFAULTTUNE =3D &quot;x86-64-x32&quot;<br>
-=C2=A0 =C2=A0 =C2=A0baselib =3D &quot;${@d.getVar(&#39;BASE_LIB_tune-&#39;=
 + (d.getVar(&#39;DEFAULTTUNE&#39;, True) \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 or &#39;INVALID&#39;), True) or &#39;lib&#39;}=
&quot;<br>
+=C2=A0 =C2=A0 =C2=A0baselib =3D &quot;${@d.getVar(&#39;BASE_LIB_tune-&#39;=
 + (d.getVar(&#39;DEFAULTTUNE&#39;) \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 or &#39;INVALID&#39;)) or &#39;lib&#39;}&quot;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/literallayout&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Once you have set up your c=
onfiguration file, use BitBake to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build an image that support=
s the x32 psABI.<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000f46da8057f84c7a8--
