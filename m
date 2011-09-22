Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8308E0051B
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2011 03:02:03 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:6853
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1R6g6P-0000q9-Jo; Thu, 22 Sep 2011 11:01:57 +0100
Message-Id: <46B7D268-1D40-4C3A-A4BA-CEA21A26F689@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: =?GB2312?B?sszV8b78?= <caizhenjun@insigma.com.cn>
In-Reply-To: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC846B9@WX-ExchMB.insigma.com.cn>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 22 Sep 2011 11:01:54 +0100
References: <DBA535A2DF028041BB0EB6E8A5E8C6CE2D1EC846B9@WX-ExchMB.insigma.com.cn>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky consume all memory on redhat-based linux in virtualbox
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Sep 2011 10:02:04 -0000
Content-Type: multipart/alternative; boundary=Apple-Mail-72--923901424

--Apple-Mail-72--923901424
Content-Type: text/plain;
	charset=GB2312;
	format=flowed;
	delsp=yes
Content-Transfer-Encoding: quoted-printable

On 22 Sep 2011, at 10:28, =B2=CC=D5=F1=BE=FC wrote:

> Hi all,
>          When I tried to build image on Fedora and Scientific , I =20
> encountered same problem that poky consume all memory and then =20
> system became very slow. The poky process also moved on hardly. =20
> After killing poky process, memory wasn=A1=AFt freed. I had noticed =
that =20
> some process like =A1=B0cc1=A1=B1  brought up by poky process were =
still =20
> alive. Anybody know what=A1=AFs the problem?

How much memory do you have? I've seen the build process peak at =20
something like 2.5GB. I started running with a VM that only had 1GB =20
allocated and had the same problem as this caused lots of swap file =20
activity. It was mainly the compiler/linker that was using most of the =20=

memory, which would explain why you see 'cc1'. Don't forget that the =20
build process fires off multiple processes.


--Apple-Mail-72--923901424
Content-Type: text/html;
	charset=GB2312
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div>On 22 Sep 2011, at =
10:28, =B2=CC=D5=F1=BE=FC wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple"><div class=3D"WordSection1" =
style=3D"page: WordSection1; "><div style=3D"margin-top: 0cm; =
margin-right: 0cm; margin-left: 0cm; margin-bottom: 0.0001pt; =
text-align: justify; font-size: 10.5pt; font-family: Calibri, =
sans-serif; "><span lang=3D"EN-US">Hi all,<o:p></o:p></span></div><div =
style=3D"margin-top: 0cm; margin-right: 0cm; margin-left: 0cm; =
margin-bottom: 0.0001pt; text-align: justify; font-size: 10.5pt; =
font-family: Calibri, sans-serif; "><span =
lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; When I =
tried to build image on Fedora and Scientific , I encountered same =
problem that poky consume all memory and then system became very slow. =
The poky process also moved on hardly. After killing poky process, =
memory wasn=A1=AFt freed. I had noticed that some process like =
=A1=B0cc1=A1=B1&nbsp; brought up by poky process were still alive. =
Anybody know what=A1=AFs the =
problem?<o:p></o:p></span></div></div></div></span></blockquote><br></div>=
<div>How much memory do you have? I've seen the build process peak at =
something like 2.5GB. I started running with a VM that only had 1GB =
allocated and had the same problem as this caused lots of swap file =
activity. It was mainly the compiler/linker that was using most of the =
memory, which would explain why you see 'cc1'. Don't forget that the =
build process fires off multiple processes.</div><br></body></html>=

--Apple-Mail-72--923901424--
