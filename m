Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A66E0086D; Tue, 24 Mar 2015 01:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CECF4E00837
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 01:41:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id D5BF927E1F7;
	Tue, 24 Mar 2015 08:41:57 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id bILcEFHyemfl; Tue, 24 Mar 2015 08:41:56 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-86-11.w109-208.abo.wanadoo.fr
	[109.208.53.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 0E17327E1F6;
	Tue, 24 Mar 2015 08:41:56 +0000 (UTC)
Message-ID: <551122EB.7070707@dynamicdevices.co.uk>
Date: Tue, 24 Mar 2015 09:40:11 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?UTF-8?B?QW5kcmVhcyBNw7xsbGVy?= <schnitzeltony@googlemail.com>, 
	Gary Thomas <gary@mlbassoc.com>, Andrei Gherzan <andrei@gherzan.ro>
References: <1427055667-2226-1-git-send-email-schnitzeltony@googlemail.com>	<55103860.7010503@mlbassoc.com>	<CALbNGRRSF6JQ5NXD2E6e74fkNPrfztjbPUS5Scnkf7Xps30txw@mail.gmail.com>	<55108912.5070304@mlbassoc.com>	<CALbNGRRfxu6XWGChZg5XrEUV_mCssteY8T=2bLS4_L3fq42CSw@mail.gmail.com>	<55109E3D.7000306@mlbassoc.com>	<CALbNGRQoiemJ7eLkknFF9syc30UGwnVuVfiFcuZQaZkiSE3+BA@mail.gmail.com>
	<55111E73.6000705@dynamicdevices.co.uk>
In-Reply-To: <55111E73.6000705@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] make sound work out of the box for raspberrypi2
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
X-List-Received-Date: Tue, 24 Mar 2015 08:42:02 -0000
Content-Type: multipart/alternative;
	boundary="------------010902090001020609030602"

