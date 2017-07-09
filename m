Return-Path: <rafaelrodrigues.machado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5307CE00C14; Sat,  8 Jul 2017 19:15:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rafaelrodrigues.machado[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.54 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 044BBE00C06
	for <yocto@yoctoproject.org>; Sat,  8 Jul 2017 19:15:44 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id r126so33568358vkg.0
	for <yocto@yoctoproject.org>; Sat, 08 Jul 2017 19:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gv5pD/Z4yb3iwuPJaxrSmeO8YrH4Zxjr8FKx8QoPx2c=;
	b=qRINkNDTJx/ACKEdIEmTcJjBzU/fi6yN3qokA4rbsuCYS09c45fU6xZWJDAz8pkc2m
	mJStJM5BDFfJ8PNJuHTXrbSVT9RSMwwHIpeTA0PajpUxIuzod7+2vZJlLdvsi6/UsBNQ
	IsYLaaaNIvXsLDeNZLtmEtRHRqeoQ/Tnqann2UFtKeggIH1vrg+XldKMMrLpUakb3wnE
	MChhJvS3uZMEgn3U0lAeg7Z2qcyrZ6gF4WZNisfrtnMAlaVFmig4lLWTvZKpMrIIjgj2
	nz4nEbTOSPp93zaOnc+y9wkCcSOoArCooSZHsVOWbhP7ZCUL7KjQdm8rGTX9gNSAkGDI
	YcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gv5pD/Z4yb3iwuPJaxrSmeO8YrH4Zxjr8FKx8QoPx2c=;
	b=A9VkMF2C7p4CgQ3uhWCDxsA/9tsJgEsX+RzDYfqymzJZnqIrW3ig3E4ciDoYiHmIbh
	l0WMGJYm2DJzgVJTjpUapt5sZ/VFurGJgDxM1qCFU/UA8Kl72YYZ1xC68yIoLKzhU052
	0iFV4FvxO/QaF5dgUsNyOiQaCxhC7hDjiMVs6BJlkjOAYUE90XZTwyfxwcrbSRdp68kn
	jgklNkunad8R84uhuMGPA5jxL61fxkAyc1hTgQrVAvsf0Gt2FJv7CEiF9ndDJFL7IOa3
	qO1X5GhvBy9S2/MHctm9S5Kl8hPrRP6gCR5BjYz/m/UmmmVD7LDq+siPR79EMknBtVbk
	PZmQ==
X-Gm-Message-State: AIVw111i6kSq3QwbOCL0TjSs5S2MGjkGizGf2ONzEYAUqI9YEvJjNLq/
	GpPz+rmCUwymDhQ1Sp2ngyfMRCqwXA==
X-Received: by 10.31.65.87 with SMTP id o84mr4439229vka.7.1499566543836; Sat,
	08 Jul 2017 19:15:43 -0700 (PDT)
MIME-Version: 1.0
From: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Date: Sun, 09 Jul 2017 02:15:33 +0000
Message-ID: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto build at Kali
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
X-List-Received-Date: Sun, 09 Jul 2017 02:15:46 -0000
Content-Type: multipart/alternative; boundary="001a114db3d22999770553d90bd2"

--001a114db3d22999770553d90bd2
Content-Type: text/plain; charset="UTF-8"

Hi everyone

I need your help. For the last several days, I've being trying to compile a
yocto based project with no success. So in case someone can help me this
would be really nice :)

Follow the details of the problem.
On my development system, I have installed a kali linux (debian)  4.9.0.

http://cdimage.kali.org/kali-2017.1/kali-linux-2017.1-amd64.iso

The project I'm trying to compile is from SECO, for the Q974 som.
It can be found here:

http://www.seco.com/prods/other/form-factor/qseven-7-x-7/q7-974.html

At this page you can find the BSP (board support package), but it cannot be
done, as described at the .pdf available at the BSP package. Doing the same
steps at debian, ubuntu and fedora, everything works fine, but at Kali it
fails with the message:

