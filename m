Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39625E00BF7; Thu,  7 Nov 2019 13:56:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f54.google.com (mail-yw1-f54.google.com
	[209.85.161.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69EFBE00B8E
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 13:56:34 -0800 (PST)
Received: by mail-yw1-f54.google.com with SMTP id z67so1196470ywb.9
	for <yocto@yoctoproject.org>; Thu, 07 Nov 2019 13:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZD7fqh7oXTWbU8Uq5ddHypzxlUrG5zYEtc9w96D9Cmw=;
	b=BZI7zJ1B8xkvjBzMLpat3sZDg/YvDugFkv7SM52vNoxzZ6uQBsAihP4d8wTtsDI8Jm
	Mo1GqeOaNzRM/PRvNryuZnqCXXjEpc79omXN9scgWj1gjRqLaT+GVr7p8bfq0AWScdlU
	JMqUc6udVLFUQIT1MoVBf5oZuDuz3GZ+nZ7eXn5wF3I65MakvIVPnoVvyqndL8zixOGc
	pZnaftW0v7ryzhxtBO7mg6bFPmwgwFoBh5g6Qr1R7bidNGZGF2qQ4Z+eRvHzPcMNiAkh
	AP3N7OfzOkzOz5z8vPnL1dDJmx83/jRn9vO7xekMOb5nISQOrMdhnqlO7NlrwOBL716f
	Z7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZD7fqh7oXTWbU8Uq5ddHypzxlUrG5zYEtc9w96D9Cmw=;
	b=t0wVX5/2SR6gpPsCqlyrDiftBptwLXbZRKbnURnx9Ikh+IvrbXvZXZY58EXaRxit6G
	tU2T0qHhFJFPB63emQeSlbQlvb3WC4lzBDEtTDnfFdnkMtNuXSP8P711whgSDlsmLxko
	tCGWJ54i7Q7+Ih0a71UM7YM8tzyp1dGlJXWAFXdcWr6r7F9GeYFiyL0FYCKaJQSFCgLJ
	nVAxToNqs2l/1sY/m/7l9WEYUMtoC7u4sxfRLdds4AYdI5WV8kHQj5CDKFVTbkoTEoal
	imd3cX3U6QDHB2inBD2poz9lKW9oQs7+dG8p78CJOeQ2RIc1IYMxYZhkfemaOjQzARIa
	TUHw==
X-Gm-Message-State: APjAAAWt9tdpfyvrZJglT+9D7rOXMm/xRvTbXyFI9Z+WI9UU3Mib3O2w
	tvbJt9PhKdrsIhVq15z8SgKTSMfZO4sTZTWEWe4tCbwK
X-Google-Smtp-Source: APXvYqwy1ZGHAGcnOgEhWdbE4Tl7qFv+wgYqyfH7naZWHjJKspR3sp4wh3KXeBr/XvBcFh59jmgSeXtPtM64euvAAeM=
X-Received: by 2002:a81:98d2:: with SMTP id p201mr4552542ywg.155.1573163793413;
	Thu, 07 Nov 2019 13:56:33 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Thu, 7 Nov 2019 22:56:22 +0100
Message-ID: <CAKpuFddfD5SSeqXXPGP9jYC7Ha94R0XF30uRobkfQcaaeBRzMg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: nodejs npm qemux86_64
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
X-List-Received-Date: Thu, 07 Nov 2019 21:56:35 -0000
Content-Type: multipart/alternative; boundary="000000000000147b9a0596c8bd39"

--000000000000147b9a0596c8bd39
Content-Type: text/plain; charset="UTF-8"

Hi,

I have installation problems for npm recipes.
Using Yocto thud and machine=qemux86_64(wrlinux-x), but as I can see it
this concerns all
use of npm.bbclass for 64-bits system.

The problem seems to be the use of ${libdir} in npm.bbclass, when 64 bit is
used this expands to lib64.
npm install --prefix ${D}${prefix} installs to /usr/lib/node_modules which
is not
in sync with the following mv ${D}${libdir}/node_modules ${D}${libdir}/node.

I made an quick fix by replacing ${libdir} by ${prefix}/lib/, but as I see
it nodejs packages never is installed to lib64 in any other system as I can
find information about.

So the question is if the use of ${libdir} is bad and the path should
always be to /lib/?

Best regards
Jonas

--000000000000147b9a0596c8bd39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have installation problems for np=
m recipes.</div><div>Using Yocto thud and machine=3Dqemux86_64(wrlinux-x), =
but as I can see it this concerns all</div><div>use of npm.bbclass for 64-b=
its system.</div><div><br></div><div>The problem seems to be the use of=C2=
=A0<span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&=
quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre">=
${libdir} in npm.bbclass, when 64 bit is used this expands to lib64.</span>=
</div><div><span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Co=
nsolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-spa=
ce:pre">npm install --prefix ${D}${prefix} installs to /usr/lib/node_module=
s which is not </span></div><div><span style=3D"color:rgb(36,41,46);font-fa=
mily:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;fo=
nt-size:12px;white-space:pre">in sync with </span><span style=3D"color:rgb(=
36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,M=
enlo,monospace;font-size:12px;white-space:pre">the following </span><span s=
tyle=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liber=
ation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre">mv ${D}${l=
ibdir}/node_modules ${D}${libdir}/node.</span></div><div><span style=3D"col=
or:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&=
quot;,Menlo,monospace;font-size:12px;white-space:pre"><br></span></div><div=
><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono,=
 Menlo, monospace"><span style=3D"font-size:12px;white-space:pre">I made an=
 quick fix by replacing </span></font>${libdir} by ${prefix}/lib/, but as I=
 see it nodejs packages never is installed to lib64 in any other system as =
I can find information about.</div><div><br></div><div>So the question is i=
f the use of=C2=A0${libdir} is bad and the path should always=C2=A0be to /l=
ib/?</div><div><br></div><div>Best regards</div><div>Jonas</div><div><span =
style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Libe=
ration Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre"><br></spa=
n></div></div>

--000000000000147b9a0596c8bd39--
