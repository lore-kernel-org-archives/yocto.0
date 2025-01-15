Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16C6C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 07:18:16 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.15780.1736925488406939315
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 23:18:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e2LEWY7b;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso65364045e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 23:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736925486; x=1737530286; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mX0b943nOmUnCU0v2h7q0XYGKK38jAnAumTiwh4eALg=;
        b=e2LEWY7bMPKymm4MfyU5TDLdHclRMw7Vlw0m6fF0o25/Stl+qePgg+OCT8FNcgYVOb
         gXLtAUlYxl8wsuUPnmd15S6TPim8ql/U65v/hEQ+xKQM38auJ5dNpyeFH26osyeh7795
         HBZQI1eQud1GV2G9hZlVShKHzW8cLzd1eykRxzB2oucuaArL0T7EKgV0DVNnTEOvuecT
         D1E+9tuisezNym2gG/T89YoPtN6myDRt27rKskQuq+T3LwtoXB2mbUvXsoKaLSFSMUVm
         bqaynSLag7dRRakQpJotSxpes/b5lqx2Vx1TKON5qrWibyyzzIdvUwPUpZ5h8PMAAj2i
         TsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736925486; x=1737530286;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mX0b943nOmUnCU0v2h7q0XYGKK38jAnAumTiwh4eALg=;
        b=Tee3ypiLbtpNRMS2qzadGLshKP7Eu8/REbpV2GO2lcAPePZE/Stkaco+YpGXFkxQ0Z
         NpdQdzmzr08fAGLRNmLMFtcdma2bdf7lXKtikbim1GMD7Z9wBO0AugCdHfh8JkYnsF3I
         GXcvQ35od12zm+dxIXpqeNzKltBKDRu3yVwlRTUG2IOp68+rxq/E6Tl3S4Qd/SQQr1Ti
         0c2u982FaaICSWFhUW/9oQqO9cExyHKApHwsMakylAKiWb2SrSVjdUz3j93LGKn9z8iV
         XoxrMUC6H2dgLpV9LIQjVu6nUuE0aTPYJzeV/TlaIDw+lvg0XpZBx3gK4PuSpGCYr4TX
         31tw==
X-Gm-Message-State: AOJu0YxKEaysfNEW+kV4pYH8cgDDUABZGwWWp+4B5KocJSeg9rzLsc9j
	hfqceS+3raWft1Qcybe4l+ew8Oq7nDKP2WonA8Is4v8uR9HrZjd2bdc1JPLY
X-Gm-Gg: ASbGncuK4fIYa0QjyZUedFOFmJRUb5xLIljg2wwJIY3KLZUze1rjmtODK82g8k/Zx/O
	qjJipSY17iQcBJaXNnnDRqipTkUPXgkII9JhRuHE01ylE130giIb58sl4okAaq1bIyxv8Mntt6i
	ul/KyaCg4C69JxePKFUZDGwyGpCCNq3kQ54ZeCPWWdIZImoBTlFdZ1Ca13tl/UqYoVztR3QDQjR
	BFKM+xS0T8XpwNnYzr87DMXsSmkEr6GWV3mTYcfwbtfP6pSf/igE2UOsbSPte1Oxf+5z1BssgmF
	iJ+y4t7Q7lRcESdH65XOpxrVy9TZLg==
X-Google-Smtp-Source: AGHT+IH+4RNNSsEZ6CMKJ2ShJQzulVvWr/k4bIPxj1WxdkAONkcvd9CSeOAVtrzEJKvif5YGFDTCAw==
X-Received: by 2002:a05:6000:4a11:b0:385:e1f5:476f with SMTP id ffacd0b85a97d-38a873305bemr27501493f8f.39.1736925486076;
        Tue, 14 Jan 2025 23:18:06 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:55c4:f628:91f3:4287? ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74c5bb5sm13000655e9.22.2025.01.14.23.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 23:18:04 -0800 (PST)
