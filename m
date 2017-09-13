Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98270E00C62; Wed, 13 Sep 2017 00:28:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Sep 2017 00:28:39 PDT
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D4EE00C1A
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 00:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=rEiVQzot/NrQ+L/hvUOGJ9deKWyfscN6aMPDo0FYt3o=;
	b=ghU/ZMtaUJr+Ix5vPT+7BgQNL7Tbs+VgaUu3kmD2fRL2Uki1KzndvFcr8nnUJ8ZV629OhVyAFbYed
	JuN3O5A6tobsW8Vw3Jfa1EcpcI+64VB1kGDuipkEGsxhqYHCtlEMSL7PXmG/jsV/pRK/i17uRhirDB
	boK0VJdNsHIgdG6I=
X-HalOne-Cookie: 814ae1fb9135a099b068464f76007d915bb5e352
X-HalOne-ID: 0330c6e7-9855-11e7-a520-b8ca3afa9d73
Received: from [192.168.1.68] (unknown [145.236.12.240])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id 0330c6e7-9855-11e7-a520-b8ca3afa9d73;
	Wed, 13 Sep 2017 07:27:35 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
Date: Wed, 13 Sep 2017 09:27:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
Subject: Re: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Wed, 13 Sep 2017 07:28:41 -0000
Content-Type: multipart/alternative;
	boundary="------------7AD0B581A386C3B2176FD28E"
Content-Language: en-US

--------------7AD0B581A386C3B2176FD28E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I ran into the same problem:

ENABLE_UART = "1" is not enough you should also add INSTALL_append= " 
rpi-config" to your local.conf and Serial port will be enabled.


On 12.09.2017 14:09, yahia farghaly wrote:
> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and 
> connected the serial ports to /usb to ttl device/ . i have set the 
> minicom to
> port: /dev/ttyUSB0
> baud rate: 115200
> the image is booting fine and i can see the prompt on the screen but 
> cannot see in my serial console using minicom.
> *is serial enabled by default for this image ? *
> i also tried ENABLE_UART = "1" in local.conf but doesn't help.
>
> how to enable it ? and what the serial device name with respect to 
> raspberry pi
>
> thanks,
>
> -- 
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications 
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub 
> <https://github.com/yahiafarghaly>
>
>
>
> ‌
>
>

-- 

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: ayoub.zaki@embexus.com
Tel: +49176-62901545
https://embexus.com


--------------7AD0B581A386C3B2176FD28E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I ran into the same problem:<br>
    </p>
    <p>ENABLE_UART = "1" is not enough you should also add
      INSTALL_append= " rpi-config" to your local.conf and Serial port
      will be enabled.</p>
    <br>
    <div class="moz-cite-prefix">On 12.09.2017 14:09, yahia farghaly
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com">
      <div dir="ltr"><img class="mailtrack-img" alt=""
          style="display:flex"
src="https://mailtrack.io/trace/mail/a0a4afa6b354f54a22287e7d9fb585337adb304b.png?u=1822760"
          moz-do-not-send="true" height="0" width="0">I have
        bitbaked rpi-hwup-image for raspberry pi 3 on sd card and
        connected the serial ports to <i>usb to ttl device</i> . i have
        set the minicom to <br>
        port: /dev/ttyUSB0
        <div>baud rate: 115200 </div>
        <div>the image is booting fine and i can see the prompt on the
          screen but cannot see in my serial console using minicom. </div>
        <div><b>is serial enabled by default for this image ? </b><br
            clear="all">
          <div>i also tried ENABLE_UART = "1" in local.conf but doesn't
            help. </div>
          <div><br>
          </div>
          <div>how to enable it ? and what the serial device name with
            respect to raspberry pi</div>
          <div><br>
          </div>
          <div>thanks,</div>
          <div><br>
          </div>
          -- <br>
          <div class="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr"><font
                    style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                    size="1" color="#777777"><span
                      style="font-size:13px">Yahia Farghaly </span></font><span
style="color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span>
                  <div><font face="Tahoma, sans-serif, Arial, serif,
                      EmojiFont" color="#777777"><span
                        style="font-size:13px">Graduated from Faculty of
                        Engineering - Electronics and Communications
                        Department at Cairo University.</span></font><br>
                  </div>
                  <div
style="color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">
                    <div><a href="https://linkedin.com/in/yahiafarghaly"
                        rel="noopener noreferrer" target="_blank"
                        moz-do-not-send="true"><font
                          style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                          size="1"><span style="font-size:13px">Linkedin</span></font></a><font
style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont" size="1"
                        color="#777777"><span style="font-size:13px"> - </span></font><a
                        href="https://github.com/yahiafarghaly"
                        rel="noopener noreferrer" target="_blank"
                        moz-do-not-send="true"><font
                          style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                          size="1"><span style="font-size:13px">GitHub</span></font></a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <br>
          <br>
          ‌</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Tel: +49176-62901545
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a>
</pre>
  </body>
</html>

--------------7AD0B581A386C3B2176FD28E--
