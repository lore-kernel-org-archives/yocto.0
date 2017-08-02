Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1016E00CAB; Tue,  1 Aug 2017 23:18:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D91EFE00C19
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 23:18:11 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id l64so17242575pge.5
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 23:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=Ope2zPp2+iOTaKHKNP/pQa1IaPxkeLCvWmquY00jPdA=;
	b=OcnnILFsITbAummzA57iTxVB5H8I9cG6zRZElzgKMoc/u2W114WzMf8sj6QNgTgbpd
	WAKQ7EGbT0kqwhROVZQTNAuHGcZse7TjfAuq4U1QVlT9UzbAUNkyuXTMfHUZc17neAh1
	ghiir1l0ljXi/Mpcu4d3tNvyj377ytzS7Kl4FbDyW8/NDHLil2EhY6ofBlZdIKY2L/Oi
	NNDQzgDQVlBSN5woG5/b4POPMzYhGAVGK8U0LXbCan2iRheKXv31XAA4P6RfTdiH9O0x
	PsbB51tVcjShgl9iaQYVTntRSTu2/+gK/lViyw1hR6vNN3zvEwnruReMDMQTo09frEgv
	4Xhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Ope2zPp2+iOTaKHKNP/pQa1IaPxkeLCvWmquY00jPdA=;
	b=UvotRa+ciYJr+0qoFHORzoOL61c9SZyE9oPh/quWVb5i0/VDF5mQ0AyBACWpGGiPBv
	+cAx2GNHYISv2hZYV8Kk9uGvlX1JCh4aiXRHYztqgftoPk6nqxj6+0QWA6HoC1B/Wv5s
	HJ8+/4iIocpEt3ccYhq+uHz47DugftjyHoatKHTjgInXcV3ffKxY+pM/i+cgQC6W030/
	hKb5V1GDzb42sKqscCypi8BjNhbDz1cPbcnh35uEJgbh4BHSN49QnJvinTRgvwbhVdJB
	o4zCZgiC5LMRZQQ3p+xI7QW85gbAOnl+El1zRJDSG9frRVNY2tJf9AqBx9K+LgLAfU05
	Kdxg==
X-Gm-Message-State: AIVw110sU5ZCToGJmgUu4L0UFf4i5UlgrqPHV7l6tbH6Vgb2zNRbX1M7
	dTeUdT5oErjx8hio
X-Received: by 10.98.202.214 with SMTP id y83mr22042095pfk.2.1501654690968;
	Tue, 01 Aug 2017 23:18:10 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:ce:8dc4:f998:6a84?
	([2001:8003:804a:b500:ce:8dc4:f998:6a84])
	by smtp.gmail.com with ESMTPSA id
	t186sm62668979pgc.28.2017.08.01.23.18.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Aug 2017 23:18:10 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
	<CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <23c2a7a6-50fb-d3f1-3cd2-4fc406975367@gmail.com>
Date: Wed, 2 Aug 2017 14:18:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Wed, 02 Aug 2017 06:18:13 -0000
Content-Type: multipart/alternative;
	boundary="------------423EA1D21C7CB3F9603D60FB"
Content-Language: en-US

--------------423EA1D21C7CB3F9603D60FB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

That's the branch :

======

*meta-poky **
**meta-yocto-bsp    = "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"*
openembedded-core = "master:2fd0757ae7fd63bc93a4ce8579c6ba0cdbb4c1cd"
meta-openembedded
meta-oe
meta-xfce
meta-gnome
meta-python
meta-multimedia
meta-networking   = "master:b063789560bfb9c60a7a15277b5b3a9839b5ba74"
meta-browser      = 
"firefox-52.1.2esr-2:c79cf6c7811afd2cd167e8967e3c29b1e797371e"
meta-ti           = "master:872d418f6e503dea66e3533f43e7a17618183982"

