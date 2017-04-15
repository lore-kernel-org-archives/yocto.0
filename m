Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972E1E00A03; Sat, 15 Apr 2017 06:42:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.84 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [194.25.134.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48BA4E0053A
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 06:42:54 -0700 (PDT)
Received: from fwd34.aul.t-online.de (fwd34.aul.t-online.de [172.20.26.145])
	by mailout09.t-online.de (Postfix) with SMTP id C0C87425850E;
	Sat, 15 Apr 2017 15:42:52 +0200 (CEST)
Received: from [192.168.2.106]
	(XKYu9EZSYhsdBX2jtqrC4vxSH63-gFKJvZhY18x2u-x-SW3C4C+a5TYlKKdoT+7Q7a@[84.134.215.159])
	by fwd34.t-online.de with (TLSv1.2:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1czNyR-0qe2Wu0; Sat, 15 Apr 2017 15:42:47 +0200
To: "Burton, Ross" <ross.burton@intel.com>
References: <63327293-f410-0ef4-f64f-ccb8e1f77545@t-online.de>
	<CAJTo0LZdTsHP+hcSM74ELOfLqxhFWmunnr7SLFywCLokmmuKuw@mail.gmail.com>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <5cd6ea1e-4818-10f5-7179-0e77f5490706@t-online.de>
Date: Sat, 15 Apr 2017 15:42:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZdTsHP+hcSM74ELOfLqxhFWmunnr7SLFywCLokmmuKuw@mail.gmail.com>
X-ID: XKYu9EZSYhsdBX2jtqrC4vxSH63-gFKJvZhY18x2u-x-SW3C4C+a5TYlKKdoT+7Q7a
X-TOI-MSGID: a05334ee-6dba-4dbd-af57-54d192e67b8a
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unpacking deb packages
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
X-List-Received-Date: Sat, 15 Apr 2017 13:42:56 -0000
Content-Type: multipart/alternative;
	boundary="------------8D63D96369B36092DF19D872"

--------------8D63D96369B36092DF19D872
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you for the reply.

It looks like the problem is gone.

i guess this one fixed it

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=283a9b3883083e45bbdaf0488a3c6c76c5b197d7


Am 14.04.2017 um 01:09 schrieb Burton, Ross:
>
> On 10 April 2017 at 14:32, Markus Volk <f_l_k@t-online.de 
> <mailto:f_l_k@t-online.de>> wrote:
>
>     i´m building  for x86_64 using the recent master branch and
>     encounter problems when fetching deb packages.
>     With any .deb file inside SRC_URI the task do_unpack stops with
>     this output:
>
>     ... data.tar.xz && tar --no-same-owner -xpf data.tar.xz && rm
>     data.tar.xz failed with return value 2
>     if i  retry building the same recipe for 1-5 times without any
>     change the task sometime completes without errors
>
>
> My immediate hunch would be that it can't find a xz binary inside the 
> native sysroot as it hasn't been written in there yet.  Can you 
> provide a minimal recipe to test?
>
> Ross


--------------8D63D96369B36092DF19D872
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Thank you for the reply.</p>
    <p>It looks like the problem is gone. <br>
    </p>
    <p>i guess this one fixed it<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=283a9b3883083e45bbdaf0488a3c6c76c5b197d7">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=283a9b3883083e45bbdaf0488a3c6c76c5b197d7</a><br>
    </p>
    <br>
    <div class="moz-cite-prefix">Am 14.04.2017 um 01:09 schrieb Burton,
      Ross:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZdTsHP+hcSM74ELOfLqxhFWmunnr7SLFywCLokmmuKuw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 10 April 2017 at 14:32, Markus
            Volk <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:f_l_k@t-online.de" target="_blank">f_l_k@t-online.de</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":2cn" class="a3s aXjCH m15b58182a5a76c24">i´m
                building  for x86_64 using the recent master branch and
                encounter problems when fetching deb packages.<br>
                With any .deb file inside SRC_URI the task do_unpack
                stops with this output:<br>
                <br>
                ... data.tar.xz &amp;&amp; tar --no-same-owner -xpf
                data.tar.xz &amp;&amp; rm data.tar.xz failed with return
                value 2<br>
                if i  retry building the same recipe for 1-5 times
                without any change the task sometime completes without
                errors<br>
              </div>
            </blockquote>
          </div>
          <br>
          My immediate hunch would be that it can't find a xz binary
          inside the native sysroot as it hasn't been written in there
          yet.  Can you provide a minimal recipe to test?</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------8D63D96369B36092DF19D872--