"File "/media/sda3/open_env/openembedded-core/bitbake/bin/bitbake", line 34,
in <module>

    import bb
  File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/__init__.py",
line 77, in <module>
    from bb import fetch2 as fetch
  File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/fetch2/__init__.py",
line 38, in <module>
    import bb.persist_data, bb.utils
  File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/persist_data.py",
line 35, in <module>


It seems to be the same problem as described at these two posts:

https://stackoverflow.com/questions/36395831/importerror-no-module-named-bb
http://www.oesf.org/forum/index.php?showtopic=12006

But no resolution works as expected.
Does anyone can try to help?

Thanks and Regards
Rafael Machado

--001a114db3d22999770553d90bd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone<div><br></div><div>I need your help. For the l=
ast several days, I&#39;ve being trying to compile a yocto based project wi=
th no success. So in case someone can help me this would be really nice :)<=
/div><div><br></div><div>Follow the details of the problem.</div><div>On my=
 development system, I have installed a kali linux (debian) =C2=A04.9.0.</d=
iv><div><br></div><div><a href=3D"http://cdimage.kali.org/kali-2017.1/kali-=
linux-2017.1-amd64.iso">http://cdimage.kali.org/kali-2017.1/kali-linux-2017=
.1-amd64.iso</a><br></div><div><br></div><div>The project I&#39;m trying to=
 compile is from SECO, for the Q974 som.</div><div>It can be found here: =
=C2=A0</div><div><br></div><div><a href=3D"http://www.seco.com/prods/other/=
form-factor/qseven-7-x-7/q7-974.html">http://www.seco.com/prods/other/form-=
factor/qseven-7-x-7/q7-974.html</a><br></div><div><br></div><div>At this pa=
ge you can find the BSP (board support package), but it cannot be done, as =
described at the .pdf available at the BSP package. Doing the same steps at=
 debian, ubuntu and fedora, everything works fine, but at Kali it fails wit=
