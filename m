Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D420E0076F; Mon, 26 Jan 2015 02:41:01 -0800 (PST)
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
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BFCE003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 02:40:48 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id z12so6807132lbi.7
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 02:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:from:date:message-id:subject:to:cc
	:content-type; bh=fcBCg071F5BQZJyGS90Sf4Jn8Iq8TUChgJ8zFiWjViQ=;
	b=VlJK4uV1R8DbZYHm7b7U7LEkfJkjkaURpY9AI0nRkj9GhddYQmiXaH0yeiwNqa2B1w
	GrUKeQzrbNyP40U6KrfCElnQmJhY6Wc1LBDM0p3fYT2ZsVuQsCQOl3KMjyUthHs5GN90
	YDXX4gQ0/fj0bSQdbEGO8p6P8D6JgFq+6X2WmApOu53QcJL2lcWvQ3R08sOlkBO1AN/J
	ABAnZ2O+MiHYnU2kvxaOlmPY/fYV7IKfgThGYcpulJfdS1oBuYZdM0SCvCRg9rmS5ZL5
	RZ0raNmHTPN/KbXa0w1KhADs+cygZTctxurYLwYXzlZdQRx/ACu5IyfC+fblvrh85d7S
	qJpg==
X-Received: by 10.112.8.41 with SMTP id o9mr20196070lba.40.1422268846370; Mon,
	26 Jan 2015 02:40:46 -0800 (PST)
MIME-Version: 1.0
References: <CAPhDKbHip+UWSpfckRBo+=QBWGnMg+Bq55DcUS77zkxNmZHd2A@mail.gmail.com>
	<CAPhDKbHJ9uXeuJ0O3Eg2v2zHGS5AZvL4cTYVoJFbd6VOkZQ8jA@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
Date: Mon, 26 Jan 2015 10:40:45 +0000
Message-ID: <CAPhDKbGwKytLhAhCUYRJQLuPkE0ZyAJCv0Hx0T0-METC1N4CMg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Cc: =?UTF-8?B?4oCccm9iZXJ0LmJlcmdlckByZWxpYWJsZWVtYmVkZGVkc3lzdGVtcy5jb23igJ0=?=
	<robert.berger@reliableembeddedsystems.com>
Subject: Re: Build appliance
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
X-List-Received-Date: Mon, 26 Jan 2015 10:41:01 -0000
Content-Type: multipart/alternative; boundary=001a1134cf285cf70a050d8bc57c

--001a1134cf285cf70a050d8bc57c
Content-Type: text/plain; charset=UTF-8

I have made some progress, and found out that it's `
*virtual/fakeroot-native*` that had to be in `*ASSUME_PROVIDED`.* But now I
find there are quite a few more assumptions of the path to native tools.
I'll see what I can patch locally and send out an update if get something
working.
On Sat Jan 24 2015 at 11:00:47 PM Ilya Dmitrichenko <
errordeveloper@gmail.com> wrote:

> Adding Robert to CC list...
>
> On Sat Jan 24 2015 at 9:53:32 PM Ilya Dmitrichenko <
> errordeveloper@gmail.com> wrote:
>
>> Hi List,
>>
>> I have attempted to define a custom build appliance image, with some
>> degree of success. The only problem is that I have noticed is there is
>> still a whole lot of `*-native` packages being pulled in when trying to
>> build something. So I have attempted adding all of those to my image and
>> set `ASSUME_PROVIDED` accordingly, it was still trying to build
>> pseudo-native and sqlite3-native for some reason... Ideally, I'd like to
>> have all of the `*-native` deps pre-installed on my build appliance's base
>> filesystem, I believe this should work and I shouldn't have to bootstrap
>> `tmp/work/sysroots/` and use the sysroot in `/usr` instead.
>>
>> More specifically, I am trying to build a container image that would
>> cover the purpose of the build appliance and SDKs/ADTs, I think container
>> could simplify a lot for Yocto... I haven't fully figured it out yet, still
>> exploring the options, so hope the idea makes sense overall.
>>
>> Cheers,
>> Ilya
>>
>

--001a1134cf285cf70a050d8bc57c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have made some progress, and found out that it&#39;s `<i style=3D"line-he=
ight:1.5">virtual/fakeroot-native</i>` that had to be in `<i style=3D"line-=
height:1.5">ASSUME_PROVIDED`.</i><span style=3D"line-height:1.5">=C2=A0But =
now I find there are quite a few more assumptions of the path to native too=
ls. I&#39;ll see what I can patch locally and send out an update if get som=
ething working.</span><br><div class=3D"gmail_quote">On Sat Jan 24 2015 at =
11:00:47 PM Ilya Dmitrichenko &lt;<a href=3D"mailto:errordeveloper@gmail.co=
m">errordeveloper@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Adding Robert to CC list...<br><br><div class=3D"gmail_quote">On Sat Jan =
24 2015 at 9:53:32 PM Ilya Dmitrichenko &lt;<a href=3D"mailto:errordevelope=
r@gmail.com" target=3D"_blank">errordeveloper@gmail.com</a>&gt; wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi List,<div><br></div><div>I have attempted =
to define a custom build appliance image, with some degree of success. The =
only problem is that I have noticed is there is still a whole lot of `*-nat=
ive` packages being pulled in when trying to build something. So I have att=
empted adding all of those to my image and set `ASSUME_PROVIDED` accordingl=
y, it was still trying to build pseudo-native and sqlite3-native for some r=
eason... Ideally, I&#39;d like to have all of the `*-native` deps pre-insta=
lled on my build appliance&#39;s base filesystem, I believe this should wor=
k and I shouldn&#39;t have to bootstrap `tmp/work/sysroots/` and use the sy=
sroot in `/usr` instead.</div><div><br></div><div>More specifically, I am t=
rying to build a container image that would cover the purpose of the build =
appliance and SDKs/ADTs, I think container could simplify a lot for Yocto..=
. I haven&#39;t fully figured it out yet, still exploring the options, so h=
ope the idea makes sense overall.</div><div><br></div><div>Cheers,</div><di=
v>Ilya=C2=A0</div></blockquote></div></blockquote></div>

--001a1134cf285cf70a050d8bc57c--
