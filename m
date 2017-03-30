Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 991A6E00970; Thu, 30 Mar 2017 02:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_SPAM,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [213.174.32.97 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED42E00839
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 02:02:18 -0700 (PDT)
Received: from mailin03.ims-firmen.de ([192.168.1.143])
	by mailout02.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1ctVyB-0007eQ-ji; Thu, 30 Mar 2017 11:02:15 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin03.ims-firmen.de with esmtpsa
	(UNKNOWN:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1ctVyA-0006qj-9Z; Thu, 30 Mar 2017 11:02:15 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 1C7AD504AFE;
	Thu, 30 Mar 2017 11:02:14 +0200 (CEST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <766b24f4-b6e1-3260-8a4e-611853698497@iseg-hv.de>
	<CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <13bc9cc1-e108-db9c-c78a-58b08023acdd@iseg-hv.de>
Date: Thu, 30 Mar 2017 11:00:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Parse error: unable to parse line
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
X-List-Received-Date: Thu, 30 Mar 2017 09:02:20 -0000
Content-Type: multipart/alternative;
	boundary="------------90B2134858B24BD32CA21C1E"

--------------90B2134858B24BD32CA21C1E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

No,

Sorry. I haven't left it. The please find the file below:

SUMMARY = "hello world program"
HOMEPAGE = "http://www.yoctoproject.org/"
SECTION = "network"
LICENSE = "CLOSED"
inherit qt4e

SRC_URI = " \
     file://helloworld.pro <http://helloworld.pro> \
     file://helloworld.cpp \
     "

S = "${WORKDIR}"

QMAKE_PROFILES = "${WORKDIR}/helloworld.pro <http://helloworld.pro> \
     "

do_compile() {
         ${CC} helloworld.cpp -o helloworld
}

do_install() {
         install -d ${D}${bindir} ${D}${docdir}/helloworld
         install -m 0644 helloworld ${D}${bindir}

}


Am 30.03.2017 um 10:56 schrieb Burton, Ross:
>
> On 30 March 2017 at 09:14, Yuvarajesh Valleru <yv@iseg-hv.de 
> <mailto:yv@iseg-hv.de>> wrote:
>
>     SUMMARY = "hello world program"
>     HOMEPAGE = "http://www.yoctoproject.org/"
>     SECTION = "network"
>     LICENSE = "CLOSED"
>     inherit qt4e
>
>     SRC_URI = " \
>         file://helloworld.pro <http://helloworld.pro> \
>         file://helloworld.cpp \
>         "
>
>     S = "${WORKDIR}"
>
>     QMAKE_PROFILES = "${WORKDIR}/helloworld.pro <http://helloworld.pro> \
>         "
>
>     do_compile() {
>             ${CC} helloworld.cpp -o helloworld
>     }
>
>     do_install() {
>             install -d ${D}${bindir} ${D}${docdir}/helloworld
>             install -m 0644 helloworld
>
>
> Did you leave out the trailing } here in the real file?
>
> Ross


--------------90B2134858B24BD32CA21C1E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>No,</p>
    <p>Sorry. I haven't left it. The please find the file below:</p>
    <p>SUMMARY = "hello world program"<br>
      HOMEPAGE = "<a href="http://www.yoctoproject.org/"
        rel="noreferrer" target="_blank">http://www.yoctoproject.org/</a>"<br>
      SECTION = "network"<br>
      LICENSE = "CLOSED"<br>
      inherit qt4e<br>
      <br>
      SRC_URI = " \<br>
          <a class="moz-txt-link-freetext" href="file://">file://</a><a href="http://helloworld.pro" rel="noreferrer"
        target="_blank">helloworld.pro</a> \<br>
          <a class="moz-txt-link-freetext" href="file://helloworld.cpp">file://helloworld.cpp</a> \<br>
          "<br>
      <br>
      S = "${WORKDIR}"<br>
      <br>
      QMAKE_PROFILES = "${WORKDIR}/<a href="http://helloworld.pro"
        rel="noreferrer" target="_blank">helloworld.pro</a> \<br>
          "<br>
      <br>
      do_compile() {<br>
              ${CC} helloworld.cpp -o helloworld<br>
      }<br>
      <br>
      do_install() {<br>
              install -d ${D}${bindir} ${D}${docdir}/helloworld<br>
              install -m 0644 helloworld ${D}${bindir}</p>
    <p>}<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Am 30.03.2017 um 10:56 schrieb Burton,
      Ross:<br>
    </div>
    <blockquote
cite="mid:CAJTo0La_b8=kBTKCQSe3LGFY=9EwSiqbzzEJQqdegt9RJ8bqzw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 30 March 2017 at 09:14, Yuvarajesh
            Valleru <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:yv@iseg-hv.de" target="_blank">yv@iseg-hv.de</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":2vm" class="a3s aXjCH m15b1e4a4c14492a6">SUMMARY
                = "hello world program"<br>
                HOMEPAGE = "<a moz-do-not-send="true"
                  href="http://www.yoctoproject.org/" rel="noreferrer"
                  target="_blank">http://www.yoctoproject.org/</a>"<br>
                SECTION = "network"<br>
                LICENSE = "CLOSED"<br>
                inherit qt4e<br>
                <br>
                SRC_URI = " \<br>
                    <a class="moz-txt-link-freetext" href="file://">file://</a><a moz-do-not-send="true"
                  href="http://helloworld.pro" rel="noreferrer"
                  target="_blank">helloworld.pro</a> \<br>
                    <a class="moz-txt-link-freetext" href="file://helloworld.cpp">file://helloworld.cpp</a> \<br>
                    "<br>
                <br>
                S = "${WORKDIR}"<br>
                <br>
                QMAKE_PROFILES = "${WORKDIR}/<a moz-do-not-send="true"
                  href="http://helloworld.pro" rel="noreferrer"
                  target="_blank">helloworld.pro</a> \<br>
                    "<br>
                <br>
                do_compile() {<br>
                        ${CC} helloworld.cpp -o helloworld<br>
                }<br>
                <br>
                do_install() {<br>
                        install -d ${D}${bindir}
                ${D}${docdir}/helloworld<br>
                        install -m 0644 helloworld<br>
              </div>
            </blockquote>
          </div>
          <br>
          Did you leave out the trailing } here in the real file?</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------90B2134858B24BD32CA21C1E--
