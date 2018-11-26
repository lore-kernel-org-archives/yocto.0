Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24F19E009AA; Mon, 26 Nov 2018 12:34:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 312BEE00950
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 12:34:50 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id o19so30494687itg.5
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 12:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=5ZNFEfVx6QOT7ERhqIz9VU6dRD3LoP8+ubNpdqKoQ5A=;
	b=nBqLgqL4BR4PIUeMXdDzJmVYxh2uecqIh2+8idEaCOxw0LGjvqsLdhdsyRXKiCE7hT
	3rNx3okXU6mVba97p3x1gqg24RqdU7p/PzKdavQTpmOjCZtGeLkX/i5tRocH4D3I/LpY
	uDLvg6avVFXJ1vZnLLGaA4d3RZZ9mDYQvL7KjdMAuCHJYqVllYZ6WIWsaXW/ZRA4HHMG
	djMYyVDfBGKC6atjZE+Tt8yvIqKQssh4G550RBXrCo6vKXpezAsegbAt8PELoR7sqF83
	0aRN06Co8AmpoCmppbpOrW55W7DXEFQxREjAZQFvFaiBywDKLk9m3oqUcUxHYl2fMFYq
	IKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5ZNFEfVx6QOT7ERhqIz9VU6dRD3LoP8+ubNpdqKoQ5A=;
	b=Jr1qrcuJySdQdq0bLQXZZZYtVlDI4pE5t+9eEmSnLAPH1g9gSl4ZsRTi2KEGK/rcI4
	K3x7oJ3fPiLH3TdeIz2EGxmoSuKMokJVhNUDf5BC+u9C3bNw5NxV6PHrsvykkJoJpaU5
	JnU+HFogHw74kiHf1Wt3edIZ95xaTtVxnbpTzg+jT8JR3yqV+yYHbPWtwwyOJZtwGCP1
	Oxf5Vn5+ULCyZNTKydRbUgZaWS9mgcPJM9u0O+wYwPOj1zFoFV/r6YDNRInBdkRn5KBW
	dcDOPMbfZJeW7vxpK4mCRl9vwmZ/KVw8dfEqXvPhoVRShoCvZCwiB55UOgbM/3LTpRou
	7WDQ==
X-Gm-Message-State: AGRZ1gITQKQRrdWv8NfQqIHMSOKdHREz99WMHMfLbWCKGyYKT4hutL9J
	rH+C/sTGlesccYIIT/AON5t6o7zNZTIytmlB/2BGgyBRJwg=
X-Google-Smtp-Source: AFSGD/X3OGh4NsESp+vcKmXlIU7Y5VSa+luiv7IQQev4oZ2++zvh6wef+9oBYZeBpIB4Oe623O8iBztLhFdN4Q/4sO0=
X-Received: by 2002:a24:4483:: with SMTP id
	o125mr24393957ita.106.1543264489251; 
	Mon, 26 Nov 2018 12:34:49 -0800 (PST)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Mon, 26 Nov 2018 15:34:27 -0500
Message-ID: <CAFSZm+ioLuVFJi-+zF9Rx4Nk7q1+i6Ehw6puQX0Vd+f_Xkc5Ww@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Mercurial fetcher doesn't work for me (patch included)
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
X-List-Received-Date: Mon, 26 Nov 2018 20:34:52 -0000
X-Groupsio-MsgNum: 43362
Content-Type: multipart/mixed; boundary="000000000000ad93f0057b9743ed"

--000000000000ad93f0057b9743ed
Content-Type: multipart/alternative; boundary="000000000000ad93ed057b9743eb"

--000000000000ad93ed057b9743eb
Content-Type: text/plain; charset="UTF-8"

I'm trying to write a recipe for a local repo that is kept in mercurial,
and encountering the following problem:


