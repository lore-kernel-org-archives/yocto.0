Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CAB1E00B85; Thu, 15 May 2014 00:26:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C214E00A1D
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 00:26:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B9C1127E01A;
	Thu, 15 May 2014 07:25:59 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id HGhAc-H7ON_e; Thu, 15 May 2014 07:25:58 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id BAAB527E015;
	Thu, 15 May 2014 07:25:58 +0000 (UTC)
Message-ID: <53746BFC.2090506@dynamicdevices.co.uk>
Date: Thu, 15 May 2014 08:25:48 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: ezekiel@sanborndeasis.net
References: <20140514151603.8c4e4b9406b77e1e78d5069819454ed7.d51cb4e19e.wbe@email14.secureserver.net>
In-Reply-To: <20140514151603.8c4e4b9406b77e1e78d5069819454ed7.d51cb4e19e.wbe@email14.secureserver.net>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: devshell: what am I missing?
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
X-List-Received-Date: Thu, 15 May 2014 07:26:07 -0000
Content-Type: multipart/alternative;
	boundary="------------040807090106050005050202"

--------------040807090106050005050202
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 14/05/2014 23:16, ezekiel@sanborndeasis.net wrote:
> OE newbie here, so I may just be missing something.
>
> I am running in latest pocky-daisy-11.0.0. I created my own simple
> layer with the helloworld sample in it. I am building for machine
> qemuarm. The build itself is working fine, the packages I have added
> are showing up in the image etc.
>
> But when I try to use the devshell, I dont see the ability to run the
> tasks 1 by 1 (ex. compile or configure).
>
> After
>
> bitbake sample -c devshell
>
> I get a shell, fine. But neither "compile" or "do_compile" is a
> recognized command. I can run them via the temp dir.
>
> temp/run.do_compile
>
> -ezekiel
>

That's correct Ezekiel




--------------040807090106050005050202
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 14/05/2014 23:16,
      <a class="moz-txt-link-abbreviated" href="mailto:ezekiel@sanborndeasis.net">ezekiel@sanborndeasis.net</a> wrote:<br>
    </div>
    <blockquote
cite="mid:20140514151603.8c4e4b9406b77e1e78d5069819454ed7.d51cb4e19e.wbe@email14.secureserver.net"
      type="cite"><span style="font-family:Verdana; color:#000000;
        font-size:10pt;">
        <div>OE newbie here, so I may just be missing something.</div>
        <div><br>
        </div>
        <div>I am running in latest pocky-daisy-11.0.0. I created my own
          simple layer with the helloworld sample in it. I am building
          for machine qemuarm. The build itself is working fine, the
          packages I have added are showing up in the image etc.</div>
        <div><br>
        </div>
        <div>But when I try to use the devshell, I dont see the ability
          to run the tasks 1 by 1 (ex. compile or configure).<br>
        </div>
        <div><br>
        </div>
        <div>After </div>
        <div><br>
        </div>
        <div>bitbake sample -c devshell</div>
        <div><br>
        </div>
        <div>I get a shell, fine. But neither "compile" or "do_compile"
          is a recognized command. I can run them via the temp dir.</div>
        <div><br>
        </div>
        <div>temp/run.do_compile<br>
        </div>
        <div><br>
        </div>
        <div>-ezekiel<br>
        </div>
      </span>
      <br>
    </blockquote>
    <br>
    That's correct Ezekiel<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040807090106050005050202--
