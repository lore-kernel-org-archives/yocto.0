Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3606C2BBCA
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 05:08:13 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.10449.1719551289853303407
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 22:08:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c7UDsXr2;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: dchvs11@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a725d756d41so38120766b.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 22:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719551288; x=1720156088; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eXfvCeDy8GDc03cJQACAmILBeB7kRVbJ2z/aiBYildA=;
        b=c7UDsXr2krHBu+R18+uXx+DY/XRcrWB40ZqhvcmGQVwrvWzEvFnj9NJziIw9Ezm+gD
         JkP1pOzR7MtqqxN8/MzZN0ylMQuzn3r/KYeTM3NIJrmt2568IQeIKH52dQUQ/9BNg5+f
         46+KPeNlQPhEE5ftthU4z20a6tLrHo8lgAvlNWZwAnqwIvQ0/Ji+6SnhZuUtG6RCScu2
         4f6FraKe1qQBaHr75t3WnkNLVuJj+WL+mjowNs+uhSLFMNbDQ0H40Y8rCSAgkeg8CNHR
         vH3o1IzWtork00zxAHeI3ZJga2CjL1yxaBZtS8i5ZpDZYNFTvGfouPXwDIVriyQthpXC
         25rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719551288; x=1720156088;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eXfvCeDy8GDc03cJQACAmILBeB7kRVbJ2z/aiBYildA=;
        b=ExKbnA20lvo6L1G3RiHCWOd09hTOztVXiIzmXOJrFzEeQSxNOKoRAUGTPNdwHlHhau
         6wkBZnUPHVAQgN9zdO/HKH5JuNg5fjdMD2lPloeJzikSA9E4yspId5WvEgpZywspn8Wb
         OE90vGJ7cuJYqkPO4xS+zOKoVY6kjQcXeckmdnDBx/W0xMAi0mkJbjZiYD3Fv8pw57M+
         +laJZuDBl9sf8pwCACYcVmGQNHLEa2M9myCcweT2N8tTtvV0eJhqlSAFkkth/37X+nZF
         JJubSxmNjHxaKYqRmFjFUd6iBd4VhhPdo07Ep77ah8MbW03YuOZHL4lJdY4e4GdOnNgg
         xnEQ==
X-Gm-Message-State: AOJu0YxfPX0sp19JmajAqh5bsWtBTb/T2/v7TdKzVdZ8T5JiCLVskKvH
	qX+BWHWCH2oUw+0E//2MBlsn+KWpJOLED2gyenOE1GhG9tD1Mf3Iyd3GsDpEItJppSNoI2zd9W6
	HmWwwHULVUpvAqwnW0GvBgjTbBKJGTfrtw+KdBQ==
X-Google-Smtp-Source: AGHT+IHN5QOYPpRfnzK3FW3aXoaiI/wvgHMscBiDtjIIws9+lSun7z3y6wGW3J0UOdkqz6mAv/sRa+dy7BVftvd5Fp4=
X-Received: by 2002:a17:906:119b:b0:a6f:c24a:721e with SMTP id
 a640c23a62f3a-a72aef272ecmr43718166b.30.1719551287428; Thu, 27 Jun 2024
 22:08:07 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Chaves <dchvs11@gmail.com>
Date: Thu, 27 Jun 2024 23:07:56 -0600
Message-ID: <CANDCFSz5o=DgqF2njtQyo8tr28urtPb5PGW6VhE=1sTNz=zLpQ@mail.gmail.com>
Subject: Issue with Integrating NPM Package Dependencies in Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a90de9061bec3b58"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 05:08:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63406

--000000000000a90de9061bec3b58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, everyone

I am currently working on a project where I need to integrate NPM package
dependencies using Yocto Project's BitBake fetcher utilities. I am parsing
"package-lock.json" files and incorporating this data into the fetcher
implementation. The fetcher I'm using is the "npmsw", however, I am
encountering some challenges with this fetcher being capable of fetching
the NPM dependencies from the "package-lock.json".

