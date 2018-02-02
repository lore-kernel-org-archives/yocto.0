Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 183AAE00E1E; Fri,  2 Feb 2018 13:26:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D04FE005B1
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 13:26:52 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id m11so24372002iob.2
	for <yocto@yoctoproject.org>; Fri, 02 Feb 2018 13:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PO1kRDkiH4aC9UrVAn8BgZgcyBPaYXSOya3qumAriaI=;
	b=ynGFY3bgoFwlokkTuAWaF8FAtDTj9ovR5FmbqAT96UHvEYkrjYdtH+Tjh5RN++IwOO
	fm6dJIDTMv/HWsBnONJ+OzUWSNoXI2lz+hxyFoGiivTlt7zSPrpoZX2lMa7mNqjP59Vx
	GBUjbuzpNYMUzgMY9Bp8TGlw4je4lDh+n44sQU9PJLHc8YYZJNbAQPoKtBHwyDAX9tsm
	41AiWyoNmVMF9F+dodmZmm+/wDnK6/jc6ZugcwYOhY6Tox5arf638YhZ/CxuB8IsIDs6
	nvUUNkE7tn1yExlOGmej+18S25mYfA+U1P1c2W5cOG8Qcy6arJ4d+9WrYjwVe040N19l
	4//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PO1kRDkiH4aC9UrVAn8BgZgcyBPaYXSOya3qumAriaI=;
	b=Iv3rdsPWIVwT8o/GtTed63YSvSfLqPGGpPUktg+UHcHEpPSn5khH5x26OionRC9L91
	Wu00hK6P0hOR7nBBcPdovj+skdjavGpMNvBUhdHtzfzg1aRY4DbSD41629DuWmekZQDO
	avH7koQcsWAmJi6ATrYphV4b9Y33N063vy0493faRP1q0aeY3TwAKffvo2VXFrttVMG/
	AnxwYx877UkI3NKZFnLxJIdLjFA4E81BmXVQfRRlow5tylTPfHGaPxhc4xX5ab+9gik7
	yujQoJKSdHxzB6DHnlNpYIU7ndp9a/iU+ZX1W3An1hsI//N50lr+wuj+s1QyGzGM6h6u
	U3bg==
X-Gm-Message-State: AKwxytdTXDRnfkm+yJNIVAeL0iznmxcjMdIdLtt/ENlcdG+N10ubqAB3
	Rdqg5g8xlyQ2B6TmHscn5Nq3m9dDse8x07ScgAWXtA==
X-Google-Smtp-Source: AH8x226Lqa9X8Xyd65+B3dex/e6bt20POn+i3crR8ezNlMDCEWbNeCBoE4jHeIVLpeUBcqpsx/wHuuPYsmY5XuYwUvc=
X-Received: by 10.107.32.19 with SMTP id g19mr44075834iog.217.1517606812561;
	Fri, 02 Feb 2018 13:26:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Fri, 2 Feb 2018 13:26:32 -0800 (PST)
In-Reply-To: <ae397a5a4a71435ebc45de0e88ed40b6@atgrzsw1693.avl01.avlcorp.lan>
References: <ae397a5a4a71435ebc45de0e88ed40b6@atgrzsw1693.avl01.avlcorp.lan>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Feb 2018 21:26:32 +0000
Message-ID: <CAJTo0LaQpDBgZ5GUdDZvk45j_f+MJcmn8kL6k8as+64nGxwO5A@mail.gmail.com>
To: "Staffa, Christian AVL/DE" <Christian.Staffa@avl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: db-native fetching error
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
X-List-Received-Date: Fri, 02 Feb 2018 21:26:54 -0000
Content-Type: multipart/alternative; boundary="001a1141a2a4f8bf7d0564415eda"

--001a1141a2a4f8bf7d0564415eda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 2 February 2018 at 14:44, Staffa, Christian AVL/DE <
Christian.Staffa@avl.com> wrote:

