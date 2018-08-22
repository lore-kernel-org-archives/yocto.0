Return-Path: <paulsheer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3945E00460; Wed, 22 Aug 2018 08:28:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (paulsheer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53658E003C1
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:28:16 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id 8-v6so3873204oip.0
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cMnmUc8+NvcVxYu1+c1UV8XfK5aD2WLuYDWiHgwy0Y8=;
	b=X8SPvpfbWrYSDbkqozqnzIWNITmqxWHaODHcc3SzDuqHhdlAhsUaCbgd25z9SXvYtr
	aB5jeLd49QYBh15EitWZ9kIRliLWp3Nugdxe0Vw7debjgDe0nUSAnqo1/Oa/ABwOHs7Y
	beWY6bzQBqV4wFjZldr6ytoGf8AvsEZgq6R+D13fgi7vzI0AleM/xpt7ncKuUSRsM61m
	2lq/VbVNrqP/JgXKG85jo+zS+I6N3GkANq8bOn106iLWFMiGkzQ0uXowxSiJ3LMuF0Ll
	MV9WCh9iIZzeuLzT3+tAu5DLDUNeXAskYmyzFY/hEWYxzFu2MBJugwCOPEC7fRWypODA
	5jKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cMnmUc8+NvcVxYu1+c1UV8XfK5aD2WLuYDWiHgwy0Y8=;
	b=cCFZC93Hnmoh85ZwZv4iRtLhiuzFFhddBcvEqGg6om7SVX3LVGA5imIDCxRIKsVjOR
	u8kgxWtfuZoXtv6ly2Ay/XziEWNGclz3TEFQ3jZw+/6d5Fx8QnhOy0zKphL2RRq33wc4
	YrmlOZQnse8gpHXUJIXLnqcn6rmL8tVTEKkK7cSxU36qu/KTgAmCCGSVro90zsAXe3U2
	nSPkzjX2Guq6YfvBlF3kh4ktacn8gIV2SOmA2amu+Wch9Jp/keU8FBEQPpK1tRXsvwBp
	s/YghFuExhXSoUfC0k/T9nTz7GjjWD2LIL1uQNvUYt6kWTSSMxq6ozoCJ/xTBEEcY/OR
	OwCQ==
X-Gm-Message-State: APzg51AGJSbq/vQ2p3u4ThL6/wnLXfxkbxaOUpJK4oG9MuQGbkCs/z5Z
	d42koEb3PG0Eg6+4z4EcxmONN3wKdqUl3v8CLPdbthu7
X-Google-Smtp-Source: ANB0VdZ/8Gt3vfVABBMM+xp/vksPQKbocTu1GB4+TBFElflhjotxA1oQPkXXJ6EVP4PDJHEE7P5ZT77jhYNWez2KIZ0=
X-Received: by 2002:aca:5c85:: with SMTP id
	q127-v6mr4112627oib.127.1534951695617; 
	Wed, 22 Aug 2018 08:28:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:e1e:0:0:0:0:0 with HTTP;
	Wed, 22 Aug 2018 08:28:15 -0700 (PDT)
In-Reply-To: <dd057e86-090f-3070-630f-5afaca94475a@windriver.com>
References: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
	<dd057e86-090f-3070-630f-5afaca94475a@windriver.com>
From: Paul Sheer <paulsheer@gmail.com>
Date: Wed, 22 Aug 2018 10:28:15 -0500
Message-ID: <CABxOuY8uMGiOh-9_SE3n0SNui-kidXU2VT8stezt5F4C1TztXw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Cleaning out build without re-downloading sources
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
X-List-Received-Date: Wed, 22 Aug 2018 15:28:16 -0000
Content-Type: multipart/alternative; boundary="0000000000009093f9057407cacd"

--0000000000009093f9057407cacd
Content-Type: text/plain; charset="UTF-8"

>
>
>>
> There is a separate directory, which is usually downloads/ under the build
> directory, to keep downloaded git repos and tarballs.
>
> [network]  ---> [downloads] ---> [tmp/work/xxxx]
>
> So you don't have to worry about the downloading when you clean up tmp/.
>
> Best Regards,
> Chen Qi
>
>

Thanks.

So, if my directories look as below, which should get a rm -rf  ?

paul@pauls-machine:~/my-yocto$ ls -la
total 72
drwxrwxr-x  8 paul paul  4096 Aug 21 17:33 .
drwxrwxr-x 15 paul paul  4096 Aug 21 16:55 ..
-rw-rw-r--  1 paul paul     0 Aug 21 16:57 bitbake.lock
drwxrwxr-x  2 paul paul  4096 Aug 22 10:14 cache
drwxrwxr-x  2 paul paul  4096 Aug 21 16:57 conf
drwxrwxr-x  7 paul paul 36864 Aug 22 10:23 downloads
drwxrwxr-x 71 paul paul  4096 Aug 22 10:23 sstate-cache
drwxrwxr-x 11 paul paul  4096 Aug 21 17:57 tmp

Paul

--0000000000009093f9057407cacd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><br>
</blockquote>
<br>
There is a separate directory, which is usually downloads/ under the build =
directory, to keep downloaded git repos and tarballs.<br>
<br>
[network]=C2=A0 ---&gt; [downloads] ---&gt; [tmp/work/xxxx]<br>
<br>
So you don&#39;t have to worry about the downloading when you clean up tmp/=
.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
</blockquote></div><br></div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Thanks.</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">So, if my directories look as below, which should get a=
 rm -rf=C2=A0 ?</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra"><div class=3D"gmail_extra">paul@pauls-machine:~/my-yocto$ ls -la<=
/div><div class=3D"gmail_extra">total 72</div><div class=3D"gmail_extra">dr=
wxrwxr-x=C2=A0 8 paul paul=C2=A0 4096 Aug 21 17:33 .</div><div class=3D"gma=
il_extra">drwxrwxr-x 15 paul paul=C2=A0 4096 Aug 21 16:55 ..</div><div clas=
s=3D"gmail_extra">-rw-rw-r--=C2=A0 1 paul paul=C2=A0 =C2=A0 =C2=A00 Aug 21 =
16:57 bitbake.lock</div><div class=3D"gmail_extra">drwxrwxr-x=C2=A0 2 paul =
paul=C2=A0 4096 Aug 22 10:14 cache</div><div class=3D"gmail_extra">drwxrwxr=
-x=C2=A0 2 paul paul=C2=A0 4096 Aug 21 16:57 conf</div><div class=3D"gmail_=
extra">drwxrwxr-x=C2=A0 7 paul paul 36864 Aug 22 10:23 downloads</div><div =
class=3D"gmail_extra">drwxrwxr-x 71 paul paul=C2=A0 4096 Aug 22 10:23 sstat=
e-cache</div><div class=3D"gmail_extra">drwxrwxr-x 11 paul paul=C2=A0 4096 =
Aug 21 17:57 tmp</div><div><br></div></div><div class=3D"gmail_extra">Paul<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></=
div></div>

--0000000000009093f9057407cacd--
