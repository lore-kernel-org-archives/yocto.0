Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 562FAE00851; Sat, 24 Jan 2015 13:53:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8686E007B7
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 13:53:34 -0800 (PST)
Received: by mail-lb0-f169.google.com with SMTP id f15so2744929lbj.0
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 13:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=IzCv6nhurb3gsmTv1BJf4Gf9eBl48PP496jCtFFxqmY=;
	b=rNu036ic6b6K5uYG9L07pHS2pDT+eRJLv8+HOyQqcaEXH1cA2aV38WHpyv4ZNs6Ihy
	bZhzCqFZyV9ua5hpiwb6obW6Bs1FurdQJj+y7JQeKkIELU0ac/S+Po/QYRqPIbLQfwqD
	Iq9nUbhCEj8D2RPKOWI3llqyVO0YBzwkT/IUJMj5jG04ta1woeWG0JVfiWmhWHBJM7tc
	3CuG+sVr+kGHO2cKsMfuealicbL6Ixie8dUtlXL+dUcHTNzcrSoJez38s6Hax3RiBXd4
	QAGYueiSwTrtnwMUIof1SM9wBFcXan0BtHFds70XoMgb2vkonK+sL9Jk/tM6ApWgVtHJ
	9euA==
X-Received: by 10.152.179.236 with SMTP id dj12mr2401463lac.60.1422136413047; 
	Sat, 24 Jan 2015 13:53:33 -0800 (PST)
MIME-Version: 1.0
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
Date: Sat, 24 Jan 2015 21:53:32 +0000
Message-ID: <CAPhDKbHip+UWSpfckRBo+=QBWGnMg+Bq55DcUS77zkxNmZHd2A@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Build appliance
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
X-List-Received-Date: Sat, 24 Jan 2015 21:53:55 -0000
Content-Type: multipart/alternative; boundary=001a113496c2b8cff5050d6cef13

--001a113496c2b8cff5050d6cef13
Content-Type: text/plain; charset=UTF-8

Hi List,

I have attempted to define a custom build appliance image, with some degree
of success. The only problem is that I have noticed is there is still a
whole lot of `*-native` packages being pulled in when trying to build
something. So I have attempted adding all of those to my image and set
`ASSUME_PROVIDED` accordingly, it was still trying to build pseudo-native
and sqlite3-native for some reason... Ideally, I'd like to have all of the
`*-native` deps pre-installed on my build appliance's base filesystem, I
believe this should work and I shouldn't have to bootstrap
`tmp/work/sysroots/` and use the sysroot in `/usr` instead.

More specifically, I am trying to build a container image that would cover
the purpose of the build appliance and SDKs/ADTs, I think container could
simplify a lot for Yocto... I haven't fully figured it out yet, still
exploring the options, so hope the idea makes sense overall.

Cheers,
Ilya

--001a113496c2b8cff5050d6cef13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi List,<div><br></div><div>I have attempted to define a custom build appli=
ance image, with some degree of success. The only problem is that I have no=
ticed is there is still a whole lot of `*-native` packages being pulled in =
when trying to build something. So I have attempted adding all of those to =
my image and set `ASSUME_PROVIDED` accordingly, it was still trying to buil=
d pseudo-native and sqlite3-native for some reason... Ideally, I&#39;d like=
 to have all of the `*-native` deps pre-installed on my build appliance&#39=
;s base filesystem, I believe this should work and I shouldn&#39;t have to =
bootstrap `tmp/work/sysroots/` and use the sysroot in `/usr` instead.</div>=
<div><br></div><div>More specifically, I am trying to build a container ima=
ge that would cover the purpose of the build appliance and SDKs/ADTs, I thi=
nk container could simplify a lot for Yocto... I haven&#39;t fully figured =
it out yet, still exploring the options, so hope the idea makes sense overa=
ll.</div><div><br></div><div>Cheers,</div><div>Ilya=C2=A0</div>

--001a113496c2b8cff5050d6cef13--