Message-ID: <7a0a7d8cc376caf07389f56bbd60330aaf2e56bb.camel@gmail.com>
Subject: Re: [yocto] [HELP]
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
Date: Wed, 15 Jan 2025 08:18:04 +0100
In-Reply-To: <keIz.1736922092718035916.9iYH@lists.yoctoproject.org>
References: <keIz.1736922092718035916.9iYH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="=-tbedZhCh8DjfK/qtqTrf"
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41app1) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 07:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64556

--=-tbedZhCh8DjfK/qtqTrf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ganesh

We do something similar. We use a oe-init-build-env script in our
layer:

layer specific oe-init-build-env --------------------------------------
-----------------

#!/bin/sh

# Normally this is called as '. ./oe-init-build-env <builddir>'
#
# This works in most shells (not dash), but not all of them pass the
arguments
# when being sourced. To workaround the shell limitation use "set
<builddir>"
# prior to sourcing this script.
#
if [ -n "$BASH_SOURCE" ]; then
=C2=A0 THIS_SCRIPT=3D$BASH_SOURCE
elif [ -n "$ZSH_NAME" ]; then
=C2=A0 THIS_SCRIPT=3D$0
else
=C2=A0 THIS_SCRIPT=3D"$(pwd)/oe-init-build-env"
=C2=A0 if [ ! -e "$THIS_SCRIPT" ]; then
=C2=A0 =C2=A0 echo "Error: $THIS_SCRIPT doesn't exist!" >&2
=C2=A0 =C2=A0 echo "Please run this script in oe-init-build-env's directory=
." >&2
=C2=A0 =C2=A0 exit 1
=C2=A0 fi
fi
if [ -n "$BBSERVER" ]; then
=C2=A0 unset BBSERVER
fi

if [ -z "$ZSH_NAME" ] && [ "$0" =3D "$THIS_SCRIPT" ]; then
=C2=A0 echo "Error: This script needs to be sourced. Please run as '.
$THIS_SCRIPT'" >&2
=C2=A0 exit 1
fi

if [ -z "$OEROOT" ]; then
=C2=A0 OEROOT=3D$(dirname "$THIS_SCRIPT")/poky
=C2=A0 OEROOT=3D$(readlink -f "$OEROOT")
fi

export OEROOT
. "$OEROOT"/scripts/oe-buildenv-internal &&
TEMPLATECONF=3D"$(cat "$BUILDDIR"/conf/templateconf.cfg)"
"$OEROOT"/scripts/oe-setup-builddir || {
=C2=A0 unset OEROOT
=C2=A0 return 1
}
unset OEROOT

