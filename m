Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68699E00BE1; Tue, 10 Jun 2014 16:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9493EE00B83
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 16:20:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 8592227E039;
	Tue, 10 Jun 2014 23:20:56 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 1OLEtaxUFrqP; Tue, 10 Jun 2014 23:20:31 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B791527E036;
	Tue, 10 Jun 2014 23:20:31 +0000 (UTC)
Message-ID: <539792BD.60804@dynamicdevices.co.uk>
Date: Wed, 11 Jun 2014 00:20:29 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHD-SvL=6df=aW6LWG03Qb0rUCSHeS5F+LVgW5SCWj4KQ@mail.gmail.com>
In-Reply-To: <CAK18fxHD-SvL=6df=aW6LWG03Qb0rUCSHeS5F+LVgW5SCWj4KQ@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Tue, 10 Jun 2014 23:21:09 -0000
Content-Type: multipart/alternative;
	boundary="------------060005020506060909010004"

--------------060005020506060909010004
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/06/2014 19:22, Andrei Gherzan wrote:
>
>
> On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>     libmmal_vc_client.so makes use of __attribute__(constructor) to
>     ensure that supplier components (e.g. camera) are loaded when the
>     static library is loaded.
>
>
> There shouldn't be more than 78 characters per line. I did this change
> for this patch (the other you already submited). More info:
> http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Understood - thanks Andrei, I'll try to bear that in mind.

Perhaps you'd be open to the idea of a patch to add these requirements
into the meta-raspberrypi README in-between 5A/5B.

I believe it would help contributors like myself, who are new to the
process requirements, to understand how to put a patch together
correctly, as well as where to sent it.

Cheers,

Alex

--------------060005020506060909010004
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 10/06/2014 19:22, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxHD-SvL=6df=aW6LWG03Qb0rUCSHeS5F+LVgW5SCWj4KQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Mon, Jun 2, 2014 at 1:58 PM, Alex
            J Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
              <div class="">libmmal_vc_client.so makes use of
                __attribute__(constructor) to ensure that supplier
                components (e.g. camera) are loaded when the static
                library is loaded.<br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>There shouldn't be more than 78 characters per line. I
              did this change for this patch (the other you already
              submited). More info:<br>
            </div>
            <div><a moz-do-not-send="true"
                href="http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines">http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Understood - thanks Andrei, I'll try to bear that in mind. <br>
    <br>
    Perhaps you'd be open to the idea of a patch to add these
    requirements into the meta-raspberrypi README in-between 5A/5B.<br>
    <br>
    I believe it would help contributors like myself, who are new to the
    process requirements, to understand how to put a patch together
    correctly, as well as where to sent it.<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
  </body>
</html>

--------------060005020506060909010004--
