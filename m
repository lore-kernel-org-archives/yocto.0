Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57B92E009A0; Tue, 12 Mar 2019 08:21:36 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C863AE007B3
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 08:21:35 -0700 (PDT)
Received: by mail-ed1-f65.google.com with SMTP id h58so2654841edb.5
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 08:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sajlIQ5h2w7v3qsCA/HGn6dYvpbRLDHRVKD6k69dF48=;
	b=EXI1tDSUlb1jCdLGWav75/VteM5ID0WzIIh2pPTIKBdtT0Q7+i99o8v/StT1r3rFA+
	QYlxNIqn3Qwzx7t1GGH9XXiY5r0n3J4VXJn5ea5i4X4vmL/x20ix98zAGnTSW80IRDpc
	qT0WONqamOnhyBBg/Xll8shJjJK+NC+6PveyBDEWCMXBYtW9rF4bBbC7mtfxwESqKx7B
	bsPMtuxTThva8FlCHHhNsEGkn7Td25s2p167vuu/cEIpLwnifS+MZ2EAYv0cXKkKBHKD
	YPVBJG2lSGvJyIbpgrU9ILvsmvAthaAhjTiiqCqvmiw18tzGbbPp9XmK5USlDMkGMw98
	u6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sajlIQ5h2w7v3qsCA/HGn6dYvpbRLDHRVKD6k69dF48=;
	b=h+sogwy02ZVi2BKFQOvAcJKRD/bK4bvgjssGn0vBcgXY15IJaY3Clv4dMBTLzHpBwC
	tPLUVyRdBvIXrEX1ia52/agB3DYwue054Qnu6SXdL/UOEdITbphpFC+Xyml1FjUB//O9
	accTvYXh8F46/OHr4oHe3mOaxQIhkwxCTFtxN2GZU4eIFm0uAC3FQkMyfSSFNEFHYwi4
	c3e8RWD/oS2v5cismK9cY8fp9AwsbZLLxJhA8PvTsxKqKf3XI/CMgPbM3T04EBlJUQEu
	aeTfvZZus9ISTfdGXIclSaflHclUe+f7DKFt7BTVLzwGuRyjt6RhWXQ4rNeq1jKlFqTd
	TQuw==
X-Gm-Message-State: APjAAAW1ulQkWKHvdOf4cmWfrOY45PC/icqTsiOt3j7O8MYWlX/LPqPS
	YZPKaoTZYw37c+q/w0QLFLvreYf6BZ6QijWgqoQ=
X-Google-Smtp-Source: APXvYqzvnBWOOcvQyNKJyYHN/e7ZFdF9DDkuET9dg8S2E411WfBLsHAsrXyI+FNeYWMHo0Qpoul+W5/McKUJx1gu7IE=
X-Received: by 2002:a17:906:c38c:: with SMTP id
	t12mr5692896ejz.142.1552404094797; 
	Tue, 12 Mar 2019 08:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <1552314623-15702-1-git-send-email-filipjares@gmail.com>
In-Reply-To: <1552314623-15702-1-git-send-email-filipjares@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 12 Mar 2019 09:21:23 -0600
Message-ID: <CAFNP8Ot4RE79=i8VZmq5ibUWBAnCNrXRU+MNt0Sa4ihbu4Nq4A@mail.gmail.com>
To: =?UTF-8?B?RmlsaXAgSmFyZcWh?= <filipjares@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-doc][PATCH] ref-manual: fix copy-paste style error (`SRC_URI`)
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
X-List-Received-Date: Tue, 12 Mar 2019 15:21:36 -0000
Content-Type: multipart/alternative; boundary="0000000000009e4db10583e73e7f"

--0000000000009e4db10583e73e7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Filip,

Thanks for the catch.  I have fixed this in the upcoming 2.7 version of the
YP reference guide.  You can see the fix here -
https://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-SRC_URI.

I will back-port to the relevant YP-maintained development branches (thud
and sumo).

Scott

On Mon, Mar 11, 2019 at 8:30 AM Filip Jare=C5=A1 <filipjares@gmail.com> wro=
te:

> The update fixes a copy-paste-and-forget-to-update-everything error
> in the documentation of the `SRC_URI` entry in the Reference Manual.
> The `maxdate` paragraph just repeated what is there for the
> neighboring `mindate` paragraph which was incorrect.
>
> What is documented (and patched) here is implemented in the
> `should_apply` function in `meta/lib/oe/patch.py`.
>
> Signed-off-by: Filip Jare=C5=A1 <filipjares@gmail.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 3ffa92c..b49fb25 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -13798,7 +13798,7 @@
>                              </para></listitem>
>
>  <listitem><para><emphasis><filename>maxdate</filename> -</emphasis>
>                              Apply the patch only if
> <filename>SRCDATE</filename>
> -                            is not later than
> <filename>mindate</filename>.
> +                            is not later than
> <filename>maxdate</filename>.
>                              </para></listitem>
>
>  <listitem><para><emphasis><filename>minrev</filename> -</emphasis>
>                              Apply the patch only if
> <filename>SRCREV</filename>
> --
> 2.7.4
>
>

--0000000000009e4db10583e73e7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Filip, <br></div><div><br></div><div=
>Thanks for the catch.=C2=A0 I have fixed this in the upcoming 2.7 version =
of the YP reference guide.=C2=A0 You can see the fix here - <a href=3D"http=
s://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-SRC_URI">https=
://yoctoproject.org/docs/2.7/ref-manual/ref-manual.html#var-SRC_URI</a>.=C2=
=A0 <br></div><div><br></div><div>I will back-port to the relevant YP-maint=
ained development branches (thud and sumo).</div><div><br></div><div>Scott<=
br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Mar 11, 2019 at 8:30 AM Filip Jare=C5=A1 &lt;<a hre=
f=3D"mailto:filipjares@gmail.com">filipjares@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">The update fixes a co=
py-paste-and-forget-to-update-everything error<br>
in the documentation of the `SRC_URI` entry in the Reference Manual.<br>
The `maxdate` paragraph just repeated what is there for the<br>
neighboring `mindate` paragraph which was incorrect.<br>
<br>
What is documented (and patched) here is implemented in the<br>
`should_apply` function in `meta/lib/oe/patch.py`.<br>
<br>
Signed-off-by: Filip Jare=C5=A1 &lt;<a href=3D"mailto:filipjares@gmail.com"=
 target=3D"_blank">filipjares@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index 3ffa92c..b49fb25 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -13798,7 +13798,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&lt;filename&g=
t;maxdate&lt;/filename&gt; -&lt;/emphasis&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Apply the patch only if &lt;filename&gt;SRCD=
ATE&lt;/filename&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 is not later than &lt;filename&gt;mindate&lt;/file=
name&gt;.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 is not later than &lt;filename&gt;maxdate&lt;/file=
name&gt;.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;&lt;/listitem&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;listitem&gt;&lt;para&gt;&lt;emphasis&gt;&lt;filename&g=
t;minrev&lt;/filename&gt; -&lt;/emphasis&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Apply the patch only if &lt;filename&gt;SRCR=
EV&lt;/filename&gt;<br>
-- <br>
2.7.4<br>
<br>
</blockquote></div>

--0000000000009e4db10583e73e7f--
