Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9346E00C5F; Tue,  4 Dec 2018 08:44:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D468E003E1
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 08:44:18 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id a6so15434372itl.4
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 08:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version; bh=yvSZkbCEiedLih7A4/WDUm/h3FM1GFEZ50Yovw8dtjQ=;
	b=QhdihBaXPBIk2AUnLTzYNbXy56dgCMqpv9tgI+c1UCQ6ic+zGDc/PnoB93AhcjGAEx
	er2EP4chPHompUHnpLh+gLv/OR8ieIoY9i4vBds6K3PUE3qduE/haZ+j2W+SJzuWyFFt
	FY2Eohr6y7M9wnHW7keiEro5/E/vPyJkA7Im3unrpcGZbiaQ7FwBx3kFB4+Sw0r0YxUX
	akJRRtb2uzKK/8Q4x70kZb9lqSQ2/OSBwRD0zzjtupos2WPCR10iNa4nG/ZF+O+X3IxJ
	wbOH253CyJSE0tWYjjnLZgPBRMbRvjkgztqp8rH9QzEeJV8A2moD9HAhYsPYk1BPienu
	SkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version;
	bh=yvSZkbCEiedLih7A4/WDUm/h3FM1GFEZ50Yovw8dtjQ=;
	b=ByeTYVeWizHx1AyjAzTEfOo/8tqZZ1KmjlErlvWAAoAZBc/MghswVCftyTl0r24T5K
	MCNNKJR8mj6Z3eDfQBwn8NfFMoByZ+YrNtSAdbTLPHqb5tpelenr10w1/snHDzC1lh/M
	RNDUp0CvUe5pXKb07mhnreZSy1WvwR77MQtSL3Gf9qFBNlBTVMoAExr1zfdQYni7Sx8U
	e/Mg4SvY0R8swgIuRDROKCJ4Lm61dUfda3gSb8BVwZj5to86lOpf1XYv2jD4kJsxOvsD
	tVboxknVquZQb+0KZJDAlnXQvUnMGSB6Z8AL+1V/fyQSaClqSSqXLpBrAiauGL8pMzG/
	O3Qw==
X-Gm-Message-State: AA+aEWaVyGzR83/Z9NJXNgW7l4TvxRIMqqXjY1lzSWs/XXmnEnQy76Wx
	0JzJXZGK4mI/RrgI+CwxKZw=
X-Google-Smtp-Source: AFSGD/WcoUrkEghXo8rnrtrbkX+OYPsZYPSxJWLzLJDbEG9VXv1+6eSse+h2O846GA2FLQ6931tbHw==
X-Received: by 2002:a24:53c9:: with SMTP id n192mr11670669itb.8.1543941857517; 
	Tue, 04 Dec 2018 08:44:17 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	y8sm5615019ita.5.2018.12.04.08.44.11
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 04 Dec 2018 08:44:12 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <60a92b2f51dc9156466abc8f89c8fa9d34f8cf3b.camel@gmail.com>
To: John Unland <unlandj2012@gmail.com>, yocto@yoctoproject.org
Date: Tue, 04 Dec 2018 10:44:11 -0600
In-Reply-To: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
References: <CAODQEo1qPsWW1apiEwzgey8cJitsbODDdg2VK4Bmi3s8wLV83A@mail.gmail.com>
User-Agent: Evolution 3.30.1 (3.30.1-1.fc29) 
Mime-Version: 1.0
Subject: Re: Using ICECC to build Thud issue
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
X-List-Received-Date: Tue, 04 Dec 2018 16:44:18 -0000
Content-Type: multipart/alternative; boundary="=-1Kn+nZdEY49K5KhjAkGo"

--=-1Kn+nZdEY49K5KhjAkGo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-12-04 at 10:28 -0600, John Unland wrote:
> Hello everyone, 
> 
> I've been playing around with the icecc.bbclass and a small 2 node
> icecream cluster. At the moment I'm able to compile core-image-
> minimal using Rocko however when building on Thud I get a error (See
> Github gist for error and local.conf config):
> 
> https://gist.github.com/junland/d932bd63ca2c871b99e64eda543ca2fe

Fixed on master:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1da297d35411e923ca3b6accdd37074f5182f019https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca
They should probably be backported to thud.
> My build OS is Ubuntu 18.04 (Workstation) and CentOS 7 (Second build
> server), also I've gotten the same error on a Debian 9 and Oracle
> Linux VM so I highly doubt it's something that has todo with the OS.
> I'd also like to add what the workflow I'm using:
> 
> (As regular user)
> 1. $> git clone -b thud git://git.yoctoproject.org/poky.git
> 
> 2. $> source oe-init-build-env
> 
> 3. (Edit local.conf and place "PARALLEL_MAKE = "-j 10"" and "INHERIT
> += "icecc"" at the end of the config file)
> 
> 4. $> source oe-init-build-env
> 
> 5. $> bitbake core-image-minimal
> 
> Is there something I'm missing here? I've read the section of the
> manual that explains on how to use icecream but it hasn't really
> solved my problem. Any help would be great!
> 
> Thanks!
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-1Kn+nZdEY49K5KhjAkGo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Tue, 2018-12-04 at 10:28 -0600, John Unland wrote:</div><blockq=
uote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf soli=
d;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello everyone, <br><=
br>I've been playing around with the icecc.bbclass and a small 2 node icecr=
eam cluster. At the moment I'm able to compile core-image-minimal using Roc=
ko however when building on Thud I get a error (See Github gist for error a=
nd local.conf config):<br><br><a href=3D"https://gist.github.com/junland/d9=
32bd63ca2c871b99e64eda543ca2fe">https://gist.github.com/junland/d932bd63ca2=
c871b99e64eda543ca2fe</a><br></div></div></blockquote><div><br></div><div>F=
ixed on master:</div><div><a href=3D"https://git.yoctoproject.org/cgit/cgit=
.cgi/poky/commit/?id=3D1da297d35411e923ca3b6accdd37074f5182f019">https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1da297d35411e923ca3b6acc=
dd37074f5182f019</a></div><div><a href=3D"https://git.yoctoproject.org/cgit=
/cgit.cgi/poky/commit/?id=3D5dd8df08c51bc4cc1ef0d5be7656c9bfcf938cca">https=
://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D5dd8df08c51bc4cc1ef=
0d5be7656c9bfcf938cca</a></div><div><br></div><div>They should probably be =
backported to thud.</div><div><br></div><blockquote type=3D"cite" style=3D"=
margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><br>My build OS is Ubuntu 18.04 (Workstation) and=
 CentOS 7 (Second build server), also I've gotten the same error on a Debia=
n 9 and Oracle Linux VM so I highly doubt it's something that has todo with=
 the OS. I'd also like to add what the workflow I'm using:<br><br>(As regul=
ar user)<br>1. $&gt; git clone -b thud git://<a href=3D"http://git.yoctopro=
ject.org/poky.git">git.yoctoproject.org/poky.git</a><br><br>2. $&gt; source=
 oe-init-build-env<br><br>3. (Edit local.conf and place "PARALLEL_MAKE =3D =
"-j 10"" and "INHERIT +=3D "icecc"" at the end of the config file)<br><br>4=
. $&gt; source oe-init-build-env<br><br>5. $&gt; bitbake core-image-minimal=
<br><br>Is there something I'm missing here? I've read the section of the m=
anual that explains on how to use icecream but it hasn't really solved my p=
roblem. Any help would be great!<br><br>Thanks!<br></div></div>
</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span></div></body></ht=
ml>

--=-1Kn+nZdEY49K5KhjAkGo--