--------------010902090001020609030602
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 24/03/2015 09:21, Alex J Lennon wrote:
>
> On 24/03/2015 08:21, Andreas Müller wrote:
>> On Tue, Mar 24, 2015 at 12:14 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2015-03-23 16:22, Andreas Müller wrote:
>>>> On Mon, Mar 23, 2015 at 10:43 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>> On 2015-03-23 14:57, Andreas Müller wrote:
>>>>>> On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>>>> On 2015-03-22 14:21, Andreas Müller wrote:
>>>>>>>>
>>>>>>>> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
>>>>>>>> ---
>>>>>>>>     ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
>>>>>>>> ++++++++++++++++++++++
>>>>>>>>     recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
>>>>>>>>     2 files changed, 43 insertions(+), 3 deletions(-)
>>>>>>>>     create mode 100644
>>>>>>>>
>>>>>>>>
>>>>>>>> recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
>>>>>>>
>>>>>>>
>>>>>>> I tried this patch (which downloaded very strangely using Thunderbird)
>>>>>>> and
>>>>>>> the
>>>>>>> kernel rebuilt fine.  I now have the audio detected, but still no sound
>>>>>>> :-(
>>>>>>> Again I've tried the internal (phono) speakers as well as HDMI audio.
>>>>>>>
>>>>>>> Just to prove a point on the [brand new] hardware, I installed OpenELEC
>>>>>>> (XBMC)
>>>>>>> and it works fine using the HDMI audio.  Sadly when I tried Raspbian
>>>>>>> and
>>>>>>> Ubuntu
>>>>>>> there was no sound either...
>>>>>>>
>>>>>>> Were you (Andreas) able to get any sound with this patch?
>>>>>>>
>>>>>> Yes but I have used 3.5mm sound output - Should have mentioned that in
>>>>>> commit. I guess there is to enable something else in kernel config for
>>>>>> HDMI. Will look into that
>>>>>
>>>>> I've tried the 3.5mm jack as well but nothing seems to come out.
>>>>> I even tried booting with the HDMI missing (powered off) in case
>>>>> that was causing some confusion.
>>>>>
>>>>> Did you make any changes to config.txt to get this going?
>>>> No
>>>> Have my standard xfce-image with xfce4-mixer and as mentioned out of
>>>> the box: I can hear sound / change volume...
>>> Would it be possible to share your [bootable] image?
>>>
>>>> What does happen if you start alsamixer - if it is installed on your
>>>> image?
>>> alsamixer looks correct.
>>>
>>> BTW, I've tried this on my RaspberryPi Model B and I don't get any sound
>>> from it either :-(  Again, booting with test_mode=1 shows that the hardware
>>> is working, just not in Linux. I'm sure I've tried this in the past with
>>> success so I'm becoming more and more confused...
>>>
>> For sharing I need to create a smaller image - the current one
>> contains all stuff from meta-games, all browsers and more. Hope to get
>> that done tomorrow evening. What is the preferred way of sharing huge
>> files?
>>
> Circling around this a little, hello_audio built out of vc_graphics
> works too over the audio jack
>
> Alex
>

OK I got some life from GStreamer and my RPIv2

Install amixer

modprobe snd_bcm2835 (or presumably use an image with audio built-in)

amixer cset numid=3 1 (to set output to audio jack)

gst-launch-1.0 audiotestsrc ! alsasink

I get a tone out of the audio jack. So some kind of audio routing
defaults issue.

Alex


--------------010902090001020609030602
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <link href="chrome://translator/skin/floatingPanel.css"
      type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <br>
    <div class="moz-cite-prefix">On 24/03/2015 09:21, Alex J Lennon
      wrote:<br>
    </div>
    <blockquote cite="mid:55111E73.6000705@dynamicdevices.co.uk"
      type="cite">
      <pre wrap="">

On 24/03/2015 08:21, Andreas Müller wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On Tue, Mar 24, 2015 at 12:14 AM, Gary Thomas <a class="moz-txt-link-rfc2396E" href="mailto:gary@mlbassoc.com">&lt;gary@mlbassoc.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On 2015-03-23 16:22, Andreas Müller wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">On Mon, Mar 23, 2015 at 10:43 PM, Gary Thomas <a class="moz-txt-link-rfc2396E" href="mailto:gary@mlbassoc.com">&lt;gary@mlbassoc.com&gt;</a> wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">On 2015-03-23 14:57, Andreas Müller wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="">
On Mon, Mar 23, 2015 at 4:59 PM, Gary Thomas <a class="moz-txt-link-rfc2396E" href="mailto:gary@mlbassoc.com">&lt;gary@mlbassoc.com&gt;</a> wrote:
</pre>
                <blockquote type="cite">
                  <pre wrap="">
On 2015-03-22 14:21, Andreas Müller wrote:
</pre>
                  <blockquote type="cite">
                    <pre wrap="">

Signed-off-by: Andreas Müller <a class="moz-txt-link-rfc2396E" href="mailto:schnitzeltony@googlemail.com">&lt;schnitzeltony@googlemail.com&gt;</a>
---
    ...-during-boot-by-compiling-SND_BCM2835-int.patch | 38
++++++++++++++++++++++
    recipes-kernel/linux/linux-raspberrypi_3.18.bb     |  8 +++--
    2 files changed, 43 insertions(+), 3 deletions(-)
    create mode 100644


recipes-kernel/linux/linux-raspberrypi/0001-start-sound-during-boot-by-compiling-SND_BCM2835-int.patch
</pre>
                  </blockquote>
                  <pre wrap="">


I tried this patch (which downloaded very strangely using Thunderbird)
and
the
kernel rebuilt fine.  I now have the audio detected, but still no sound
:-(
Again I've tried the internal (phono) speakers as well as HDMI audio.

Just to prove a point on the [brand new] hardware, I installed OpenELEC
(XBMC)
and it works fine using the HDMI audio.  Sadly when I tried Raspbian
and
Ubuntu
there was no sound either...

Were you (Andreas) able to get any sound with this patch?

</pre>
                </blockquote>
                <pre wrap="">Yes but I have used 3.5mm sound output - Should have mentioned that in
commit. I guess there is to enable something else in kernel config for
HDMI. Will look into that
</pre>
              </blockquote>
              <pre wrap="">

I've tried the 3.5mm jack as well but nothing seems to come out.
I even tried booting with the HDMI missing (powered off) in case
that was causing some confusion.

Did you make any changes to config.txt to get this going?
</pre>
            </blockquote>
            <pre wrap="">No
</pre>
            <blockquote type="cite">
              <pre wrap="">
</pre>
            </blockquote>
            <pre wrap="">Have my standard xfce-image with xfce4-mixer and as mentioned out of
the box: I can hear sound / change volume...
</pre>
          </blockquote>
          <pre wrap="">
Would it be possible to share your [bootable] image?

</pre>
          <blockquote type="cite">
            <pre wrap="">What does happen if you start alsamixer - if it is installed on your
image?
</pre>
          </blockquote>
          <pre wrap="">
alsamixer looks correct.

BTW, I've tried this on my RaspberryPi Model B and I don't get any sound
from it either :-(  Again, booting with test_mode=1 shows that the hardware
is working, just not in Linux. I'm sure I've tried this in the past with
success so I'm becoming more and more confused...

</pre>
        </blockquote>
        <pre wrap="">For sharing I need to create a smaller image - the current one
contains all stuff from meta-games, all browsers and more. Hope to get
that done tomorrow evening. What is the preferred way of sharing huge
files?

</pre>
      </blockquote>
      <pre wrap="">
Circling around this a little, hello_audio built out of vc_graphics
works too over the audio jack

Alex

</pre>
    </blockquote>
    <br>
    <div class="moz-signature">OK I got some life from GStreamer and my
      RPIv2<br>
      <br>
      Install amixer<br>
      <br>
      modprobe snd_bcm2835 (or presumably use an image with audio
      built-in)<br>
      <br>
      amixer cset numid=3 1 (to set output to audio jack)<br>
      <br>
      gst-launch-1.0 audiotestsrc ! alsasink<br>
      <br>
      I get a tone out of the audio jack. So some kind of audio routing
      defaults issue.<br>
      <br>
      Alex<br>
      <br>
    </div>
    <div style="bottom: auto; left: 286px; right: auto; top: 650px;
      display: none;" class="translator-theme-default"
      id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------010902090001020609030602--
