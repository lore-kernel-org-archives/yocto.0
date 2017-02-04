Return-Path: <andras@tantosonline.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46EDDE00724; Fri,  3 Feb 2017 18:25:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.165 listed in list.dnswl.org]
Received: from resqmta-po-06v.sys.comcast.net (resqmta-po-06v.sys.comcast.net
	[96.114.154.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15108E00510
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 18:25:25 -0800 (PST)
Received: from resomta-po-14v.sys.comcast.net ([96.114.154.238])
	by resqmta-po-06v.sys.comcast.net with SMTP
	id Zq2WcBmlxLSLVZq2Wc1EjB; Sat, 04 Feb 2017 02:25:24 +0000
Received: from kakukkfu.nl.home ([76.28.198.67])
	by resomta-po-14v.sys.comcast.net with SMTP
	id Zq2WcZlOUqUWeZq2WcdV27; Sat, 04 Feb 2017 02:25:24 +0000
Received: from [10.60.16.43] (unknown [192.31.242.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by kakukkfu.nl.home (Postfix) with ESMTPSA id 99E30440029;
	Fri,  3 Feb 2017 18:28:44 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
	<CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
From: Andras Tantos <andras@tantosonline.com>
Message-ID: <54bfae0a-8762-fe6c-48b8-bbee60da7824@tantosonline.com>
Date: Fri, 3 Feb 2017 18:25:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
X-CMAE-Envelope: MS4wfJv3RDxJ0cp4ZAZR0EcYQK3LtURXO+imV7q5beOiqds9Z92mFEVX1h3+BxJrxwF8Vmg7RVSBPIffFKY6RmCyvxGUa4/cKu3JIv5PmKS3Zb9tARiTE9d7
	NgEYFY+IYcHSKbr/E/H9LFOBZTxYjnJuDQdVKRG+fQHdsfDVNZQSfFSk7WRkjinDTVuErSvO3omr8Fnrf5ro0HdbAjwiq3zho/4=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem building glibc-locale
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
X-List-Received-Date: Sat, 04 Feb 2017 02:25:29 -0000
Content-Type: multipart/alternative;
	boundary="------------32A3032E3D7E165A3D4604F5"

--------------32A3032E3D7E165A3D4604F5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you very much! This solved my problems!!

Andras

On 2/3/2017 3:14 PM, Burton, Ross wrote:
> So you did:
>
> echo "DISTRO_FEATURES += \"usbhost\"" >> conf/local.conf
>
> But poky.conf does:
>
> DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} 
> ${POKY_DEFAULT_DISTRO_FEATURES}"
>
> Which means that the final value of DISTRO_FEATURES is "usbhost", so 
> none of the locale support is enabled, and glibc packages badly.
>
> If you just want to add a feature, use DISTRO_FEATURES_append = " 
> usbhost" (leading whitespace in the string is critical).  Note that 
> usbhost is a default distro feature:
>
> meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT 
> ?= "acl alsa argp bluetooth ext2 irda largefile pcmcia usbgadget 
> usbhost wifi xattr nfs zeroconf pci 3g nfc x11"
>
> So you don't need to specify it unless you are defining a distribution 
> from scratch.
>
> Ross


--------------32A3032E3D7E165A3D4604F5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Thank you very much! This solved my problems!!</p>
    <p>Andras<br>
    </p>
    <div class="moz-cite-prefix">On 2/3/2017 3:14 PM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">So you did:</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">echo "DISTRO_FEATURES += \"usbhost\""
          &gt;&gt; conf/local.conf<br>
          <br>
          But poky.conf does:</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">DISTRO_FEATURES ?=
          "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC}
          ${POKY_DEFAULT_DISTRO_FEATURES}"<br>
        </div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Which means that the final value of
          DISTRO_FEATURES is "usbhost", so none of the locale support is
          enabled, and glibc packages badly.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">If you just want to add a feature, use
          DISTRO_FEATURES_append = " usbhost" (leading whitespace in the
          string is critical).  Note that usbhost is a default distro
          feature:</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT
          ?= "acl alsa argp bluetooth ext2 irda largefile pcmcia
          usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11"</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">So you don't need to specify it unless
          you are defining a distribution from scratch.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------32A3032E3D7E165A3D4604F5--
