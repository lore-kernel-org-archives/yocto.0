Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4A76E00C08; Tue, 15 Dec 2015 03:07:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from linux8.hostguy.com (ns16.hostguy.com [144.76.114.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8A16E0033E
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 03:07:28 -0800 (PST)
Received: from [106.51.36.173] (port=49150 helo=[192.168.1.25])
	by linux8.hostguy.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.85) (envelope-from <surya.n@easyarm.com>) id 1a8nRs-003ary-HS
	for yocto@yoctoproject.org; Tue, 15 Dec 2015 16:37:25 +0530
Message-ID: <566FF464.4090507@easyarm.com>
Date: Tue, 15 Dec 2015 11:07:16 +0000
From: Surya <surya.n@easyarm.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <566E94C3.5040206@easyarm.com>
In-Reply-To: <566E94C3.5040206@easyarm.com>
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - linux8.hostguy.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - easyarm.com
X-Get-Message-Sender-Via: linux8.hostguy.com: authenticated_id:
	surya.n@easyarm.com
Subject: Re: Qtmultimedia issue
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
X-List-Received-Date: Tue, 15 Dec 2015 11:07:30 -0000
Content-Type: multipart/alternative;
	boundary="------------020907020006060805070502"

--------------020907020006060805070502
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am building qt5.3.2 with yocto. I need qtmultimedia & qtscript support 
to run my video application,but  unfortunately my "qmake" 
(sysroot/i686-linux/usr/bin/qt5/qmake) is not linked with those 
libraries evenif these modules are enabled .

So, i tried to add it manually in my local.conf as below.

PACKAGECONFIG_append_pn-qtmultimedia = " gstreamer010"

But,i am getting error as:


/home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:32: 
error: 'GST_PAD_PROBE_DROP' undeclared (first use in this function)
      return element->relinked ? GST_PAD_PROBE_DROP : GST_PAD_PROBE_OK;
                                 ^
/home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:32: 
note: each undeclared identifier is reported only once for each function 
it appears in
/home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:53: 
error: 'GST_PAD_PROBE_OK' undeclared (first use in this function)
      return element->relinked ? GST_PAD_PROBE_DROP : GST_PAD_PROBE_OK;

Need help.


Thanks & Regards
Surya







On Monday 14 December 2015 10:06 AM, Surya wrote:
> Hello all,
>
> I need some help regarding qtmultimedia .Currently i am trying to 
> build qt5.3.2 with qtwebengine .It builded properly without any error 
> but when i am trying to using the "qmake" of this and build any 
> graphic related applications ,it is showing some error as below:
>
> Project ERROR: Unknown module(s) in QT: script multimedia
>
> I have enabled both qtmultimedia  & qtscript by hob ,,but still no 
> idea why its not taking that.
>
>
> Thanks & Regards
> Surya


--------------020907020006060805070502
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hello,<br>
      <br>
      I am building qt5.3.2 with yocto. I need qtmultimedia &amp;
      qtscript support to run my video application,but&nbsp; unfortunately my
      "qmake" (sysroot/i686-linux/usr/bin/qt5/qmake) is not linked with
      those libraries evenif these modules are enabled .<br>
      <br>
      So, i tried to add it manually in my local.conf as below.<br>
      <br>
      <span style="color: rgb(81, 98, 111); font-family: 'courier new',
        courier; font-size: 14px; font-style: normal; font-variant:
        normal; font-weight: normal; letter-spacing: normal;
        line-height: 21px; orphans: auto; text-align: start;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); display: inline
        !important; float: none;">PACKAGECONFIG_append_pn-qtmultimedia =
        " gstreamer010"<br>
        <br>
      </span>But,i am getting error as:<br>
      <br>
      <br>
      /home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:32:


      error: 'GST_PAD_PROBE_DROP' undeclared (first use in this
      function)<br>
      &nbsp;&nbsp;&nbsp;&nbsp; return element-&gt;relinked ? GST_PAD_PROBE_DROP :
      GST_PAD_PROBE_OK;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
      /home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:32:


      note: each undeclared identifier is reported only once for each
      function it appears in<br>
      /home/shammi/WIN/surya/work/yocto/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/qtmultimedia/5.3.2-r0/qtmultimedia-opensource-src-5.3.2/src/gsttools/gstvideoconnector.c:467:53:


      error: 'GST_PAD_PROBE_OK' undeclared (first use in this function)<br>
      &nbsp;&nbsp;&nbsp;&nbsp; return element-&gt;relinked ? GST_PAD_PROBE_DROP :
      GST_PAD_PROBE_OK;<br>
      <br>
      Need help.<br>
      <br>
      <br>
      Thanks &amp; Regards<br>
      Surya<br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      On Monday 14 December 2015 10:06 AM, Surya wrote:<br>
    </div>
    <blockquote cite="mid:566E94C3.5040206@easyarm.com" type="cite">Hello
      all,
      <br>
      <br>
      I need some help regarding qtmultimedia .Currently i am trying to
      build qt5.3.2 with qtwebengine .It builded properly without any
      error but when i am trying to using the "qmake" of this and build
      any graphic related applications ,it is showing some error as
      below:
      <br>
      <br>
      Project ERROR: Unknown module(s) in QT: script multimedia
      <br>
      <br>
      I have enabled both qtmultimedia&nbsp; &amp; qtscript by hob ,,but
      still no idea why its not taking that.
      <br>
      <br>
      <br>
      Thanks &amp; Regards
      <br>
      Surya
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------020907020006060805070502--
