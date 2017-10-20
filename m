Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94C1E00D4C; Fri, 20 Oct 2017 01:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17558E00D47
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 01:46:28 -0700 (PDT)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id C069D20B6449;
	Fri, 20 Oct 2017 10:46:27 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <fb6cf52e-a919-0714-ac61-60f66f9055bc@numalliance.com>
	<CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmail.com>
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <8737c239-17bb-2270-7651-f7ab547a515e@numalliance.com>
Date: Fri, 20 Oct 2017 10:46:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 20 Oct 2017 08:46:29 -0000
Content-Type: multipart/alternative;
	boundary="------------2AAFBBDFF695A73910777674"
Content-Language: fr

--------------2AAFBBDFF695A73910777674
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

This works as expected, Thanks


Le 19/10/2017 à 16:26, Burton, Ross a écrit :
> If you want a custom core-image-sato then the easiest (and right) 
> thing to do is to write a new image recipe. Then you get to pick what 
> you want in it and don't want in it.
>
> puzzles comes in via packagegroup-x11-sato-games, via -x11-sato (which 
> also depends on -x11-sato-base and -x11-sato-apps)..  Don't install 
> x11-sato but swap it for just x11-sato-base and you'll get all the 
> Sato environment but no games or apps.
>
> Ross
>
> On 19 October 2017 at 15:19, Stéphane Ancelot 
> <sancelot@numalliance.com <mailto:sancelot@numalliance.com>> wrote:
>
>     Hi,
>
>     I tried removing puzzles package using IMAGE_INSTALL_remove but it
>     has not had any effect.
>
>
>     Is there a way to remove unwanted packages ?
>
>     Regards,
>
>     S.Ancelot
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------2AAFBBDFF695A73910777674
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>This works as expected, Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Le 19/10/2017 à 16:26, Burton, Ross a
      écrit :<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmail.com">
      <div dir="ltr">If you want a custom core-image-sato then the
        easiest (and right) thing to do is to write a new image recipe. 
        Then you get to pick what you want in it and don't want in it.
        <div><br>
        </div>
        <div>puzzles comes in via packagegroup-x11-sato-games, via
          -x11-sato (which also depends on -x11-sato-base and
          -x11-sato-apps)..  Don't install x11-sato but swap it for just
          x11-sato-base and you'll get all the Sato environment but no
          games or apps.</div>
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 19 October 2017 at 15:19, Stéphane
          Ancelot <span dir="ltr">&lt;<a
              href="mailto:sancelot@numalliance.com" target="_blank"
              moz-do-not-send="true">sancelot@numalliance.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
            <br>
            I tried removing puzzles package using IMAGE_INSTALL_remove
            but it has not had any effect.<br>
            <br>
            <br>
            Is there a way to remove unwanted packages ?<br>
            <br>
            Regards,<br>
            <br>
            S.Ancelot<span class="HOEnZb"><font color="#888888"><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------2AAFBBDFF695A73910777674--
