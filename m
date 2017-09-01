Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC69BE00CC6; Thu, 31 Aug 2017 20:17:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A3D9E00CAD
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 20:17:22 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id t75so11756507oie.3
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 20:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wyc5nFj9Tp4gpi19qDxm+epThTOUcshxI5OGpx3i+5Y=;
	b=W45EhJNZyaxJ87zhppXnyPFAWJx8w/j+DDwysGff5dujOOcU4QocGj+cYArSx0aveq
	tyKRZq5mYI3E0BDwukDic1EbzlmOOXwWjvpZpq++WWg1JsSFsQno9XDlBWH1aBtis0o2
	b6suXPtTHslfitM0j6upf+kXNXTgYEinA4x9gasNw4+6PJ4ek7U3Bs68gRozwqrmrwKb
	T9INjjrrO8ByUGe+qsLL7cTR6g2zzYU8ujATMnpqqip9kZIveETsSptfyHEkTPKOUPMs
	67ueCKFeZE6IggTqoib+hd/NfiqBTy2tXeCUQdODvaLOEvoIV7dLODIR22aVobsPcSTv
	bKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wyc5nFj9Tp4gpi19qDxm+epThTOUcshxI5OGpx3i+5Y=;
	b=EEBIbWNe8ZJb42aLLRxWm4IvPMVAe8wt/J7gARboL9mDxg6fHpwnGmK0Eo1pwiWJBd
	V3XY5/VUlVYvPxSk1g0pqdQNf+4jXdadlRX2X+21JnsaOoPQIsr0g3nHrZkme3rGXC91
	gRnQyy1Lmik+naywOoIKUybfqBK7kK2L5IkKooGyUf8uWKJeYab2XBXiirAtCCdQ80oA
	xnylLjZplpNcYe0JWAI6Dq6kyfp8KtzvkpOLR3T/4Hdw6SM/sy9gxttZfmDiwS0sMQ98
	wF8kbOd39jh7tCDNQJryqsHwO8ySoM5az//7+7BWLjn3YklzfHaTOWXBGvtWLsdE8Kdo
	l8Cg==
X-Gm-Message-State: AHPjjUgbDFEySlC9wEsY5mZjXJ0NU6cgeF0FGp7bkbkGKYE+RYN1PsnA
	wZBdwr2DK43oTiHmxqSLkvQo9qYebrla
X-Google-Smtp-Source: ADKCNb67Icqz0tr7ExTa39oPZv1kT+iAne4IwIhKfWrNaXJD2Bppt1X57nL2MwgS+YBqVqH5K97U65Eq3VW44ITY3Aw=
X-Received: by 10.202.83.203 with SMTP id h194mr553872oib.98.1504235842171;
	Thu, 31 Aug 2017 20:17:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.131 with HTTP; Thu, 31 Aug 2017 20:17:21 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Fri, 1 Sep 2017 05:17:21 +0200
Message-ID: <CABFXn3Err-9RR=1mc0UpU-FzpzOWr6dYEyyvc1vd4hcCqn1Kdw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: apt-key not found
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
X-List-Received-Date: Fri, 01 Sep 2017 03:17:24 -0000
Content-Type: multipart/alternative; boundary="001a113d5232081d630558183397"

--001a113d5232081d630558183397
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have built an image with deb package support and for authorization of the
incoming packages, i have to transfer a public key to the image and do the
command apt-key add <keyFile>. i do this for the first time the image is
booting but i want to automate the process when i build the image.
i have already created recipe which copy the public key to image rootfs
under /deb_key/keyFile then i tried to perform apt-key command in the image
recipe with

ROOTFS_POSTPROCESS_COMMAND +=3D "addkeyfile;"
>
>
>> addkeyfile(){
>
> apt-key add ${D}/deb_key/keyFile
>
> }
>
>
but it gives me an error log of

>
>    1. | NOTE: Executing empty_var_volatile ...
>    2. | DEBUG: Executing shell function empty_var_volatile
>    3. | DEBUG: Shell function empty_var_volatile finished
>    4. | NOTE: Executing addkeyfile ...
>    5. | DEBUG: Executing shell function addkeyfile
>    6. |
>    /home/yahia/Desktop/elinux_dev/bake_factory/poky-pyro-17.0.1/build/tmp=
/work/qemux86_64-poky-linux/apt-image/1.0-r0/temp/run.addkeyfile.12587:
>    108:
>    /home/yahia/Desktop/elinux_dev/bake_factory/poky-pyro-17.0.1/build/tmp=
/work/qemux86_64-poky-linux/apt-image/1.0-r0/temp/run.addkeyfile.12587:
>    apt-key: not found
>    7. | WARNING: exit code 127 from a shell command.
>    8. | DEBUG: Python function do_rootfs finished
>    9. | ERROR: Function failed: addkeyfile (log file is located at
>    /home/yahia/Desktop/elinux_dev/bake_factory/poky-pyro-17.0.1/build/tmp=
/work/qemux86_64-poky-linux/apt-image/1.0-r0/temp/log.do_rootfs.12587)
>    10. ERROR: Task
>    (/home/yahia/Desktop/elinux_dev/bake_factory/poky-pyro-17.0.1/meta-myl=
ayer/recipes-example/images/apt-image.bb:do_rootfs)
>    failed with exit code '1'
>
>
So, what the right way to do this ?

