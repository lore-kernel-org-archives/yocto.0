Return-Path: <mulhern@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D423E0073F;
	Thu, 15 Aug 2013 18:21:05 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id wc20so1521143obb.14
	for <multiple recipients>; Thu, 15 Aug 2013 18:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tzfMMSLGbj+T233RoXQA/AmgTNnUwrbwcaG7r4tcI90=;
	b=h1FxkG1RKSL6bqDWdB3jaT61VqsTQeZlTJHuit7WmA8fUrZly7xM1l9bqt3j4dP65C
	MDvNWBxx+dQhgSf0qtlPKY64P+fb2l5rMciiStc9lPLhiVQEQFvY83kwqKz72HZUMp7F
	GYgacfaFWbk+5bvNvfgp4qNSOsRWatH18YWm7UqhNTUTXn23td3Z5t+6Ck1jSn61oBs7
	hTsfKsQ4ZmS6PN5MGukAl+giLUeV/8EOA6K9jLov7mW80ToB0BAmwXgOOO1toY5lCQpM
	NfgW3XJQ5/YoR7E9kT6a0rjlBOawHSd+OYIxRw01HTtqAirorm6OWb3vhonVqk+y5+0V
	auTw==
MIME-Version: 1.0
X-Received: by 10.60.121.103 with SMTP id lj7mr16693623oeb.25.1376616065032;
	Thu, 15 Aug 2013 18:21:05 -0700 (PDT)
Received: by 10.76.68.234 with HTTP; Thu, 15 Aug 2013 18:21:04 -0700 (PDT)
In-Reply-To: <CAMKF1srAEiY5EzzTqQhX==MnKBDkuer8yPGK9idzET4GnOQSqg@mail.gmail.com>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
	<e135a4c21162ddac7452bbb22986a3c0ef5cdeee.1376598685.git.mulhern@yoctoproject.org>
	<CAMKF1srAEiY5EzzTqQhX==MnKBDkuer8yPGK9idzET4GnOQSqg@mail.gmail.com>
Date: Thu, 15 Aug 2013 21:21:04 -0400
Message-ID: <CADM5y7ttU5vqtrFqxLsAcmUOb8VtvTu0A_tASN9uf+iA1c2cdg@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, mulhern@yoctoproject.org
Subject: Re: [PATCH 1/2] curses-perl: Change description to match package.
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
X-List-Received-Date: Fri, 16 Aug 2013 01:21:06 -0000
Content-Type: multipart/alternative; boundary=047d7b414e9e8c6aa304e406676c

--047d7b414e9e8c6aa304e406676c
Content-Type: text/plain; charset=ISO-8859-1

OK.

I'm submitting a revised patchset with the change

"your system's" => "the"

- mulhern


On Thu, Aug 15, 2013 at 5:07 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Thu, Aug 15, 2013 at 1:36 PM, mulhern <mulhern@gmail.com> wrote:
>
>> -DESCRIPTION = "This package contains the URI.pm module with friends. \
>> -The module implements the URI class. URI objects can be used to access \
>> -and manipulate the various components that make up these strings."
>> +DESCRIPTION = "lib-curses provides an interface between Perl programs
>> and \
>> +your system's curses library."
>>
>
> 'your' is not appropriate here
>
>

--047d7b414e9e8c6aa304e406676c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK.<div><br></div><div>I&#39;m submitting a revised patchs=
et with the change</div><div><br></div><div>&quot;your system&#39;s&quot; =
=3D&gt; &quot;the&quot;</div><div><br></div><div>- mulhern</div></div><div =
class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Aug 15, 2013 at 5:07 PM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"im"><br><div clas=
s=3D"gmail_quote">On Thu, Aug 15, 2013 at 1:36 PM, mulhern <span dir=3D"ltr=
">&lt;<a href=3D"mailto:mulhern@gmail.com" target=3D"_blank">mulhern@gmail.=
com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"overflow:hidden">-DESCRIPTION =
=3D &quot;This package contains the URI.pm module with friends. \<br>


-The module implements the URI class. URI objects can be used to access \<b=
r>
-and manipulate the various components that make up these strings.&quot;<br=
>
+DESCRIPTION =3D &quot;lib-curses provides an interface between Perl progra=
ms and \<br>
+your system&#39;s curses library.&quot;<br></div></blockquote></div><br></=
div><div style=3D"font-family:&#39;courier new&#39;,monospace;font-size:sma=
ll" class=3D"gmail_default">&#39;your&#39; is not appropriate here</div>
<br></div>

</div>
</blockquote></div><br></div>

--047d7b414e9e8c6aa304e406676c--
