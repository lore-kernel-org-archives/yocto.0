Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B353E00CC4; Wed, 13 Sep 2017 10:58:18 -0700 (PDT)
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
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11D9DE00CB4
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 10:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:in-reply-to:
	references; bh=5WhRaRe7ph25v20FnDt9t2cgruydeUVDuOd2rVFySG8=;
	b=m1dmnv+fKsofOERNMZp9Wp72vWxHKTGU2S3c11kjtgRWpnH7/RePzVNsfOM0MIiW3hJP/6+GS0lwh
	+wOfR61C4PAhWP3f5aV5hokmX2yqL42I3Q+iqCd0H02lZBocsST1auQxEbdLaNxIqODIy8SjMziCy6
	+GUIg9i06Yv2b/4E=
X-HalOne-Cookie: 7289bbc46181c6282468f773b256c1a4c2730c54
X-HalOne-ID: 1d36bf4b-98ad-11e7-a520-b8ca3afa9d73
Received: from [192.168.1.68] (unknown [145.236.12.240])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id 1d36bf4b-98ad-11e7-a520-b8ca3afa9d73;
	Wed, 13 Sep 2017 17:58:14 +0000 (UTC)
To: Khem Raj <raj.khem@gmail.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
	<CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <9c644336-0647-865a-6351-a1f221395074@embexus.com>
Date: Wed, 13 Sep 2017 19:58:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 13 Sep 2017 17:58:18 -0000
Content-Type: multipart/alternative;
	boundary="------------9CA1BD507C207EF2EACA6C52"
Content-Language: en-US

--------------9CA1BD507C207EF2EACA6C52
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 13.09.2017 19:55, Khem Raj wrote:
>
>
> On Wed, Sep 13, 2017 at 12:27 AM, Ayoub Zaki <ayoub.zaki@embexus.com 
> <mailto:ayoub.zaki@embexus.com>> wrote:
>
>     I ran into the same problem:
>
>     ENABLE_UART = "1" is not enough you should also add
>     INSTALL_append= " rpi-config" to your local.conf and Serial port
>     will be enabled.
>
>
> ​this should be automatically pulled in if you built a sdcard image.​
I'm using Wic so it does not work unless I extend the machine config with :
MACHINE_EXTRA_RRECOMMENDS += " bcm2835-bootfiles rpi-config"
>
>
>     On 12.09.2017 14:09, yahia farghaly wrote:
>>     I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and
>>     connected the serial ports to /usb to ttl device/ . i have set
>>     the minicom to
>>     port: /dev/ttyUSB0
>>     baud rate: 115200
>>     the image is booting fine and i can see the prompt on the screen
>>     but cannot see in my serial console using minicom.
>>     *is serial enabled by default for this image ? *
>>     i also tried ENABLE_UART = "1" in local.conf but doesn't help.
>>
>>     how to enable it ? and what the serial device name with respect
>>     to raspberry pi
>>
>>     thanks,
>>
>>     -- 
>>     Yahia Farghaly
>>     Graduated from Faculty of Engineering - Electronics and
>>     Communications Department at Cairo University.
>>     Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>>     <https://github.com/yahiafarghaly>
>>
>>
>>
>>     ‌
>>
>>
>
>     -- 
>
>     Ayoub Zaki
>     Embedded Systems Consultant
>
>     Vaihinger Str. 2/1
>     71634 Ludwigsburg
>
>     e-mail:ayoub.zaki@embexus.com <mailto:ayoub.zaki@embexus.com>
>     Tel:+49176-62901545 <tel:+49%20176%2062901545>
>     https://embexus.com
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


--------------9CA1BD507C207EF2EACA6C52
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 13.09.2017 19:55, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:monospace,monospace"><br>
        </div>
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On Wed, Sep 13, 2017 at 12:27 AM,
            Ayoub Zaki <span dir="ltr">&lt;<a
                href="mailto:ayoub.zaki@embexus.com" target="_blank"
                moz-do-not-send="true">ayoub.zaki@embexus.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">
                <p>I ran into the same problem:<br>
                </p>
                <p>ENABLE_UART = "1" is not enough you should also add
                  INSTALL_append= " rpi-config" to your local.conf and
                  Serial port will be enabled.</p>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>
              <div class="gmail_default"
                style="font-family:monospace,monospace">​this should be
                automatically pulled in if you built a sdcard image.​</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I'm using Wic so it does not work unless I extend the machine config
    with :<br>
    MACHINE_EXTRA_RRECOMMENDS += " bcm2835-bootfiles rpi-config"<br>
    <blockquote type="cite"
