Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0D33E00D27; Mon, 20 Nov 2017 05:27:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC37EE00D27
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 05:27:50 -0800 (PST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.numalliance.com (Postfix) with ESMTP id 4C51B211D58C
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 14:27:48 +0100 (CET)
X-Amavis-Modified: Mail body modified (using disclaimer) by
	mail.numalliance.com
X-Virus-Scanned: Debian amavisd-new at mail.numalliance.com
Received: from mail.numalliance.com ([127.0.0.1])
	by localhost (mail.numalliance.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 4Au13CZs3Dzf for <yocto@yoctoproject.org>;
	Mon, 20 Nov 2017 14:27:39 +0100 (CET)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id 683C4211D582
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 14:27:39 +0100 (CET)
To: yocto@yoctoproject.org
References: <fb6cf52e-a919-0714-ac61-60f66f9055bc@numalliance.com>
	<CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmail.com>
	<8737c239-17bb-2270-7651-f7ab547a515e@numalliance.com>
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <f55ebed9-8fb9-4c3d-0edc-5b4f5ce4e08c@numalliance.com>
Date: Mon, 20 Nov 2017 14:27:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <8737c239-17bb-2270-7651-f7ab547a515e@numalliance.com>
Subject: Re: customising custom-image-sato
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
X-List-Received-Date: Mon, 20 Nov 2017 13:27:53 -0000
Content-Type: multipart/alternative;
	boundary="------------5F04F398FD097B5462457E5B"
Content-Language: fr

--------------5F04F398FD097B5462457E5B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

hi,

I managed to customise it , using toaster interface. However, now I am=20
on cmdline.

What is the way to do the same thing from cmdline, which file to copy=20
and rewrite ?

Regards,

S.Ancelot


Le 20/10/2017 =C3=A0 10:46, St=C3=A9phane Ancelot a =C3=A9crit=C2=A0:
>
> This works as expected, Thanks
>
>
> Le 19/10/2017 =C3=A0 16:26, Burton, Ross a =C3=A9crit=C2=A0:
>> If you want a custom core-image-sato then the easiest (and right)=20
>> thing to do is to write a new image recipe.=C2=A0 Then you get to pick=
=20
>> what you want in it and don't want in it.
>>
>> puzzles comes in via packagegroup-x11-sato-games, via -x11-sato=20
>> (which also depends on -x11-sato-base and -x11-sato-apps)..=C2=A0 Don'=
t=20
>> install x11-sato but swap it for just x11-sato-base and you'll get=20
>> all the Sato environment but no games or apps.
>>
>> Ross
>>
>> On 19 October 2017 at 15:19, St=C3=A9phane Ancelot=20
>> <sancelot@numalliance.com <mailto:sancelot@numalliance.com>> wrote:
>>
>>     Hi,
>>
>>     I tried removing puzzles package using IMAGE_INSTALL_remove but
>>     it has not had any effect.
>>
>>
>>     Is there a way to remove unwanted packages ?
>>
>>     Regards,
>>
>>     S.Ancelot
>>
>>     --=20
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>
>
>



--------------5F04F398FD097B5462457E5B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>hi, <br>
    </p>
    <p>I managed to customise it , using toaster interface. However, now
      I am on cmdline. <br>
    </p>
    <p>What is the way to do the same thing from cmdline, which file to
      copy and rewrite ?</p>
    <p>Regards,</p>
    <p>S.Ancelot<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">Le 20/10/2017 =C3=A0 10:46, St=C3=A9ph=
ane Ancelot
      a =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8737c239-17bb-2270-7651-f7ab547a515e@numalliance.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <p>This works as expected, Thanks<br>
      </p>
      <br>
      <div class=3D"moz-cite-prefix">Le 19/10/2017 =C3=A0 16:26, Burton, =
Ross a
        =C3=A9crit=C2=A0:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmai=
l.com">
        <div dir=3D"ltr">If you want a custom core-image-sato then the
          easiest (and right) thing to do is to write a new image
          recipe.=C2=A0 Then you get to pick what you want in it and don'=
t
          want in it.
          <div><br>
          </div>
          <div>puzzles comes in via packagegroup-x11-sato-games, via
            -x11-sato (which also depends on -x11-sato-base and
            -x11-sato-apps)..=C2=A0 Don't install x11-sato but swap it fo=
r
            just x11-sato-base and you'll get all the Sato environment
            but no games or apps.</div>
          <div><br>
          </div>
          <div>Ross</div>
        </div>
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On 19 October 2017 at 15:19, St=C3=A9=
phane
            Ancelot <span dir=3D"ltr">&lt;<a
                href=3D"mailto:sancelot@numalliance.com" target=3D"_blank=
"
                moz-do-not-send=3D"true">sancelot@numalliance.com</a>&gt;=
</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
              <br>
              I tried removing puzzles package using
              IMAGE_INSTALL_remove but it has not had any effect.<br>
              <br>
              <br>
              Is there a way to remove unwanted packages ?<br>
              <br>
              Regards,<br>
              <br>
              S.Ancelot<span class=3D"HOEnZb"><font color=3D"#888888"><br=
>
                  <br>
                  -- <br>
                  ______________________________<wbr>_________________<br=
>
                  yocto mailing list<br>
                  <a href=3D"mailto:yocto@yoctoproject.org"
                    target=3D"_blank" moz-do-not-send=3D"true">yocto@yoct=
oproject.org</a><br>
                  <a
                    href=3D"https://lists.yoctoproject.org/listinfo/yocto=
"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true">https://lists.yoctoproject.o=
rg<wbr>/listinfo/yocto</a><br>
                </font></span></blockquote>
          </div>
          <br>
        </div>
      </blockquote>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  
<br>=
<!-- <img srv=3D"cid:disclaimer.png@05C39850.E4534190" /> -->=0A
<br>=
</body>
</html>

--------------5F04F398FD097B5462457E5B--
