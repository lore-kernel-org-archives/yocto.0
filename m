Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.90.20])
 by mx.groups.io with SMTP id smtpd.web11.6284.1621505946951482193
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 03:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=rrfcF4sv;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.90.20, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id 1f03c579
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 May 2021 12:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=6MbHlEDHwC36kmQ+HDVtuoZ4KS
	5AfTe8s109fEl2Uhc=; b=rrfcF4svYHfxuesmxkJ6bTWZuWIBN/wZT7a8oksv7C
	cHBVsbVHNB9U2RwSq93zfqJWbwpvYUMFmtcq4f/hUqO1rxEoTL0cw/+bUquLpe8x
	+npdv58u/G3VMGKnxj9I06L5QaT7PXOQK138+pJSRyHSD/QDcyuAx1FjyG7qLjxl
	0lT8XxqAP++2J46VQuinsMBKrzF1laZ1TbtGUkJsazwPmaBp7APbGHbvDutiUIrz
	OCm2a4h75588evn/1m6Z6LEvxSDHA6LcoFYZjVTBM3no9l1vchDpV5EJ5pWdU66O
	KqFA7kgmLxaHXCaLQXad82++tPvmmBJq+sMhLTOOzEuw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=MbKuR/AkDbdvdvQTUuTY1cuBAqorzPNP
	GKwOLAyzUw4RL9CDDLUnC8jLXXXmxjJR+bjexJ89SKLBJXnB+w8AKbwcXExgRPSS
	61qyEiPLYx526Nixg9yNzfVcvPtDHJ3nj+SIBVnk8hNF0S3c5OA7QTYgZrhOFPtm
	lk9OfCqvuPgspaxrmwOP4wypPN06AGUKxvkLDq23bSKf2GqO0Ui9QKpP/0kxmfM2
	0FsVrANvSNwAiCq4/YNP74RwqG+A34SZ6mmerWzKTe/l6kV40SRyw+oxu64BhNJt
	qzuKQoC/i8jMXHQ27tDx6ceqdARFcj6/L4/EhQvLZzX6UdQveIoAeQ==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 2eefc9fe (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 May 2021 12:19:02 +0200 (CEST)
Subject: Re: [yocto] hostile freenode takeover
To: yocto@lists.yoctoproject.org
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
 <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
 <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com>
 <20210520081639.ybcnadwxsjvdgsme@qschulz>
 <CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <6ae167be-fbeb-371e-8948-47b41ec371c5@optimcloud.com>
Date: Thu, 20 May 2021 17:18:59 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------B49E449736281B9C2910CA0B"
Content-Language: en-US

--------------B49E449736281B9C2910CA0B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 5/20/21 3:32 PM, Nicolas Dechesne wrote:
>
>
> On Thu, May 20, 2021 at 10:16 AM Quentin Schulz 
> <quentin.schulz@streamunlimited.com 
> <mailto:quentin.schulz@streamunlimited.com>> wrote:
>
>     Hi Khem, all,
>
>     On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:
>     > On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne
>     > <nicolas.dechesne@linaro.org
>     <mailto:nicolas.dechesne@linaro.org>> wrote:
>     > >
>     > >
>     > >
>     > > On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko
>     <Jasper.Orschulko@iris-sensing.com
>     <mailto:Jasper.Orschulko@iris-sensing.com>> wrote:
>     > >>
>     > >> -----BEGIN PGP SIGNED MESSAGE-----
>     > >> Hash: SHA256
>     > >>
>     > >> Dear all,
>     > >>
>     > >> there have been recent reports of a hostile takeover of the
>     freenode
>     > >> service, as described in
>     > >>
>     https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
>     <https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409>
>     > >>
>     > >> The Yocto Project should verify these reports and take the
>     necessary
>     > >> actions, in order to protect its users.
>     > >
>     > >
>     > > Thanks for your email. We are aware, and have started to look
>     into that.
>     > >
>     > > It looks like some open source communities have started to
>     move to https://www.oftc.net/ <https://www.oftc.net/> or
>     https://libera.chat/ <https://libera.chat/>.. If anyone wants to
>     bring any insights or recommendations... feel free!
>     >
>     > perhaps good time to consider matrix
>     >
>
>     I disagree. Matrix just does not work. I've been using with a few
>     friends with mixed homeservers, chat.privacytools.io
>     <http://chat.privacytools.io>, matrix.org <http://matrix.org>,
>     converser.eu <http://converser.eu> and self-hosted homeservers...
>     I've sometimes not received
>     tens of messages in a row, usually for a duration of at least 15 mins
>     and there's obviously no indication whatsoever that I didn't receive
>     messages except that the discussion does not make sense at all.
>     And this
>     happened to three other people on the room, each on a different
>     homeserver
>     than the other, so not a PEBKAC :) Sometimes there are delays for
>     messages too (I've seen 30min delays), so the whole context is lost.
>
>     For a federated chat solution, that's really a bummer that its main
>     feature is just so buggy it's unusable.
>
>     If YP is ok with potentially not receiving questions or having people
>     ask questions and not receive answers, then fine by me :)
>
>     I'm probably among the small (?) minority of people experiencing those
>     issues but that's not a bet I'd take with my projects.
>
>     My 2¢.
>
>
> I think the question of setting up Matrix for our community is a valid 
> question, though I think it's orthogonal to the current problem. If 
> freenode goes away , we need an alternate plan to move *right away* to 
> another IRC server. If we want to setup addition communications means 
> (such as Matrix or anything else) that needs to be discussed and it 
> might take more time.

