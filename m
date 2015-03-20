Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F9C7E00779; Fri, 20 Mar 2015 01:53:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A67E0076B
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 01:53:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id C61A827E1DF;
	Fri, 20 Mar 2015 08:53:02 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XlRWkBCKOCCR; Fri, 20 Mar 2015 08:53:01 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-94-2.w109-208.abo.wanadoo.fr
	[109.208.61.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1B75227E1D3;
	Fri, 20 Mar 2015 08:53:01 +0000 (UTC)
Message-ID: <550BDF86.4040706@dynamicdevices.co.uk>
Date: Fri, 20 Mar 2015 09:51:18 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: pj0585@gmail.com
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
In-Reply-To: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux Package Management
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
X-List-Received-Date: Fri, 20 Mar 2015 08:53:06 -0000
Content-Type: multipart/alternative;
	boundary="------------090108030301080904090600"

--------------090108030301080904090600
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 20/03/2015 09:34, Prasant J wrote:
> Hi,
>
> I'm looking for package management for my embedded linux systems
> (yocto on armv7 iMX6Q)
>
>
> I'm looking for the following features:
>
> (a) Install & remove a package
> (b) Install packages and its dependencies
> (c) Install a package with conflicts, such that the conflicting
> package is force removed
> (d) A local location with packages should serve as a package source
> (e) Remote server package (http file server based)
> (f) List of my packages installed
> (g) List of my packages not installed but available on the http file server
> (h) List of my packages that have updates (new version)
> (i) To be able to manage packages for multiple architectures (eg. rpm
> can produce packages for multiple architectures using one spec file)
>
>
> The above features will be invoked by the application GUI.
> Any suggestions: which package management solution would answer all
> the above use cases?
>
>

(e) I use smart + RPM. I have a remote package server setup via this in
local.conf

FEED_DEPLOYDIR_BASE_URI = "http://packages.foo.bar"

Then I'm rsyncing the files up to the server after a bitbake package-index.

Then smart update / search / install

That seems to work well in my testing.

Regards,

Alex


--------------090108030301080904090600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
    <link href="chrome://translator/skin/floatingPanel.css"
      type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 20/03/2015 09:34, Prasant J wrote:<br>
    </div>
    <blockquote
cite="mid:CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com"
      type="cite">
      <pre wrap="">Hi,

I'm looking for package management for my embedded linux systems
(yocto on armv7 iMX6Q)


I'm looking for the following features:

(a) Install &amp; remove a package
(b) Install packages and its dependencies
(c) Install a package with conflicts, such that the conflicting
package is force removed
(d) A local location with packages should serve as a package source
(e) Remote server package (http file server based)
(f) List of my packages installed
(g) List of my packages not installed but available on the http file server
(h) List of my packages that have updates (new version)
(i) To be able to manage packages for multiple architectures (eg. rpm
can produce packages for multiple architectures using one spec file)


The above features will be invoked by the application GUI.
Any suggestions: which package management solution would answer all
the above use cases?


</pre>
    </blockquote>
    <br>
    (e) I use smart + RPM. I have a remote package server setup via this
    in local.conf<br>
    <br>
    FEED_DEPLOYDIR_BASE_URI = <a class="moz-txt-link-rfc2396E" href="http://packages.foo.bar">"http://packages.foo.bar"</a><br>
    <br>
    Then I'm rsyncing the files up to the server after a bitbake
    package-index.<br>
    <br>
    Then smart update / search / install<br>
    <br>
    That seems to work well in my testing.<br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <br>
    <div style="bottom: auto; left: 124px; right: auto; top: 635px;
      display: none;" class="translator-theme-default"
      id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------090108030301080904090600--
