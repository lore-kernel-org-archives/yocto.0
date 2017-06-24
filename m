Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A164E00BD6; Fri, 23 Jun 2017 23:04:32 -0700 (PDT)
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
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF38CE00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 23:04:30 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id h64so12603816iod.0
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 23:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=oyZ4361q0wns4RsnMRK9JtIL0+kD/yq72e9kq3qWiWs=;
	b=HyZpt1jjsjPgfOvFE4hna5KSg3VsVPiVNenRT09DU3wOtnxJt8WsnyKRLHZK179SHt
	fvLv5B2SIE85TnueGVktsdwyenxs6d7KOBB/tb53RHkPdlD2ug1Wn404WnsQFXMTe7zK
	boG+l7anB6HVs21mWwiktFHWb1ZirJytXueCBNXIS+tzDncFWYP/f+Kqq7gnQNvhB+RM
	HCeq3pODhe8s6N1JoVbjm5r8Lc97dn5VmUEjTqmSjMUQia80FDC3XEs0/F4QFVOkFZl5
	y2C5OZuQEjOmcdzf9+uqAn+friorsLnzRAffNLRxzwyXMTAikyukmaoVCaXjiE1dmJCZ
	KeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=oyZ4361q0wns4RsnMRK9JtIL0+kD/yq72e9kq3qWiWs=;
	b=N1GPSfIiQ39AXVBEdcraKdHqNekGI0AJY13xhj4NnQejIPYktpuEo9tYWGuW/O2cbH
	3q6Sd3Xl2ZGxs/7bbyRT0bsvd/ssftf95csY6B76VjS04B7wQgzwIAL7lYyCgc54Unfz
	ycx/i79tHCN6EnuMMNNKbFUZND5Eta17Voki4vAmO8fbQ2KM6YrJFahYa0Lgx7vL/kKs
	FH8XBhfW5zCjr2deBTjtflqUkNpgXJ53KSqY71dBoj+M3szpIrtMO0+ThNwoIPf2uUjU
	No95cOHtjVOz6CoUtvkexIdR/2me4HPsZTzCoEga0ryaLULbEGRHwerS1Cv96/7ypZQI
	pCew==
X-Gm-Message-State: AKS2vOyv7hppP1RYOTtyp9/yJ7J3WUr8kOwtzc7FGRsvdUP7vIxnYGXf
	ebv8wQltpak2Q9+3
X-Received: by 10.107.11.150 with SMTP id 22mr11812107iol.208.1498284269426;
	Fri, 23 Jun 2017 23:04:29 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77])
	by smtp.gmail.com with ESMTPSA id o130sm632025ito.2.2017.06.23.23.04.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 23:04:28 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <b9ac76bc-319e-0a6e-a214-eed222b05d04@gmail.com>
Date: Sat, 24 Jun 2017 14:04:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: internet radio
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
X-List-Received-Date: Sat, 24 Jun 2017 06:04:32 -0000
Content-Type: multipart/alternative;
	boundary="------------ED11D20D2F8D99A735831E03"
Content-Language: en-US

--------------ED11D20D2F8D99A735831E03
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


I tried to install mplayer and I got this message :