Here are the details of my setup:

* I'm working with the Kirkstone branch
* SRC_URI looks like this:

SRC_URI =3D "...\
npmsw://${THISDIR}/package-lock.json;dev=3D0;destsuffix=3Dgit/node_modules =
\
"

* I'm testing with the following package=E2=80=90lock.json file:

{
"name": "my-project",
"lockfileVersion": 2,
"requires": true,
"packages": {
"": {
"name": "my-project",
"version": "1.0.0",
"dependencies": {
"express": "^4.17.1",
"lodash": "^4.17.21",
"mongoose": "^6.0.13"
}
}
},
"dependencies": {
"@babel/code-frame": {
"version": "7.10.1",
"resolved": "
https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.10.1.tgz",
"integrity": "
sha512-IGhtTmpjGbYzcEDOw7DcQtbQSXcG9ftmAXtWTu9V936vDye4xjjekktFAtgZsWpzTj/X=
01jocB46mTywm/4SZw=3D=3D
",
"dev": true,
"requires": {
"@babel/highlight": "^7.10.1"
}
}
}
}

This is the error I see:

ERROR: test-test-1.0.0-r0 do_fetch: ExpansionError(
'TUNE_FEATURES:tune-armv8a-crc', '${TUNE_FEATURES:tune-armv8a} crc',
RecursionError('maximum recursion depth exceeded'))

Apparently, the fetcher gets into an infinite loop. Has anyone faced a
similar issue or can provide guidance on how to resolve this?

Thank you for your assistance.

Best regards
=E2=80=94Daniel

--000000000000a90de9061bec3b58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, everyone<br><br>I am currently working on a pr=
oject where I need to integrate NPM package dependencies using Yocto Projec=
t&#39;s BitBake fetcher utilities. I am parsing &quot;package-lock.json&quo=
t; files and incorporating this data into the fetcher implementation. The f=
etcher I&#39;m using is the &quot;npmsw&quot;, however, I am encountering s=
ome challenges with this fetcher being capable of fetching the NPM dependen=
cies from the &quot;package-lock.json&quot;.<br><br>Here are the details of=
 my setup:<br></div><div><br></div><div>* I&#39;m working with the Kirkston=
e branch<br></div><div>* SRC_URI looks like this:</div><div><br></div><div =
style=3D"color:rgb(51,51,51);background-color:rgb(245,245,245);font-family:=
&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-weight:nor=
mal;font-size:14px;line-height:19px;white-space:pre"><div><span style=3D"co=
lor:rgb(122,62,157)"></span></div><div><span style=3D"color:rgb(122,62,157)=
">SRC_URI</span><span style=3D"color:rgb(51,51,51)"> </span><span style=3D"=
color:rgb(119,119,119)">=3D</span><span style=3D"color:rgb(51,51,51)"> </sp=
an><span style=3D"color:rgb(68,140,39)">&quot;...\</span></div><div><span s=
tyle=3D"color:rgb(68,140,39)">     npmsw://</span><span style=3D"color:rgb(=
119,119,119)">${</span><span style=3D"color:rgb(122,62,157)">THISDIR</span>=
<span style=3D"color:rgb(119,119,119)">}</span><span style=3D"color:rgb(68,=
140,39)">/package-lock.json;dev=3D0;destsuffix=3Dgit/node_modules \<br>&quo=
t;</span></div></div><div><br></div><div>* I&#39;m testing with the followi=
ng package=E2=80=90lock.json file:</div><div><br><div style=3D"color:rgb(51=
,51,51);background-color:rgb(245,245,245);font-family:&quot;Droid Sans Mono=
&quot;,&quot;monospace&quot;,monospace;font-weight:normal;font-size:14px;li=
ne-height:19px;white-space:pre"><div><span style=3D"color:rgb(119,119,119)"=
>{</span></div><div><span style=3D"color:rgb(51,51,51)">  </span><span styl=
e=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,3=
9)">name</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span st=
yle=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)">=
 </span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"=