h the message:</div><div><br></div><div>&quot;<span class=3D"inbox-inbox-ty=
p" style=3D"font-family:inherit;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;white-space:inherit;background-color:rgb(239,240,241);font=
-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inherit;line-h=
eight:inherit;vertical-align:baseline;color:rgb(43,145,175)">File</span><sp=
an class=3D"inbox-inbox-pln" style=3D"font-family:inherit;font-style:inheri=
t;font-variant:inherit;font-weight:inherit;white-space:inherit;background-c=
olor:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;border:0px;f=
ont-stretch:inherit;line-height:inherit;vertical-align:baseline;color:rgb(4=
8,51,54)"> </span><span class=3D"inbox-inbox-str" style=3D"font-family:inhe=
rit;font-style:inherit;font-variant:inherit;font-weight:inherit;white-space=
:inherit;background-color:rgb(239,240,241);font-size:inherit;margin:0px;pad=
ding:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-align=
:baseline;color:rgb(125,39,39)">&quot;/media/sda3/open_env/openembedded-cor=
e/bitbake/bin/bitbake&quot;</span><span class=3D"inbox-inbox-pun" style=3D"=
font-family:inherit;font-style:inherit;font-variant:inherit;font-weight:inh=
erit;white-space:inherit;background-color:rgb(239,240,241);font-size:inheri=
t;margin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:inheri=
t;vertical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"inbox=
-inbox-pln" style=3D"font-family:inherit;font-style:inherit;font-variant:in=
herit;font-weight:inherit;white-space:inherit;background-color:rgb(239,240,=
241);font-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inher=
it;line-height:inherit;vertical-align:baseline;color:rgb(48,51,54)"> line <=
/span><span class=3D"inbox-inbox-lit" style=3D"font-family:inherit;font-sty=
le:inherit;font-variant:inherit;font-weight:inherit;white-space:inherit;bac=
kground-color:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;bor=
der:0px;font-stretch:inherit;line-height:inherit;vertical-align:baseline;co=
lor:rgb(125,39,39)">34</span><span class=3D"inbox-inbox-pun" style=3D"font-=
family:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;=
white-space:inherit;background-color:rgb(239,240,241);font-size:inherit;mar=
gin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:inherit;ver=
tical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"inbox-inbo=
x-pln" style=3D"font-family:inherit;font-style:inherit;font-variant:inherit=
;font-weight:inherit;white-space:inherit;background-color:rgb(239,240,241);=
font-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inherit;li=
ne-height:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><spa=
n class=3D"inbox-inbox-kwd" style=3D"font-family:inherit;font-style:inherit=
;font-variant:inherit;font-weight:inherit;white-space:inherit;background-co=
lor:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;border:0px;fo=
nt-stretch:inherit;line-height:inherit;vertical-align:baseline;color:rgb(16=
,16,148)">in</span><span class=3D"inbox-inbox-pln" style=3D"font-family:inh=
erit;font-style:inherit;font-variant:inherit;font-weight:inherit;white-spac=
e:inherit;background-color:rgb(239,240,241);font-size:inherit;margin:0px;pa=
dding:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-alig=
n:baseline;color:rgb(48,51,54)"> </span><span class=3D"inbox-inbox-pun" sty=
le=3D"font-family:inherit;font-style:inherit;font-variant:inherit;font-weig=
ht:inherit;white-space:inherit;background-color:rgb(239,240,241);font-size:=
inherit;margin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:=
inherit;vertical-align:baseline;color:rgb(48,51,54)">&lt;</span><span class=
=3D"inbox-inbox-pln" style=3D"font-family:inherit;font-style:inherit;font-v=
ariant:inherit;font-weight:inherit;white-space:inherit;background-color:rgb=
(239,240,241);font-size:inherit;margin:0px;padding:0px;border:0px;font-stre=
tch:inherit;line-height:inherit;vertical-align:baseline;color:rgb(48,51,54)=
">module</span><span class=3D"inbox-inbox-pun" style=3D"font-family:inherit=
;font-style:inherit;font-variant:inherit;font-weight:inherit;white-space:in=
herit;background-color:rgb(239,240,241);font-size:inherit;margin:0px;paddin=
g:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-align:ba=
seline;color:rgb(48,51,54)">&gt;</span></div><pre class=3D"inbox-inbox-lang=
-py inbox-inbox-prettyprint inbox-inbox-prettyprinted" style=3D"margin-top:=
0px;margin-bottom:1em;padding:5px;border:0px;font-variant-numeric:inherit;f=
ont-stretch:inherit;font-size:13px;line-height:inherit;font-family:Consolas=
,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;=
DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier N=
ew&quot;,monospace,sans-serif;vertical-align:baseline;width:auto;max-height=
:600px;overflow:auto;background-color:rgb(239,240,241);color:rgb(57,51,24);=
word-wrap:normal"><code style=3D"margin:0px;padding:0px;border:0px;font-sty=
le:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;li=
ne-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&qu=
ot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstrea=
m Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertica=
l-align:baseline;white-space:inherit"><span class=3D"inbox-inbox-pln" style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:i=
nherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">   =
 </span><span class=3D"inbox-inbox-kwd" style=3D"margin:0px;padding:0px;bor=
der:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-st=
retch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ver=
tical-align:baseline;color:rgb(16,16,148)">import</span><span class=3D"inbo=
x-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inh=
erit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:=
rgb(48,51,54)"> bb
  </span><span class=3D"inbox-inbox-typ" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(43,145,175)">File</span><span class=3D"inbo=
