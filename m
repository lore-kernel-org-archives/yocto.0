Return-Path: <sdi1100002@di.uoa.gr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C8FFE00920; Mon, 19 Aug 2019 05:42:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [195.134.100.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from msa.uoa.gr (msa.uoa.gr [195.134.100.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1FBBE007E1
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 05:42:45 -0700 (PDT)
Received: by MSA with id 5587DD5238A5174B16D59E42DA063FF9990C6195
Received: from [88.197.47.46] ([88.197.47.46]) (authenticated bits=0)
	by msa.uoa.gr (8.14.1/8.14.1) with ESMTP id x7JCghP7008400
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 15:42:44 +0300 (EEST)
To: yocto@yoctoproject.org
References: <62464e60-54da-b8fb-a0c5-864eee5b7e4a@di.uoa.gr>
	<CAAx3WaD-DRxKveFH769ZW0ayi23AT+LRKborBP2mxH1iySVcqg@mail.gmail.com>
From: Ekaterini Voulgari <sdi1100002@di.uoa.gr>
Message-ID: <b434f24a-1184-b71b-b839-07203d5c0310@di.uoa.gr>
Date: Mon, 19 Aug 2019 15:42:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAx3WaD-DRxKveFH769ZW0ayi23AT+LRKborBP2mxH1iySVcqg@mail.gmail.com>
Sender: sdi1100002@di.uoa.gr
X-UoAMSAId: 5587DD5238A5174B16D59E42DA063FF9990C6195
Subject: Re: Opencv headers
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
X-List-Received-Date: Mon, 19 Aug 2019 12:42:47 -0000
Content-Type: multipart/alternative;
	boundary="------------814B04EECCA18647F16E9FCD"
Content-Language: el-GR

--------------814B04EECCA18647F16E9FCD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Indeed.Grazie.

On 19/8/19 2:20 μ.μ., Gabriele Zampieri wrote:
> Hi,
>
> you need to add
> DEPENDS = "opencv"
> to your recipe. This will import the needed header in your recipe sysroot.
>
> Best regards,
> Gabriele
>
> Il giorno lun 19 ago 2019 alle ore 13:09 Ekaterini Voulgari 
> <sdi1100002@di.uoa.gr <mailto:sdi1100002@di.uoa.gr>> ha scritto:
>
>     Hello all,
>     I'm trying to add a program to my image that uses opencv (#include
>     <opencv2/opencv.hpp>), but I get compile error "fatal error:
>     opencv2/opencv.hpp: No such file or directory"
>
>     The file opencv.hpp exists in workdir
>     /build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-musleabi/opencv/3.4.5-r0/image/usr/include/opencv2/opencv.hpp.
>
>     Can anyone help on where are the headers located in crossbuilds? Any
>     help appreciated.
>     The recipe:
>
>     SRC_URI = "file://capture.cpp"
>
>     do_compile () {
>          ${CC} capture.cpp  -lopencv_core -lopencv_imgproc
>     -lopencv_highgui
>     -lopencv_videoio
>     }
>
>     do_install () {
>
>              install -d -m 0755 ${D}/${bindir}
>              install -m 0755 prog_kameras ${D}/${bindir}/prog_kameras
>     }
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>

--------------814B04EECCA18647F16E9FCD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Indeed.Grazie.</p>
    <div class="moz-cite-prefix">On 19/8/19 2:20 μ.μ., Gabriele Zampieri
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAx3WaD-DRxKveFH769ZW0ayi23AT+LRKborBP2mxH1iySVcqg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi, <br>
        </div>
        <div><br>
        </div>
        <div>you need to add</div>
        <div style="margin-left:40px">DEPENDS = "opencv"</div>
        <div>to your recipe. This will import the needed header in your
          recipe sysroot.</div>
        <div><br>
        </div>
        <div>Best regards,<br>
        </div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Il giorno lun 19 ago 2019 alle
          ore 13:09 Ekaterini Voulgari &lt;<a
            href="mailto:sdi1100002@di.uoa.gr" moz-do-not-send="true">sdi1100002@di.uoa.gr</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello
          all,<br>
          I'm trying to add a program to my image that uses opencv
          (#include <br>
          &lt;opencv2/opencv.hpp&gt;), but I get compile error "fatal
          error: <br>
          opencv2/opencv.hpp: No such file or directory"<br>
          <br>
          The file opencv.hpp exists in workdir <br>
/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-musleabi/opencv/3.4.5-r0/image/usr/include/opencv2/opencv.hpp.
          <br>
          Can anyone help on where are the headers located in
          crossbuilds? Any <br>
          help appreciated.<br>
          The recipe:<br>
          <br>
          SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://capture.cpp">"file://capture.cpp"</a><br>
          <br>
          do_compile () {<br>
               ${CC} capture.cpp  -lopencv_core -lopencv_imgproc
          -lopencv_highgui <br>
          -lopencv_videoio<br>
          }<br>
          <br>
          do_install () {<br>
          <br>
                   install -d -m 0755 ${D}/${bindir}<br>
                   install -m 0755 prog_kameras
          ${D}/${bindir}/prog_kameras<br>
          }<br>
          <br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href="mailto:yocto@yoctoproject.org" target="_blank"
            moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------814B04EECCA18647F16E9FCD--