color:rgb(68,140,39)">my-project</span><span style=3D"color:rgb(119,119,119=
)">&quot;</span><span style=3D"color:rgb(119,119,119)">,</span></div><div><=
span style=3D"color:rgb(51,51,51)">  </span><span style=3D"color:rgb(119,11=
9,119)">&quot;</span><span style=3D"color:rgb(156,93,39)">lockfileVersion</=
span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"col=
or:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)"> </span><s=
pan style=3D"color:rgb(156,93,39)">2</span><span style=3D"color:rgb(119,119=
,119)">,</span></div><div><span style=3D"color:rgb(51,51,51)">  </span><spa=
n style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(15=
6,93,39)">requires</span><span style=3D"color:rgb(119,119,119)">&quot;</spa=
n><span style=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(5=
1,51,51)"> </span><span style=3D"color:rgb(156,93,39)">true</span><span sty=
le=3D"color:rgb(119,119,119)">,</span></div><div><span style=3D"color:rgb(5=
1,51,51)">  </span><span style=3D"color:rgb(119,119,119)">&quot;</span><spa=
n style=3D"color:rgb(156,93,39)">packages</span><span style=3D"color:rgb(11=
9,119,119)">&quot;</span><span style=3D"color:rgb(119,119,119)">:</span><sp=
an style=3D"color:rgb(51,51,51)"> </span><span style=3D"color:rgb(119,119,1=
19)">{</span></div><div><span style=3D"color:rgb(51,51,51)">      </span><s=
pan style=3D"color:rgb(119,119,119)">&quot;&quot;</span><span style=3D"colo=
r:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)"> </span><sp=
an style=3D"color:rgb(119,119,119)">{</span></div><div><span style=3D"color=
:rgb(51,51,51)">          </span><span style=3D"color:rgb(119,119,119)">&qu=
ot;</span><span style=3D"color:rgb(156,93,39)">name</span><span style=3D"co=
lor:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(119,119,119)">:=
</span><span style=3D"color:rgb(51,51,51)"> </span><span style=3D"color:rgb=
(119,119,119)">&quot;</span><span style=3D"color:rgb(68,140,39)">my-project=
</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"c=
olor:rgb(119,119,119)">,</span></div><div><span style=3D"color:rgb(51,51,51=
)">          </span><span style=3D"color:rgb(119,119,119)">&quot;</span><sp=
an style=3D"color:rgb(156,93,39)">version</span><span style=3D"color:rgb(11=
9,119,119)">&quot;</span><span style=3D"color:rgb(119,119,119)">:</span><sp=
an style=3D"color:rgb(51,51,51)"> </span><span style=3D"color:rgb(119,119,1=
19)">&quot;</span><span style=3D"color:rgb(68,140,39)">1.0.0</span><span st=
yle=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(119,11=
9,119)">,</span></div><div><span style=3D"color:rgb(51,51,51)">          </=
span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"col=
or:rgb(156,93,39)">dependencies</span><span style=3D"color:rgb(119,119,119)=
">&quot;</span><span style=3D"color:rgb(119,119,119)">:</span><span style=
=3D"color:rgb(51,51,51)"> </span><span style=3D"color:rgb(119,119,119)">{</=
span></div><div><span style=3D"color:rgb(51,51,51)">              </span><s=
pan style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(=
156,93,39)">express</span><span style=3D"color:rgb(119,119,119)">&quot;</sp=
an><span style=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(=
51,51,51)"> </span><span style=3D"color:rgb(119,119,119)">&quot;</span><spa=
n style=3D"color:rgb(68,140,39)">^4.17.1</span><span style=3D"color:rgb(119=
,119,119)">&quot;</span><span style=3D"color:rgb(119,119,119)">,</span></di=
v><div><span style=3D"color:rgb(51,51,51)">              </span><span style=
=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,39=
)">lodash</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span s=
tyle=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)"=
> </span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D=
"color:rgb(68,140,39)">^4.17.21</span><span style=3D"color:rgb(119,119,119)=
">&quot;</span><span style=3D"color:rgb(119,119,119)">,</span></div><div><s=
pan style=3D"color:rgb(51,51,51)">              </span><span style=3D"color=
:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,39)">mongoo=
se</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D=
"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)"> </spa=
n><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:=
rgb(68,140,39)">^6.0.13</span><span style=3D"color:rgb(119,119,119)">&quot;=
</span></div><div><span style=3D"color:rgb(51,51,51)">          </span><spa=
n style=3D"color:rgb(119,119,119)">}</span></div><div><span style=3D"color:=
rgb(51,51,51)">      </span><span style=3D"color:rgb(119,119,119)">}</span>=
</div><div><span style=3D"color:rgb(51,51,51)">  </span><span style=3D"colo=
r:rgb(119,119,119)">},</span></div><div><span style=3D"color:rgb(51,51,51)"=
>  </span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=
=3D"color:rgb(156,93,39)">dependencies</span><span style=3D"color:rgb(119,1=
19,119)">&quot;</span><span style=3D"color:rgb(119,119,119)">:</span><span =
style=3D"color:rgb(51,51,51)"> </span><span style=3D"color:rgb(119,119,119)=
">{</span></div><div><span style=3D"color:rgb(51,51,51)">      </span><span=
 style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156=
