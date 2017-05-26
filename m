Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29E35E00B2F; Fri, 26 May 2017 07:21:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 May 2017 07:21:21 PDT
Received: from mailrelay12.public.one.com (mailrelay12.public.one.com
	[195.47.247.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D29E00826
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 07:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:in-reply-to:
	references; bh=fdGAQ2Zz12pb7ZGMdY9zuSZqQm5bj7/OF3JJvAqhQLM=;
	b=hGFxPUO0fgJhDf1jUR1BpUA33Qrwmjp8h1bD/9r4evArdqKCGnfDBBKcENII9rCMvR8sKHi2rACUT
	Id+utnG9wlD45+FGdgS1uvHPdUZzotugg/Z2ncFHVE8OruSZ+WcMyioDazkKr56R0qXFp7CcvrPJQw
	+NY4/WbQqnz/v8Xg=
X-HalOne-Cookie: af33c32f13b1fb5e2ccec22718e0db80be0f1d86
X-HalOne-ID: 708ec6bd-421e-11e7-bc36-b82a72cffc46
Received: from [192.168.1.10] (unknown [77.2.229.247])
	by smtpfilter4.public.one.com (Halon) with ESMTPSA
	id 708ec6bd-421e-11e7-bc36-b82a72cffc46;
	Fri, 26 May 2017 14:20:17 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
	<CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
	<CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <719c5e41-a79d-f14e-01e7-06a7b881fc44@embexus.com>
Date: Fri, 26 May 2017 16:20:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com>
Subject: Re: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 14:21:23 -0000
Content-Type: multipart/alternative;
	boundary="------------651448A80F66264AC6E8D772"
Content-Language: en-US

--------------651448A80F66264AC6E8D772
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gerard,

did you try to set CONFIG_DEVTMPFS=y in your Kernel config ?

Cheers


On 26.05.2017 15:52, Gerard van den Bosch wrote:
> Hello Andrea,
>
> I have tried to add the line to my machine config:
> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>
> But this didn't help, then I looked a bit further and also tried to 
> set the following:
>
> USE_DEVFS="0"
> VIRTUAL_RUNTIME_dev_manager = "mdev"
>
> Unfortunately this doesn't seem to change anything.
>
> Cheers,
> Gerard
>
> On Fri, May 26, 2017 at 7:27 PM, Andrea Adami <andrea.adami@gmail.com 
> <mailto:andrea.adami@gmail.com>> wrote:
>
>     On Fri, May 26, 2017 at 1:05 PM, Gerard van den Bosch
>     <gvandenbosch@gmail.com <mailto:gvandenbosch@gmail.com>> wrote:
>     > Hello,
>     >
>     > I have build my vendor custom kernel 2.6.20 with yocto daisy.
>     > Daisy is used because seems to be last release supporting this
>     old kernel.
>     >
>     > I tried building core-image-minimal and core-image-base.
>     >
>     > The kernel boots and the rootfs is mounted but then I get:
>     >
>     > "Warning: unable to open an initial console."
>     >
>     >
>     > I found on the internet this is because "/dev/console" doesn't
>     exists.
>     > The dev folder in my generated rootfs is empty.
>     >
>     > On internet found can do the following commands:
>     > "mknod -m 600 /dev/console c 5 1 "
>     > "mknod -m 666 /dev/null c 1 3"
>     >
>     > But if this is the problem how do I add this to my recipe?
>     > Or is there a proper way to populate this devices?
>     >
>     > Cheers,
>     > Gerard
>     >
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>     >
>
>     Hello Gerard,
>
>     if your old kernel lacks devtmpfs you need a "device table".
>     You need to set at least
>     IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>
>     This is a default set in image.bbclass before and after daisy...dunno
>     what's happened with this release.
>
>     Cheers
>     Andrea
>
>
>
>

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
https://embexus.com


--------------651448A80F66264AC6E8D772
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Gerard,</p>
    <p>did you try to set <span style="color: rgb(36, 39, 41);
        font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica,
        sans-serif; font-size: 15px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: normal; letter-spacing: normal; orphans: 2;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); display: inline !important; float: none;">CONFIG_DEVTMPFS=y
        in your Kernel config ?</span></p>
    <p><span style="color: rgb(36, 39, 41); font-family: Arial,
        &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size:
        15px; font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: normal; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); display: inline
        !important; float: none;">Cheers<br>
      </span></p>
    <br>
    <div class="moz-cite-prefix">On 26.05.2017 15:52, Gerard van den
      Bosch wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com">
      <div dir="ltr">Hello Andrea,
        <div><br>
        </div>
        <div>I have tried to add the line to my machine config:</div>
        <div>
          <div>IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"</div>
        </div>
        <div><br>
        </div>
        <div>But this didn't help, then I looked a bit further and also
          tried to set the following:</div>
        <div><br>
        </div>
        <div>
          <div>USE_DEVFS="0"</div>
          <div>VIRTUAL_RUNTIME_dev_manager = "mdev"<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>Unfortunately this doesn't seem to change anything.</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Gerard</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Fri, May 26, 2017 at 7:27 PM, Andrea
          Adami <span dir="ltr">&lt;<a
              href="mailto:andrea.adami@gmail.com" target="_blank"
              moz-do-not-send="true">andrea.adami@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div class="HOEnZb">
              <div class="h5">On Fri, May 26, 2017 at 1:05 PM, Gerard
                van den Bosch<br>
                &lt;<a href="mailto:gvandenbosch@gmail.com"
                  moz-do-not-send="true">gvandenbosch@gmail.com</a>&gt;
                wrote:<br>
                &gt; Hello,<br>
                &gt;<br>
                &gt; I have build my vendor custom kernel 2.6.20 with
                yocto daisy.<br>
                &gt; Daisy is used because seems to be last release
                supporting this old kernel.<br>
                &gt;<br>
                &gt; I tried building core-image-minimal and
                core-image-base.<br>
                &gt;<br>
                &gt; The kernel boots and the rootfs is mounted but then
                I get:<br>
                &gt;<br>
                &gt; "Warning: unable to open an initial console."<br>
                &gt;<br>
                &gt;<br>
                &gt; I found on the internet this is because
                "/dev/console" doesn't exists.<br>
                &gt; The dev folder in my generated rootfs is empty.<br>
                &gt;<br>
                &gt; On internet found can do the following commands:<br>
                &gt; "mknod -m 600 /dev/console c 5 1 "<br>
                &gt; "mknod -m 666 /dev/null c 1 3"<br>
                &gt;<br>
                &gt; But if this is the problem how do I add this to my
                recipe?<br>
                &gt; Or is there a proper way to populate this devices?<br>
                &gt;<br>
                &gt; Cheers,<br>
                &gt; Gerard<br>
                &gt;<br>
              </div>
            </div>
            &gt; --<br>
            &gt; ______________________________<wbr>_________________<br>
            &gt; yocto mailing list<br>
            &gt; <a href="mailto:yocto@yoctoproject.org"
              moz-do-not-send="true">yocto@yoctoproject.org</a><br>
            &gt; <a
              href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
            &gt;<br>
            <br>
            Hello Gerard,<br>
            <br>
            if your old kernel lacks devtmpfs you need a "device table".<br>
            You need to set at least<br>
            IMAGE_DEVICE_TABLES = "files/device_table-minimal.<wbr>txt"<br>
            <br>
            This is a default set in image.bbclass before and after
            daisy...dunno<br>
            what's happened with this release.<br>
            <br>
            Cheers<br>
            <span class="HOEnZb"><font color="#888888">Andrea<br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------651448A80F66264AC6E8D772--
