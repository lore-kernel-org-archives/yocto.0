Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AFCAE00A81; Mon, 10 Aug 2015 23:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7659EE00A3B
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 23:59:35 -0700 (PDT)
Received: by qgdd90 with SMTP id d90so32955336qgd.3
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 23:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XC9gfvFcixOqVps5CzzNnDkJvDkiogyBUTdmMDJ+J8I=;
	b=GY/nN2OumTkiUPy5UQ+gN0XNVob1lCWkdSPbxnsyqjz8HvQ+z+JrVCsawm06oUnI4S
	E3P4LjghMr627Tn008s0qhljgAVip2Ktkwv/5C2VuTcXNFH58QMihZfClr/IZzIsDE3O
	ajqGHyl61HQtWw8ESnvfbJnL3JEzoNITjXWMrfmLUjmkp4KChZQmI2mPOEmkxbou0Y/d
	PHYNPxsV8PiTCHgukSA5HyP0JWXYti4SxBHxW1HBR3gsFwaieFl5BTsqjPOnNYslSMdc
	IuQqtmEKP1p99Isq50O0P62lg73QhDW71eStNlOjm6zXJdhDNvu9/JXrO/+f1oJ768am
	XIgQ==
MIME-Version: 1.0
X-Received: by 10.140.34.33 with SMTP id k30mr45923466qgk.56.1439276374566;
	Mon, 10 Aug 2015 23:59:34 -0700 (PDT)
Received: by 10.140.43.196 with HTTP; Mon, 10 Aug 2015 23:59:34 -0700 (PDT)
In-Reply-To: <CACTu1LiPeGST8FQZREC_Tyryuehbg8r_Ur43j1qKrtRy53RJxA@mail.gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
	<CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
	<F8159D01-CD91-48A9-AA7B-EFE99FFDDCEB@gmail.com>
	<CACTu1Lj+9WOZXh2-P5pWeaGwn_CPxBt5bcQSB3dTAJnK5Yc=Og@mail.gmail.com>
	<CAMKF1soKzVgxH4HjJOPVVkEwaAm95=YWw0ncZ+0DW25oz5VnAA@mail.gmail.com>
	<CACTu1LiPeGST8FQZREC_Tyryuehbg8r_Ur43j1qKrtRy53RJxA@mail.gmail.com>
Date: Tue, 11 Aug 2015 08:59:34 +0200
Message-ID: <CACTu1LiZu_ahYN6-qOi9eFAMvqwdM+Q0+ENZZre0FXVngssmow@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Tue, 11 Aug 2015 06:59:36 -0000
Content-Type: multipart/alternative; boundary=001a11c0b2ce0a420c051d03a5db

--001a11c0b2ce0a420c051d03a5db
Content-Type: text/plain; charset=UTF-8

Maybe this is of interest, here is my solution:

In CMakeLists.txt

SET(BITBAKE_SYSROOT "" CACHE STRING "Description")
SET(SOCI_INCLUDEDIR ${BITBAKE_SYSROOT}/usr/include/soci)

So if BITBAKE_SYSROOT is not passed the compiler takes /usr/include/soci as
usual. My *.bb contains:

EXTRA_OECMAKE = "-DBITBAKE_SYSROOT:STRING=${STAGING_DIR_HOST}"

So when using bitbake the appropriate prefix will be added.



2015-08-11 8:36 GMT+02:00 yocto yocto <yoctomailinglist@gmail.com>:

> But not within CMakeLists.txt? At least this is not working, cmake is
> handling "=" as a normal character. I guess I have to pass a parameter
> within my *.bb to cmake containing the sysroot path
>
> 2015-08-10 22:36 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Mon, Aug 10, 2015 at 12:08 PM, yocto yocto
>> <yoctomailinglist@gmail.com> wrote:
>> > SET(SOCI_INCLUDEDIR
>> >
>> /home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroots/edison/usr/include/soci)
>> >
>> > everything worked fine. Is there any way to get the path
>> >
>> "/home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sysroots/edison/"
>> > within CMakeLists.txt automatically?
>>
>> you can use =/usr/include/soci which will prepend sysroot automatically.
>>
>
>

--001a11c0b2ce0a420c051d03a5db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe this is of interest, here is my solution:<div><br></=
div><div>In CMakeLists.txt</div><div><br></div><div><div>SET(BITBAKE_SYSROO=
T &quot;&quot; CACHE STRING &quot;Description&quot;)</div><div>SET(SOCI_INC=
LUDEDIR ${BITBAKE_SYSROOT}/usr/include/soci)</div></div><div><br></div><div=
>So if BITBAKE_SYSROOT is not passed the compiler takes /usr/include/soci a=
s usual. My *.bb contains:</div><div><br></div><div>EXTRA_OECMAKE =3D &quot=
;-DBITBAKE_SYSROOT:STRING=3D${STAGING_DIR_HOST}&quot;<br></div><div><br></d=
iv><div>So when using bitbake the appropriate prefix will be added.=C2=A0</=
div><div><div><br></div><div><br></div></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2015-08-11 8:36 GMT+02:00 yocto yocto <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:yoctomailinglist@gmail.com" target=3D"=
_blank">yoctomailinglist@gmail.com</a>&gt;</span>:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">But not within CMakeLists.txt? At least this is =
not working, cmake is handling &quot;=3D&quot; as a normal character. I gue=
ss I have to pass a parameter within my *.bb to cmake containing the sysroo=
t path</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">2015-08-10 22:36 GMT+02:00 Khem Raj <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">r=
aj.khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>O=
n Mon, Aug 10, 2015 at 12:08 PM, yocto yocto<br>
&lt;<a href=3D"mailto:yoctomailinglist@gmail.com" target=3D"_blank">yoctoma=
ilinglist@gmail.com</a>&gt; wrote:<br>
&gt; SET(SOCI_INCLUDEDIR<br>
&gt; /home/my-PC/development/2015-08-04_edison-src/edison-src/build/tmp/sys=
roots/edison/usr/include/soci)<br>
&gt;<br>
&gt; everything worked fine. Is there any way to get the path<br>
&gt; &quot;/home/my-PC/development/2015-08-04_edison-src/edison-src/build/t=
mp/sysroots/edison/&quot;<br>
&gt; within CMakeLists.txt automatically?<br>
<br>
</span>you can use =3D/usr/include/soci which will prepend sysroot automati=
cally.<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c0b2ce0a420c051d03a5db--