Thanks,

--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113d5232081d630558183397
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/db1c2b3=
943690e481fdbcfa579b953c84b5cc206.png?u=3D1822760">Hi,<div>I have built an =
image with deb package support and for authorization of the incoming packag=
es, i have to transfer a public key to the image and do the command apt-key=
 add &lt;keyFile&gt;. i do this for the first time the image is booting but=
 i want to automate the process when i build the image.=C2=A0</div><div>i h=
ave already created recipe which copy the public key to image rootfs under =
/deb_key/keyFile then i tried to perform apt-key command in the image recip=
e with=C2=A0</div><div><br></div><div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">ROOTFS_POSTP=
ROCESS_COMMAND +=3D &quot;addkeyfile;&quot;</blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br></blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">addkeyfile(){</blockquote><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><span class=3D"gmail-Apple-tab-span" style=3D"whi=
te-space:pre">	</span>apt-key add ${D}/deb_key/keyFile</blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">}</blockquote></blockquote><div><=
br></div><div>but it gives me an error log of=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><ol class=3D"gmail-text" style=3D"color:rg=
b(172,172,172);background-image:initial;background-position:initial;backgro=
und-size:initial;background-repeat:initial;background-origin:initial;backgr=
ound-clip:initial;background-color:rgb(247,247,247);margin:0px;padding:0px =
0px 0px 55px;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&=
quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Ver=
a Sans Mono&quot;,monospace,serif;font-size:12px"><li class=3D"gmail-li1" s=
tyle=3D"background-image:initial;background-position:initial;background-siz=
e:initial;background-repeat:initial;background-origin:initial;background-cl=
ip:initial;background-color:rgb(255,255,255)"><div class=3D"gmail-de1" styl=
e=3D"padding:0px 8px;vertical-align:top;color:rgb(51,51,51);border-left:1px=
 solid rgb(221,221,221);background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial">| NOTE: Executing empty_var_volatile ...</div><=
/li><li class=3D"gmail-li1" style=3D"background-image:initial;background-po=
sition:initial;background-size:initial;background-repeat:initial;background=
-origin:initial;background-clip:initial;background-color:rgb(255,255,255)">=
<div class=3D"gmail-de1" style=3D"padding:0px 8px;vertical-align:top;color:=
rgb(51,51,51);border-left:1px solid rgb(221,221,221);background-image:initi=
al;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial">| DEBUG: Executing=
 shell function empty_var_volatile</div></li><li class=3D"gmail-li1" style=
