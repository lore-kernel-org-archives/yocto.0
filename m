Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 886F3E0070E
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2013 14:24:46 -0800 (PST)
Message-ID: <5133CBD7.5020903@communistcode.co.uk>
Date: Sun, 03 Mar 2013 22:16:55 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
In-Reply-To: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
Subject: Re: Trying to bitbake core-image-minimal on Archlinux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 03 Mar 2013 22:24:47 -0000
Content-Type: multipart/alternative;
	boundary="------------030404030706020708070807"

--------------030404030706020708070807
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 03/03/13 18:02, Ismael Barros² wrote:
> Hi there,
>
> I'm new to Yocto, and I keep finding errors that prevent me from 
> building a minimal image.
>
> I've just installed poky-danny-8.0, sourced oe-init-build-env, and 
> bitbaked core-image-minimal. The first error is that bitbake sanity 
> checks fail to detect the network access, while my network 
> connectivity is perfect, and downloading packages seem to work if I 
> disable this checks. Full log: http://pastebin.com/6jJCC1qp. I 
> couldn't find any log that told me which piece of code was failing, so 
> I jut disabled this check on ../meta-yocto/conf/distro/poky.conf
>
> Upon trying again, building started fine, but it started failing to 
> build the documentation for some packages, i.e. binutils-cross. First 
> off, I want to build a single mission appliance, I don't really want 
> to build any documentation, is there any way I can disable it? Anyway, 
> this is the build log: http://pastebin.com/n9U4GfjG. Looks like there 
> are some texinfo commands my machine (texinfo 5.0) doesn't recognice. 
> According to http://sourceware.org/bugzilla/show_bug.cgi?id=15183, 
> it's a known bug on binuilts-2.22 and it's fixed on binuilts-2.23.
>
> Poking around, looks like "updating" to binutils-2.23 got it kind of 
> working:
>
> mv ./meta/recipes-devtools/binutils/binutils-2.22.inc 
> ./meta/recipes-devtools/binutils/binutils-2.23.1.inc
> mv ./meta/recipes-devtools/binutils/binutils-cross-canadian_2.22.bb 
> <http://binutils-cross-canadian_2.22.bb> 
> ./meta/recipes-devtools/binutils/binutils-cross-canadian_2.23.1.bb 
> <http://binutils-cross-canadian_2.23.1.bb>
> mv ./meta/recipes-devtools/binutils/binutils_2.22.bb 
> <http://binutils_2.22.bb> 
> ./meta/recipes-devtools/binutils/binutils_2.23.1.bb 
> <http://binutils_2.23.1.bb>
> mv ./meta/recipes-devtools/binutils/binutils-crosssdk_2.22.bb 
> <http://binutils-crosssdk_2.22.bb> 
> ./meta/recipes-devtools/binutils/binutils-crosssdk_2.23.1.bb 
> <http://binutils-crosssdk_2.23.1.bb>
> mv ./meta/recipes-devtools/binutils/binutils-cross_2.22.bb 
> <http://binutils-cross_2.22.bb> 
> ./meta/recipes-devtools/binutils/binutils-cross_2.23.1.bb 
> <http://binutils-cross_2.23.1.bb>
>
> I also had to update the md5 and sha1 
> on ./meta/recipes-devtools/binutils/binutils-2.23.1.inc. After that, 
> some patches failed to apply: 
> libtool-2.4-update.patch, binutils-2.19.1-ld-sysroot.patch, binutils-poison.patch, 
> libtool-rpath-fix.patch, clone-shadow.patch... so gave up
> What would be the appropiate way to workaround this issue, besides not 
> using Archlinux?
>
> Btw, if the bitbake core-image-minimal fails because there's not 
> enough disk space, and the free disk in the partition is left to 0, 
> after that even the bitbake clean command fails :\
>
>
> Anyway, thank you guys for what seems to be an excellent BSP factory, 
> I'm really looking forward to start using it at our company :)
>
> Kind regards,
> Ismael
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Ismael,

