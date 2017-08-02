Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 077B4E00CAB; Tue,  1 Aug 2017 23:33:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE152E00C19
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 23:33:16 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id p13so1567136pfd.4
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 23:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=9ycVDtr2yTLQF0QKYmfUzdBMSq4vuHH5hQKyAOcobQs=;
	b=lS+y4ZETlJsUJVEbF+HtiGgO9c+33i+5ZPb3IGT99OBFyCmP1dGHbCDAvmDa1VNoop
	j+0C8vbjq2xrrK6d1xJoWpvrjF6IjfC+dA43CP9i/44MCh6NyNUGHkrpl+vBFdiS560n
	sReus1FfhBzFvKTEp5YW4gpBDkW++0J7p2AKUuvNFrT7G7/hYyHtVk+eUN95FXJ17u04
	Li8OEFO3O3aq4VVKdEPijLRkc4Mb9Im2+N0uXgX3tsaOUsonRjvpBCO7H+qskQpNkvNq
	hNTlDZp0Pk0RWMh2Y4kGQYNg5plPzMrmQuxQcsfmb/Z82M5Azp64RBTwdlGMbg/34flV
	zrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=9ycVDtr2yTLQF0QKYmfUzdBMSq4vuHH5hQKyAOcobQs=;
	b=rKGaVn2XY9NdgIIf10cZ4S11shZ/OlAo3KA3EBvYonP0m8dKmTyxB6GLpij+ACX6Kb
	RYEJcrkgLz+PAFXrr3+uF5J2yf0/bJgbSFFoaomb2HHCU9JR3m1R8rh9Xf/pHR5l4W61
	FeKGvoNz9mdwbgLEOK/8CDTwZh0O71TfzLyp1ZDmh3EbBDiCMwsqk61wQ/v1gqGN+ey1
	NuVoymQVhL8wrAjUY9PaJq9OfmEuKYiA688PBbdnpXb0BoUz48F4qZF2LWOfFY7a40ad
	ERARCdy6i0WetDxBSN/Szr88xrQ7e/IrXuLJHzYsaULm15cMba4CGAukX6BNuZIOty5+
	+3pw==
X-Gm-Message-State: AIVw112hSRZNUSihQQe/w9Y50stDsUuVZzDV8mxTMk6m9VFToNYz9lIv
	JUDsfDZR8/WoL0tF
X-Received: by 10.84.128.195 with SMTP id a61mr23944434pla.222.1501655595982; 
	Tue, 01 Aug 2017 23:33:15 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:ce:8dc4:f998:6a84?
	([2001:8003:804a:b500:ce:8dc4:f998:6a84])
	by smtp.gmail.com with ESMTPSA id p3sm866504pgc.90.2017.08.01.23.33.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Aug 2017 23:33:15 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
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
	<23c2a7a6-50fb-d3f1-3cd2-4fc406975367@gmail.com>
	<CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <7205fa77-6677-581b-7067-fb4d0baad7ab@gmail.com>
Date: Wed, 2 Aug 2017 14:33:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 Aug 2017 06:33:18 -0000
Content-Type: multipart/alternative;
	boundary="------------FF11DAFCB1EF823D3B726B41"
Content-Language: en-US

--------------FF11DAFCB1EF823D3B726B41
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I'm building with Ubuntu 16


