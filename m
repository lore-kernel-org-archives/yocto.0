Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C2EAE00858; Mon, 30 Mar 2015 23:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37B04E007A0
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 23:39:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7BEAE27E205;
	Tue, 31 Mar 2015 06:39:41 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id bU3dWgw7Y84T; Tue, 31 Mar 2015 06:39:39 +0000 (UTC)
Received: from [10.170.212.230] (unknown [212.99.76.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id BE34F27E1DF;
	Tue, 31 Mar 2015 06:39:38 +0000 (UTC)
Message-ID: <551A40B8.2000307@dynamicdevices.co.uk>
Date: Tue, 31 Mar 2015 08:37:44 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
	Bruce Ashfield <bruce.ashfield@windriver.com>
References: <551989B0.7070907@dynamicdevices.co.uk>
	<CAJTo0LZ7D4NsVNP155jOy0pRzLCCxrYu_EbSLG60cQU8TN_hfQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZ7D4NsVNP155jOy0pRzLCCxrYu_EbSLG60cQU8TN_hfQ@mail.gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: yocto master work-shared, kernel .config seems to have gone awol
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
X-List-Received-Date: Tue, 31 Mar 2015 06:39:46 -0000
Content-Type: multipart/alternative;
	boundary="------------060504070703020405030506"

--------------060504070703020405030506
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 30/03/2015 21:27, Burton, Ross wrote:
>
> On 30 March 2015 at 18:36, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>     I'm updating to Yocto master and have been seeing that when I
>     bitbake -c
>     devshell virtual/kernel I go into a work-shared tree now.
>
>
> The devshell drops you into whatever ${S} is for that recipe, which
> for the kernel is ${STAGING_KERNEL_DIR} since the kernel
> optimisations.  For the kernel yes, this is sub-optimal.  Maybe the
> kernel should override this using the variable I added (as Bruce
> mentioned).
>

Thanks Ross, Bruce for the feedback and pointers. I shall work through.

One thought - it might perhaps be helpful to have two command variants
to easily drop into either place from the command line without having to
worry about environment variables?

e.g. bitbake -c devshell-shared and bitbake -c devshell or some such?

Regards, Alex

--------------060504070703020405030506
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <link href="chrome://translator/skin/floatingPanel.css"
      type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 30/03/2015 21:27, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZ7D4NsVNP155jOy0pRzLCCxrYu_EbSLG60cQU8TN_hfQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 30 March 2015 at 18:36, Alex J
            Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":75g" class="a3s" style="overflow:hidden">I'm
                updating to Yocto master and have been seeing that when
                I bitbake -c<br>
                devshell virtual/kernel I go into a work-shared tree
                now.<br>
              </div>
            </blockquote>
          </div>
          <br>
        </div>
        <div class="gmail_extra">The devshell drops you into whatever
          ${S} is for that recipe, which for the kernel is
          ${STAGING_KERNEL_DIR} since the kernel optimisations.  For the
          kernel yes, this is sub-optimal.  Maybe the kernel should
          override this using the variable I added (as Bruce mentioned).</div>
        <div class="gmail_extra"><br>
        </div>
      </div>
    </blockquote>
    <br>
    Thanks Ross, Bruce for the feedback and pointers. I shall work
    through. <br>
    <br>
    One thought - it might perhaps be helpful to have two command
    variants to easily drop into either place from the command line
    without having to worry about environment variables? <br>
    <br>
    e.g. bitbake -c devshell-shared and bitbake -c devshell or some
    such?<br>
    <br>
    Regards, Alex<br>
    <div style="bottom: auto; left: 217px; right: auto; top: 259px;
      display: none;" class="translator-theme-default"
      id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------060504070703020405030506--
