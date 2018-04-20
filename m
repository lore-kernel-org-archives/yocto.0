Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E0F5E00C61; Fri, 20 Apr 2018 00:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FEF7E00C5B
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 00:59:07 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id o7-v6so7775013iob.8
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 00:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=16HMlCHRr8uT6pLrvxGcRkg1643w8iMBxYLsIwQSrTA=;
	b=WQuFoC9Hd79c357Wb9IisIRQ4qyW5HFMLUNUS2hy/cGttQuLMHcU9+fnpBZu0KZUXA
	coepF9SfXrqRVscFs8ejxrB+6tp5/4QUCCBbByfZGzEtx8EoO7JC9CLtKptwaxEhh+Tu
	bDrE9tsl+RWbopKCM76Gz7v0r8BPqg5nxNMZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=16HMlCHRr8uT6pLrvxGcRkg1643w8iMBxYLsIwQSrTA=;
	b=mf8bJ9wjxtbltDOVw6xnDVqKuNg7CbKGv4XpwYGSTgGfdmYms85u2AjN/LAyMrVwVn
	LkGVkx3jqmizFkHEk6MvNXjXFhDL2R0nDMUlKEKVrBh6TNQYksrGOGepapF0KO1UvOU5
	p4yOJ7ccgXIO7Gr0b6Pah2m3NdfTYsjcj/CJUaPq13DZJ0zOJ55sr3gyUQH+5uySn09k
	0++7yHAuFKEeBKQbhl6BsoeU8ZfA0rESASPa/jzwgoe21P2UCU4z22hgPeoyEad5uPoY
	zspcUTWWhQ5jZrxh2RuZFN5LZkGhw1QBGsZtrOhm05RlNGRA//dhVbQuHEm+DgtaO78v
	iGNg==
X-Gm-Message-State: ALQs6tAm3wyQuPd8FcWRcxjVXWEEYFxgWJRLpUTzksfibV2dOYb+aDC/
	8HUuY+63xBnDgbrVTRGVIvM8n4ev6WPd31l1iC0/8OBX
X-Google-Smtp-Source: AIpwx4/p5D0AqK2F7aLtGPh+Txz/++26SFQJJ6jNTwcQSsdHALZyXaX2VxFgPQzkWMTmhxDF3kDEZ+7nYuS47uai49s=
X-Received: by 2002:a6b:98b:: with SMTP id 11-v6mr7621653ioj.90.1524211146762; 
	Fri, 20 Apr 2018 00:59:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Fri, 20 Apr 2018 00:59:06
	-0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 20 Apr 2018 09:59:06 +0200
Message-ID: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Fri, 20 Apr 2018 07:59:09 -0000
Content-Type: multipart/alternative; boundary="000000000000f74758056a430f39"

--000000000000f74758056a430f39
Content-Type: text/plain; charset="UTF-8"

Hello forum.

We are trying to use yocto in a continuous integration environment with
different (production vs debug) scenarios.

To setup a given scenario (production vs debug) we are using something like
this:

    $ SCENARIO=debug
    $ MACHINE=<machine> DISTRO=<distro>-${SCENARIO} source
../../build-<machine>-${SCENARIO}
    $ bitbake <image>-${SCENARIO}

So we have different image recipes:

    * image-production.bb
    * image-debug.bb

Different distros:

    * distro-production.conf
    * distro-debug.conf

And different build directories:

    * build-<machine>-production
    * build-<machine>-debug

To optimize space usage and compilation time, we setup a shared sstate
cache and a shared directory for downloads. This seems a good starting
point.

However, things are getting complicated, because there is no way to exclude
some recipes easily. For example, we don't want iptables installed on the
debug image, but dependency chains include iptables by default even when
declaring IMAGE_INSTALL_remove explicitly. In this case we decided checking
SCENARIO inside iptables_%.bbappend to decide what rules are installed on
the image (rules.production vs rules.debug).

But at the end, this method is poisoning all our recipes with that kind of
ugly controls [...]

Do you think this is the right way to manage this? Can you suggest a
better/more convenient way to deal with this?

Thank you in advance! :)

--000000000000f74758056a430f39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello forum.</div><div><br></div><div>=
We are trying to use yocto in a continuous integration environment with dif=
ferent (production vs debug)=C2=A0<span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">scenarios.</spa=
n></div><div><br></div><div>To setup a given scenario (production vs debug)=
 we are using something like this:</div><div><br></div><div>=C2=A0 =C2=A0 $=
 SCENARIO=3Ddebug</div><div>=C2=A0 =C2=A0 $ MACHINE=3D&lt;machine&gt; DISTR=
O=3D&lt;distro&gt;-${SCENARIO} source ../../build-&lt;machine&gt;-<span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">${SCENARIO}</span></div><div>=C2=A0 =C2=A0 $ bitbake &lt;i=
mage&gt;-<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial;float:none;display:inline">${SCENARIO}</span></div><div><br></div><=
div>So we have different image recipes:</div><div><br></div><div>=C2=A0 =C2=
=A0 * <a href=3D"http://image-production.bb">image-production.bb</a></div><=
div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">=C2=A0 =C2=A0 * <a href=3D"http://image-debug=
.bb">image-debug.bb</a></span><br></div><div><br></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">Different distros:</span><br></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><br></span></div><div><span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 * distro-pr=
oduction.conf</span></div><div><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline"><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">=C2=A0 =C2=A0 * distro-debug.conf</span><br></span></div><div><br><=
/div><div>And different build directories:</div><div><br></div><div>=C2=A0 =
=C2=A0 * build-&lt;machine&gt;-production</div><div><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">=C2=A0 =C2=A0 * build-&lt;machine&gt;-debug</span><br></div><div><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">To optim=
ize space usage and compilation time, we setup a shared sstate cache and a =
shared directory for downloads.=C2=A0</span>This seems a good starting poin=
t.=C2=A0</div><div><br></div><div>However, things are getting complicated, =
because there is no way to exclude some recipes easily. For example, we don=
&#39;t want iptables installed on the debug image, but dependency chains in=
clude iptables by default even when declaring IMAGE_INSTALL_remove explicit=
ly. In this case we decided checking SCENARIO inside iptables_%.bbappend=C2=
=A0to decide what rules are installed on the image (rules.production vs rul=
es.debug).</div><div><br></div><div>But at the end, this method is poisonin=
g all our recipes with that kind of ugly controls [...]</div><div><br></div=
><div>Do you think this is the right way to manage this? Can you suggest a =
better/more convenient way to deal with this?</div><div><br></div><div>Than=
k you in advance! :)</div>
</div>

--000000000000f74758056a430f39--
