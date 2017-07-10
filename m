Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E51DE00C2A; Mon, 10 Jul 2017 02:00:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4C8E00C1B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 02:00:44 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id d78so67835581qkb.1
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 02:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mGTkhX/6svMlBYFfiRpmnrGgS7/ZpzfWwIPy8wOI4wk=;
	b=JfkZ9ziIUzSZw5ysKj3YhF1yffjWvui2LGtz6TGQGasQjqWXSk/1ZirGUCu3xJcI/r
	jlkQYgU4Wfc+JuA/GPuyXq4l0GGQF0ASCFQMUSKdyNniRYUp4FgOAvp6GxsM8E21jeBW
	BQLLn1dP9rvtwfdSSjvqPZm5vvq1hzgnXAZR1aaAMYdaR09YeUob2WXTcdBZJYWT0hxx
	ACTNsAldyltUuIQAHqP3jlwyG+iRKNDa8G+q38LjIMZOSh2mPlbMX292l5oJ4ztuPH/f
	KrmMv69SiQzkzA01LYokcfAJlnx8hrmrSF1p/6RNVvYPldNFXaoiWz8aWWq5gvj7wVFJ
	o9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mGTkhX/6svMlBYFfiRpmnrGgS7/ZpzfWwIPy8wOI4wk=;
	b=SHSL3lf6zR/wU+XMX0Bl0TF9rJ+FWVK+uJjVZbetMjJofU3Hglwr6bprRI5XhXNTwV
	h6VJJ8wooCnKs5golZYMNsog72pU/CfZCYFLfomfu/O4Cn4+ycUJlM0c8md3SsCwqL35
	RVNJ8AzC+YjgnOtqsyRHGQWlR3DDr3Ss2KmItiratlyBDjD2YFDaLDDq6W6pp0t6LGWG
	M42Bn4LC0lFJxEHg54W5GBKsuPwv3W0zs/W9iGFCY74K3nlIUM2FpF2zRS/6l4XFmolG
	PHENMgPCFH/V8RSKfkCe45dLW80+ty38fvsUc/JHN+VszFUttczS5r6pouiZBZIl0jDV
	WjwQ==
X-Gm-Message-State: AIVw112s47y5asURuJicNhk1N8Pwqlxg0rfjpG4TCQeE19d2j/6NxlIa
	0le9wGp57YjCtfRObO+hyWd86n1/m7g8
X-Received: by 10.55.121.199 with SMTP id u190mr2966732qkc.216.1499677243774; 
	Mon, 10 Jul 2017 02:00:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 10 Jul 2017 02:00:23 -0700 (PDT)
In-Reply-To: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Jul 2017 10:00:23 +0100
Message-ID: <CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
To: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto build at Kali
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
X-List-Received-Date: Mon, 10 Jul 2017 09:00:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c06623a64b35c0553f2d141"

--94eb2c06623a64b35c0553f2d141
Content-Type: text/plain; charset="UTF-8"

On 9 July 2017 at 03:15, Rafael Machado <rafaelrodrigues.machado@gmail.com>
wrote:

>   File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/persist_data.py", line 35, in <module>
>
>
     33 sqlversion = sqlite3.sqlite_version_info
     34 if sqlversion[0] < 3 or (sqlversion[0] == 3 and sqlversion[1] < 3):
     35     raise Exception("sqlite3 version 3.3.0 or later is required.")

You need sqlite3 3.3.0 or later.

Ross

--94eb2c06623a64b35c0553f2d141
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 July 2017 at 03:15, Rafael Machado <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:rafaelrodrigues.machado@gmail.com" target=3D"_blank">rafaelrodrigues.m=
achado@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;border-left-color:rgb(204,204,204);padding-left:1ex"><pre class=3D"gm=
ail-m_2182558278022841608inbox-inbox-lang-py gmail-m_2182558278022841608inb=
ox-inbox-prettyprint gmail-m_2182558278022841608inbox-inbox-prettyprinted" =
style=3D"margin-top:0px;margin-bottom:1em;padding:5px;border:0px;font-varia=
nt-numeric:inherit;font-stretch:inherit;font-size:13px;line-height:inherit;=
font-family:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;,&#39;Liberation =
Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,&#3=
9;Courier New&#39;,monospace,sans-serif;vertical-align:baseline;width:auto;=
max-height:600px;overflow:auto;background-color:rgb(239,240,241);color:rgb(=
57,51,24);word-wrap:normal"><code style=3D"margin:0px;padding:0px;border:0p=
x;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inher=
it;font-variant-numeric:inherit;font-variant-alternates:inherit;font-varian=
t-east-asian:inherit;font-weight:inherit;font-stretch:inherit;line-height:i=
nherit;font-family:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;,&#39;Libe=
ration Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#=
39;,&#39;Courier New&#39;,monospace,sans-serif;vertical-align:baseline;whit=
e-space:inherit"><span class=3D"gmail-m_2182558278022841608inbox-inbox-pln"=
 style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant=