> Traceback (most recent call last):
>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
> line 808, in DataSmart.getVarFlag(var='PV', flag='_content', expand=True,
> noweakdefault=False, parsing=False, retparser=False):
>              if expand or retparser:
>     >            parser = self.expandWithRefs(value, cachename)
>              if expand:
>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
> line 416, in DataSmart.expandWithRefs(s='0.0.4+git${SRCPV}', varname='PV'):
>                  try:
>     >                s = __expand_var_regexp__.sub(varparse.var_sub, s)
>                      try:
>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
> line 108, in VariableParse.var_sub(match=<_sre.SRE_Match object; span=(9,
> 17), match='${SRCPV}'>):
>                          raise Exception("variable %s references itself!"
> % self.varname)
>     >            var = self.d.getVarFlag(key, "_content")
>                  self.references.add(key)
>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
> line 808, in DataSmart.getVarFlag(var='SRCPV', flag='_content',
> expand=True, noweakdefault=False, parsing=False, retparser=False):
>              if expand or retparser:
>     >            parser = self.expandWithRefs(value, cachename)
>              if expand:
>   File "/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_smart.py",
> line 430, in DataSmart.expandWithRefs(s='${@bb.fetch2.get_srcrev(d)}',
> varname='SRCPV'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression
> was ${@bb.fetch2.get_srcrev(d)} which triggered exception AttributeError:
> 'FetchData' object has no attribute 'moddir'


I've fixed this with the following patch, which moves some code in the Hg
fetcher to later in the urldata_init method, after some necessary variables
have been initialized. I'm not sure if I'm alone in seeing this problem or
not?

Thanks for any help,
Aaron

--000000000000ad93ed057b9743eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I&#39;m trying to write a recipe for=
 a local repo that is kept in mercurial, and encountering the following pro=
blem:</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Traceback (most recent call last):<br>=C2=A0 File &quot;/home/joel-cohen=
/code/waveos2/poky/bitbake/lib/bb/data_smart.py&quot;, line 808, in DataSma=
rt.getVarFlag(var=3D&#39;PV&#39;, flag=3D&#39;_content&#39;, expand=3DTrue,=
 noweakdefault=3DFalse, parsing=3DFalse, retparser=3DFalse):<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if expand or retparser:<br>=C2=A0 =C2=
=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parser =3D self.expandWit=
hRefs(value, cachename)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
if expand:<br>=C2=A0 File &quot;/home/joel-cohen/code/waveos2/poky/bitbake/=
lib/bb/data_smart.py&quot;, line 416, in DataSmart.expandWithRefs(s=3D&#39;=
0.0.4+git${SRCPV}&#39;, varname=3D&#39;PV&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0try:<br>=C2=A0 =C2=A0 &gt;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s =3D __expand_var_regexp_=
_.sub(varparse.var_sub, s)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0try:<br>=C2=A0 File &quot;/home/joel-cohen/c=
ode/waveos2/poky/bitbake/lib/bb/data_smart.py&quot;, line 108, in VariableP=
arse.var_sub(match=3D&lt;_sre.SRE_Match object; span=3D(9, 17), match=3D&#3=
9;${SRCPV}&#39;&gt;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise Exception(&quot;variable %s =
references itself!&quot; % self.varname)<br>=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var =3D self.d.getVarFlag(key, &quot;_content&=
quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sel=
f.references.add(key)<br>=C2=A0 File &quot;/home/joel-cohen/code/waveos2/po=
ky/bitbake/lib/bb/data_smart.py&quot;, line 808, in DataSmart.getVarFlag(va=
r=3D&#39;SRCPV&#39;, flag=3D&#39;_content&#39;, expand=3DTrue, noweakdefaul=
t=3DFalse, parsing=3DFalse, retparser=3DFalse):<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if expand or retparser:<br>=C2=A0 =C2=A0 &gt;=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parser =3D self.expandWithRefs(value, c=
achename)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if expand:<br>=
=C2=A0 File &quot;/home/joel-cohen/code/waveos2/poky/bitbake/lib/bb/data_sm=
art.py&quot;, line 430, in DataSmart.expandWithRefs(s=3D&#39;${@bb.fetch2.g=
et_srcrev(d)}&#39;, varname=3D&#39;SRCPV&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0except Exception as exc:<br>=C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Ex=
pansionError(varname, s, exc) from exc<br>=C2=A0 =C2=A0 =C2=A0<br>bb.data_s=
mart.ExpansionError: Failure expanding variable SRCPV, expression was ${@bb=
.fetch2.get_srcrev(d)} which triggered exception AttributeError: &#39;Fetch=
Data&#39; object has no attribute &#39;moddir&#39;</blockquote><div><br></d=
iv><div>I&#39;ve fixed this with the following patch, which moves some code=
 in the Hg fetcher to later in the urldata_init method, after some necessar=
y variables have been initialized. I&#39;m not sure if I&#39;m alone in see=
ing this problem or not?</div><div><br></div><div>Thanks for any help,</div=
><div>Aaron</div><div><br></div><div><br></div></div></div>

--000000000000ad93ed057b9743eb--

--000000000000ad93f0057b9743ed
Content-Type: text/x-patch; charset="US-ASCII"; name="poky.patch"
Content-Disposition: attachment; filename="poky.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_joyrrek90>
X-Attachment-Id: f_joyrrek90

ZGlmZiAtLWdpdCBhL2JpdGJha2UvbGliL2JiL2ZldGNoMi9oZy5weSBiL2JpdGJha2UvbGliL2Ji
L2ZldGNoMi9oZy5weQppbmRleCA5MzZkMDQzLi45NzkwZTFiIDEwMDY0NAotLS0gYS9iaXRiYWtl
L2xpYi9iYi9mZXRjaDIvaGcucHkKKysrIGIvYml0YmFrZS9saWIvYmIvZmV0Y2gyL2hnLnB5CkBA
IC02NiwxMyArNjYsNiBAQCBjbGFzcyBIZyhGZXRjaE1ldGhvZCk6CiAgICAgICAgIGVsc2U6CiAg
ICAgICAgICAgICB1ZC5wcm90byA9ICJoZyIKIAotICAgICAgICB1ZC5zZXR1cF9yZXZpc2lvbnMo
ZCkKLQotICAgICAgICBpZiAncmV2JyBpbiB1ZC5wYXJtOgotICAgICAgICAgICAgdWQucmV2aXNp
b24gPSB1ZC5wYXJtWydyZXYnXQotICAgICAgICBlbGlmIG5vdCB1ZC5yZXZpc2lvbjoKLSAgICAg
ICAgICAgIHVkLnJldmlzaW9uID0gc2VsZi5sYXRlc3RfcmV2aXNpb24odWQsIGQpCi0KICAgICAg
ICAgIyBDcmVhdGUgcGF0aHMgdG8gbWVyY3VyaWFsIGNoZWNrb3V0cwogICAgICAgICBoZ3NyY25h
bWUgPSAnJXNfJXNfJXMnICUgKHVkLm1vZHVsZS5yZXBsYWNlKCcvJywgJy4nKSwgXAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVkLmhvc3QsIHVkLnBhdGgucmVwbGFjZSgnLycsICcuJykp
CkBAIC04Niw2ICs3OSwxNCBAQCBjbGFzcyBIZyhGZXRjaE1ldGhvZCk6CiAgICAgICAgIHVkLmxv
Y2FsZmlsZSA9IHVkLm1vZGRpcgogICAgICAgICB1ZC5iYXNlY21kID0gZC5nZXRWYXIoIkZFVENI
Q01EX2hnIikgb3IgIi91c3IvYmluL2VudiBoZyIKIAorICAgICAgICB1ZC5zZXR1cF9yZXZpc2lv
bnMoZCkKKworICAgICAgICBpZiAncmV2JyBpbiB1ZC5wYXJtOgorICAgICAgICAgICAgdWQucmV2
aXNpb24gPSB1ZC5wYXJtWydyZXYnXQorICAgICAgICBlbGlmIG5vdCB1ZC5yZXZpc2lvbjoKKyAg
ICAgICAgICAgIHVkLnJldmlzaW9uID0gc2VsZi5sYXRlc3RfcmV2aXNpb24odWQsIGQpCisKKwog
ICAgICAgICB1ZC53cml0ZV90YXJiYWxscyA9IGQuZ2V0VmFyKCJCQl9HRU5FUkFURV9NSVJST1Jf
VEFSQkFMTFMiKQogCiAgICAgZGVmIG5lZWRfdXBkYXRlKHNlbGYsIHVkLCBkKToK

--000000000000ad93f0057b9743ed--