# Generate an initial configuration for VSCode and the yocto-bitbake
plugin.
OEINIT=3D$(dirname "$THIS_SCRIPT")
OEINIT=3D$(readlink -f "$OEINIT")
if command -v code > /dev/null && [ ! -d "$OEINIT/.vscode" ]; then
=C2=A0 "$OEINIT"/scripts/oe-setup-vscode "$OEINIT" "$BUILDDIR"
"$OEINIT"/projects/*
fi
unset OEINIT
unset THIS_SCRIPT

end -------------------------------------------------------


The build build-1/conf/template.cfg file looks like

../meta-eaton/conf/templates/build-1


and in the folder meta-eaton/conf/templates/build-1 the are:

conf-notes.txt local.conf.sample


not sure that's exactly how it is supposed to be used, but it works in
the same way as older releases did.
It depends on the exact folder structure if you need some ../ paths

Regards
Adrian







On Tue, 2025-01-14 at 22:21 -0800, Ganesh Mahajan via
lists.yoctoproject.org wrote:
> I am trying to upgrade from dunfell to scarthgap-5.0.5
>=20
> meta-eaton is my custom layer.
> source setup worked for dunfell but when trying with scarthgap facing
> TEMPLATECONF error.
>=20
> Error is as below
> /home/build/project/meta-eaton/conf/templates/template-name
> build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env
> Error: TEMPLATECONF value (which is /home/build/project/meta-
> eaton/conf/templates/template-name) must point to meta-some-
> layer/conf/templates/template-name
> =C2=A0changed the dir structure as mentioned in error, UNSET TEMPLATECONF
> and verified its path which is=20
> build@ubuntu-bionic:~/project$ echo $TEMPLATECONF
> /home/build/project/meta-eaton/conf/templates/template-name
>=20
> what am i doing wrong can anyone help.
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64555):
> https://lists.yoctoproject.org/g/yocto/message/64555
> Mute This Topic: https://lists.yoctoproject.org/mt/110623411/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=-tbedZhCh8DjfK/qtqTrf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>Hi Ganesh</div><div><br></div><div>We do somethin=
g similar. We use a oe-init-build-env script in our layer:</div><div><br></=
div><div>layer specific oe-init-build-env ---------------------------------=
----------------------</div><div><br></div><div>#!/bin/sh</div><div><br></d=
iv><div># Normally this is called as '. ./oe-init-build-env &lt;builddir&gt=
;'</div><div>#</div><div># This works in most shells (not dash), but not al=
l of them pass the arguments</div><div># when being sourced.  To workaround=
 the shell limitation use "set &lt;builddir&gt;"</div><div># prior to sourc=
ing this script.</div><div>#</div><div>if [ -n "$BASH_SOURCE" ]; then</div>=
<div>&nbsp; THIS_SCRIPT=3D$BASH_SOURCE</div><div>elif [ -n "$ZSH_NAME" ]; t=
hen</div><div>&nbsp; THIS_SCRIPT=3D$0</div><div>else</div><div>&nbsp; THIS_=
SCRIPT=3D"$(pwd)/oe-init-build-env"</div><div>&nbsp; if [ ! -e "$THIS_SCRIP=
T" ]; then</div><div>&nbsp; &nbsp; echo "Error: $THIS_SCRIPT doesn't exist!=
" &gt;&amp;2</div><div>&nbsp; &nbsp; echo "Please run this script in oe-ini=
t-build-env's directory." &gt;&amp;2</div><div>&nbsp; &nbsp; exit 1</div><d=
iv>&nbsp; fi</div><div>fi</div><div>if [ -n "$BBSERVER" ]; then</div><div>&=
nbsp; unset BBSERVER</div><div>fi</div><div><br></div><div>if [ -z "$ZSH_NA=
ME" ] &amp;&amp; [ "$0" =3D "$THIS_SCRIPT" ]; then</div><div>&nbsp; echo "E=
rror: This script needs to be sourced. Please run as '. $THIS_SCRIPT'" &gt;=
&amp;2</div><div>&nbsp; exit 1</div><div>fi</div><div><br></div><div>if [ -=
z "$OEROOT" ]; then</div><div>&nbsp; OEROOT=3D$(dirname "$THIS_SCRIPT")/pok=
y</div><div>&nbsp; OEROOT=3D$(readlink -f "$OEROOT")</div><div>fi</div><div=
><br></div><div>export OEROOT</div><div>. "$OEROOT"/scripts/oe-buildenv-int=
ernal &amp;&amp;</div><div>TEMPLATECONF=3D"$(cat "$BUILDDIR"/conf/templatec=
onf.cfg)" "$OEROOT"/scripts/oe-setup-builddir || {</div><div>&nbsp; unset O=
EROOT</div><div>&nbsp; return 1</div><div>}</div><div>unset OEROOT</div><di=
v><br></div><div># Generate an initial configuration for VSCode and the yoc=
to-bitbake plugin.</div><div>OEINIT=3D$(dirname "$THIS_SCRIPT")</div><div>O=
EINIT=3D$(readlink -f "$OEINIT")</div><div>if command -v code &gt; /dev/nul=
l &amp;&amp; [ ! -d "$OEINIT/.vscode" ]; then</div><div>&nbsp; "$OEINIT"/sc=
ripts/oe-setup-vscode "$OEINIT" "$BUILDDIR" "$OEINIT"/projects/*</div><div>=
fi</div><div>unset OEINIT</div><div>unset THIS_SCRIPT</div><div><br></div><=
div><div>end -------------------------------------------------------</div><=
/div><div><br></div><div><br></div><div><div>The build build-1/conf/templat=
e.cfg file looks like</div></div><div><br></div><div>../meta-eaton/conf/tem=
plates/build-1</div><div><div><br></div><div><br></div></div><div>and in th=
e folder meta-eaton/conf/templates/build-1 the are:</div><div><br></div><di=
v>conf-notes.txt  local.conf.sample</div><div><br></div><div><br></div><div=
>not sure that's exactly how it is supposed to be used, but it works in the=
 same way as older releases did.</div><div>It depends on the exact folder s=
tructure if you need some ../ paths</div><div><br></div><div>Regards</div><=
div>Adrian</div><div><br></div><div><br></div><div><br></div><div><br></div=
><div><br></div><div><br></div><div><br></div><div>On Tue, 2025-01-14 at 22=
:21 -0800, Ganesh Mahajan via lists.yoctoproject.org wrote:</div><blockquot=
e type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;p=
adding-left:1ex"><div><span style=3D"color: #333333; font-family: system-ui=
, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ari=
al, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', '=
Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: normal; background-color: #ffffff; text-decoration-thickness: initial; t=
ext-decoration-style: initial; text-decoration-color: initial; display: inl=
ine !important; float: none;">I am trying to upgrade from dunfell to scarth=
gap-5.0.5<br><br>meta-eaton is my custom layer.</span><br style=3D"box-sizi=
ng: border-box; overflow-wrap: break-word !important; color: #333333; font-=
family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Libe=
ration Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Se=
goe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: normal; background-color: #ffffff; text-decoration-thic=
kness: initial; text-decoration-style: initial; text-decoration-color: init=
ial;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Ro=
boto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, =
'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji=
'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial; display: inline !important; =
float: none;">source setup worked for dunfell but when trying with scarthga=
p facing TEMPLATECONF error.<br></span><br>Error is as below<br><strong>/ho=
me/build/project/meta-eaton/conf/templates/template-name<br>build@ubuntu-bi=
onic:~/project$ source meta-eaton/setup-build-env<br>Error: TEMPLATECONF va=
lue (which is /home/build/project/meta-eaton/conf/templates/template-name) =
must point to</strong> meta-some-layer/conf/templates/template-name<br>&nbs=
p;changed the dir structure as mentioned in error, UNSET TEMPLATECONF and v=
erified its path which is <br><strong>build@ubuntu-bionic:~/project$ echo $=
TEMPLATECONF</strong><br><strong>/home/build/project/meta-eaton/conf/templa=
tes/template-name<br><br></strong> what am i doing wrong can anyone help.</=
div><div><br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></=
div><div>Links: You receive all messages sent to this group.<br></div><div>=
View/Reply Online (#64555): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64555">https://lists.yoctoproject.org/g/yocto/message/64555</a><=
br></div><div>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/110623411/4454582">https://lists.yoctoproject.org/mt/110623411/4454582</a>=
<br></div><div>Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoprojec=
t.org">yocto+owner@lists.yoctoproject.org</a><br></div><div>Unsubscribe: <a=
 href=3D"https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctop=
roject.org/g/yocto/unsub</a>&nbsp;[<a href=3D"mailto:adrian.freihofer@gmail=
.com">adrian.freihofer@gmail.com</a>]<br></div><div>-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div><br></div></blockquote><div><br></di=
v><div><span></span></div></body></html>

--=-tbedZhCh8DjfK/qtqTrf--

