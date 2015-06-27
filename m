Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9108E009DF; Fri, 26 Jun 2015 17:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vn0-f54.google.com (mail-vn0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3E55E00947
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:45:49 -0700 (PDT)
Received: by vnbg190 with SMTP id g190so17808591vnb.1
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TafUZi5ZkJnCWiZFwM1eRXCvgjpMDbdjFuIYkiwIPm4=;
	b=b4bikiVir0AtFCmyOZ2E9Pqo/LaB8GcyFFooPmCaW0mjPzRvtKJn8mibNs7Hi6bJGF
	TBMzfA8o79qTGBYYecoly4hkE/E2oWZhCxZ/H3asMYRYUBrwvYTgtEyZIghbIT0uYuJ6
	cJhSbBCM/bsA/W+FvfPfq/er/WEGXVAQGEXoOTlTs8d0AmCfRCwNUaCWtG9kQW4ycaEn
	xi58CSMenjsUSxblywQed0tltttTPju9Z/IK++Sci06m1PMLxGANn6NuYUASXsXWWkJa
	tTy91jgxKDfsnltF2d/TNQoVjRxA9tqQapnEzVwiC+fq3yFzSMWEQq0DS2y/mKUPN5X2
	m31g==
MIME-Version: 1.0
X-Received: by 10.52.5.2 with SMTP id o2mr3776479vdo.97.1435365948828; Fri, 26
	Jun 2015 17:45:48 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 17:45:48 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 17:45:48 -0700 (PDT)
In-Reply-To: <558DF0CE.1050101@mail.bg>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
	<558DAD7C.4060409@linux.intel.com> <558DB5E3.5030109@mlbassoc.com>
	<CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>
	<558DED8E.4060705@mail.bg>
	<CAF3SDA4jb+dLGCuDpLB32AqiFtTE=m9L6Rp+VGfrg3YZ9DFJwA@mail.gmail.com>
	<558DF0CE.1050101@mail.bg>
Date: Fri, 26 Jun 2015 21:45:48 -0300
Message-ID: <CAF3SDA4uBSfOxaFrAipOyQZrjKYYo-AzM7X9i-RET5-mQGAurw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Nikolay Dimitrov <picmaster@mail.bg>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Avoid creation of .sdcard images.
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
X-List-Received-Date: Sat, 27 Jun 2015 00:45:51 -0000
Content-Type: multipart/alternative; boundary=20cf302ef58880b15f0519752db0

--20cf302ef58880b15f0519752db0
Content-Type: text/plain; charset=UTF-8

Well, I'm in home now monday I'll take a look on this, it should have a
way, maybe a little hack is needed, thanks for informing, best regards I
keep in touch
Em 26/06/2015 21:39, "Nikolay Dimitrov" <picmaster@mail.bg> escreveu:

> Hi Daniel,
>
> On 06/27/2015 03:30 AM, Daniel. wrote:
>
>> What you mean about deployed? They are compiled but doesnt go to
>> tmp/deploy folder?!
>>
>
> Exactly. In my project I also don't use the sdcard image, but I just
> have to leave it because of the previously described behavior.
>
> Guess how I discovered it :D (hint: tried to optimize the build times
> and disk usage).
>
> Best way is to see for yourself. Just edit the file sources/meta-
> yourlayer/conf/machine/yourboard.conf and put something like this:
>
> # Shoot myself in the foot
> #IMAGE_FSTYPES = "tar sdcard"
> IMAGE_FSTYPES = "tar"
>
> ...and give it a try. It may be a good idea to fully clean your build
> space (rm -fr cache sstate-cache tmp) before building, otherwise old
> build products in tmp/deploy can fool you that a build is properly
> done, while it was not.
>
>
>> Im building to imx6 :/
>>
>> Em 26/06/2015 21:25, "Nikolay Dimitrov" <picmaster@mail.bg
>> <mailto:picmaster@mail.bg>> escreveu:
>>
>>     Hi guys,
>>
>>     On 06/26/2015 11:32 PM, Daniel. wrote:
>>
>>         Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I'll
>> try!
>>
>>         Thank you!
>>
>>         2015-06-26 17:28 GMT-03:00 Gary Thomas <gary@mlbassoc.com
>>         <mailto:gary@mlbassoc.com>
>>         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>:
>>
>>              On 2015-06-26 13:52, Leonardo Sandoval wrote:
>>
>>                  On 06/26/2015 02:45 PM, Daniel. wrote:
>>
>>                      Does any one knows how to avoid the creation of
>> .sdcard
>>                      images? This ones
>>
>>                  The variable controlling the type of output images is
>>                  IMAGE_FSTYPES, so you can redefine it under your
>>         local.conf. To
>>                  see the current content, you can do
>>
>>                  $bitbake -e <your image> | grep IMAGE_FSTYPES
>>
>>
>>              Just add this line to your local.conf
>>                 IMAGE_FSTYPES_remove = "sdcard"
>>
>>
>>
>>                      takes a lot of diskspace and I have to delete it
>>                      periodically, which gives
>>                      headaches about cleaning everything every time. A
>>         have an
>>                      50GB partition
>>                      and from month to month I get out of disk space. :(
>>
>>                      Thanks in advance
>>
>>
>>
>>
>>              --
>>              ------------------------------------------------------------
>>              Gary Thomas                 |  Consulting for the
>>              MLB Associates              |    Embedded world
>>              ------------------------------------------------------------
>>              --
>>              _______________________________________________
>>              yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>>         --
>>         /"Do or do not. There is no try"/
>>         ///*Yoda Master*/
>>
>>
>>
>>     Removing "sdcard" from IMAGE_FSTYPES will prevent virtual/kernel and
>>     virtual/bootloader from being deployed, and most of the time we need
>>     them, so be warned. At least this is how things work on imx6 builds
>> :D.
>>
>>     Regards,
>>     Nikolay
>>
>>
> Regards,
> Nikolay
>

--20cf302ef58880b15f0519752db0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Well, I&#39;m in home now monday I&#39;ll take a look on thi=
s, it should have a way, maybe a little hack is needed, thanks for informin=
g, best regards I keep in touch</p>
<div class=3D"gmail_quote">Em 26/06/2015 21:39, &quot;Nikolay Dimitrov&quot=
; &lt;<a href=3D"mailto:picmaster@mail.bg">picmaster@mail.bg</a>&gt; escrev=
eu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Daniel,<br>
<br>
On 06/27/2015 03:30 AM, Daniel. wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
What you mean about deployed? They are compiled but doesnt go to<br>
tmp/deploy folder?!<br>
</blockquote>
<br>
Exactly. In my project I also don&#39;t use the sdcard image, but I just<br=
>
have to leave it because of the previously described behavior.<br>
<br>
Guess how I discovered it :D (hint: tried to optimize the build times<br>
and disk usage).<br>
<br>
Best way is to see for yourself. Just edit the file sources/meta-<br>
yourlayer/conf/machine/yourboard.conf and put something like this:<br>
<br>
# Shoot myself in the foot<br>
#IMAGE_FSTYPES =3D &quot;tar sdcard&quot;<br>
IMAGE_FSTYPES =3D &quot;tar&quot;<br>
<br>
...and give it a try. It may be a good idea to fully clean your build<br>
space (rm -fr cache sstate-cache tmp) before building, otherwise old<br>
build products in tmp/deploy can fool you that a build is properly<br>
done, while it was not.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Im building to imx6 :/<br>
<br>
Em 26/06/2015 21:25, &quot;Nikolay Dimitrov&quot; &lt;<a href=3D"mailto:pic=
master@mail.bg" target=3D"_blank">picmaster@mail.bg</a><br>
&lt;mailto:<a href=3D"mailto:picmaster@mail.bg" target=3D"_blank">picmaster=
@mail.bg</a>&gt;&gt; escreveu:<br>
<br>
=C2=A0 =C2=A0 Hi guys,<br>
<br>
=C2=A0 =C2=A0 On 06/26/2015 11:32 PM, Daniel. wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hmm, this seems cleaner than setting whole IMAG=
E_FSTYPES, I&#39;ll try!<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Thank you!<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 2015-06-26 17:28 GMT-03:00 Gary Thomas &lt;<a h=
ref=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a><br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com"=
 target=3D"_blank">gary@mlbassoc.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com"=
 target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt;:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 2015-06-26 13:52, Leonar=
do Sandoval wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 06/26/2015=
 02:45 PM, Daniel. wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Does any one knows how to avoid the creation of .sdcard<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0images? This ones<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The variable =
controlling the type of output images is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IMAGE_FSTYPES=
, so you can redefine it under your<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 local.conf. To<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0see the curre=
nt content, you can do<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$bitbake -e &=
lt;your image&gt; | grep IMAGE_FSTYPES<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Just add this line to your =
local.conf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IMAGE_FSTYPES_remov=
e =3D &quot;sdcard&quot;<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0takes a lot of diskspace and I have to delete it<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0periodically, which gives<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0headaches about cleaning everything every time. A<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 have an<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A050GB partition<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0and from month to month I get out of disk space. :(<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Thanks in advance<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------=
---------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Gary Thomas=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 Consulting for the<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MLB Associates=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 Embedded world<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------=
---------------------------------<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0___________________________=
____________________<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&g=
t;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /&quot;Do or do not. There is no try&quot;/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ///*Yoda Master*/<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 Removing &quot;sdcard&quot; from IMAGE_FSTYPES will prevent v=
irtual/kernel and<br>
=C2=A0 =C2=A0 virtual/bootloader from being deployed, and most of the time =
we need<br>
=C2=A0 =C2=A0 them, so be warned. At least this is how things work on imx6 =
builds :D.<br>
<br>
=C2=A0 =C2=A0 Regards,<br>
=C2=A0 =C2=A0 Nikolay<br>
<br>
</blockquote>
<br>
Regards,<br>
Nikolay<br>
</blockquote></div>

--20cf302ef58880b15f0519752db0--