-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;f=
ont-variant-alternates:inherit;font-variant-east-asian:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(48,51,54)">  </span><span cla=
ss=3D"gmail-m_2182558278022841608inbox-inbox-typ" style=3D"margin:0px;paddi=
ng:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font-va=
riant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:inh=
erit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:inher=
it;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align=
:baseline;color:rgb(43,145,175)">File</span><span class=3D"gmail-m_21825582=
78022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font=
-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;fon=
t-variant-numeric:inherit;font-variant-alternates:inherit;font-variant-east=
-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;l=
ine-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48=
,51,54)"> </span><span class=3D"gmail-m_2182558278022841608inbox-inbox-str"=
 style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant=
-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;f=
ont-variant-alternates:inherit;font-variant-east-asian:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3=
/open_env/<wbr>openembedded-core/bitbake/lib/<wbr>bb/persist_data.py&quot;<=
/span><span class=3D"gmail-m_2182558278022841608inbox-inbox-pun" style=3D"m=
argin:0px;padding:0px;border:0px;font-style:inherit;font-variant-ligatures:=
inherit;font-variant-caps:inherit;font-variant-numeric:inherit;font-variant=
-alternates:inherit;font-variant-east-asian:inherit;font-weight:inherit;fon=
t-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit=
;vertical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"gmail-=
m_2182558278022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;borde=
r:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:i=
nherit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-va=
riant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size=
:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;co=
lor:rgb(48,51,54)"> line </span><span class=3D"gmail-m_2182558278022841608i=
nbox-inbox-lit" style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-nu=
meric:inherit;font-variant-alternates:inherit;font-variant-east-asian:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:i=
nherit;font-family:inherit;vertical-align:baseline;color:rgb(125,39,39)">35=
</span><span class=3D"gmail-m_2182558278022841608inbox-inbox-pun" style=3D"=
margin:0px;padding:0px;border:0px;font-style:inherit;font-variant-ligatures=
:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;font-varian=
t-alternates:inherit;font-variant-east-asian:inherit;font-weight:inherit;fo=
nt-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inheri=
t;vertical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"gmail=
-m_2182558278022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;bord=
er:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:=
inherit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-v=
ariant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-siz=
e:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;c=
olor:rgb(48,51,54)"> </span><span class=3D"gmail-m_2182558278022841608inbox=
-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;f=
ont-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeri=
c:inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit;f=
ont-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inher=
it;font-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</sp=
an><span class=3D"gmail-m_2182558278022841608inbox-inbox-pln" style=3D"marg=
in:0px;padding:0px;border:0px;font-style:inherit;font-variant-ligatures:inh=
erit;font-variant-caps:inherit;font-variant-numeric:inherit;font-variant-al=
ternates:inherit;font-variant-east-asian:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(48,51,54)"> </span><span class=3D"gmail-m_2=
182558278022841608inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0=
px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inhe=
rit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-varia=
nt-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:in=
herit;line-height:inherit;font-family:inherit;vertical-align:baseline;color=
:rgb(48,51,54)">&lt;</span><span class=3D"gmail-m_2182558278022841608inbox-=
inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;fo=
nt-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric=
:inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit;fo=
nt-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inheri=
t;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">module</=
span><span class=3D"gmail-m_2182558278022841608inbox-inbox-pun" style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant-ligatures:i=
nherit;font-variant-caps:inherit;font-variant-numeric:inherit;font-variant-=
alternates:inherit;font-variant-east-asian:inherit;font-weight:inherit;font=
-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;=
vertical-align:baseline;color:rgb(48,51,54)">&gt;</span><span class=3D"gmai=
l-m_2182558278022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;bor=
der:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps=
:inherit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-=
variant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-si=
ze:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;=
color:rgb(48,51,54)">=C2=A0</span></code></pre><div></div></blockquote></di=
v><br><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A033 sqlversion =3D sqli=
te3.sqlite_version_info</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=
=A034 if sqlversion[0] &lt; 3 or (sqlversion[0] =3D=3D 3 and sqlversion[1] =
&lt; 3):</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A035 =C2=A0 =C2=
=A0 raise Exception(&quot;sqlite3 version 3.3.0 or later is required.&quot;=
)</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">You =
need sqlite3 3.3.0 or later.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div></div>

--94eb2c06623a64b35c0553f2d141--
