Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DCC3E00D1E; Sat, 27 Apr 2019 01:05:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.32.124.17 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 383 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 Apr 2019 01:05:43 PDT
Received: from 20.mo6.mail-out.ovh.net (20.mo6.mail-out.ovh.net
	[178.32.124.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68AFAE00D11
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2019 01:05:43 -0700 (PDT)
Received: from player688.ha.ovh.net (unknown [10.109.159.35])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id 43BBE1BE354
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2019 09:59:19 +0200 (CEST)
Received: from 3mdeb.com (89-64-55-156.dynamic.chello.pl [89.64.55.156])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player688.ha.ovh.net (Postfix) with ESMTPSA id 891E9518A635
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2019 07:59:18 +0000 (UTC)
To: yocto@yoctoproject.org
References: <DM6PR04MB55626373DDB86D5E8B65596FFE3E0@DM6PR04MB5562.namprd04.prod.outlook.com>
	<CAB=6tBSJY-xDoFsz8gawrDYFkUOAzLyFAS1t9L6t4dnqnHW=Bg@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <d4aeb575-abaa-8d3e-70d4-3cb4614d054a@3mdeb.com>
Date: Sat, 27 Apr 2019 09:59:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAB=6tBSJY-xDoFsz8gawrDYFkUOAzLyFAS1t9L6t4dnqnHW=Bg@mail.gmail.com>
X-Ovh-Tracer-Id: 853150657845735081
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrheejgddufeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: Yocto System Requirement for developing OS
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
X-List-Received-Date: Sat, 27 Apr 2019 08:05:44 -0000
Content-Type: multipart/alternative;
	boundary="------------3AEE080C524107A597498D02"
Content-Language: en-US

--------------3AEE080C524107A597498D02
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 27.04.2019 05:29, Chuck Wolber wrote:
> It depends on a lot of factors. But for actually building yocto 
> images... I find that 1.5 gigs of RAM per CPU seems to be about right 
> on the virtual machines we use to build images.
>
> ..Ch:W..
>
> On Fri, Apr 26, 2019 at 17:29 raja.g kumar <rajakumar.g@hotmail.com 
> <mailto:rajakumar.g@hotmail.com>> wrote:
>
>     Hi
>     Can I know the RAM ,Disk space and processor requirement for
>     developing the os with yocto for IoT ?
>
I think the only hard requirement is the storage size. Also the memory, 
to some extend.
The quickstart guide mentions 50GB of space requirement: 
https://www.yoctoproject.org/docs/latest/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-compatible-distro

The reasonable minimum I would recommend today is 4 threads, 4 - 8 GB of 
memory and 100GB of storage.
You of course need storage to store all the build artifacts and 
downloaded stuff.
The memory may be a bottleneck when linking huge applications (webkit, 
web browsers).
The CPU mostly impacts the build time.

>
>     Please suggest and it would be greatly helpful.
>
>     Regards
>     Rajakumar G
>
>     Get Outlook for Android <https://aka.ms/ghei36>
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
> -- 
> “I would challenge anyone here to think of a question upon which we 
> once had a scientific answer, however inadequate, but for which now 
> the best answer is a religious one."  -Sam Harris
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------3AEE080C524107A597498D02
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 27.04.2019 05:29, Chuck Wolber
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAB=6tBSJY-xDoFsz8gawrDYFkUOAzLyFAS1t9L6t4dnqnHW=Bg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>
        <div dir="auto">It depends on a lot of factors. But for actually
          building yocto images... I find that 1.5 gigs of RAM per CPU
          seems to be about right on the virtual machines we use to
          build images.</div>
      </div>
      <div dir="auto"><br>
      </div>
      <div dir="auto">..Ch:W..</div>
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Apr 26, 2019 at
            17:29 raja.g kumar &lt;<a
              href="mailto:rajakumar.g@hotmail.com"
              moz-do-not-send="true">rajakumar.g@hotmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Hi
                <br>
              </div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Can
                I know the RAM ,Disk space and processor requirement for
                developing the os with yocto for IoT ?<br>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    I think the only hard requirement is the storage size. Also the
    memory, to some extend.<br>
    The quickstart guide mentions 50GB of space requirement:
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/latest/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-compatible-distro">https://www.yoctoproject.org/docs/latest/brief-yoctoprojectqs/brief-yoctoprojectqs.html#brief-compatible-distro</a><br>
    <br>
    <p>The reasonable minimum I would recommend today is 4 threads, 4 -
      8 GB of memory and 100GB of storage.<br>
      You of course need storage to store all the build artifacts and
      downloaded stuff.<br>
      The memory may be a bottleneck when linking huge applications
      (webkit, web browsers).<br>
      The CPU mostly impacts the build time.<br>
    </p>
    <blockquote type="cite"
cite="mid:CAB=6tBSJY-xDoFsz8gawrDYFkUOAzLyFAS1t9L6t4dnqnHW=Bg@mail.gmail.com">
      <div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black"><br>
              </div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Please
                suggest and it would be greatly helpful.<br>
                <br>
              </div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Regards
                <br>
              </div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Rajakumar
                G<br>
                <br>
              </div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">
                <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black">Get
                  <a href="https://aka.ms/ghei36" target="_blank"
                    moz-do-not-send="true">Outlook for Android</a></div>
              </div>
            </div>
            <div>
              <div dir="auto"
style="direction:ltr;margin:0;padding:0;font-family:sans-serif;font-size:11pt;color:black"><br>
              </div>
            </div>
            -- <br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a href="mailto:yocto@yoctoproject.org" target="_blank"
              moz-do-not-send="true">yocto@yoctoproject.org</a><br>
            <a href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          </blockquote>
        </div>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature"
        data-smartmail="gmail_signature">
        <div dir="ltr">“I would challenge anyone here to think of a
          question upon which we once had a scientific answer, however
          inadequate, but for which now the best answer is a religious
          one."  -Sam Harris</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------3AEE080C524107A597498D02--
