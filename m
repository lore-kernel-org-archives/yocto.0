Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79381E00C37; Tue, 30 Oct 2018 01:49:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C370E0097C
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 01:49:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w9U8nRdN005724
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Oct 2018 01:49:27 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 30 Oct 2018 01:49:27 -0700
To: Zolee K <zoleelikesdebian@gmail.com>, <yocto@yoctoproject.org>
References: <CAK4Yt2n8Zy98t4zdyo9RtamVuZgnuabnNNCwsP7kx=ueXi+FMw@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <2beed052-9e1c-84fd-0d60-a7529d284ff4@windriver.com>
Date: Tue, 30 Oct 2018 16:55:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAK4Yt2n8Zy98t4zdyo9RtamVuZgnuabnNNCwsP7kx=ueXi+FMw@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: include own script
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
X-List-Received-Date: Tue, 30 Oct 2018 08:49:30 -0000
Content-Type: multipart/alternative;
	boundary="------------2A36EAB24D69372047640414"

--------------2A36EAB24D69372047640414
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/30/2018 04:42 PM, Zolee K wrote:
> Hi All,
>
>
> Could you help me out with this? I've been experimenting with this 
> without success, some of you have given me suggestions but neither of 
> them worked yet.
>
> ###############
>
> /recipes-z/testing$ cat testscript.bb <http://testscript.bb>
> DESCRIPTION = "test script"
> LICENSE = "Zoli"
>
> SRC_URI = "file://testscript"
>
> SRC_URI[md5sum] = "e51375ed8c617ea7a6ac39b81c757e39"
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/file:"
>
> S= "${WORKDIR}"
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0770 testscript ${D}${bindir}
> }
>
> #################
>
> recipes-z/testing$ cat files/testscript
> #!/bin/sh
>
> echo "hello world"
>
> ################
>
> ERROR: testscript-1.0-r0 do_populate_lic: Fatal QA errors found, 
> failing task.
> ERROR: testscript-1.0-r0 do_populate_lic: Function failed: 
> populate_lic_qa_checksum
> ERROR: Logfile of failure stored in: 
> /home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/testscript/1.0-r0/temp/log.do_populate_lic.4044
> ERROR: Task 
> (/home/..../recipes-z/testing/testscript.bb:do_populate_lic) failed 
> with exit code '1'
>
>
>
I guess the problem is about LIC_FILES_CHKSUM. Your LICENSE is set to 
'Zoli'. So where do you put your Zoli license and what's the checksum of 
it? How about using the following two lines if you do not care about 
license?

LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

Best Regards,

Chen Qi


--------------2A36EAB24D69372047640414
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/30/2018 04:42 PM, Zolee K wrote:<br>
    </div>
    <blockquote
cite="mid:CAK4Yt2n8Zy98t4zdyo9RtamVuZgnuabnNNCwsP7kx=ueXi+FMw@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div dir="ltr">
          <div>Hi All,</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Could you help me out with this? I've been experimenting
            with this without success, some of you have given me
            suggestions but neither of them worked yet.<br>
          </div>
          <div><br>
          </div>
          <div>###############<br>
            <br>
            /recipes-z/testing$ cat <a moz-do-not-send="true"
              href="http://testscript.bb">testscript.bb</a> <br>
            DESCRIPTION = "test script"<br>
            LICENSE = "Zoli"<br>
            <br>
            SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://testscript">"file://testscript"</a><br>
            <br>
            SRC_URI[md5sum] = "e51375ed8c617ea7a6ac39b81c757e39"<br>
            <br>
            FILESEXTRAPATHS_prepend := "${THISDIR}/file:"<br>
            <br>
            S= "${WORKDIR}"<br>
            <br>
            do_install() {<br>
                install -d ${D}${bindir}<br>
                install -m 0770 testscript ${D}${bindir}<br>
            }<br>
            <br>
            #################<br>
            <br>
            recipes-z/testing$ cat files/testscript <br>
            #!/bin/sh<br>
            <br>
            echo "hello world"<br>
            <br>
            ################<br>
            <br>
            ERROR: testscript-1.0-r0 do_populate_lic: Fatal QA errors
            found, failing task.<br>
            ERROR: testscript-1.0-r0 do_populate_lic: Function failed:
            populate_lic_qa_checksum<br>
            ERROR: Logfile of failure stored in:
/home/kerenyiz/oe-core/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-oe-linux-gnueabi/testscript/1.0-r0/temp/log.do_populate_lic.4044<br>
            ERROR: Task
            (/home/..../recipes-z/testing/testscript.bb:do_populate_lic)
            failed with exit code '1'<br>
            <br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p>I guess the problem is about LIC_FILES_CHKSUM. Your LICENSE is
      set to 'Zoli'. So where do you put your Zoli license and what's
      the checksum of it? How about using the following two lines if you
      do not care about license?</p>
    <p>LICENSE = "CLOSED"<br>
      LIC_FILES_CHKSUM = ""</p>
    <p>Best Regards,</p>
    <p>Chen Qi<br>
    </p>
  </body>
</html>

--------------2A36EAB24D69372047640414--
