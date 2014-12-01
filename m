Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4E5AE008FC; Mon,  1 Dec 2014 08:59:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8CC5E00860
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 08:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1417453153; l=4240;
	s=domk; d=jenslucius.de;
	h=Content-Type:In-Reply-To:References:Subject:CC:To:MIME-Version:From:
	Date; bh=NBpv9IpckF5rDmARKtn9JqTEKAI=;
	b=ucY7TXYRtaQ+qYXSxBMtWSy22QKcqVwu9mNKnfisUMsmzhWCx4ylBc8TiAFeNsUYDJH
	Gvdxf+H/fZJCdjTkOiSXzSoiVWsGWyEympwisbyifcCKRLv4XkbrtOfuA+pCQ3HVAQqPq
	fuNv+XocDOPJxVmlfgoQ2+iJMqZsDE6g5cg=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwQXmuti4
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E3657.dip0.t-ipconnect.de [91.14.54.87])
	by smtp.strato.de (RZmta 36.2 DYNA|AUTH)
	with ESMTPSA id L02bf6qB1GxDfpX
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate);
	Mon, 1 Dec 2014 17:59:13 +0100 (CET)
Message-ID: <547C9E68.8010006@jenslucius.de>
Date: Mon, 01 Dec 2014 17:59:20 +0100
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <547C8D29.9060007@jenslucius.de>
	<CAJTo0LYDwSxccfiQ9p7pwZ8HS8mzFQ1ZfDEUriJs3tRhOqe12w@mail.gmail.com>
In-Reply-To: <CAJTo0LYDwSxccfiQ9p7pwZ8HS8mzFQ1ZfDEUriJs3tRhOqe12w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom recipe not working with 1.7.0 any more
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
X-List-Received-Date: Mon, 01 Dec 2014 16:59:31 -0000
Content-Type: multipart/alternative;
	boundary="------------020802020400040602060806"

--------------020802020400040602060806
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 01.12.2014 17:10, schrieb Burton, Ross:
>
> On 1 December 2014 at 15:45, Jens Lucius <incnews@jenslucius.de 
> <mailto:incnews@jenslucius.de>> wrote:
>
>     do_configure_prepend () {
>             echo "#define PJMEDIA_AUDIO_DEV_HAS_ALSA  1" >
>     pjlib/include/pj/config_site.h
>             echo "#define PJMEDIA_AUDIO_DEV_HAS_PORTAUDIO 0" >>
>     pjlib/include/pj/config_site.h
>     }
>
>     Does complain about not finding the directory. Seems the work is
>     not done from within the work directory any more?
>
>     I fixed the path with a ${S} but then I ran into the next issue:
>
>     The content of the configure command is a "./aconfigure" which is
>     also not working any more (because we are in the wrong dir?).
>
>
> My suspicion is that you're inheriting autotools.  With the latest 
> release, autotools.bbclass does out-of-tree builds by default (and 
> provides autotools-brokensep.bbclass for recipes which are broken with 
> respect to out-of-tree builds).
>
> This means that many tasks are executed in $B which is not the same as 
> $S anymore, so your configure task should be using ${S} in the paths.
>
> That said you also say that your configure command is "./aconfigure", 
> so it sounds like you shouldn't be inheriting autotools at all.
>
> Ross

Thanks, using autotools-brokensep the build works again.

Right now I do

inherit autotools pkgconfig
(or autotools-brokensep now)

What should be used with aconfigure?

Jens


--------------020802020400040602060806
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">Am 01.12.2014 17:10, schrieb Burton,
      Ross:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LYDwSxccfiQ9p7pwZ8HS8mzFQ1ZfDEUriJs3tRhOqe12w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 1 December 2014 at 15:45, Jens
            Lucius <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:incnews@jenslucius.de" target="_blank">incnews@jenslucius.de</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div style="overflow:hidden">do_configure_prepend () {<br>
                        echo "#define PJMEDIA_AUDIO_DEV_HAS_ALSA     
                 1" &gt; pjlib/include/pj/config_site.h<br>
                        echo "#define PJMEDIA_AUDIO_DEV_HAS_PORTAUDIO 
                0" &gt;&gt; pjlib/include/pj/config_site.h<br>
                }<br>
                <br>
                Does complain about not finding the directory. Seems the
                work is not done from within the work directory any
                more?<br>
                <br>
                I fixed the path with a ${S} but then I ran into the
                next issue:<br>
                <br>
                The content of the configure command is a "./aconfigure"
                which is also not working any more (because we are in
                the wrong dir?).</div>
            </blockquote>
          </div>
          <br>
          My suspicion is that you're inheriting autotools.  With the
          latest release, autotools.bbclass does out-of-tree builds by
          default (and provides autotools-brokensep.bbclass for recipes
          which are broken with respect to out-of-tree builds).</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">This means that many tasks are executed
          in $B which is not the same as $S anymore, so your configure
          task should be using ${S} in the paths.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">That said you also say that your
          configure command is "./aconfigure", so it sounds like you
          shouldn't be inheriting autotools at all.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
    Thanks, using autotools-brokensep the build works again.<br>
    <br>
    Right now I do<br>
    <br>
    inherit autotools pkgconfig<br>
    (or autotools-brokensep now)<br>
    <br>
    What should be used with aconfigure?<br>
    <br>
    Jens<br>
    <br>
  </body>
</html>

--------------020802020400040602060806--
