Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65D14E008A6; Tue, 27 Jan 2015 12:26:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C327EE00815
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 12:26:27 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2015 12:26:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,476,1418112000"; 
	d="scan'208,217";a="668568185"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.57])
	([10.219.4.57])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2015 12:26:06 -0800
Message-ID: <54C7F463.4030203@linux.intel.com>
Date: Tue, 27 Jan 2015 14:26:11 -0600
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABKVDBBhtFuQrZCRY+tHUXT5bt65VeSwkJDY2hqU-X3kD+E6=g@mail.gmail.com>
In-Reply-To: <CABKVDBBhtFuQrZCRY+tHUXT5bt65VeSwkJDY2hqU-X3kD+E6=g@mail.gmail.com>
Subject: Re: Install package in deploy/deb
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
X-List-Received-Date: Tue, 27 Jan 2015 20:26:35 -0000
Content-Type: multipart/alternative;
	boundary="------------040301010109080409070501"

--------------040301010109080409070501
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Cleiton,

If you are buildling core-image-{sato, minimal}, for install you need to 
add into local.conf:

CORE_IMAGE_EXTRA_INSTALL += "xyz"

Please read the documentation,

http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#usingpoky-extend-customimage

Kind regards,

     alimon

On 27/01/15 13:10, Cleiton Bueno wrote:
> I have a package .deb in deploy/deb/all/xyz.deb is possible to install it
> with ROOTFS_POSTPROCESS_COMMAND?
>
>
>


--------------040301010109080409070501
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Cleiton,<br>
    <br>
    If you are buildling core-image-{sato, minimal}, for install you
    need to add into local.conf:<br>
    <br>
    CORE_IMAGE_EXTRA_INSTALL += "xyz"<br>
    <br>
    Please read the documentation,<br>
    <br>
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#usingpoky-extend-customimage">http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#usingpoky-extend-customimage</a><br>
    <br>
    Kind regards,<br>
    <br>
        alimon<br>
    <br>
    <div class="moz-cite-prefix">On 27/01/15 13:10, Cleiton Bueno wrote:<br>
    </div>
    <blockquote
cite="mid:CABKVDBBhtFuQrZCRY+tHUXT5bt65VeSwkJDY2hqU-X3kD+E6=g@mail.gmail.com"
      type="cite">
      <pre wrap="">I have a package .deb in deploy/deb/all/xyz.deb is possible to install it
with ROOTFS_POSTPROCESS_COMMAND?

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------040301010109080409070501--
