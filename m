Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A7B6E00D07; Thu, 27 Jul 2017 23:31:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6577DE00CF9
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:31:01 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id 77so11757751itj.4
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=4PXs269yWCpCRPMx2MOKcJGbHitT2KDw/53kL8UPM30=;
	b=SpvLOaFvIZK2QIlcF1yEv8llRHb/dUxnn4sKkM19LjaA5Zvm9jp6HCDVOJkvvHmrY6
	oKKl6ddi+xzhlsJCv9KbwAOIKgr0IjKJhS9f2jPf6X5KFu5GQNhaEljaUHS5QM/96Iqr
	o2G7eG5xeKsDqI7ogGCCqCM5XUHv5qPEqwCaUC31qWgGm2f7KtYO1YoXztN9t13tgwxM
	6tDshIF9IFW73If5T+bQzqyzWWI3P3FQtBIK2yGeA3GFoujSLoL+ICipbbhnaM7KVHMl
	0DsAj4tUI8efL3DLJ2SqO3lQNjtWs5qahdc1Gpi8EV1Xv24IGbtNClq9EGD+PYW+aYwL
	XlHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=4PXs269yWCpCRPMx2MOKcJGbHitT2KDw/53kL8UPM30=;
	b=RqYPqsGQAlPQiv7MMrbn8U7gm/q2U9D6PcqKRaBJo24bZdSzqLZ1jgEHxDDSdrrIF4
	rqHeUDos38DRWnXUzbwOsScaIl94us8OGPLRPXmCX/ZrFme1kFvQa9iUnJKimMumsYEn
	2VHFpPDhSZRI4DxBTCi0Ws/QgHgi7LWbixC70ErqZJxss2FwoiVe4QjrxoVuNEeOxnw5
	FbhEjvRZGXw1mRQezu23lWGppgqgPBZNvPsC9b91WegFchv1CfFljwuWw+1qtTh2mcUH
	Asv0N6ohXzTvlR3bm8agTjE6ixClIQcppbU/a3+LhE4GZuH/A3dGM9gSKXJnYuyXG7r+
	WrTw==
X-Gm-Message-State: AIVw112zMw67ycP3Ea3PP1SccrTPpqIt2qJk5MKMOGAHrJsw/aCLmzq9
	xziaBzWR0MmiKblk
X-Received: by 10.36.166.76 with SMTP id r12mr7428842iti.158.1501223461406;
	Thu, 27 Jul 2017 23:31:01 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	l184sm9796568iol.43.2017.07.27.23.30.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 23:31:00 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
Date: Fri, 28 Jul 2017 14:30:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 06:31:05 -0000
Content-Type: multipart/alternative;
	boundary="------------201F8F6019E11D8ED782454A"
Content-Language: en-US

--------------201F8F6019E11D8ED782454A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I've installed on my system,

but have no idea on how to use it yet ?

Usage:
    icecc [compiler] [compile options] -o OBJECT -c SOURCE
    icecc --build-native [compilertype] [file...]
    icecc --help

Options:
    --help                     explain usage and exit
    --version                  show version and exit
    --build-native             create icecc environment
Environment Variables:
    ICECC                      if set to "no", just exec the real compiler
    ICECC_VERSION              use a specific icecc environment, see 
icecc-create-env
    ICECC_DEBUG                [info | warnings | debug]
                               sets verboseness of icecream client.
    ICECC_LOGFILE              if set, additional debug information is 
logged to the specified file
    ICECC_REPEAT_RATE          the number of jobs out of 1000 that should be
                               compiled on multiple hosts to ensure that 
they're
                               producing the same output.  The default is 0.
    ICECC_PREFERRED_HOST       overrides scheduler decisions if set.
    ICECC_CC                   set C compiler name (default gcc).
    ICECC_CXX                  set C++ compiler name (default g++).
    ICECC_CLANG_REMOTE_CPP     set to 1 or 0 to override remote 
precompiling with clang
                               (requires clang -frewrite-includes option).
    ICECC_IGNORE_UNVERIFIED    if set, hosts where environment cannot be 
verified are not used.
    ICECC_EXTRAFILES           additi


On 28/07/17 14:22, Josef Holzmayr wrote:
> On 28.07.2017 08:17, Riko Ho wrote:
>> icecc.bbclass  on Yocto manual, but I'm not sure on how to use it yet ?
>
> to me, the description in
>
> https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake 
>
>
> looks pretty good - for the bitbake side of things. Setting up icecc, 
> again, is distribution specific (according to themselves, see 
> https://github.com/icecc/icecream/blob/master/README.md#installation).

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------201F8F6019E11D8ED782454A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I've installed on my system,</p>
    <p>but have no idea on how to use it yet ?</p>
    <p>Usage:<br>
         icecc [compiler] [compile options] -o OBJECT -c SOURCE<br>
         icecc --build-native [compilertype] [file...]<br>
         icecc --help<br>
      <br>
      Options:<br>
         --help                     explain usage and exit<br>
         --version                  show version and exit<br>
         --build-native             create icecc environment<br>
      Environment Variables:<br>
         ICECC                      if set to "no", just exec the real
      compiler<br>
         ICECC_VERSION              use a specific icecc environment,
      see icecc-create-env<br>
         ICECC_DEBUG                [info | warnings | debug]<br>
                                    sets verboseness of icecream client.<br>
         ICECC_LOGFILE              if set, additional debug information
      is logged to the specified file<br>
         ICECC_REPEAT_RATE          the number of jobs out of 1000 that
      should be<br>
                                    compiled on multiple hosts to ensure
      that they're<br>
                                    producing the same output.  The
      default is 0.<br>
         ICECC_PREFERRED_HOST       overrides scheduler decisions if
      set.<br>
         ICECC_CC                   set C compiler name (default gcc).<br>
         ICECC_CXX                  set C++ compiler name (default g++).<br>
         ICECC_CLANG_REMOTE_CPP     set to 1 or 0 to override remote
      precompiling with clang<br>
                                    (requires clang -frewrite-includes
      option).<br>
         ICECC_IGNORE_UNVERIFIED    if set, hosts where environment
      cannot be verified are not used.<br>
         ICECC_EXTRAFILES           additi<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 28/07/17 14:22, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de">On
      28.07.2017 08:17, Riko Ho wrote:
      <br>
      <blockquote type="cite">icecc.bbclass  on Yocto manual, but I'm
        not sure on how to use it yet ?
        <br>
      </blockquote>
      <br>
      to me, the description in
      <br>
      <br>
<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake">https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake</a>
      <br>
      <br>
      looks pretty good - for the bitbake side of things. Setting up
      icecc, again, is distribution specific (according to themselves,
      see
      <a class="moz-txt-link-freetext" href="https://github.com/icecc/icecream/blob/master/README.md#installation">https://github.com/icecc/icecream/blob/master/README.md#installation</a>).
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------201F8F6019E11D8ED782454A--
