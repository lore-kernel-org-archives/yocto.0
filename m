Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515C6E00B20; Mon, 26 May 2014 11:34:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE1E0E0073D
	for <yocto@yoctoproject.org>; Mon, 26 May 2014 11:34:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6A17B27E025;
	Mon, 26 May 2014 18:34:11 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id o1Xsna2V-SAC; Mon, 26 May 2014 18:34:10 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 0D37D27E019;
	Mon, 26 May 2014 18:34:10 +0000 (UTC)
Message-ID: <5383891A.4050109@dynamicdevices.co.uk>
Date: Mon, 26 May 2014 19:34:02 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>	<5381D5B3.1070509@dynamicdevices.co.uk>	<1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>	<538319DB.40309@dynamicdevices.co.uk>	<5383805E.4020603@dynamicdevices.co.uk>
	<CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
In-Reply-To: <CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Mon, 26 May 2014 18:34:15 -0000
Content-Type: multipart/alternative;
	boundary="------------080701030209090706040007"

--------------080701030209090706040007
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 26/05/2014 19:24, Alexandru Vaduva wrote:
> I do not believe the mmal_component is missing from the rootfs or it
> is not enabled somehow.
> I hate to mention this but it may have something to do with the the
> functionality of the component.
> Try this: https://github.com/raspberrypi/linux/issues/435
> Also something like strace or even |'sudo vcdbg syms | grep -i cam'
> |would be useful if available of
> the rootfs.
>  

That's interesting. I wonder if that is related to the issue I found
with w1-gpio the other day?

w1-gpio is given GPIO0 as a pullup pin by the BSP so it takes control of
it for that purpose, possibly breaking the I2C bus as mentioned in your link

Issue: https://github.com/raspberrypi/linux/issues/601

My fix is here: https://github.com/raspberrypi/linux/pull/602

I'm not loading the w1-gpio at present though so I don't believe it is
causing the problem

(In fact - at any point I can run mjpg-streamer and that will work! So I
know the camera is OK...)

> Sorry for this type of interaction. I am really busy with some other
> project.
> If nothing works we could use OpenMax as you suggested to interact
> with the camera, but I still hope
> this problem can be fixed.
>

No problem Alex. I appreciate any thoughts at all :)

I think next I'm going to have a look at gstreamer1.0-omx and see where
that gets me...

Cheers,

Alex


--------------080701030209090706040007
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 26/05/2014 19:24, Alexandru Vaduva
      wrote:<br>
    </div>
    <blockquote
cite="mid:CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>I do not believe the mmal_component is missing from
                the rootfs or it is not enabled somehow.<br>
              </div>
              I hate to mention this but it may have something to do
              with the the functionality of the component.<br>
            </div>
            Try this: <a moz-do-not-send="true"
              href="https://github.com/raspberrypi/linux/issues/435">https://github.com/raspberrypi/linux/issues/435</a><br>
          </div>
          <div>Also something like strace or even <code>'sudo vcdbg
              syms | grep -i cam' </code>would be useful if available
            of <br>
            the rootfs. <br>
          </div>
          <div> <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    That's interesting. I wonder if that is related to the issue I found
    with w1-gpio the other day? <br>
    <br>
    w1-gpio is given GPIO0 as a pullup pin by the BSP so it takes
    control of it for that purpose, possibly breaking the I2C bus as
    mentioned in your link<br>
    <br>
    Issue: <a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/linux/issues/601">https://github.com/raspberrypi/linux/issues/601</a> <br>
    <br>
    My fix is here: <a class="moz-txt-link-freetext" href="https://github.com/raspberrypi/linux/pull/602">https://github.com/raspberrypi/linux/pull/602</a><br>
    <br>
    I'm not loading the w1-gpio at present though so I don't believe it
    is causing the problem<br>
    <br>
    (In fact - at any point I can run mjpg-streamer and that will work!
    So I know the camera is OK...)<br>
    <br>
    <blockquote
cite="mid:CABwVrCp-mCsYZiWiLV_LMzKRgaoSoRVhftwAvqq-9Cx+KiiYcw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Sorry for this type of interaction. I am really busy with
          some other project.<br>
        </div>
        <div>If nothing works we could use OpenMax as you suggested to
          interact with the camera, but I still hope<br>
        </div>
        <div>this problem can be fixed.<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
    No problem Alex. I appreciate any thoughts at all :)<br>
    <br>
    I think next I'm going to have a look at gstreamer1.0-omx and see
    where that gets me...<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------080701030209090706040007--
