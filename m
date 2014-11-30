Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0694E008B4; Sun, 30 Nov 2014 00:03:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBFBEE00832
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 00:03:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sAU83Mvb017307
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 00:03:22 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Sun, 30 Nov 2014 00:03:22 -0800
Message-ID: <547ACF5C.8010403@windriver.com>
Date: Sun, 30 Nov 2014 16:03:40 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
In-Reply-To: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: When to create a new build directory for yocto?
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
X-List-Received-Date: Sun, 30 Nov 2014 08:03:27 -0000
Content-Type: multipart/alternative;
	boundary="------------040504050309040501020404"

--------------040504050309040501020404
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I would suggest to use separate build directories but let these builds 
to share downloads and sstate.

Regards,
Chen Qi

On 11/30/2014 12:49 PM, Qiang Yu wrote:
> Hi all,
>
> I'm maintaining a Yocto build system to produce these outputs:
>
> 1. ARM SOC 1
>   1). board 1 image
>   2). board 2 image
>   3). SDK for i686
>   4). SDK for x86_64
> 2. ARM SOC 2
>   1). board 3 image
>   2). board 4 image
>   3). SDK for i686
>   4). SDK for x86_64
>
> Now I don't know the right way to create build directories for these 
> builds. The simplest way
> I think is creating one build directory for each of these builds. But 
> it wast resource for boards
> with the same SOC which can share cross toolchain. And ARM SOC 1 and 
> ARM SOC 2 use
> different conf/bblayers.conf to add different BSP layer, I need to 
> modify it when switch SOC.
> So the right way is creating one build directory for each SOC, then 
> bitbake each output's recipe,
> right?
>
> I am also not sure if I can put the SDK and board image in the same 
> build directory. Because
> once I build a board's image after creating its SDK, I add gdbserver 
> to it, but the build fail without
> really building the gdbserver package. So I guess the board image 
> build is confused by the SDK
> build state.
>
> So the conclusion is I need a recommended way to separate output into 
> different build directories:
> 1. minimize rebuild shared packages
> 2. no build state corruption
> 3. if multi output in the same build dir, no change to conf/ files or 
> an easy way to switch between
>
> Regards,
> Qiang
>
>
>


--------------040504050309040501020404
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I would suggest to use separate build
      directories but let these builds to share downloads and sstate.<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 11/30/2014 12:49 PM, Qiang Yu wrote:<br>
    </div>
    <blockquote
cite="mid:CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">Hi all,<br>
        <br>
        I'm maintaining a Yocto build system to produce these outputs:<br>
        <br>
        1. ARM SOC 1<br>
          1). board 1 image<br>
          2). board 2 image<br>
          3). SDK for i686<br>
          4). SDK for x86_64<br>
        2. ARM SOC 2<br>
          1). board 3 image<br>
          2). board 4 image<br>
          3). SDK for i686<br>
          4). SDK for x86_64<br>
        <br>
        Now I don't know the right way to create build directories for
        these builds. The simplest way 
        <div>I think is creating one build directory for each of these
          builds. But it wast resource for boards </div>
        <div>with the same SOC which can share cross toolchain. And ARM
          SOC 1 and ARM SOC 2 use </div>
        <div>different conf/bblayers.conf to add different BSP layer, I
          need to modify it when switch SOC. </div>
        <div>So the right way is creating one build directory for
          each SOC, then bitbake each output's recipe, </div>
        <div>right?</div>
        <div><br>
          I am also not sure if I can put the SDK and board image in the
          same build directory. Because </div>
        <div>once I build a board's image after creating its SDK, I add
          gdbserver to it, but the build fail without </div>
        <div>really building the gdbserver package. So I guess the board
          image build is confused by the SDK </div>
        <div>build state.
          <div><br>
          </div>
          <div>So the conclusion is I need a recommended way to separate
            output into different build directories:</div>
          <div>1. minimize rebuild shared packages</div>
          <div>2. no build state corruption</div>
          <div>3. if multi output in the same build dir, no change to
            conf/ files or an easy way to switch between</div>
          <div><br>
          </div>
          <div>Regards,</div>
          <div>Qiang</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------040504050309040501020404--
