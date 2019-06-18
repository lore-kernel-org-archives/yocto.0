Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A15E1E00D85; Tue, 18 Jun 2019 03:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 671F2E00D42
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 03:58:38 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id l15so4148939otn.9
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 03:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=QhIrMUIgJas8FCr9wEHCGiadlb5mUFRmA2pxnpKMgVU=;
	b=ZTClrE9uGCU5lr7wSWRcM0ddH3Y5QENO05SAuqEd40hsDawZbdsyTJzc8+AAfm9JaM
	Sbg+DTZWker9zRuW3cGQfDyDjupQKCO5uYBgKhAhEBsg5UKN5W/mXB7NhlWNPW3XOPOf
	Vz3DGbaJDA6ohf7oQ9GOxY/MW9YQZUMrCaq7J2lg/0kzNaHhhFqATwjDPvNWX0Swbb5o
	WuOgtl4M9GzGVeKkpZ7W8rpBEKklfDECnfT2Ab7rwFtlA0/m8o/2yDafQTEJzP9/Vaui
	ZAJytsacM2Apx1W44C3V+mquxDz1FH4gW7igb12cm1yEhqdN1hW1DcfwYZM3E+JEYWZd
	sXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=QhIrMUIgJas8FCr9wEHCGiadlb5mUFRmA2pxnpKMgVU=;
	b=eyQ0Xvz2FwIat97xqbLttafxf23GgEJ9zkQgoC10+kHaX8bubXTcWK/z/JuxaYpA0D
	xe31Kqi+sCcBIvNYJciQ59l7TdM6WYpy2ZHzpVFdAbZXwO9d1WVsauGslb0+bDRe9t/1
	23TR4du54bTxCFeY0NmGH6jF5w3KH/95flWK39nlHzGzOvM7Yh8YTBNQ3wNZQUSO43Yx
	VmJ4mEtTDzfqdg0XHeT/SK9VKhjM0WB+FNaKGLwk75qCkEB04fokBISvIyubEeQrp+af
	WZ6C3jOPNVG7PGIzYdWF0CD+kzTM2Vkw9FQ6cEG7mmHBpvY7uTYYlDKiJE7vR/rSijqA
	vfhA==
X-Gm-Message-State: APjAAAV8yjVnXNu+O/Tqh3pqWsTAryfQEMbVSZu9Cq++/Tjj5wBgPFrJ
	E72rKYmO/Mhv6wf8jxRid/GCKn9nh/uDQQNlcwkGO93Q
X-Google-Smtp-Source: APXvYqyf1pH0PwwRaGVK9PKl3eDv2sThCa3YEQzbzYuwkHJdco45LbwiioC0539ou64sgo460RgPN9so+zNpq4weKtk=
X-Received: by 2002:a9d:7003:: with SMTP id k3mr27977062otj.28.1560855516977; 
	Tue, 18 Jun 2019 03:58:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190513162531.45297-1-alex.kanavin@gmail.com>
	<CANNYZj8MvEUjB-w+JjBRtbTnjw=B--L36+nXOVDAjzf+suxtcw@mail.gmail.com>
	<c545bc49-effe-629d-213c-55d52adcf5c8@dynamicdevices.co.uk>
In-Reply-To: <c545bc49-effe-629d-213c-55d52adcf5c8@dynamicdevices.co.uk>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Jun 2019 12:58:25 +0200
Message-ID: <CANNYZj8jy+r9k3WhgpbkzOBKtGoUdiM2PD5Sng_8GgiQ3Z_7sQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, 
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-mono][PATCH] mono-5.xx: fix an issue with too long paths in doltlibtool
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
X-List-Received-Date: Tue, 18 Jun 2019 10:58:39 -0000
Content-Type: multipart/alternative; boundary="000000000000a29de9058b96fe2e"

--000000000000a29de9058b96fe2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ping #2!

Alex

On Mon, 27 May 2019 at 12:22, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

