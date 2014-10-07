Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29A7EE007EB; Tue,  7 Oct 2014 03:52:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
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
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA98E00786
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 03:52:29 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id rd18so5039509iec.36
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 03:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=NBDZS6zmG9pXGDEOQFroQjpSuvwvSSIqSlsWAdkeVDM=;
	b=N33krCeZjT/CKpUI94sdlcp3v1LwMJ+DyY7dC9Awy64FZlJIR556Uso6413lufaoHA
	RsLm2GloLftaSDpF9DaWsWFs3yZU21JjUJvXwooNRAqLF554DZyzgUxcDTvm7doW+Cg1
	unnFXad/X7PCPLWp95nNI1AAAHDRDcOQhKarmbNc5CXX+IBpgDo8WeIE+dflLp9x1vLg
	vw/HBgwxIvgI1koSzHaoJYhyj6dc05tPmvyjGpQ88nu7BljgXTEUvR92wRojYvzfu2I2
	wNe6mf8VDc/vXfeRip8hNrj/wHnQea6rJ+BPyFG6u1pXdIIetYDXMWRn+YKOqtjMv0AR
	kP1w==
X-Received: by 10.50.138.194 with SMTP id qs2mr31232249igb.4.1412679148979;
	Tue, 07 Oct 2014 03:52:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.211 with HTTP; Tue, 7 Oct 2014 03:52:08 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 7 Oct 2014 16:22:08 +0530
Message-ID: <CA+Z6RkXbTdG_pHSZeKd=tZgB6Tfdj78Na+CgTiROCC6d4GZ62A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Factors responsible for decision of package deployment path
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
X-List-Received-Date: Tue, 07 Oct 2014 10:52:43 -0000
Content-Type: multipart/alternative; boundary=089e01183c90db4c0f0504d2fefc

--089e01183c90db4c0f0504d2fefc
Content-Type: text/plain; charset=UTF-8

Hi,

I am unable to understand how toolchain decides libraries and header files
deployment into SDK  path. Which factors of recipe decides about the path
to deploy header file, libraries or binary data into SDK?

I am facing a issue. I have a package which is deploying header files and
libraries into machine path like "
/opt/poky/1.3.2/sysroots/i686-pokysdk-linux/". Expected behavior is to get
them in target folder path like "
/opt/poky/1.3.2/sysroots/armv6-vfp-poky-linux-gnueabi/"..
Any help would be great!!

Thanks
Navani

--089e01183c90db4c0f0504d2fefc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(68,84,106)">Hi,=C2=A0</span><div><span style=3D"font-size:11pt=
;font-family:Calibri,sans-serif;color:rgb(68,84,106)"><br></span></div><div=
><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(68,=
84,106)">I am unable to understand how toolchain decides libraries and head=
er files deployment into SDK =C2=A0path.=C2=A0</span><span style=3D"color:r=
gb(68,84,106);font-family:Calibri,sans-serif;font-size:11pt">Which factors =
of recipe decides about the path to deploy header file, libraries or binary=
 data into SDK?</span></div><div><span style=3D"color:rgb(68,84,106);font-f=
amily:Calibri,sans-serif;font-size:11pt"><br></span></div><div><font color=
=3D"#44546a" face=3D"Calibri, sans-serif"><span style=3D"font-size:11pt">I =
am facing a issue. I have a package which is deploying header files and lib=
raries into machine path like &quot;</span><span style=3D"font-size:15px">/=
opt/poky/1.3.2/sysroots/i686-pokysdk-linux/&quot;</span></font><span style=
=3D"color:rgb(68,84,106);font-family:Calibri,sans-serif;font-size:11pt">. E=
xpected=C2=A0</span><span style=3D"color:rgb(68,84,106);font-family:Calibri=
,sans-serif;font-size:15px">behavior=C2=A0</span><span style=3D"color:rgb(6=
8,84,106);font-family:Calibri,sans-serif;font-size:11pt">is to get them in =
target folder path like &quot;</span><span style=3D"color:rgb(68,84,106);fo=
nt-family:Calibri,sans-serif;font-size:15px">/opt/poky/1.3.2/sysroots/armv6=
-vfp-poky-linux-gnueabi/&quot;..=C2=A0</span></div><div><span style=3D"colo=
r:rgb(68,84,106);font-family:Calibri,sans-serif;font-size:15px">Any help wo=
uld be great!!</span></div><div><span style=3D"color:rgb(68,84,106);font-fa=
mily:Calibri,sans-serif;font-size:15px"><br></span></div><div><span style=
=3D"color:rgb(68,84,106);font-family:Calibri,sans-serif;font-size:15px">Tha=
nks</span></div><div><span style=3D"color:rgb(68,84,106);font-family:Calibr=
i,sans-serif;font-size:15px">Navani</span></div></div>

--089e01183c90db4c0f0504d2fefc--
