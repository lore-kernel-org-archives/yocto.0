Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91382E00750; Mon,  9 Mar 2015 10:22:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ECFAE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 10:22:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7A16A27E1B2;
	Mon,  9 Mar 2015 17:22:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 95yh9mWlbJmi; Mon,  9 Mar 2015 17:22:36 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-77-115.w109-208.abo.wanadoo.fr
	[109.208.172.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A3C7F27E19A;
	Mon,  9 Mar 2015 17:22:34 +0000 (UTC)
Message-ID: <54FDD677.5040606@dynamicdevices.co.uk>
Date: Mon, 09 Mar 2015 18:20:55 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Kfrell <snoopp.5.20@hotmail.fr>, yocto@yoctoproject.org
References: <loom.20150309T171019-54@post.gmane.org>
In-Reply-To: <loom.20150309T171019-54@post.gmane.org>
Subject: Re: Adding new library to yocto project
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
X-List-Received-Date: Mon, 09 Mar 2015 17:22:47 -0000
Content-Type: multipart/alternative;
	boundary="------------060409060801020900030609"

--------------060409060801020900030609
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 09/03/2015 17:50, Kfrell wrote:
> I am using Yocto and I just would like to integrate a new library 
> in my project.
>
> I create a new recipe named "libxerces" which contains a file
> "libxerces-3.1.1.bb". The bb file is quite simple and it is based 
> on autotools : 
>
> DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
> HOMEPAGE = "http://xerces.apache.org/xerces-c/"
> PRIORITY = "optional"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
>
> PR = "r1"
>
> SRC_URI =
> "http://mirror.serversupportforum.de/apache/xerces/c/3/sources/xerces-c-${PV}.tar.gz"
>
> SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] =
> "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
>
> s="${WORKDIR}/xerces-c-${PV}"
>
> inherit autotools pkgconfig
>
> BBCLASSEXTEND += "native"
>
> I added "libxerces" to my bb image by using IMAGE_INSTALL += " libxerces".
> Then, I try to build my image thru bitbake my-image-test and eveything is
> done correctly but libxerces returns some errors :
>
> I just would like to create the .ipk package named libxerces in 
> which .so files should be available.
>

This might possibly help. The example I created shows how to build a
package including an autotools generated library

https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles

Regards, Alex


--------------060409060801020900030609
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
    <div class="moz-cite-prefix">On 09/03/2015 17:50, Kfrell wrote:<br>
    </div>
    <blockquote cite="mid:loom.20150309T171019-54@post.gmane.org"
      type="cite">
      <pre wrap="">I am using Yocto and I just would like to integrate a new library 
in my project.

I create a new recipe named "libxerces" which contains a file
"libxerces-3.1.1.bb". The bb file is quite simple and it is based 
on autotools : 

DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://xerces.apache.org/xerces-c/">"http://xerces.apache.org/xerces-c/"</a>
PRIORITY = "optional"
LICENSE = "MIT"
LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57">"file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"</a>

PR = "r1"

SRC_URI =
<a class="moz-txt-link-rfc2396E" href="http://mirror.serversupportforum.de/apache/xerces/c/3/sources/xerces-c-${PV}.tar.gz">"http://mirror.serversupportforum.de/apache/xerces/c/3/sources/xerces-c-${PV}.tar.gz"</a>

SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
SRC_URI[sha256sum] =
"a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"

s="${WORKDIR}/xerces-c-${PV}"

inherit autotools pkgconfig

BBCLASSEXTEND += "native"

I added "libxerces" to my bb image by using IMAGE_INSTALL += " libxerces".
Then, I try to build my image thru bitbake my-image-test and eveything is
done correctly but libxerces returns some errors :

I just would like to create the .ipk package named libxerces in 
which .so files should be available.

</pre>
    </blockquote>
    <br>
    This might possibly help. The example I created shows how to build a
    package including an autotools generated library<br>
    <br>
<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles">https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles</a><br>
    <br>
    Regards, Alex<br>
    <br>
    <div style="bottom: auto; left: 287px; right: auto; top: 691px;"
      class="translator-theme-default" id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------060409060801020900030609--
