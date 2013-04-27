Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CA75E0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 10:21:19 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id 10so2983909pdc.14
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 10:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=8i6jdDPRbZ/YMt4rsexfkvZW1o5TbMEDYOpKAhz5xs8=;
	b=XcW9TQENSFS+lgqSHFnrT1biLHcqH+zyqoZfJ5AdrfWmpORzp6D3nssKsgDL5qGaHV
	JGPoP66pHa9m5d4XbJRjNgDbALnqmXTUHE0fPSMfUzewqatKUzHkkFcb5exTF5aaXJyc
	Tro7rjZxZ0aPkJs2OH4l8pruZEeIbLQEkBWT4ta+dY/mFI4pnyBRn8EG4y54KRBTaE1Y
	aJTEECFt3Uezq84qejPcciTHveYNgwSydtscLOn409bVTSued4djpxU6rfQ/BvpHg4IG
	MYjx4BVLj4qtb1I45sfz5hPeMTfrC9JvpYJIJSy7hira3kVlXhahlABwYvjS2jtuuBFb
	Um7Q==
X-Received: by 10.68.130.194 with SMTP id og2mr65095400pbb.101.1367083279248; 
	Sat, 27 Apr 2013 10:21:19 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	dr6sm17979327pac.11.2013.04.27.10.21.17 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 27 Apr 2013 10:21:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1367080224.63818.YahooMailNeo@web161503.mail.bf1.yahoo.com>
Date: Sat, 27 Apr 2013 10:21:16 -0700
Message-Id: <FC66ADE8-A836-49F2-AA2C-34137FEE9FBE@gmail.com>
References: <1367080224.63818.YahooMailNeo@web161503.mail.bf1.yahoo.com>
To: Peter Tornel <petertornel@yahoo.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to clear all?
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
X-List-Received-Date: Sat, 27 Apr 2013 17:21:19 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A0656FB3-7E70-4D96-B668-A0C4FB0DE714"

--Apple-Mail=_A0656FB3-7E70-4D96-B668-A0C4FB0DE714
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 27, 2013, at 9:30 AM, Peter Tornel <petertornel@yahoo.com> wrote:

>    =20
> Hello,
>=20
> Sometimes I feel the need to clean everything before building, but I =
don't want to just rm my project directory since I want to keep my conf =
files.  What bitbake command can I run to get back to a pristine state =
(same as after creating project directory and modifying my conf files)? =20=


rm -rf tmp/
configurations are kept outside. tmp/

>=20
> Regards,
>=20
> Peter
>   =20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A0656FB3-7E70-4D96-B668-A0C4FB0DE714
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Apr 27, 2013, at 9:30 AM, Peter Tornel &lt;<a =
href=3D"mailto:petertornel@yahoo.com">petertornel@yahoo.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div><div style=3D"background-color: rgb(255, 255, 255); =
font-family: 'times new roman', 'new york', times, serif; font-size: =
12pt; position: static; z-index: auto; "><span =
class=3D"tab">&nbsp;&nbsp;&nbsp; =
</span><br><div>Hello,</div><div><br><span></span></div><div =
style=3D"font-size: 16px; font-family: 'times new roman', 'new york', =
times, serif; background-color: transparent; font-style: normal; =
"><span>Sometimes
 I feel the need to clean everything before building, but I don't want=20=

to just rm my project directory since I want to keep my conf =
files.&nbsp; </span><span>What
 bitbake command can I run to get back to a pristine state (same as=20
after creating project directory and modifying my conf files)?&nbsp; =
<br></span></div></div></div></blockquote><div><br></div><div>rm -rf =
tmp/</div><div>configurations are kept outside. =
tmp/</div><br><blockquote type=3D"cite"><div><div =
style=3D"background-color: rgb(255, 255, 255); font-family: 'times new =
roman', 'new york', times, serif; font-size: 12pt; position: static; =
z-index: auto; "><div style=3D"font-size: 16px; font-family: 'times new =
roman', 'new york', times, serif; background-color: transparent; =
font-style: normal; "><br><span></span></div><div style=3D"font-size: =
16px; font-family: 'times new roman', 'new york', times, serif; =
background-color: transparent; font-style: normal; =
"><span>Regards,</span></div><div style=3D"font-size: 16px; font-family: =
'times new roman', 'new york', times, serif; background-color: =
transparent; font-style: normal; "><span><br>Peter</span></div><span =
class=3D"tab">&nbsp;&nbsp;&nbsp; =
</span><div></div></div></div>____________________________________________=
___<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_A0656FB3-7E70-4D96-B668-A0C4FB0DE714--