>
> Thanks for the reminder Alex
> On 27/05/2019 11:16, Alexander Kanavin wrote:
>
> Ping?
>
> Alex
>
> On Mon, 13 May 2019 at 18:25, Alexander Kanavin <alex.kanavin@gmail.com> =
<alex.kanavin@gmail.com> wrote:
>
> When build directory is deeply nested, the shebang limit of 127
> characters is hit, which leads to doltlibtool failing to execute.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com> <alex.kanavin@g=
mail.com>
> ---
>  recipes-mono/mono/mono-5.xx.inc | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/recipes-mono/mono/mono-5.xx.inc b/recipes-mono/mono/mono-5.x=
x.inc
> index c36374c..dec2475 100644
> --- a/recipes-mono/mono/mono-5.xx.inc
> +++ b/recipes-mono/mono/mono-5.xx.inc
> @@ -102,3 +102,7 @@ RDEPENDS_${PN} =3D+ "bash"
>
>  # Workaround for observed race in `make install`
>  PARALLEL_MAKEINST=3D""
> +
> +# Otherwise the full path to bash is written to the first line of doltli=
btool script
> +# which causes build failures with deeply nested build directories
> +CACHED_CONFIGUREVARS +=3D "ac_cv_path_DOLT_BASH=3D'/usr/bin/env bash'"
> --
> 2.17.1
>
>
> --
>
> [image: Dynamic Devices Ltd] <http://www.dynamicdevices.co.uk/>
>
> Alex J Lennon MA (Cantab) MIET MIOD / Director
> DoES Liverpool 1st Floor The Tapestry 68 =E2=80=93 76 Kempston Street Liv=
erpool L3
> 8HL, United Kingdom
>
> mobile: +44 (0)7478 346120
>
> [image: Linkedin] <http://www.linkedin.com/in/alexjlennon> [image: Skype]
> <http://www.daneurope.org/web/guest/registration?p_p_id=3Dregistration&p_=
p_lifecycle=3D0&p_p_mode=3Dview&p_p_state=3Dnormal&_registration_struts_act=
ion=3D%2Fext%2Fregistration%2Fwizard&_registration_processType=3D2&_registr=
ation_partnerCode=3D517352>
>
> This e-mail message may contain confidential or legally privileged
> information and is intended only for the use of the intended recipient(s)=
.
> Any unauthorized disclosure, dissemination, distribution, copying or the
> taking of any action in reliance on the information herein is prohibited.
> E-mails are not secure and cannot be guaranteed to be error free as they
> can be intercepted, amended, or contain viruses. Anyone who communicates
> with us by e-mail is deemed to have accepted these risks. Company Name is
> not responsible for errors or omissions in this message and denies any
> responsibility for any damage arising from the use of e-mail. Any opinion
> and other statement contained in this message and any attachment are sole=
ly
> those of the author and do not necessarily represent those of the company=
.
>

--000000000000a29de9058b96fe2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ping #2!</div><div><br></div><div>Alex<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, 27 May 2019 at 12:22, Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <p>Thanks for the reminder Alex<br>
    </p>
    <div class=3D"gmail-m_242827196592985829moz-cite-prefix">On 27/05/2019 =
11:16, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre class=3D"gmail-m_242827196592985829moz-quote-pre">Ping?

Alex

On Mon, 13 May 2019 at 18:25, Alexander Kanavin <a class=3D"gmail-m_2428271=
96592985829moz-txt-link-rfc2396E" href=3D"mailto:alex.kanavin@gmail.com" ta=
rget=3D"_blank">&lt;alex.kanavin@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"gmail-m_242827196592985829moz-quote-pre">When build d=
irectory is deeply nested, the shebang limit of 127
characters is hit, which leads to doltlibtool failing to execute.

Signed-off-by: Alexander Kanavin <a class=3D"gmail-m_242827196592985829moz-=
txt-link-rfc2396E" href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank"=
>&lt;alex.kanavin@gmail.com&gt;</a>
---
 recipes-mono/mono/mono-5.xx.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-mono/mono/mono-5.xx.inc b/recipes-mono/mono/mono-5.xx.=
inc
index c36374c..dec2475 100644
--- a/recipes-mono/mono/mono-5.xx.inc
+++ b/recipes-mono/mono/mono-5.xx.inc
@@ -102,3 +102,7 @@ RDEPENDS_${PN} =3D+ &quot;bash&quot;

 # Workaround for observed race in `make install`
 PARALLEL_MAKEINST=3D&quot;&quot;
+
+# Otherwise the full path to bash is written to the first line of doltlibt=
ool script
+# which causes build failures with deeply nested build directories
+CACHED_CONFIGUREVARS +=3D &quot;ac_cv_path_DOLT_BASH=3D&#39;/usr/bin/env b=
ash&#39;&quot;
--
2.17.1