,93,39)">@babel/code-frame</span><span style=3D"color:rgb(119,119,119)">&qu=
ot;</span><span style=3D"color:rgb(119,119,119)">:</span><span style=3D"col=
or:rgb(51,51,51)"> </span><span style=3D"color:rgb(119,119,119)">{</span></=
div><div><span style=3D"color:rgb(51,51,51)">          </span><span style=
=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,39=
)">version</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span =
style=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)=
"> </span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=
=3D"color:rgb(68,140,39)">7.10.1</span><span style=3D"color:rgb(119,119,119=
)">&quot;</span><span style=3D"color:rgb(119,119,119)">,</span></div><div><=
span style=3D"color:rgb(51,51,51)">          </span><span style=3D"color:rg=
b(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,39)">resolved<=
/span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"co=
lor:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)"> </span><=
span style=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb=
(68,140,39)"><a href=3D"https://registry.npmjs.org/@babel/code-frame/-/code=
-frame-7.10.1.tgz">https://registry.npmjs.org/@babel/code-frame/-/code-fram=
e-7.10.1.tgz</a></span><span style=3D"color:rgb(119,119,119)">&quot;</span>=
<span style=3D"color:rgb(119,119,119)">,</span></div><div><span style=3D"co=
lor:rgb(51,51,51)">          </span><span style=3D"color:rgb(119,119,119)">=
&quot;</span><span style=3D"color:rgb(156,93,39)">integrity</span><span sty=
le=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(119,119=
,119)">:</span><span style=3D"color:rgb(51,51,51)"> </span><span style=3D"c=
olor:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(68,140,39)">sh=
a512-IGhtTmpjGbYzcEDOw7DcQtbQSXcG9ftmAXtWTu9V936vDye4xjjekktFAtgZsWpzTj/X01=
jocB46mTywm/4SZw=3D=3D</span><span style=3D"color:rgb(119,119,119)">&quot;<=
/span><span style=3D"color:rgb(119,119,119)">,</span></div><div><span style=
=3D"color:rgb(51,51,51)">          </span><span style=3D"color:rgb(119,119,=
119)">&quot;</span><span style=3D"color:rgb(156,93,39)">dev</span><span sty=
le=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(119,119=
,119)">:</span><span style=3D"color:rgb(51,51,51)"> </span><span style=3D"c=
olor:rgb(156,93,39)">true</span><span style=3D"color:rgb(119,119,119)">,</s=
pan></div><div><span style=3D"color:rgb(51,51,51)">          </span><span s=
tyle=3D"color:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,9=
3,39)">requires</span><span style=3D"color:rgb(119,119,119)">&quot;</span><=
span style=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,5=
1,51)"> </span><span style=3D"color:rgb(119,119,119)">{</span></div><div><s=
pan style=3D"color:rgb(51,51,51)">              </span><span style=3D"color=
:rgb(119,119,119)">&quot;</span><span style=3D"color:rgb(156,93,39)">@babel=
/highlight</span><span style=3D"color:rgb(119,119,119)">&quot;</span><span =
style=3D"color:rgb(119,119,119)">:</span><span style=3D"color:rgb(51,51,51)=
"> </span><span style=3D"color:rgb(119,119,119)">&quot;</span><span style=
=3D"color:rgb(68,140,39)">^7.10.1</span><span style=3D"color:rgb(119,119,11=
9)">&quot;</span></div><div><span style=3D"color:rgb(51,51,51)">          <=
/span><span style=3D"color:rgb(119,119,119)">}</span></div><div><span style=
=3D"color:rgb(51,51,51)">      </span><span style=3D"color:rgb(119,119,119)=
">}</span></div><div><span style=3D"color:rgb(51,51,51)">  </span><span sty=
le=3D"color:rgb(119,119,119)">}</span></div><div><span style=3D"color:rgb(1=
19,119,119)">}</span></div></div></div><div><br></div><div>This is the erro=
r I see:<br></div><div><br></div><div style=3D"color:rgb(51,51,51);backgrou=
nd-color:rgb(245,245,245);font-family:&quot;Droid Sans Mono&quot;,&quot;mon=
ospace&quot;,monospace;font-weight:normal;font-size:14px;line-height:19px;w=
hite-space:pre"><div><span style=3D"color:rgb(122,62,157)">ERROR</span><spa=
n style=3D"color:rgb(51,51,51)">: </span><span style=3D"color:rgb(122,62,15=
7)">test</span><span style=3D"color:rgb(51,51,51)">-</span><span style=3D"c=
olor:rgb(122,62,157)">test</span><span style=3D"color:rgb(156,93,39)">-1.0.=
0</span><span style=3D"color:rgb(51,51,51)">-</span><span style=3D"color:rg=
b(122,62,157)">r0</span><span style=3D"color:rgb(51,51,51)"> </span><span s=
tyle=3D"color:rgb(122,62,157)">do_fetch</span><span style=3D"color:rgb(51,5=
1,51)">: </span><span style=3D"color:rgb(170,55,49);font-weight:bold">Expan=
sionError</span><span style=3D"color:rgb(51,51,51)">(</span><span style=3D"=
color:rgb(68,140,39)">&#39;TUNE_FEATURES:tune-armv8a-crc&#39;</span><span s=
tyle=3D"color:rgb(119,119,119)">,</span><span style=3D"color:rgb(51,51,51)"=
> </span><span style=3D"color:rgb(68,140,39)">&#39;</span><span style=3D"co=
lor:rgb(119,119,119)">${</span><span style=3D"color:rgb(122,62,157)">TUNE_F=
EATURES:tune-armv8a</span><span style=3D"color:rgb(119,119,119)">}</span><s=
pan style=3D"color:rgb(68,140,39)"> crc&#39;</span><span style=3D"color:rgb=
(119,119,119)">,</span><span style=3D"color:rgb(51,51,51)"> </span><span st=
yle=3D"color:rgb(170,55,49);font-weight:bold">RecursionError</span><span st=
yle=3D"color:rgb(51,51,51)">(</span><span style=3D"color:rgb(68,140,39)">&#=
39;maximum recursion depth exceeded&#39;</span><span style=3D"color:rgb(51,=
51,51)">))</span></div></div><div><br></div><div>Apparently, the fetcher ge=
ts into an infinite loop. Has anyone faced a similar issue or can provide g=
uidance on how to resolve this?<br><br>Thank you for your assistance.<br><b=
r>Best regards<br></div>=E2=80=94Daniel<br></div>

--000000000000a90de9061bec3b58--