x-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inh=
erit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:=
rgb(48,51,54)"> </span><span class=3D"inbox-inbox-str" style=3D"margin:0px;=
padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3=
/open_env/openembedded-core/bitbake/lib/bb/__init__.py&quot;</span><span cl=
ass=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-sty=
le:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;fo=
nt-size:inherit;line-height:inherit;font-family:inherit;vertical-align:base=
line;color:rgb(48,51,54)">,</span><span class=3D"inbox-inbox-pln" style=3D"=
margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;f=
ont-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inher=
it;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> line <=
/span><span class=3D"inbox-inbox-lit" style=3D"margin:0px;padding:0px;borde=
r:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stre=
tch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;verti=
cal-align:baseline;color:rgb(125,39,39)">77</span><span class=3D"inbox-inbo=
x-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-v=
ariant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;l=
ine-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48=
,51,54)">,</span><span class=3D"inbox-inbox-pln" style=3D"margin:0px;paddin=
g:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inheri=
t;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:in=
herit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=3D"i=
nbox-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:=
inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;col=
or:rgb(16,16,148)">in</span><span class=3D"inbox-inbox-pln" style=3D"margin=
:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-we=
ight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fon=
t-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span=
 class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-=
style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit=
;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:b=
aseline;color:rgb(48,51,54)">&lt;</span><span class=3D"inbox-inbox-pln" sty=
le=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inh=
erit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height=
:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">m=
odule</span><span class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit=
;vertical-align:baseline;color:rgb(48,51,54)">&gt;</span><span class=3D"inb=
ox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit=
;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:in=
herit;line-height:inherit;font-family:inherit;vertical-align:baseline;color=
:rgb(48,51,54)">
    </span><span class=3D"inbox-inbox-kwd" style=3D"margin:0px;padding:0px;=
border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font=
-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;=
vertical-align:baseline;color:rgb(16,16,148)">from</span><span class=3D"inb=
ox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit=
;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:in=
herit;line-height:inherit;font-family:inherit;vertical-align:baseline;color=
:rgb(48,51,54)"> bb </span><span class=3D"inbox-inbox-kwd" style=3D"margin:=
0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-wei=
ght:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font=
-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">import</span>=
<span class=3D"inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;=
font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:in=
herit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-al=
ign:baseline;color:rgb(48,51,54)"> fetch2 </span><span class=3D"inbox-inbox=
-kwd" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-va=
riant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(16,=
16,148)">as</span><span class=3D"inbox-inbox-pln" style=3D"margin:0px;paddi=
ng:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inher=
it;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:i=
nherit;vertical-align:baseline;color:rgb(48,51,54)"> fetch
  </span><span class=3D"inbox-inbox-typ" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(43,145,175)">File</span><span class=3D"inbo=
x-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inh=
erit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:=
rgb(48,51,54)"> </span><span class=3D"inbox-inbox-str" style=3D"margin:0px;=
padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3=
/open_env/openembedded-core/bitbake/lib/bb/fetch2/__init__.py&quot;</span><=
span class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inh=
erit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-ali=
gn:baseline;color:rgb(48,51,54)">,</span><span class=3D"inbox-inbox-pln" st=
yle=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:in=
herit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-heigh=
t:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">=
 line </span><span class=3D"inbox-inbox-lit" style=3D"margin:0px;padding:0p=
x;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fo=
nt-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inheri=
t;vertical-align:baseline;color:rgb(125,39,39)">38</span><span class=3D"inb=
ox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit=
;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:in=
herit;line-height:inherit;font-family:inherit;vertical-align:baseline;color=
:rgb(48,51,54)">,</span><span class=3D"inbox-inbox-pln" style=3D"margin:0px=
;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight=
:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fa=
mily:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span cla=
ss=3D"inbox-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;font-styl=
e:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;fon=
t-size:inherit;line-height:inherit;font-family:inherit;vertical-align:basel=
ine;color:rgb(16,16,148)">in</span><span class=3D"inbox-inbox-pln" style=3D=
"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;=
font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inhe=
rit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </spa=
n><span class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0p=
x;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:=
inherit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-=
align:baseline;color:rgb(48,51,54)">&lt;</span><span class=3D"inbox-inbox-p=
ln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-vari=
ant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line=
-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51=
,54)">module</span><span class=3D"inbox-inbox-pun" style=3D"margin:0px;padd=
ing:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inhe=
rit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:=
inherit;vertical-align:baseline;color:rgb(48,51,54)">&gt;</span><span class=
=3D"inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:=
inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-=
size:inherit;line-height:inherit;font-family:inherit;vertical-align:baselin=
e;color:rgb(48,51,54)">
    </span><span class=3D"inbox-inbox-kwd" style=3D"margin:0px;padding:0px;=