=3D"background-image:initial;background-position:initial;background-size:in=
itial;background-repeat:initial;background-origin:initial;background-clip:i=
nitial;background-color:rgb(255,255,255)"><div class=3D"gmail-de1" style=3D=
"padding:0px 8px;vertical-align:top;color:rgb(51,51,51);border-left:1px sol=
id rgb(221,221,221);background-image:initial;background-position:initial;ba=
ckground-size:initial;background-repeat:initial;background-origin:initial;b=
ackground-clip:initial">| DEBUG: Shell function empty_var_volatile finished=
</div></li><li class=3D"gmail-li2" style=3D"background-image:initial;backgr=
ound-position:initial;background-size:initial;background-repeat:initial;bac=
kground-origin:initial;background-clip:initial;background-color:rgb(255,255=
,255)"><div class=3D"gmail-de2" style=3D"padding:0px 8px;vertical-align:top=
;color:rgb(51,51,51);border-left:1px solid rgb(221,221,221);background-imag=
e:initial;background-position:initial;background-size:initial;background-re=
peat:initial;background-origin:initial;background-clip:initial">| NOTE: Exe=
cuting addkeyfile ...</div></li><li class=3D"gmail-li1" style=3D"background=
-image:initial;background-position:initial;background-size:initial;backgrou=
nd-repeat:initial;background-origin:initial;background-clip:initial;backgro=
und-color:rgb(255,255,255)"><div class=3D"gmail-de1" style=3D"padding:0px 8=
px;vertical-align:top;color:rgb(51,51,51);border-left:1px solid rgb(221,221=
,221);background-image:initial;background-position:initial;background-size:=
initial;background-repeat:initial;background-origin:initial;background-clip=
:initial">| DEBUG: Executing shell function addkeyfile</div></li><li class=
=3D"gmail-li1" style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;background-color:rgb(255,255,255)"><div class=3D=
"gmail-de1" style=3D"padding:0px 8px;vertical-align:top;color:rgb(51,51,51)=
;border-left:1px solid rgb(221,221,221);background-image:initial;background=
-position:initial;background-size:initial;background-repeat:initial;backgro=
und-origin:initial;background-clip:initial">| /home/yahia/Desktop/elinux_de=
v/bake_factory/poky-pyro-17.0.1/build/tmp/work/qemux86_64-poky-linux/apt-im=
age/1.0-r0/temp/run.addkeyfile.12587: 108: /home/yahia/Desktop/elinux_dev/b=
ake_factory/poky-pyro-17.0.1/build/tmp/work/qemux86_64-poky-linux/apt-image=
/1.0-r0/temp/run.addkeyfile.12587: apt-key: not found</div></li><li class=
=3D"gmail-li1" style=3D"background-image:initial;background-position:initia=
l;background-size:initial;background-repeat:initial;background-origin:initi=
al;background-clip:initial;background-color:rgb(255,255,255)"><div class=3D=
"gmail-de1" style=3D"padding:0px 8px;vertical-align:top;color:rgb(51,51,51)=
;border-left:1px solid rgb(221,221,221);background-image:initial;background=
-position:initial;background-size:initial;background-repeat:initial;backgro=
und-origin:initial;background-clip:initial">| WARNING: exit code 127 from a=
 shell command.</div></li><li class=3D"gmail-li1" style=3D"background-image=
:initial;background-position:initial;background-size:initial;background-rep=
eat:initial;background-origin:initial;background-clip:initial;background-co=
lor:rgb(255,255,255)"><div class=3D"gmail-de1" style=3D"padding:0px 8px;ver=
tical-align:top;color:rgb(51,51,51);border-left:1px solid rgb(221,221,221);=
background-image:initial;background-position:initial;background-size:initia=
l;background-repeat:initial;background-origin:initial;background-clip:initi=
al">| DEBUG: Python function do_rootfs finished</div></li><li class=3D"gmai=
l-li2" style=3D"background-image:initial;background-position:initial;backgr=
ound-size:initial;background-repeat:initial;background-origin:initial;backg=
round-clip:initial;background-color:rgb(255,255,255)"><div class=3D"gmail-d=
e2" style=3D"padding:0px 8px;vertical-align:top;color:rgb(51,51,51);border-=
left:1px solid rgb(221,221,221);background-image:initial;background-positio=
n:initial;background-size:initial;background-repeat:initial;background-orig=
in:initial;background-clip:initial">| ERROR: Function failed: addkeyfile (l=
og file is located at /home/yahia/Desktop/elinux_dev/bake_factory/poky-pyro=
-17.0.1/build/tmp/work/qemux86_64-poky-linux/apt-image/1.0-r0/temp/log.do_r=
ootfs.12587)</div></li><li class=3D"gmail-li1" style=3D"background-image:in=
itial;background-position:initial;background-size:initial;background-repeat=
:initial;background-origin:initial;background-clip:initial;background-color=
:rgb(255,255,255)"><div class=3D"gmail-de1" style=3D"padding:0px 8px;vertic=
al-align:top;color:rgb(51,51,51);border-left:1px solid rgb(221,221,221);bac=
kground-image:initial;background-position:initial;background-size:initial;b=
ackground-repeat:initial;background-origin:initial;background-clip:initial;=
background-color:rgb(248,248,248)">ERROR: Task (/home/yahia/Desktop/elinux_=
dev/bake_factory/poky-pyro-17.0.1/meta-mylayer/recipes-example/images/apt-i=
mage.bb:do_rootfs) failed with exit code &#39;1&#39;</div></li></ol></block=
quote><div><br></div><div>So, what the right way to do this ?</div><div><br=
></div><div>Thanks,</div><div><br></div>-- <br><div class=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777=
" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=
=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:=
rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;f=
ont-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-ser=
if, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated from =
Faculty of Engineering - Electronics and Communications Department at Cairo=
 University.</span></font><br></div><div style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div=
><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferr=
er" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-ser=
if,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></f=
ont></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans=
-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0<=
/span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener n=
oreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,s=
ans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</spa=
n></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>

--001a113d5232081d630558183397--
