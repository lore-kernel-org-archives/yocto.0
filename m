Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38A3AE00C8D; Mon, 28 Sep 2015 10:59:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MALFORMED_FREEMAIL, 
	MISSING_HEADERS,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 MALFORMED_FREEMAIL Bad headers on message from free email service
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B60E00708
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 10:59:41 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so189154197ykd.2
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 10:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=F8YjsWaUGhAbw8C/Cek8aLvvWDIUKWPB8/uuzTsXdyM=;
	b=JvVmNkwkUt14y+rUdDbH+wdaQ/B+CPJgfx889f8vocLG+FIj/1aepJDlVeId2eyq7E
	7/7x978yeVbvlnTx+6TScAXVD8W7BJYyNF4QyaqfOwtq3KqinTJ4sSbH/5MwzEO2Qqjx
	SvV3Dl04Ylo9eRaZfFoDBDTqdhRpJw7sfMutzr/DLJqezitTF/3zx1eG7RRyK23+omm4
	budefOMuuRVDA+YKzg0IWSAgfOWPmt9nC8mu38NG8TISUFGL7H+Ra36aU02ky9ema1pY
	FBkfUqcBZWUBnJaB03mrxHsazQBUAYTxBTZNhQFLal9NDDztXqsu9294jUb/1oLgqZ1M
	2Hiw==
MIME-Version: 1.0
X-Received: by 10.170.215.195 with SMTP id h186mr17933025ykf.126.1443463180548;
	Mon, 28 Sep 2015 10:59:40 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Mon, 28 Sep 2015 10:59:40 -0700 (PDT)
In-Reply-To: <560960C1.2070806@mlbassoc.com>
References: <2DCC166D4F5C8443941662E1E67FD5C17871C6C5@LEICESTER.internal.datapath.co.uk>
	<560960C1.2070806@mlbassoc.com>
Date: Mon, 28 Sep 2015 14:59:40 -0300
Message-ID: <CAF3SDA6ChKcwaJA7hOKYqNZFi0J=5MkfDrCVjp7ib4kNigHQaA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a new recipe based on another recipe
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
X-List-Received-Date: Mon, 28 Sep 2015 17:59:43 -0000
Content-Type: multipart/alternative; boundary=001a113aa8a61f86730520d2766c

--001a113aa8a61f86730520d2766c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think you're searching for .bbappend don't?

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-b=
bappend-files

Or, maybe, put all the common things in a .inc file, create the recipes,
include the files in recipes. There is also a lot of examples of this:
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hostap/

Cheers,
- dhs

2015-09-28 12:46 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:

> On 2015-09-28 09:30, Stuart Weaver wrote:
>
>> Hi all,
>>
>> I have a recipe for a package which builds well. I now need to add a
>> patch into certain builds. What is the best way to do this?
>>
>> 1.Is there a variable I can append the image name to (similar
>> to:/SRC_URI_image-name/)?//
>>
>> 2.Is there a way of creating a new =E2=80=98recipe 2=E2=80=99 that obtai=
ns the details
>> from =E2=80=98recipe 1=E2=80=99 and applies a patch? This way I can then=
 simply add the new
>> recipe into any builds I want and
>> includes any future changes I make to =E2=80=98recipe 1=E2=80=99. This s=
olution also
>> means not having to continuously reconfigure/recompile the original reci=
pe!
>>
>> 3.Do I have to do it the hard way and copy the whole .bb file into a new
>> one and make sure everything is in sync when future updates are applied?
>>
>
> If it's just a patch, the simplest way is to use something like this:
>   SRC_URI_append_XYZ =3D "file://XYZ.patch"
> where XYZ is something which can identify the override.  One example
> might be where XYZ is the name of a target board (${MACHINE})
>
> There are many examples of this usage in the Poky/Yocto tree(s)
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113aa8a61f86730520d2766c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I think you&#39;re searching for .bbappend don&#=
39;t?<br><br><a href=3D"http://www.yoctoproject.org/docs/current/dev-manual=
/dev-manual.html#using-bbappend-files">http://www.yoctoproject.org/docs/cur=
rent/dev-manual/dev-manual.html#using-bbappend-files</a><br><br></div><div>=
Or, maybe, put all the common things in a .inc file, create the recipes, in=
clude the files in recipes. There is also a lot of examples of this:<br><a =
href=3D"http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/ho=
stap/">http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hos=
tap/</a><br></div><div><br></div>Cheers,<br></div>- dhs<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-09-28 12:46 GMT-03:00 =
Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" targ=
et=3D"_blank">gary@mlbassoc.com</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><span class=3D"">On 2015-09-28 09:30, Stuart Weaver wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi all,<br>
<br>
I have a recipe for a package which builds well. I now need to add a patch =
into certain builds. What is the best way to do this?<br>
<br></span>
1.Is there a variable I can append the image name to (similar to:/SRC_URI_i=
mage-name/)?//<br>
<br>
2.Is there a way of creating a new =E2=80=98recipe 2=E2=80=99 that obtains =
the details from =E2=80=98recipe 1=E2=80=99 and applies a patch? This way I=
 can then simply add the new recipe into any builds I want and<span class=
=3D""><br>
includes any future changes I make to =E2=80=98recipe 1=E2=80=99. This solu=
tion also means not having to continuously reconfigure/recompile the origin=
al recipe!<br>
<br></span>
3.Do I have to do it the hard way and copy the whole .bb file into a new on=
e and make sure everything is in sync when future updates are applied?<br>
</blockquote>
<br>
If it&#39;s just a patch, the simplest way is to use something like this:<b=
r>
=C2=A0 SRC_URI_append_XYZ =3D &quot;file://XYZ.patch&quot;<br>
where XYZ is something which can identify the override.=C2=A0 One example<b=
r>
might be where XYZ is the name of a target board (${MACHINE})<br>
<br>
There are many examples of this usage in the Poky/Yocto tree(s)<span class=
=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a113aa8a61f86730520d2766c--
