Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0ABDE00C88; Wed, 13 Sep 2017 05:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, HTML_IMAGE_ONLY_16, 
	HTML_MESSAGE, SPF_HELO_PASS,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11DB3E00C2B
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:05:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9601B861B3;
	Wed, 13 Sep 2017 12:05:53 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XICCXLPcTpqc; Wed, 13 Sep 2017 12:05:44 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 5AA00860E1;
	Wed, 13 Sep 2017 12:05:44 +0000 (UTC)
To: yahia farghaly <yahiafarghaly@gmail.com>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
	<CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
	<CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
	<949f4667-0869-6a30-3fff-92cffb410c71@dynamicdevices.co.uk>
	<CABFXn3ERDVR_eo0UXWwXhakPB5qEXLq0A1RiwyyNFzkLGprKHw@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <d43704cd-7b22-15ec-e80a-c5eb316b8c7d@dynamicdevices.co.uk>
Date: Wed, 13 Sep 2017 13:05:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CABFXn3ERDVR_eo0UXWwXhakPB5qEXLq0A1RiwyyNFzkLGprKHw@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to execute bitbake menuconfig from ssh server
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
X-List-Received-Date: Wed, 13 Sep 2017 12:05:55 -0000
Content-Type: multipart/alternative;
	boundary="------------4E65FC1657E78867587F46EE"
Content-Language: en-GB

--------------4E65FC1657E78867587F46EE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 13/09/2017 13:00, yahia farghaly wrote:
> Nice Aaron, it worked as charm.  Thank you !
>
> Alex, i will try your way. but you can test qemu without vnc by 
> specifying /serial nographic/ of runqemu options
> ‌

Yes. I'm generally have a need for graphical output for testing though :)

You can actually use the in-built qemu VNC server if you change the 
options too...

ref: https://wiki.archlinux.org/index.php/QEMU#vnc

Cheers!

Alex

--------------4E65FC1657E78867587F46EE
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
    <div class="moz-cite-prefix">On 13/09/2017 13:00, yahia farghaly
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABFXn3ERDVR_eo0UXWwXhakPB5qEXLq0A1RiwyyNFzkLGprKHw@mail.gmail.com">
      <div dir="ltr"><img class="mailtrack-img" alt=""
          style="display:flex"
src="https://mailtrack.io/trace/mail/d198f6dbe4b03fb187f74d3779d0626a1ec4edeb.png?u=1822760"
          moz-do-not-send="true" height="0" width="0">Nice Aaron, it
        worked as charm.  Thank you !
        <div><br>
        </div>
        <div>Alex, i will try your way. but you can test qemu without
          vnc by specifying <i>serial nographic</i> of runqemu options <br>
          <div>‌<br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yes. I'm generally have a need for graphical output for testing
    though :)<br>
    <br>
    You can actually use the in-built qemu VNC server if you change the
    options too...<br>
    <br>
    ref: <a class="moz-txt-link-freetext" href="https://wiki.archlinux.org/index.php/QEMU#vnc">https://wiki.archlinux.org/index.php/QEMU#vnc</a><br>
    <br>
    Cheers!<br>
    <br>
    Alex<br>
  </body>
</html>

--------------4E65FC1657E78867587F46EE--
