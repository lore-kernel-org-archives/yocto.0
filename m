Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E9D9E0144F
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:41:22 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2229703pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=fbxvnNg++dVfvjYKaq3VsnBvJuYvXj28R9KvQxO+nVY=;
	b=U4CsAaxLLO8URSUPHJLs5Tm8CHtU9vG9nWYBxRDluMs+KL9AT+mLEMsICW3YzlkcI6
	5G0O+wlex+chRFOqy46RJ2Iqtv0ctreHRvYdGiGUPL02dDfoxNRoE01bLT2mjgRVwr7e
	D0FMrxEcCqKrIJEaNQxi/p2sw1L8gWNKZ0aVnbGvPper0UiPJpeWItROPcH7Wn/e52OR
	92l4T9TL2SY/f5lJbw08CfQ5RxY1oU2aHiIqkTs+AZLigCK6XPo2pGpDOZGvGsTvdKZA
	lqkou7MAJ8bCKIAt/IQFLb9nCGuQCUlg4gHQxW8J/KWExhl2WfSNqSOldp8spkg1Vp8x
	/6CA==
Received: by 10.68.203.98 with SMTP id kp2mr303670pbc.132.1344026482296;
	Fri, 03 Aug 2012 13:41:22 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rz10sm3562075pbc.32.2012.08.03.13.41.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:41:21 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <BF2DA1C6-07F9-400C-B50D-1D79F5C41FBC@gmail.com>
Date: Sat, 4 Aug 2012 00:41:14 +0400
Message-Id: <273333E6-A5E5-4D9E-B272-9B70417E457A@gmail.com>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
	<CB6BA0F1-3C99-4A6A-84F6-6EFE4CCADAA4@gmail.com>
	<9CE15441-360F-4C37-919A-7677FF4FAF40@gmail.com>
	<BF2DA1C6-07F9-400C-B50D-1D79F5C41FBC@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Fri, 03 Aug 2012 20:41:22 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_55785409-4FEA-4187-89DA-C4B7D533E456"

--Apple-Mail=_55785409-4FEA-4187-89DA-C4B7D533E456
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 12:35 AM, Khem Raj wrote:

>=20
> On Aug 3, 2012, at 1:25 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>=20
>> The following patch appears to attempt to fix this issue. I think it =
should be included into oe-core master branch.=20
>>=20
>> =
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/026949.=
html
>=20
> on the contrary it creates the problem. Did you read my last reply

Sorry, I probably didn't read it in the correct order. I jumped to the =
previous message by mistake on the webpage.=20

Paul Eggleton's patch would probably fix it. If you run =
core-image-minimal and then meta-toolchain, we won't get the problem.

=
http://git.openembedded.org/openembedded-core/commit/meta/classes/populate=
_sdk_rpm.bbclass?id=3D8a71c1a507289d38a0f675584ab206abfa9aad9a

Elvis Dowson=

--Apple-Mail=_55785409-4FEA-4187-89DA-C4B7D533E456
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 12:35 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 3, 2012, at 1:25 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">The following patch appears to attempt =
to fix this issue. I think it should be included into oe-core master =
branch.&nbsp;</div><div style=3D"font-family: Helvetica; font-size: =
medium; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><br></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August=
/026949.html">http://lists.linuxtogo.org/pipermail/openembedded-core/2012-=
August/026949.html</a></div></blockquote></div><br><div>on the contrary =
it creates the problem. Did you read my last =
reply</div></div></blockquote></div><br><div>Sorry, I probably didn't =
read it in the correct order. I jumped to the previous message by =
mistake on the webpage.&nbsp;</div><div><br></div><div>Paul Eggleton's =
patch would probably fix it. If you run core-image-minimal and then =
meta-toolchain, we won't get the problem.</div><div><br></div><div><a =
href=3D"http://git.openembedded.org/openembedded-core/commit/meta/classes/=
populate_sdk_rpm.bbclass?id=3D8a71c1a507289d38a0f675584ab206abfa9aad9a">ht=
tp://git.openembedded.org/openembedded-core/commit/meta/classes/populate_s=
dk_rpm.bbclass?id=3D8a71c1a507289d38a0f675584ab206abfa9aad9a</a></div><div=
><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_55785409-4FEA-4187-89DA-C4B7D533E456--
