Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C45BE0051D
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 08:03:05 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id q59so6875475wes.34
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 08:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fJ4KZY/6134spioRphIwuvO0MB1U40SCmLJSh0niPug=;
	b=WKFBExr/pBUVSc1HDo5/3rpd6BnU96QLUYxCwP35sAT0dygFfYkzkBtI5waDF37nLb
	K71jvTjcoHx+fpHma7r58p3Lj5k37Yx/XbwHxuvgTeAtMUSG6/CDckb2ncRzWvq4A67T
	QQkS/BH6K6Shd79AYWoPWT9uSKlepejnsOuLp1YT7OXjBnK3NNneIP+z3EwSWO8lEv2b
	9yS3SeEOIt9nKdWJzLw4UCOGzv+flA0sGaoPxZHYlr5DPT2eHgn8SgOITdDv6nhMmUM6
	cKigT3dkSlQQuQA6xIwLnu2LIvHp4xZZ+WyZmPrDYgexAqsaT1xcbsBIw5NVNOLN9xKw
	ZLsQ==
X-Gm-Message-State: ALoCoQkEe/bc/6dq8le5ipmmgUCzlx5xiHUyv9EMpGARxYXGRlHPCJykZN3+ZLMMyCvLWAl/Hv22
X-Received: by 10.180.160.229 with SMTP id xn5mr13340379wib.62.1378825349722; 
	Tue, 10 Sep 2013 08:02:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.218.200 with HTTP; Tue, 10 Sep 2013 08:02:09 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F5F632C@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
	<17797116383D4341B029FDF34C22BF6A5D7F5F632C@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 10 Sep 2013 17:02:09 +0200
Message-ID: <CAP71WjyQa-Ozds+fQT=93+kTTdh33F4yW2NvZo8K1=hC=f2Uxw@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 10 Sep 2013 15:03:07 -0000
Content-Type: multipart/alternative; boundary=047d7b60408a41329a04e608cbe3

--047d7b60408a41329a04e608cbe3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 10, 2013 at 4:35 PM, Rohit2 Jindal <rohit2.jindal@aricent.com>w=
rote:

>  **
>
> Thanks for your prompt reply.****
>
> ** **
>
> Actually I am able to create my own SRC_URI on your guided lines as****
>
> #SRC_URI =3D "git://
> ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alpha;protocol=3Ds=
sh"**
> **
>
> But when do_fetch task starts executing it prompts me to input the
> passphrase for the same server when I am not able to pass . Please sugges=
t
> me is the way I mentioned the path is need to be modified or ****
>
> ** **
>
> There is something that enable me to pass password for git server ie
> username and password are possible to be passed as argument to git path o=
r
> some other way exist to give input to bitbake do_fetch task as runtime I
> don=92t think we can pass any input.****
>
> ** **
>
> Please suggest me the way.****
>
> ** **
>
>
you need to be able to use 'password-less' connection to your ssh server
that hosts the private trees. typically that means using a pair of SSH keys
(private/public).  if you are not familiar with that, i suggest you read
this first:

http://www.debian-administration.org/article/SSH_with_authentication_key_in=
stead_of_password

with such a method SSH authentication can be done 'automatically' without
the need for prompting user's passwd.

if you actually decide to use passphrase for your SSH (private) key, you
might be able to setup SSH agent to do that, but you would need to do that
each time you log, iirc. But i am not familiar with this, to be honest. You
can read more about that here:

http://www.solomonson.com/content/setting-ssh-agent-ask-passphrase-only-onc=
e

cheers

--047d7b60408a41329a04e608cbe3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Sep 10, 2013 at 4:35 PM, Rohit2 Jindal <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal@aric=
ent.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><p class=3D""><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">=A0<u></u></span></p>


<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Thanks for your prompt reply.<u></u><u></u></span></p=
>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Actually I am able to create my own SRC_URI on your g=
uided lines as<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">#SRC_URI =3D &quot;git://<a href=3D"http://ep-code.xy=
z.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alpha;protocol=3Dssh" target=
=3D"_blank">ep-code.xyz.com/sysconfig;branch=3Dxxx-ep-20130823-3.0-alpha;pr=
otocol=3Dssh</a>&quot;<u></u><u></u></span></p>


<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">But when do_fetch task starts executing it prompts me=
 to input the passphrase for the same server when I am not able to pass . P=
lease suggest me is the way
 I mentioned the path is need to be modified or <u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">There is something that enable me to pass password fo=
r git server ie username and password are possible to be passed as argument=
 to git path or some other way
 exist to give input to bitbake do_fetch task as runtime I don=92t think we=
 can pass any input.<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Please suggest me the way.<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""></p></blockquote></div><br>you need to be able to use &#39;pa=
ssword-less&#39; connection to your ssh server that hosts the private trees=
. typically that means using a pair of SSH keys (private/public). =A0if you=
 are not familiar with that, i suggest you read this first:=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"=
http://www.debian-administration.org/article/SSH_with_authentication_key_in=
stead_of_password">http://www.debian-administration.org/article/SSH_with_au=
thentication_key_instead_of_password</a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">with such a=
 method SSH authentication can be done &#39;automatically&#39; without the =
need for prompting user&#39;s passwd.</div><div class=3D"gmail_extra"><br><=
/div>

<div class=3D"gmail_extra">if you actually decide to use passphrase for you=
r SSH (private) key, you might be able to setup SSH agent to do that, but y=
ou would need to do that each time you log, iirc. But i am not familiar wit=
h this, to be honest. You can read more about that here:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"=
http://www.solomonson.com/content/setting-ssh-agent-ask-passphrase-only-onc=
e">http://www.solomonson.com/content/setting-ssh-agent-ask-passphrase-only-=
once</a><br>

</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">cheer=
s</div><div class=3D"gmail_extra"><br></div></div>

--047d7b60408a41329a04e608cbe3--