cite="mid:CAMKF1sp6iZA+0RZ_wM8ZCAWeAd-P2ecmaOA6Z0NMY_7X3L1q7g@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">
            <div><br>
            </div>
            <div> </div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">
                <div>
                  <div class="h5"> <br>
                    <div class="m_-8093970953743212211moz-cite-prefix">On
                      12.09.2017 14:09, yahia farghaly wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr"><img
                          class="m_-8093970953743212211mailtrack-img"
                          alt="" style="display:flex"
                          moz-do-not-send="true" height="0" width="0">I
                        have bitbaked rpi-hwup-image for raspberry pi 3
                        on sd card and connected the serial ports to <i>usb
                          to ttl device</i> . i have set the minicom to <br>
                        port: /dev/ttyUSB0
                        <div>baud rate: 115200 </div>
                        <div>the image is booting fine and i can see the
                          prompt on the screen but cannot see in my
                          serial console using minicom. </div>
                        <div><b>is serial enabled by default for this
                            image ? </b><br clear="all">
                          <div>i also tried ENABLE_UART = "1" in
                            local.conf but doesn't help. </div>
                          <div><br>
                          </div>
                          <div>how to enable it ? and what the serial
                            device name with respect to raspberry pi</div>
                          <div><br>
                          </div>
                          <div>thanks,</div>
                          <div><br>
                          </div>
                          -- <br>
                          <div
                            class="m_-8093970953743212211gmail_signature">
                            <div dir="ltr">
                              <div>
                                <div dir="ltr"><font
                                    style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                                    size="1" color="#777777"><span
                                      style="font-size:13px">Yahia
                                      Farghaly </span></font><span
style="color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span>
                                  <div><font face="Tahoma, sans-serif,
                                      Arial, serif, EmojiFont"
                                      color="#777777"><span
                                        style="font-size:13px">Graduated
                                        from Faculty of Engineering -
                                        Electronics and Communications
                                        Department at Cairo University.</span></font><br>
                                  </div>
                                  <div
style="color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">
                                    <div><a
                                        href="https://linkedin.com/in/yahiafarghaly"
                                        rel="noopener noreferrer"
                                        target="_blank"
                                        moz-do-not-send="true"><font
                                          style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                                          size="1"><span
                                            style="font-size:13px">Linkedin</span></font></a><font
style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont" size="1"
                                        color="#777777"><span
                                          style="font-size:13px"> - </span></font><a
href="https://github.com/yahiafarghaly" rel="noopener noreferrer"
                                        target="_blank"
                                        moz-do-not-send="true"><font
                                          style="font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"
                                          size="1"><span
                                            style="font-size:13px">GitHub</span></font></a></div>
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
                      <fieldset
                        class="m_-8093970953743212211mimeAttachmentHeader"></fieldset>
                      <br>
                    </blockquote>
                    <br>
                  </div>
                </div>
                <span class="HOEnZb"><font color="#888888">
                    <pre class="m_-8093970953743212211moz-signature" cols="72">-- 

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class="m_-8093970953743212211moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com" target="_blank" moz-do-not-send="true">ayoub.zaki@embexus.com</a>
Tel: <a href="tel:+49%20176%2062901545" value="+4917662901545" target="_blank" moz-do-not-send="true">+49176-62901545</a>
<a class="m_-8093970953743212211moz-txt-link-freetext" href="https://embexus.com" target="_blank" moz-do-not-send="true">https://embexus.com</a>
</pre>
                  </font></span></div>
              <br>
              --<br>
              ______________________________<wbr>_________________<br>
              yocto mailing list<br>
              <a href="mailto:yocto@yoctoproject.org"
                moz-do-not-send="true">yocto@yoctoproject.org</a><br>
              <a href="https://lists.yoctoproject.org/listinfo/yocto"
                rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
              <br>
            </blockquote>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : <a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Homepage : <a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------9CA1BD507C207EF2EACA6C52--
