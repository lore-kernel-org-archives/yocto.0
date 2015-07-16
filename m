Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C3E1E00978; Thu, 16 Jul 2015 02:07:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 822BEE00957
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 02:06:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 906A627E2CD;
	Thu, 16 Jul 2015 09:06:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id b5a56-ZTp82d; Thu, 16 Jul 2015 09:06:53 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 1F0BA27E289;
	Thu, 16 Jul 2015 09:06:53 +0000 (UTC)
Message-ID: <55A77427.5050808@dynamicdevices.co.uk>
Date: Thu, 16 Jul 2015 10:06:47 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1436830398.git.rich.tollerton@ni.com>
In-Reply-To: <cover.1436830398.git.rich.tollerton@ni.com>
Subject: Re: [meta-mono] [PATCH 0/1] mono: use PARALLEL_MAKEINST="" instead of PARALLEL_MAKE=""
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
X-List-Received-Date: Thu, 16 Jul 2015 09:07:02 -0000
Content-Type: multipart/alternative;
	boundary="------------010209090301040406010206"

--------------010209090301040406010206
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 16/07/2015 02:25, Richard Tollerton wrote:
> Hi, last week I sent out a patch to disable parallel builds in mono; in
> hindsight I should have used PARALLEL_MAKEINST instead of PARALLEL_MAKE. Patch
> follows.
>
> This is one of several topic branches I've hacked together over the last couple
> of weeks; you can see the rest at https://github.com/rtollert/meta-mono. I'll
> be meting them out over the next several days.
>
>
> The following changes since commit 9f63cbaaa859f9ae55288de06c1c0eb0e6992f53:
>
>   mono-4.xx.inc: disable parallel make (2015-07-08 11:46:11 +0100)
>
> are available in the git repository at:
>
>   git://github.com/rtollert/meta-mono dev/rtollert/v2/parallel
>   https://github.com/rtollert/meta-mono/tree/dev/rtollert/v2/parallel
>
> Richard Tollerton (1):
>   mono-4.xx.inc: use PARALLEL_MAKEINST="" instead of PARALLEL_MAKE=""
>
>  recipes-mono/mono/mono-4.xx.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Merged, thanks Richard

--------------010209090301040406010206
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
    <div class="moz-cite-prefix">On 16/07/2015 02:25, Richard Tollerton
      wrote:<br>
    </div>
    <blockquote cite="mid:cover.1436830398.git.rich.tollerton@ni.com"
      type="cite">
      <pre wrap="">Hi, last week I sent out a patch to disable parallel builds in mono; in
hindsight I should have used PARALLEL_MAKEINST instead of PARALLEL_MAKE. Patch
follows.

This is one of several topic branches I've hacked together over the last couple
of weeks; you can see the rest at <a class="moz-txt-link-freetext" href="https://github.com/rtollert/meta-mono">https://github.com/rtollert/meta-mono</a>. I'll
be meting them out over the next several days.


The following changes since commit 9f63cbaaa859f9ae55288de06c1c0eb0e6992f53:

  mono-4.xx.inc: disable parallel make (2015-07-08 11:46:11 +0100)

are available in the git repository at:

  <a class="moz-txt-link-freetext" href="git://github.com/rtollert/meta-mono">git://github.com/rtollert/meta-mono</a> dev/rtollert/v2/parallel
  <a class="moz-txt-link-freetext" href="https://github.com/rtollert/meta-mono/tree/dev/rtollert/v2/parallel">https://github.com/rtollert/meta-mono/tree/dev/rtollert/v2/parallel</a>

Richard Tollerton (1):
  mono-4.xx.inc: use PARALLEL_MAKEINST="" instead of PARALLEL_MAKE=""

 recipes-mono/mono/mono-4.xx.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
</pre>
    </blockquote>
    <br>
    Merged, thanks Richard<br>
    <div style="bottom: auto; left: 648px; right: auto; top: 480px;"
      class="translator-theme-default" id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------010209090301040406010206--
