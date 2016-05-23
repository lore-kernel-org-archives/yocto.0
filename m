Return-Path: <krueger@ind.rwth-aachen.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ADBEE004A0; Mon, 23 May 2016 10:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.130.5.186 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-out-1.rwth-aachen.de (mx-out-1.rwth-aachen.de
	[134.130.5.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E564E003D9
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 10:17:27 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,356,1459807200"; 
	d="scan'208,217";a="529797690"
Received: from mail.iks.rwth-aachen.de (HELO mail.ind.rwth-aachen.de)
	([137.226.238.9])
	by mx-1.rz.rwth-aachen.de with ESMTP; 23 May 2016 19:17:26 +0200
Received: from [192.168.178.104] (aftr-88-153-6-143.unity-media.net
	[88.153.6.143])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.ind.rwth-aachen.de (Postfix) with ESMTP id EF52016741F3
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 19:17:25 +0200 (CEST)
From: public-hk@iks.rwth-aachen.de
To: yocto@yoctoproject.org
References: <05bb0eaa-71c1-f850-e7e4-f028bbe8b715@ind.rwth-aachen.de>
	<1463721900.2210.11.camel@hibento.de>
Message-ID: <921c8a5c-5f65-2b8f-67da-a01d1ef69a06@ind.rwth-aachen.de>
Date: Mon, 23 May 2016 21:17:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <1463721900.2210.11.camel@hibento.de>
Subject: Re: Newbie Question regarding custom layer and populate_rootfs
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
X-List-Received-Date: Mon, 23 May 2016 17:17:32 -0000
Content-Type: multipart/alternative;
	boundary="------------80A6795CE29304D96537C6BC"

--------------80A6795CE29304D96537C6BC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Stephan, hi Herrie,

thank you for your replies to my question.

>> So here are the questions:
>> 1) Why my version of the psplash executable - even though it was built -
>> is not installed in the root fs?
> Did you manually build your splash recipe (bitbake psplash-myproject)?
> This does not include it in an image yet. It must be added to image
> features either manually or through a dependency. 
> The psplash-raspberry package seems to be included in the dependencies
> here
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine/include/rpi-base.inc#n51 - maybe there is a chance to override this in your local.conf
> The cleanest way might be to include this in an own machine definition
> and override it afterwards.

I have finally added a machine raspberry2p which includes the original
raspberrypi2 machine definition - and then defines another SPLASH reference.
That worked.

>
>> 2) I have been able to review the logs from build steps and almost
>> everything related to the package creation in tmp/work subfolder of my
>> build project. But how can I see which packages are installed during the
>> populate_rootfs step? There seems to be no dedicated log file.
> There is a rather complex conglomerate of piped commands here, which
> does this: https://community.freescale.com/docs/DOC-94953 

What helped my a lot were the commands

bitbake-layers show-layers and
bitbake -g </image>/ && emacs pn-depends.dot

That reference is a really valuable link!

Thank you and best regards

Hauke


--------------80A6795CE29304D96537C6BC
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi Stephan, hi Herrie,</p>
    thank you for your replies to my question.<br>
    <br>
    <blockquote cite="mid:1463721900.2210.11.camel@hibento.de"
      type="cite">
      <blockquote type="cite">
        <pre wrap="">So here are the questions:
1) Why my version of the psplash executable - even though it was built -
is not installed in the root fs?
</pre>
      </blockquote>
      <pre wrap="">Did you manually build your splash recipe (bitbake psplash-myproject)?
This does not include it in an image yet. It must be added to image
features either manually or through a dependency. 
The psplash-raspberry package seems to be included in the dependencies
here
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine/include/rpi-base.inc#n51">https://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine/include/rpi-base.inc#n51</a> - maybe there is a chance to override this in your local.conf
The cleanest way might be to include this in an own machine definition
and override it afterwards.
</pre>
    </blockquote>
    <br>
    I have finally added a machine raspberry2p which includes the
    original raspberrypi2 machine definition - and then defines another
    SPLASH reference.<br>
    That worked.<br>
    <br>
    <blockquote cite="mid:1463721900.2210.11.camel@hibento.de"
      type="cite"><br>
      <blockquote type="cite">
        <pre wrap="">2) I have been able to review the logs from build steps and almost
everything related to the package creation in tmp/work subfolder of my
build project. But how can I see which packages are installed during the
populate_rootfs step? There seems to be no dedicated log file.
</pre>
      </blockquote>
      <pre wrap="">There is a rather complex conglomerate of piped commands here, which
does this: <a class="moz-txt-link-freetext" href="https://community.freescale.com/docs/DOC-94953">https://community.freescale.com/docs/DOC-94953</a> 
</pre>
    </blockquote>
    <br>
    What helped my a lot were the commands <br>
    <br>
    bitbake-layers show-layers and<br>
    bitbake -g &lt;<em>image&gt;</em> &amp;&amp; emacs pn-depends.dot <br>
    <br>
    That reference is a really valuable link!<br>
    <br>
    Thank you and best regards<br>
    <br>
    Hauke<br>
    <br>
  </body>
</html>

--------------80A6795CE29304D96537C6BC--