</pre>
      </blockquote>
    </blockquote>
    <div class=3D"gmail-m_242827196592985829moz-signature">-- <br>
      <br>
      <div class=3D"gmail-m_242827196592985829preview">
        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px"><a href=3D"http://www.dynamicdevices.co.uk/" class=3D"gmai=
l-m_242827196592985829clink" target=3D"_blank"><img src=3D"http://www.dynam=
icdevices.co.uk/ddlogo-4.png" alt=3D"Dynamic Devices Ltd" id=3D"gmail-m_242=
827196592985829sig-logo" border=3D"0"></a></p>
        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px;color:rgb(153,153,153)"><span id=3D"gmail-m_242827196592985=
829name-input" style=3D"font-weight:bold" class=3D"gmail-m_2428271965929858=
29txt">Alex
            J Lennon MA (Cantab) MIET MIOD</span> <span id=3D"gmail-m_24282=
7196592985829title-sep">/</span>
          <span id=3D"gmail-m_242827196592985829title-input" style=3D"color=
:rgb(153,153,153)" class=3D"gmail-m_242827196592985829txt">Director</span><=
br>
          <span id=3D"gmail-m_242827196592985829address-input" style=3D"col=
or:rgb(153,153,153)" class=3D"gmail-m_242827196592985829txt">DoES
            Liverpool
            1st Floor
            The Tapestry
            68 =E2=80=93 76 Kempston Street
            Liverpool L3 8HL, United Kingdom</span> </p>
        <p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:10px;l=
ine-height:12px"> <span id=3D"gmail-m_242827196592985829mobile-input" style=
=3D"color:rgb(153,153,153)" class=3D"gmail-m_242827196592985829txt">mobile:=
 +44 (0)7478 346120</span>
         =20
          <br>
          <br>
        </p>
        <p style=3D"font-size:10px;line-height:12px;font-family:Helvetica,A=
rial,sans-serif"> <a id=3D"gmail-m_242827196592985829linkedin-input" class=
=3D"gmail-m_242827196592985829social" href=3D"http://www.linkedin.com/in/al=
exjlennon" target=3D"_blank"><img src=3D"http://www.dynamicdevices.co.uk/li=
nkedin.png" alt=3D"Linkedin"></a> <a id=3D"gmail-m_242827196592985829skype-=
input" class=3D"gmail-m_242827196592985829social"><img src=3D"http://www.dy=
namicdevices.co.uk/skype.png" alt=3D"Skype"></a> <a class=3D"gmail-m_242827=
196592985829social" href=3D"http://www.daneurope.org/web/guest/registration=
?p_p_id=3Dregistration&amp;p_p_lifecycle=3D0&amp;p_p_mode=3Dview&amp;p_p_st=
ate=3Dnormal&amp;_registration_struts_action=3D%2Fext%2Fregistration%2Fwiza=
rd&amp;_registration_processType=3D2&amp;_registration_partnerCode=3D517352=
" target=3D"_blank"><img src=3D"http://www.daneurope.org/image/image_galler=
y?uuid=3Db1327e53-2620-4f65-b008-d9ea4cd94bf2&amp;groupId=3D10103&amp;t=3D1=
272639952305" width=3D"16"></a> </p>
        <p id=3D"gmail-m_242827196592985829disclaimer-input" style=3D"font-=
family:Helvetica,Arial,sans-serif;color:rgb(153,153,153);font-size:9px;line=
-height:12px;width:25%" class=3D"gmail-m_242827196592985829txt">This e-mail=
 message
          may contain confidential or legally privileged information and
          is intended only for the use of the intended recipient(s). Any
          unauthorized disclosure, dissemination, distribution, copying
          or the taking of any action in reliance on the information
          herein is prohibited. E-mails are not secure and cannot be
          guaranteed to be error free as they can be intercepted,
          amended, or contain viruses. Anyone who communicates with us
          by e-mail is deemed to have accepted these risks. Company Name
          is not responsible for errors or omissions in this message and
          denies any responsibility for any damage arising from the use
          of e-mail. Any opinion and other statement contained in this
          message and any attachment are solely those of the author and
          do not necessarily represent those of the company.</p>
      </div>
    </div>
  </div>

</blockquote></div>

--000000000000a29de9058b96fe2e--