border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font=
-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;=
vertical-align:baseline;color:rgb(16,16,148)">import</span><span class=3D"i=
nbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:=
inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;col=
or:rgb(48,51,54)"> bb</span><span class=3D"inbox-inbox-pun" style=3D"margin=
:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-we=
ight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fon=
t-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">.</span><span=
 class=3D"inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-=
style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit=
;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:b=
aseline;color:rgb(48,51,54)">persist_data</span><span class=3D"inbox-inbox-=
pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-var=
iant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;lin=
e-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,5=
1,54)">,</span><span class=3D"inbox-inbox-pln" style=3D"margin:0px;padding:=
0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;=
font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inhe=
rit;vertical-align:baseline;color:rgb(48,51,54)"> bb</span><span class=3D"i=
nbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:=
inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;col=
or:rgb(48,51,54)">.</span><span class=3D"inbox-inbox-pln" style=3D"margin:0=
px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-=
family:inherit;vertical-align:baseline;color:rgb(48,51,54)">utils
  </span><span class=3D"inbox-inbox-typ" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(43,145,175)">File</span><span class=3D"inbo=
x-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inh=
erit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:=
rgb(48,51,54)"> </span><span class=3D"inbox-inbox-str" style=3D"margin:0px;=
padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3=
/open_env/openembedded-core/bitbake/lib/bb/persist_data.py&quot;</span><spa=
n class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font=
-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inheri=
t;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:=
baseline;color:rgb(48,51,54)">,</span><span class=3D"inbox-inbox-pln" style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:i=
nherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> li=
ne </span><span class=3D"inbox-inbox-lit" style=3D"margin:0px;padding:0px;b=
order:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-=
stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;v=
ertical-align:baseline;color:rgb(125,39,39)">35</span><span class=3D"inbox-=
inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;fo=
nt-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inher=
it;line-height:inherit;font-family:inherit;vertical-align:baseline;color:rg=
b(48,51,54)">,</span><span class=3D"inbox-inbox-pln" style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=
=3D"inbox-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;font-style:=
inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-=
size:inherit;line-height:inherit;font-family:inherit;vertical-align:baselin=
e;color:rgb(16,16,148)">in</span><span class=3D"inbox-inbox-pln" style=3D"m=
argin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fo=
nt-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inheri=
t;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span>=
<span class=3D"inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;=
font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:in=
herit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-al=
ign:baseline;color:rgb(48,51,54)">&lt;</span><span class=3D"inbox-inbox-pln=
" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-h=
eight:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,5=
4)">module</span><span class=3D"inbox-inbox-pun" style=3D"margin:0px;paddin=
g:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inheri=
t;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:in=
herit;vertical-align:baseline;color:rgb(48,51,54)">&gt;</span><span class=
=3D"inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:=
inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-=
size:inherit;line-height:inherit;font-family:inherit;vertical-align:baselin=
e;color:rgb(48,51,54)">=C2=A0</span></code></pre><div><br></div><div>It see=
ms to be the same problem as described at these two posts:</div><div><br></=
div><div><a href=3D"https://stackoverflow.com/questions/36395831/importerro=
r-no-module-named-bb">https://stackoverflow.com/questions/36395831/importer=
ror-no-module-named-bb</a><br></div><div><a href=3D"http://www.oesf.org/for=
um/index.php?showtopic=3D12006">http://www.oesf.org/forum/index.php?showtop=
ic=3D12006</a><br></div><div><br></div><div>But no resolution works as expe=
cted.</div><div>Does anyone can try to help?<br></div><div><br></div><div>T=
hanks and Regards</div><div>Rafael Machado</div></div>

--001a114db3d22999770553d90bd2--