> I am trying to setup a yocto build environment. I am using win 10 with WS=
L
> and an ubuntu environment.
>
> After coping with the company proxy to route the traffic properly I have
> an error with db-native package now
>
> ERROR: db-native-1_5.3.28-r1 do_fetch: Checksum failure fetching
> http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz
> ERROR: db-native-1_5.3.28-r1 do_fetch: Fetcher failure for URL: '
> http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz'. Checksum
> mismatch!
> File: '/home/cs/dev/poky/build/downloads/db-5.3.28.tar.gz' has md5
> checksum 73ef4c55d184a55807bee8d4c4a5cd40 when
> b99454564d5b4479750567031d66fe24 was expected
>

$ wget http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz
...
2018-02-02 21:22:47 (2.10 MB/s) - =E2=80=98db-5.3.28.tar.gz=E2=80=99 saved
[35090431/35090431]

$ md5sum db-5.3.28.tar.gz
b99454564d5b4479750567031d66fe24  db-5.3.28.tar.gz

Works for me.  I blame either your corporate proxy (wouldn't be the first
time a proxy has rewritten files as they get transferred) or some weird
interaction with WSL.

Isolate the parts.  If you download that file with a Windows browser, what
is the md5?  What if you download it using wget in WSL? Use WSL on another
network that doesn't use your corporate proxy to see what md5 that file has=
.

Ross

--001a1141a2a4f8bf7d0564415eda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 February 2018 at 14:44, Staffa, Christian AVL/DE <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:Christian.Staffa@avl.com" target=3D"_bl=
ank">Christian.Staffa@avl.com</a>&gt;</span> wrote:<br><div class=3D"gmail_=
extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">I am trying to setup a=
 yocto build environment. I am using win 10 with WSL and an ubuntu environm=
ent.<br>
<br>
After coping with the company proxy to route the traffic properly I have an=
 error with db-native package now<br><br>ERROR: db-native-1_5.3.28-r1 do_fe=
tch: Checksum failure fetching <a href=3D"http://download.oracle.com/berkel=
ey-db/db-5.3.28.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://downloa=
d.oracle.com/<wbr>berkeley-db/db-5.3.28.tar.gz</a><br>
ERROR: db-native-1_5.3.28-r1 do_fetch: Fetcher failure for URL: &#39;<a hre=
f=3D"http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz" rel=3D"norefe=
rrer" target=3D"_blank">http://download.oracle.com/<wbr>berkeley-db/db-5.3.=
28.tar.gz</a>&#39;. Checksum mismatch!<br>
File: &#39;/home/cs/dev/poky/build/<wbr>downloads/db-5.3.28.tar.gz&#39; has=
 md5 checksum 73ef4c55d184a55807bee8d4c4a5cd<wbr>40 when b99454564d5b447975=
0567031d66fe<wbr>24 was expected<br></blockquote><div><br></div><div>$ wget=
 <a href=3D"http://download.oracle.com/berkeley-db/db-5.3.28.tar.gz">http:/=
/download.oracle.com/berkeley-db/db-5.3.28.tar.gz</a></div><div>...</div><d=
iv>2018-02-02 21:22:47 (2.10 MB/s) - =E2=80=98db-5.3.28.tar.gz=E2=80=99 sav=
ed [35090431/35090431]</div><div><br></div><div>$ md5sum db-5.3.28.tar.gz<b=
r></div><div>b99454564d5b4479750567031d66fe24 =C2=A0db-5.3.28.tar.gz=C2=A0<=
/div><div><br></div><div>Works for me.=C2=A0 I blame either your corporate =
proxy (wouldn&#39;t be the first time a proxy has rewritten files as they g=
et transferred) or some weird interaction with WSL.</div><div><br></div><di=
v>Isolate the parts.=C2=A0 If you download that file with a Windows browser=
, what is the md5?=C2=A0 What if you download it using wget in WSL? Use WSL=
 on another network that doesn&#39;t use your corporate proxy to see what m=
d5 that file has.</div><div><br></div><div>Ross</div></div></div></div>

--001a1141a2a4f8bf7d0564415eda--