On 02/08/17 14:31, Khem Raj wrote:
> On Tue, Aug 1, 2017 at 11:18 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>> Dear Yocto Team Member,
>>
>> That's the branch :
>>
>> ======
>>
>> meta-poky
>> meta-yocto-bsp    = "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"
>> openembedded-core = "master:2fd0757ae7fd63bc93a4ce8579c6ba0cdbb4c1cd"
>> meta-openembedded
>> meta-oe
>> meta-xfce
>> meta-gnome
>> meta-python
>> meta-multimedia
>> meta-networking   = "master:b063789560bfb9c60a7a15277b5b3a9839b5ba74"
>> meta-browser      =
>> "firefox-52.1.2esr-2:c79cf6c7811afd2cd167e8967e3c29b1e797371e"
>> meta-ti           = "master:872d418f6e503dea66e3533f43e7a17618183982"
>>
>> Initialising tasks: 100%
>> |################################################################################################################################|
>> Time: 0:00:08
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed
>> ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile (log
>> file is located at
>> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
>> ERROR: Logfile of failure stored in:
>> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | NOTE: Using icecc
>> | NOTE: make -j 10
>> | ERROR: oe_runmake failed
>> | : && /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc && {
>> PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
>> && export PATH; } && /usr/bin/env perl ../automake-1.15/doc/help2man
>> --output=doc/automake-1.15.1 automake-1.15
>> | help2man: can't get `--help' info from automake-1.15
> What OS do you run on build machine ?
> if its archlinux then apply this patch to automake
>
> https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a
>
> otherwise if its centos7 then install
>
> yum install perl-Thread-Queue
>
>
>
>> | Try `--no-discard-stderr' if option outputs to stderr
>> | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>> | make: *** [doc/automake-1.15.1] Error 255
>> | ERROR: Function failed: do_compile (log file is located at
>> /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
>> ERROR: Task
>> (virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile)
>> failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>
>> virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile
>> Summary: There were 4 WARNING messages shown.
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>> bianchi77@bianchi77-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>>
>> How can I fix that automake error ?
>>
>> I tried to run bitbake core-image-minimal for it.
>> Thanks,
>>
>> On 31/07/17 21:26, Burton, Ross wrote:
>>
>> Then the branch you checked out.  git branch will tell you.
>>
>> Ross
>>
>> On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com> wrote:
>>> Git clone ...
>>>
>>> On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>>>> How did you get poky?
>>>>
>>>> Ross
>>>>
>>>> On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:
>>>>> How can I see my branch?
>>>>>
>>>>> On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>>>>>> On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>>>>>>> Is my auto make disabled with icecc ?
>>>>>>>
>>>>>>> How to make it enable ? thanks.
>>>>>>
>>>>>> That's just a debug message.
>>>>>>
>>>>>>> | help2man: can't get `--help' info from automake-1.15
>>>>>>> | Try `--no-discard-stderr' if option outputs to stderr
>>>>>>> | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>>>>>>
>>>>>> That's the error your hitting.
>>>>>>
>>>>>> I think you need to update to the latest commit for the branch you're
>>>>>> on, there was a problem with modern perl in help2man.  What release/branch
>>>>>> are you using?
>>>>>>
>>>>>> Ross
>>>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> Kind regards,
>> Riko Ho
>> /*******/
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------FF11DAFCB1EF823D3B726B41
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>I'm building with Ubuntu 16<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 02/08/17 14:31, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com">
      <pre wrap="">On Tue, Aug 1, 2017 at 11:18 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Dear Yocto Team Member,

That's the branch :

======

meta-poky
meta-yocto-bsp    = "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"
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
ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile (log
file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291)
ERROR: Logfile of failure stored in:
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.9291
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: Using icecc
| NOTE: make -j 10
| ERROR: oe_runmake failed
| : &amp;&amp; /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc &amp;&amp; {
PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
&amp;&amp; export PATH; } &amp;&amp; /usr/bin/env perl ../automake-1.15/doc/help2man
--output=doc/automake-1.15.1 automake-1.15
| help2man: can't get `--help' info from automake-1.15
</pre>
      </blockquote>
      <pre wrap="">
What OS do you run on build machine ?
if its archlinux then apply this patch to automake

<a class="moz-txt-link-freetext" href="https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a">https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a</a>

otherwise if its centos7 then install

yum install perl-Thread-Queue



</pre>
      <blockquote type="cite">
        <pre wrap="">| Try `--no-discard-stderr' if option outputs to stderr
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

Then the branch you checked out.  git branch will tell you.

Ross

On 31 July 2017 at 14:17, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">
Git clone ...

On Jul 31, 2017 9:16 PM, "Burton, Ross" <a class="moz-txt-link-rfc2396E" href="mailto:ross.burton@intel.com">&lt;ross.burton@intel.com&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">
How did you get poky?

Ross

On 31 July 2017 at 14:14, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">
How can I see my branch?

On Jul 31, 2017 9:12 PM, "Burton, Ross" <a class="moz-txt-link-rfc2396E" href="mailto:ross.burton@intel.com">&lt;ross.burton@intel.com&gt;</a> wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="">
On 31 July 2017 at 03:33, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
                <blockquote type="cite">
                  <pre wrap="">
Is my auto make disabled with icecc ?

How to make it enable ? thanks.
</pre>
                </blockquote>
                <pre wrap="">

That's just a debug message.

</pre>
                <blockquote type="cite">
                  <pre wrap="">| help2man: can't get `--help' info from automake-1.15
| Try `--no-discard-stderr' if option outputs to stderr
| Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
</pre>
                </blockquote>
                <pre wrap="">

That's the error your hitting.

I think you need to update to the latest commit for the branch you're
on, there was a problem with modern perl in help2man.  What release/branch
are you using?

Ross
</pre>
              </blockquote>
            </blockquote>
            <pre wrap="">

</pre>
          </blockquote>
        </blockquote>
        <pre wrap="">

--

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/


--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
      </blockquote>
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

--------------FF11DAFCB1EF823D3B726B41--