Initialising tasks: 100% 
|################################################################################################################################| 
Time: 0:00:08
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed
ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile 
(log file is located at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
ERROR: Logfile of failure stored in: 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: Using icecc
| NOTE: make -j 10
| ERROR: oe_runmake failed
| : && /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc && { 
PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH 
&& export PATH; } && /usr/bin/env perl ../automake-1.15/doc/help2man 
--output=doc/automake-1.15.1 automake-1.15
| help2man: can't get `--help' info from automake-1.15
| Try `--no-discard-stderr' if option outputs to stderr
| Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
| make: *** [doc/automake-1.15.1] Error 255
| ERROR: Function failed: do_compile (log file is located at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
ERROR: Task 
(virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile
Summary: There were 4 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
bianchi77@bianchi77-HP-Pavilion-dv6-Notebook-PC:~/poky/build$

How can I fix that automake error ?

I tried to run bitbake core-image-minimal for it.
Thanks,

On 31/07/17 21:26, Burton, Ross wrote:
> Then the branch you checked out.  git branch will tell you.
>
> Ross
>
> On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     Git clone ...
>
>     On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com
>     <mailto:ross.burton@intel.com>> wrote:
>
>         How did you get poky?
>
>         Ross
>
>         On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com
>         <mailto:antonius.riko@gmail.com>> wrote:
>
>             How can I see my branch?
>
>             On Jul 31, 2017 9:12 PM, "Burton, Ross"
>             <ross.burton@intel.com <mailto:ross.burton@intel.com>> wrote:
>
>                 On 31 July 2017 at 03:33, Riko Ho
>                 <antonius.riko@gmail.com
>                 <mailto:antonius.riko@gmail.com>> wrote:
>
>                     Is my auto make disabled with icecc ?
>
>                     How to make it enable ? thanks.
>
>
>                 That's just a debug message.
>
>                 > | help2man: can't get `--help' info from automake-1.15
>                 > | Try `--no-discard-stderr' if option outputs to stderr
>                 > | Makefile:3687: recipe for target
>                 'doc/automake-1.15.1' failed
>
>
>                 That's the error your hitting.
>
>                 I think you need to update to the latest commit for
>                 the branch you're on, there was a problem with modern
>                 perl in help2man.  What release/branch are you using?
>
>                 Ross
>
>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------423EA1D21C7CB3F9603D60FB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>That's the branch :</p>
    <p>======<br>
    </p>
    <p><b>meta-poky         </b><b><br>
      </b><b>meta-yocto-bsp    =
        "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"</b><br>
      openembedded-core =
      "master:2fd0757ae7fd63bc93a4ce8579c6ba0cdbb4c1cd"<br>
      meta-openembedded <br>
      meta-oe           <br>
      meta-xfce         <br>
      meta-gnome        <br>
      meta-python       <br>
      meta-multimedia   <br>
      meta-networking   =
      "master:b063789560bfb9c60a7a15277b5b3a9839b5ba74"<br>
      meta-browser      =
      "firefox-52.1.2esr-2:c79cf6c7811afd2cd167e8967e3c29b1e797371e"<br>
      meta-ti           =
      "master:872d418f6e503dea66e3533f43e7a17618183982"<br>
      <br>
      Initialising tasks: 100%
|################################################################################################################################|
      Time: 0:00:08<br>
      NOTE: Executing SetScene Tasks<br>
      NOTE: Executing RunQueue Tasks<br>
      ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed<br>
      ERROR: automake-native-1.15-r0 do_compile: Function failed:
      do_compile (log file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)<br>
      ERROR: Logfile of failure stored in:
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291<br>
      Log data follows:<br>
      | DEBUG: Executing shell function do_compile<br>
      | NOTE: Using icecc<br>
      | NOTE: make -j 10<br>
      | ERROR: oe_runmake failed<br>
      | : &amp;&amp; /home/bianchi77/poky/build/tmp/hosttools/mkdir -p
      doc &amp;&amp; {
PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
      &amp;&amp; export PATH; } &amp;&amp; /usr/bin/env perl
      ../automake-1.15/doc/help2man --output=doc/automake-1.15.1
      automake-1.15<br>
      | help2man: can't get `--help' info from automake-1.15<br>
      | Try `--no-discard-stderr' if option outputs to stderr<br>
      | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed<br>
      | make: *** [doc/automake-1.15.1] Error 255<br>
      | ERROR: Function failed: do_compile (log file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)<br>
      ERROR: Task
(virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile)
      failed with exit code '1'<br>
      NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn't need
      to be rerun and 1 failed.<br>
      <br>
      Summary: 1 task failed:<br>
       
virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile<br>
      Summary: There were 4 WARNING messages shown.<br>
      Summary: There were 2 ERROR messages shown, returning a non-zero
      exit code.<br>
      bianchi77@bianchi77-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ <br>
      <br>
    </p>
    How can I fix that automake error ?<br>
    <br>
    I tried to run bitbake core-image-minimal for it.<br>
    Thanks,<br>
    <br>
    <div class="moz-cite-prefix">On 31/07/17 21:26, Burton, Ross wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com">
      <div dir="ltr">Then the branch you checked out.  git branch will
        tell you.
        <div><br>
        </div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 31 July 2017 at 14:17, Riko Ho <span
            dir="ltr">&lt;<a href="mailto:antonius.riko@gmail.com"
              target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <p dir="ltr">Git clone ...</p>
            <div class="HOEnZb">
              <div class="h5">
                <div class="gmail_quote">On Jul 31, 2017 9:16 PM,
                  "Burton, Ross" &lt;<a
                    href="mailto:ross.burton@intel.com" target="_blank"
                    moz-do-not-send="true">ross.burton@intel.com</a>&gt;
                  wrote:<br type="attribution">
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">
                    <div dir="ltr">How did you get poky?
                      <div><br>
                      </div>
                      <div>Ross</div>
                    </div>
                    <div class="gmail_extra"><br>
                      <div class="gmail_quote">On 31 July 2017 at 14:14,
                        Riko Ho <span dir="ltr">&lt;<a
                            href="mailto:antonius.riko@gmail.com"
                            target="_blank" moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
                        wrote:<br>
                        <blockquote class="gmail_quote" style="margin:0
                          0 0 .8ex;border-left:1px #ccc
                          solid;padding-left:1ex">
                          <p dir="ltr">How can I see my branch?</p>
                          <div
                            class="m_2019242909827686211m_-4777739250393309465HOEnZb">
                            <div
                              class="m_2019242909827686211m_-4777739250393309465h5">
                              <div class="gmail_quote">On Jul 31, 2017
                                9:12 PM, "Burton, Ross" &lt;<a
                                  href="mailto:ross.burton@intel.com"
                                  target="_blank" moz-do-not-send="true">ross.burton@intel.com</a>&gt;
                                wrote:<br type="attribution">
                                <blockquote class="gmail_quote"
                                  style="margin:0 0 0
                                  .8ex;border-left:1px #ccc
                                  solid;padding-left:1ex">
                                  <div dir="ltr">On 31 July 2017 at
                                    03:33, Riko Ho <span dir="ltr">&lt;<a
href="mailto:antonius.riko@gmail.com" target="_blank"
                                        moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
                                    wrote:
                                    <div class="gmail_extra">
                                      <div class="gmail_quote">
                                        <blockquote class="gmail_quote"
                                          style="margin:0 0 0
                                          .8ex;border-left:1px #ccc
                                          solid;padding-left:1ex">
                                          <div text="#000000"
                                            bgcolor="#FFFFFF">
                                            <p>Is my auto make disabled
                                              with icecc ?</p>
                                            <p>How to make it enable ?
                                              thanks.<br>
                                            </p>
                                          </div>
                                        </blockquote>
                                        <div><br>
                                        </div>
                                        <div>That's just a debug
                                          message. <br>
                                          <br>
                                          &gt; | help2man: can't get
                                          `--help' info from
                                          automake-1.15<br>
                                          &gt; | Try
                                          `--no-discard-stderr' if
                                          option outputs to stderr<br>
                                          &gt; | Makefile:3687: recipe
                                          for target
                                          'doc/automake-1.15.1' failed<br>
                                          <br>
                                          <br>
                                          That's the error your hitting.</div>
                                        <div><br>
                                        </div>
                                        <div>I think you need to update
                                          to the latest commit for the
                                          branch you're on, there was a
                                          problem with modern perl in
                                          help2man.  What release/branch
                                          are you using?</div>
                                        <div><br>
                                        </div>
                                        <div>Ross</div>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                      <br>
                    </div>
                  </blockquote>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
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

--------------423EA1D21C7CB3F9603D60FB--