Archlinux currently has texinfo5 in it's core repo which breaks a 
significant amount of packages. I would suggest downgrading to 
textinfo4.x (can't remember the exact version) and then things should at 
least start to get going again. I'm afraid however if you insist on 
using a rolling release distro you are going to hit these problems more 
often than most, if you want a stable build environment then I would 
suggest using a sanity tested distro. If you do with to persist with 
Archlinux I suggest you follow oe-core/yocto master and update regulary.

Cheers,
Jack.

--------------030404030706020708070807
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/03/13 18:02, Ismael Barros&sup2;
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi there,
        <div><br>
        </div>
        <div style="">I'm new to Yocto, and I keep finding errors that
          prevent me from building a minimal image.</div>
        <div style=""><br>
        </div>
        <div style="">I've just installed&nbsp;poky-danny-8.0,
          sourced&nbsp;oe-init-build-env, and bitbaked&nbsp;core-image-minimal.
          The first error is that bitbake sanity checks fail to detect
          the network access, while my network connectivity is perfect,
          and downloading packages seem to work if I disable this
          checks. Full log:&nbsp;<a moz-do-not-send="true"
            href="http://pastebin.com/6jJCC1qp">http://pastebin.com/6jJCC1qp</a>.
          I couldn't find any log that told me which piece of code was
          failing, so I jut disabled this check
          on&nbsp;../meta-yocto/conf/distro/poky.conf</div>
        <div style=""><br>
        </div>
        <div style="">Upon trying again, building started fine, but it
          started failing to build the documentation for some packages,
          i.e. binutils-cross. First off, I want to build a single
          mission appliance, I don't really want to build any
          documentation, is there any way I can disable it? Anyway, this
          is the build log:&nbsp;<a moz-do-not-send="true"
            href="http://pastebin.com/n9U4GfjG">http://pastebin.com/n9U4GfjG</a>.
          Looks like there are some texinfo commands my machine (texinfo
          5.0) doesn't recognice. According to&nbsp;<a moz-do-not-send="true"
            href="http://sourceware.org/bugzilla/show_bug.cgi?id=15183">http://sourceware.org/bugzilla/show_bug.cgi?id=15183</a>,
          it's a known bug on&nbsp;binuilts-2.22 and it's fixed
          on&nbsp;binuilts-2.23.</div>
        <div style=""><br>
        </div>
        <div style="">Poking around, looks like "updating" to
          binutils-2.23 got it kind of working:</div>
        <div style=""><br>
        </div>
        <div style="">
          <div>mv ./meta/recipes-devtools/binutils/binutils-2.22.inc
            ./meta/recipes-devtools/binutils/binutils-2.23.1.inc</div>
          <div>mv ./meta/recipes-devtools/binutils/<a
              moz-do-not-send="true"
              href="http://binutils-cross-canadian_2.22.bb">binutils-cross-canadian_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a moz-do-not-send="true"
              href="http://binutils-cross-canadian_2.23.1.bb">binutils-cross-canadian_2.23.1.bb</a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a
              moz-do-not-send="true" href="http://binutils_2.22.bb">binutils_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a moz-do-not-send="true"
              href="http://binutils_2.23.1.bb">binutils_2.23.1.bb</a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a
              moz-do-not-send="true"
              href="http://binutils-crosssdk_2.22.bb">binutils-crosssdk_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a moz-do-not-send="true"
              href="http://binutils-crosssdk_2.23.1.bb">binutils-crosssdk_2.23.1.bb</a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a
              moz-do-not-send="true"
              href="http://binutils-cross_2.22.bb">binutils-cross_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a moz-do-not-send="true"
              href="http://binutils-cross_2.23.1.bb">binutils-cross_2.23.1.bb</a></div>
          <div>
            <br>
          </div>
          <div style="">I also had to update the md5 and sha1
            on&nbsp;./meta/recipes-devtools/binutils/binutils-2.23.1.inc.
            After that, some patches failed to apply:
            libtool-2.4-update.patch,&nbsp;binutils-2.19.1-ld-sysroot.patch,&nbsp;binutils-poison.patch,
            libtool-rpath-fix.patch,&nbsp;clone-shadow.patch... so gave up</div>
          <div style="">What would be the appropiate way to workaround
            this issue, besides not using Archlinux?</div>
        </div>
        <div style=""><br>
        </div>
        <div style="">Btw, if the bitbake core-image-minimal fails
          because there's not enough disk space, and the free disk in
          the partition is left to 0, after that even the bitbake clean
          command fails :\</div>
        <div style=""><br>
        </div>
        <div style=""><br>
        </div>
        <div style="">Anyway, thank you guys for what seems to be an
          excellent BSP factory, I'm really looking forward to start
          using it at our company :)</div>
        <div style=""><br>
        </div>
        <div style="">
          Kind regards,</div>
        <div style="">Ismael</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
    Hi Ismael,<br>
    <br>
    Archlinux currently has texinfo5 in it's core repo which breaks a
    significant amount of packages. I would suggest downgrading to
    textinfo4.x (can't remember the exact version) and then things
    should at least start to get going again. I'm afraid however if you
    insist on using a rolling release distro you are going to hit these
    problems more often than most, if you want a stable build
    environment then I would suggest using a sanity tested distro. If
    you do with to persist with Archlinux I suggest you follow
    oe-core/yocto master and update regulary.<br>
    <br>
    Cheers,<br>
    Jack.<br>
  </body>
</html>

--------------030404030706020708070807--