First let me say, there is nothing wrong with matrix, have used it every 
day for years

Second

the discussion is now about libre


there's a relay to relay stuff between libera and freenode?!
magic
LiberaRelay (relay@2607:f5a0:0:7::9) has joined #hardenedbsd
[Libera] R​elay (relay@user/relay) has joined #hardenedbsd
xmj: sup ? Libra?? whats dat ?
new irc net, made by freenode staffers that have been booted
freenode went through a hostile takeover
... in case you haven't noticed ;p

https://kline.sh/


>
>     Cheers,
>     Quentin
>
>
> 
>

--------------B49E449736281B9C2910CA0B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/20/21 3:32 PM, Nicolas Dechesne
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr"><br>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, May 20, 2021 at
            10:16 AM Quentin Schulz &lt;<a
              href="mailto:quentin.schulz@streamunlimited.com"
              moz-do-not-send="true">quentin.schulz@streamunlimited.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Hi Khem, all,<br>
            <br>
            On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:<br>
            &gt; On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne<br>
            &gt; &lt;<a href="mailto:nicolas.dechesne@linaro.org"
              target="_blank" moz-do-not-send="true">nicolas.dechesne@linaro.org</a>&gt;
            wrote:<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt; On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko
            &lt;<a href="mailto:Jasper.Orschulko@iris-sensing.com"
              target="_blank" moz-do-not-send="true">Jasper.Orschulko@iris-sensing.com</a>&gt;
            wrote:<br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; -----BEGIN PGP SIGNED MESSAGE-----<br>
            &gt; &gt;&gt; Hash: SHA256<br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; Dear all,<br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; there have been recent reports of a hostile
            takeover of the freenode<br>
            &gt; &gt;&gt; service, as described in<br>
            &gt; &gt;&gt; <a
              href="https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409</a><br>
            &gt; &gt;&gt;<br>
            &gt; &gt;&gt; The Yocto Project should verify these reports
            and take the necessary<br>
            &gt; &gt;&gt; actions, in order to protect its users.<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt; Thanks for your email. We are aware, and have
            started to look into that.<br>
            &gt; &gt;<br>
            &gt; &gt; It looks like some open source communities have
            started to move to <a href="https://www.oftc.net/"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://www.oftc.net/</a>
            or <a href="https://libera.chat/" rel="noreferrer"
              target="_blank" moz-do-not-send="true">https://libera.chat/</a>..
            If anyone wants to bring any insights or recommendations...
            feel free!<br>
            &gt; <br>
            &gt; perhaps good time to consider matrix<br>
            &gt; <br>
            <br>
            I disagree. Matrix just does not work. I've been using with
            a few<br>
            friends with mixed homeservers, <a
              href="http://chat.privacytools.io" rel="noreferrer"
              target="_blank" moz-do-not-send="true">chat.privacytools.io</a>,
            <a href="http://matrix.org" rel="noreferrer" target="_blank"
              moz-do-not-send="true">matrix.org</a>,<br>
            <a href="http://converser.eu" rel="noreferrer"
              target="_blank" moz-do-not-send="true">converser.eu</a>
            and self-hosted homeservers... I've sometimes not received<br>
            tens of messages in a row, usually for a duration of at
            least 15 mins<br>
            and there's obviously no indication whatsoever that I didn't
            receive<br>
            messages except that the discussion does not make sense at
            all. And this<br>
            happened to three other people on the room, each on a
            different homeserver<br>
            than the other, so not a PEBKAC :) Sometimes there are
            delays for<br>
            messages too (I've seen 30min delays), so the whole context
            is lost.<br>
            <br>
            For a federated chat solution, that's really a bummer that
            its main<br>
            feature is just so buggy it's unusable.<br>
            <br>
            If YP is ok with potentially not receiving questions or
            having people<br>
            ask questions and not receive answers, then fine by me :)<br>
            <br>
            I'm probably among the small (?) minority of people
            experiencing those<br>
            issues but that's not a bet I'd take with my projects.<br>
            <br>
            My 2¢.<br>
          </blockquote>
          <div><br>
          </div>
          <div>I think the question of setting up Matrix for our
            community is a valid question, though I think it's
            orthogonal to the current problem. If freenode goes away ,
            we need an alternate plan to move *right away* to another
            IRC server. If we want to setup addition communications
            means (such as Matrix or anything else) that needs to be
            discussed and it might take more time. <br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>First let me say, there is nothing wrong with matrix, have used
      it every day for years</p>
    <p>Second</p>
    <p>the discussion is now about libre<br>
    </p>
    <p><br>
      there's a relay to relay stuff between libera and freenode?!<br>
      magic<br>
      LiberaRelay (relay@2607:f5a0:0:7::9) has joined #hardenedbsd<br>
      [Libera] R​elay (relay@user/relay) has joined #hardenedbsd<br>
      xmj: sup ? Libra?? whats dat ?<br>
      new irc net, made by freenode staffers that have been booted<br>
      freenode went through a hostile takeover<br>
      ... in case you haven't noticed ;p<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://kline.sh/">https://kline.sh/</a><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <br>
            Cheers,<br>
            Quentin<br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------B49E449736281B9C2910CA0B--
