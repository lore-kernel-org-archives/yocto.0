Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B99E00E40; Sun, 11 Feb 2018 20:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23A46E00D7B
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 20:24:08 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id 15so17009695qkl.3
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 20:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9pv5g7UPABxjSE8GfCV2IR5PPrPJWeCxBR+oEdiClwQ=;
	b=D6i6ORtipdb+Fyp6YRcdcvxnb1gvvDme9koG5krf7svL87aOBttcxXyoLPdXauz+Gz
	kJHPmHlOjHEIseYzxQFs50Ojsgeyr/dRj5wLw4eGhE3Iib+TxHPo3A+6KwqQKA7NjIYZ
	/Ep3q/M4mom5pfFs1T8TL2F5Jgi0kZm6Cs/LbAfTOQKPlzODW01QG1T0aGIBFNm1r+72
	9sWWlMl0VTX+jZh+/D8d6jErv19xe7Yt0DJHi4ps6jX5c6Ve990u7H0Nan+AZskyWAwI
	ZAa2xthu1bXB72M+eBxvVWbROWIjmVNruvo1jwTSi0+j6aIbz8X9LYtCWkSPTF8o4CNQ
	eHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9pv5g7UPABxjSE8GfCV2IR5PPrPJWeCxBR+oEdiClwQ=;
	b=McGo8beqMsYKD3rzBO/iVsKQsjICx0yOl9zhxXIO9ffnirSU+4/uXhmKPEmofA/GH6
	rOrjy7wR/bbIe9yHOCuNP6vKrgl9Ntcsd09wkrc+aXymXdLsrjGR5wckPiLog+Koye+o
	Jp0HFkejKjSAlRbySg9R3yo+pdz9amGRj+fcsn5tGzhaqJXBLyEqstQtJm/usM2iYxv4
	mKNTt4hXiGCIC4b6SJcFlnq/M/SqDyr+k5GI9yn4Ukk8+sNE7qan9s+GF6PK4R1xJaQw
	l5rI2W2H0wjS+J6XpeOlOLmsc0wOoYmi0Vi1jlKKuY2/aaLREEUozZ4+muWTnj04R6LB
	wHRQ==
X-Gm-Message-State: APf1xPDrRSpsfofIu0+R4TRYKPSwuBDaUxBOUHShpFg7oAwoSOHxz6h6
	sPZi1mAYKw9eUe+M7GW3I+4iA7pcBagZc73A67pIrw==
X-Google-Smtp-Source: AH8x225olb+tfuyrpcBPxjfOmkmxG0funAGAxYUcwk7OlL6k5w8Yll95/bSbwmZc8NZT4laCNJcmyYSweHjok/J2o9o=
X-Received: by 10.55.105.129 with SMTP id e123mr16373645qkc.192.1518409447870; 
	Sun, 11 Feb 2018 20:24:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.103.210 with HTTP; Sun, 11 Feb 2018 20:24:07 -0800 (PST)
In-Reply-To: <CAHUNapSPmr7N5ZGbX5-hDewtjwLuU5tQEdOofz29wwBMSkuKaw@mail.gmail.com>
References: <CACfi_Z3y+gdLH04Ta3j+oGy4TU9J7YfFWoz=qavQfo6ntBmmSg@mail.gmail.com>
	<CAHUNapSPmr7N5ZGbX5-hDewtjwLuU5tQEdOofz29wwBMSkuKaw@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Sun, 11 Feb 2018 23:24:07 -0500
Message-ID: <CACfi_Z1=eAT2QUF1Ws+iCdU=wb_gP_MhuKfSdoVyDnVQp+PWPw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto uses UTC time for DATETIME instead of localtime
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
X-List-Received-Date: Mon, 12 Feb 2018 04:24:10 -0000
Content-Type: multipart/alternative; boundary="001a114872bac3992f0564fc3f32"

--001a114872bac3992f0564fc3f32
Content-Type: text/plain; charset="UTF-8"

Hi Trevor,

Thank you for taking the time to reply.

You are correct. I did ask this question this question before and
unfortunately the issue is not so much that the answer was incorrect but
that I realized that the answer did not entirely fix my original problem in
a global manner. ( BTW, I acknowledge that I should have asked the question
in this manner to begin with instead of just asking the same question all
over again. My apologizes.)

So the solution that I last received was the following:



*You can try to add this to conf/local.conf or redefine it in os-release.bb
<http://os-release.bb/>:BUILD_ID = "${@time.strftime('%Y-%m-%d
%H:%M:%S',time.localtime())}"*


And this did in fact produce a BUILD_ID in /etc/os-release that reflected
my local time however I later realized that the swu files produced by my
swupdate image recipe was still using the GMT version of DATETIME. This
lead me to believe that the original fix was not global enough and so
swupdate called DATETIME again and it got the GMT version.

And so I was worse off than before because my builds were producing
artifacts with timestamps that made it confused for my application
developers so I ended up removing the original fix in order to, at the very
least, have timestamps that were consistent.


After a bit of diggigin, i see that in poky/meta/conf/bitbake.conf,
DATETIME is defined as follows:

155 ##################################################################
156 # Date/time variables.
157 ##################################################################
158
159 DATE := "${@time.strftime('%Y%m%d',time.gmtime())}"
160 TIME := "${@time.strftime('%H%M%S',time.gmtime())}"
161 DATETIME = "${DATE}${TIME}"

I recall trying to putting the following my local.conf hoping this would
make the change global but it didn't seem to work.