Loading cache: 100% 
|#####################################################################################################################################| 
Time: 0:00:01
Loaded 2794 entries from dependency cache.
Parsing recipes: 100% 
|###################################################################################################################################| 
Time: 0:00:01
Parsing of 2041 .bb files complete (2040 cached, 1 parsed). 2794 
targets, 208 skipped, 0 masked, 0 errors.
WARNING: No bb files matched BBFILE_PATTERN_openembedded-layer 
'^/home/bianchi77/poky/meta-openembedded/meta-oe/'
WARNING: No bb files matched BBFILE_PATTERN_meta-python 
'^/home/bianchi77/poky/meta-openembedded/meta-python/'
WARNING: No bb files matched BBFILE_PATTERN_multimedia-layer 
'^/home/bianchi77/poky/meta-openembedded/meta-multimedia/'
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'mplayer' (but 
/home/bianchi77/poky/meta-openembedded/meta-xfce/recipes-core/images/core-image-minimal-xfce-browser.bb 
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'mplayer' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mplayer']
ERROR: Required build target 'core-image-minimal-xfce-browser' has no 
buildable providers.
Missing or unbuildable dependency chain was: 
['core-image-minimal-xfce-browser', 'mplayer']

What do I miss here ?


bblayers :

BBLAYERS ?= " \
   /home/bianchi77/poky/meta \
   /home/bianchi77/poky/meta-poky \
   /home/bianchi77/poky/meta-yocto-bsp \
   /home/bianchi77/poky/openembedded-core \
   /home/bianchi77/poky/meta-openembedded \
   /home/bianchi77/poky/meta-openembedded/meta-oe \
   /home/bianchi77/poky/meta-openembedded/meta-xfce \
   /home/bianchi77/poky/meta-openembedded/meta-gnome \
   /home/bianchi77/poky/meta-openembedded/meta-python \
   /home/bianchi77/poky/meta-openembedded/meta-multimedia \
   /home/bianchi77/poky/meta-browser \
   "


and image .bb :

IMAGE_INSTALL += "linux-firmware"
IMAGE_INSTALL += "mplayer"
IMAGE_INSTALL += "strace nano firefox gstreamer"
IMAGE_FEATURES += "ssh-server-openssh"



On 23/06/17 21:42, Khem Raj wrote:
> On Fri, Jun 23, 2017 at 1:18 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>> Hello everyone,
>>
>> What do you suggest me using for internet radio / playing multimedia on GUI
>> ? Which recipe is suitable for it ?
>>
> may be you could use mplayer or kodi
>
>> Thanks
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
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
谢谢,
Regards,
Riko Ho
/*******/

*

--------------ED11D20D2F8D99A735831E03
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p><br>
    </p>
    <p>I tried to install mplayer and I got this message :</p>
    <p>Loading cache: 100%
|#####################################################################################################################################|
      Time: 0:00:01<br>
      Loaded 2794 entries from dependency cache.<br>
      Parsing recipes: 100%
|###################################################################################################################################|
      Time: 0:00:01<br>
      Parsing of 2041 .bb files complete (2040 cached, 1 parsed). 2794
      targets, 208 skipped, 0 masked, 0 errors.<br>
      WARNING: No bb files matched BBFILE_PATTERN_openembedded-layer
      '^/home/bianchi77/poky/meta-openembedded/meta-oe/'<br>
      WARNING: No bb files matched BBFILE_PATTERN_meta-python
      '^/home/bianchi77/poky/meta-openembedded/meta-python/'<br>
      WARNING: No bb files matched BBFILE_PATTERN_multimedia-layer
      '^/home/bianchi77/poky/meta-openembedded/meta-multimedia/'<br>
      NOTE: Resolving any missing task queue dependencies<br>
      ERROR: Nothing RPROVIDES 'mplayer' (but
/home/bianchi77/poky/meta-openembedded/meta-xfce/recipes-core/images/core-image-minimal-xfce-browser.bb
      RDEPENDS on or otherwise requires it)<br>
      NOTE: Runtime target 'mplayer' is unbuildable, removing...<br>
      Missing or unbuildable dependency chain was: ['mplayer']<br>
      ERROR: Required build target 'core-image-minimal-xfce-browser' has
      no buildable providers.<br>
      Missing or unbuildable dependency chain was:
      ['core-image-minimal-xfce-browser', 'mplayer']<br>
    </p>
    <p>What do I miss here ?</p>
    <p><br>
    </p>
    <p>bblayers :</p>
    <p>BBLAYERS ?= " \<br>
        /home/bianchi77/poky/meta \<br>
        /home/bianchi77/poky/meta-poky \<br>
        /home/bianchi77/poky/meta-yocto-bsp \<br>
        /home/bianchi77/poky/openembedded-core \<br>
        /home/bianchi77/poky/meta-openembedded \<br>
        /home/bianchi77/poky/meta-openembedded/meta-oe \<br>
        /home/bianchi77/poky/meta-openembedded/meta-xfce \<br>
        /home/bianchi77/poky/meta-openembedded/meta-gnome \<br>
        /home/bianchi77/poky/meta-openembedded/meta-python \<br>
        /home/bianchi77/poky/meta-openembedded/meta-multimedia \<br>
        /home/bianchi77/poky/meta-browser \ <br>
        "</p>
    <p><br>
    </p>
    <p>and image .bb :</p>
    <p>IMAGE_INSTALL += "linux-firmware"<br>
      IMAGE_INSTALL += "mplayer"<br>
      IMAGE_INSTALL += "strace nano firefox gstreamer"<br>
      IMAGE_FEATURES += "ssh-server-openssh"<br>
      <br>
    </p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 23/06/17 21:42, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com">
      <pre wrap="">On Fri, Jun 23, 2017 at 1:18 AM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello everyone,

What do you suggest me using for internet radio / playing multimedia on GUI
? Which recipe is suitable for it ?

</pre>
      </blockquote>
      <pre wrap="">
may be you could use mplayer or kodi

</pre>
      <blockquote type="cite">
        <pre wrap="">Thanks

--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
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
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------ED11D20D2F8D99A735831E03--