DATE := "${@time.strftime('%Y%m%d',time.localtime())}"
TIME := "${@time.strftime('%H%M%S',time.localtime())}"


Can you suggest a different way of making this change?

Thank you,

Davis


On Sun, Feb 11, 2018 at 10:12 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> On Sun, Feb 11, 2018 at 7:30 PM, Davis Roman <davis.roman84@gmail.com>
> wrote:
>
>> I'm using the DATETIME variable to generate timestamps for my final
>> images however I see that yocto is using UTC time.
>>
>> I'd much prefer if yocto used localtime.
>>
>> Any suggestions on how to change this?
>>
>>
> You asked this same question almost exactly a month ago, and it was
> answered then. Was there something wrong with that answer?
>

--001a114872bac3992f0564fc3f32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor,<div><br></div><div>Thank you for taking the tim=
e to reply.</div><div><br></div><div>You are correct. I did ask this questi=
on this question before and unfortunately the issue is not so much that the=
 answer was incorrect but that I realized that the answer did not entirely =
fix my original problem in a global manner. ( BTW, I acknowledge that I sho=
uld have asked the question in this manner to begin with instead of just as=
king the same question all over again. My apologizes.)</div><div><br></div>=
<div>So the solution that I last received was the following:</div><div><br>=
</div><div><br></div><div><i><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:12.8px;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline">You can try to add this to conf/local=
.conf or redefine it in=C2=A0</span><a href=3D"http://os-release.bb/" rel=
=3D"noreferrer" target=3D"_blank" style=3D"color:rgb(17,85,204);font-family=
:arial,sans-serif;font-size:12.8px;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255)">os-release.bb</a><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:12.8px;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">:</span><br style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:12.8px;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline">BUILD_ID =3D &quot;${@ti=
me.strftime(&#39;%Y-%m-%d %H:%M:%S&#39;,time.localtime())}&quot;</span></i>=
<br></div><div><i><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:12.8px;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><br></span></i></div><div><i><span style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline"><br></span=
></i></div><div><span style=3D"font-size:12.8px">And this did in fact produ=
ce a BUILD_ID in /etc/os-release that reflected my local time however I lat=
er realized that the swu files produced by my swupdate image recipe was sti=
ll using the GMT version of DATETIME. This lead me to believe that the orig=
inal fix was not global enough and so swupdate called DATETIME again and it=
 got the GMT version.</span></div><div><span style=3D"font-size:12.8px"><br=
></span></div><div><span style=3D"font-size:12.8px">And so I was worse off =
than before because my builds were producing artifacts with timestamps that=
 made it confused for my application developers so I ended up removing the =
original fix in order to, at the very least, have timestamps that were cons=
istent.</span></div><div><span style=3D"font-size:12.8px"><br></span></div>=
<div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"=
font-size:12.8px">After a bit of diggigin, i see that in poky/meta/conf/bit=
bake.conf, DATETIME is defined as follows:</span></div><div><span style=3D"=
font-size:12.8px"><br></span></div><div><div><span style=3D"font-size:12.8p=
x">155 ##################################################################</=
span></div><div><span style=3D"font-size:12.8px">156 # Date/time variables.=
</span></div><div><span style=3D"font-size:12.8px">157 ####################=
##############################################</span></div><div><span style=
=3D"font-size:12.8px">158=C2=A0</span></div><div><span style=3D"font-size:1=
2.8px">159 DATE :=3D &quot;${@time.strftime(&#39;%Y%m%d&#39;,time.gmtime())=
}&quot;</span></div><div><span style=3D"font-size:12.8px">160 TIME :=3D &qu=
ot;${@time.strftime(&#39;%H%M%S&#39;,time.gmtime())}&quot;</span></div><div=
><span style=3D"font-size:12.8px">161 DATETIME =3D &quot;${DATE}${TIME}&quo=
t;</span></div><div><span style=3D"font-size:12.8px"><br></span></div><div>=
I recall trying to putting the following my local.conf hoping this would ma=
ke the change global but it didn&#39;t seem to work.</div><div><br></div><d=
iv><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
"><span style=3D"font-size:12.8px">DATE :=3D &quot;${@time.strftime(&#39;%Y=
%m%d&#39;,time.localtime())}&quot;</span></div><div style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial"><span style=3D"font-size:12.8=
px">TIME :=3D &quot;${@time.strftime(&#39;%H%M%S&#39;,time.localtime())}&qu=
ot;</span></div><br></div><div><br></div><div>Can you suggest a different w=
ay of making this change?</div><div><br></div><div>Thank you,</div><div><br=
></div><div>Davis</div><div><br></div></div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Sun, Feb 11, 2018 at 10:12 PM, Trevor W=
oerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=
=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><span class=3D"">On Sun, Feb 11, 2018 at 7:30 PM, Davis Roman <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:davis.roman84@gmail.com" target=3D"_bl=
ank">davis.roman84@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m using the DATETIME va=
riable to generate timestamps for my final images however I see that yocto =
is using UTC time.<div><br></div><div>I&#39;d much prefer if yocto used loc=
altime.</div><div><br></div><div>Any suggestions on how to change this?</di=
v><br></div></blockquote></span><div><br>You asked this same question almos=
t exactly a month ago, and it was answered then. Was there something wrong =
with that answer? <br></div></div></div></div>
</blockquote></div><br></div>

--001a114872bac3992f0564fc3f32--
