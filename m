Return-Path: <Chong.Lu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5345BE0078F; Thu, 17 Jul 2014 01:57:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68EE5E00788
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 01:57:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6H8v6L5001347
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Jul 2014 01:57:06 -0700 (PDT)
Received: from [128.224.162.204] (128.224.162.204) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Thu, 17 Jul 2014 01:57:06 -0700
Message-ID: <53C78FDE.5000705@windriver.com>
Date: Thu, 17 Jul 2014 16:57:02 +0800
From: Chong Lu <Chong.Lu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Joseph_Andrew_de_la_Pe=F1a?= <jdelapena@lexmark.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJrRHk6gt9GTaj1+uf77x9bt2zjmfJFzCnA3A-eS1U2WqgfPHg@mail.gmail.com>
In-Reply-To: <CAJrRHk6gt9GTaj1+uf77x9bt2zjmfJFzCnA3A-eS1U2WqgfPHg@mail.gmail.com>
X-Originating-IP: [128.224.162.204]
Subject: Re: libtool error when running adt_installer
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
X-List-Received-Date: Thu, 17 Jul 2014 08:57:12 -0000
Content-Type: multipart/alternative;
	boundary="------------060400010301060200030403"

--------------060400010301060200030403
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Joseph,

In adt-installer/opkg/build/opkg-svn/configure file, we have
  8917 # Always use our own libtool.
  8918 LIBTOOL='$(SHELL) $(top_builddir)/libtool'

So, we should libtool rather than -libtool.
Do you have any env variable to set LIBTOOL?

In addition, I found your log:

--2014-07-16 15:53:29--http://adtrepo.yoctoproject.org/1.5.1
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... failed: Connection refused.

You fail to connect repo. Please check.

BR
Chong

On 07/17/2014 09:18 AM, Joseph Andrew de la Peña wrote:
> Good day,
>
> I have an error in libtool when running adt_installer script.
>
> make[1]: Entering directory 
> `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'
> ../-libtool  --tag=CC   --mode=compile i586-poky-linux-gcc  -m32 
> -march=i586 
>  --sysroot=/bonus/scratch/jdelapena/sdk/sysroots/i586-poky-linux 
> -DHAVE_CONFIG_H -I. -I../libopkg    -g -O -Wall 
> -DHOST_CPU_STR=\"x86_64\" -DBUILD_CPU=x86_64 -O 
> -fno-omit-frame-pointer -g -feliminate-unused-debug-types -pipe -MT 
> libbb_la-gz_open.lo -MD -MP -MF .deps/libbb_la-gz_open.Tpo -c -o 
> libbb_la-gz_open.lo `test -f 'gz_open.c' || echo './'`gz_open.c
>
> */bin/sh: ../-libtool: No such file or directory*
> make[1]: *** [libbb_la-gz_open.lo] Error 127
> make[1]: Leaving directory 
> `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'
> make: *** [all-recursive] Error 1
>
> Seems to be $LIBTOOL was not having the correct value. I've searched 
> all occurrence of $LIBTOOL but all of them had -libtool value.
>
> Where does $LIBTOOL originate when creating my own adt_installer 
> script via bitbake adt-installer?
> What variables in any conf file do I need to change to run 
> adt_installer successfully?
>
> Attached is the full log during running of adt_installer.
>
> Thanks,
> Joseph
>
>
>


--------------060400010301060200030403
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Joseph,<br>
    <br>
    In adt-installer/opkg/build/opkg-svn/configure file, we have<br>
    &nbsp;8917 # Always use our own libtool.<br>
    &nbsp;8918 LIBTOOL='$(SHELL) $(top_builddir)/libtool'<br>
    <br>
    So, we should libtool rather than -libtool.<br>
    Do you have any env variable to set LIBTOOL?<br>
    <br>
    In addition, I found your log:<br>
    <pre wrap="">--2014-07-16 15:53:29--  <a class="moz-txt-link-freetext" href="http://adtrepo.yoctoproject.org/1.5.1">http://adtrepo.yoctoproject.org/1.5.1</a>
Resolving adtrepo.yoctoproject.org... 140.211.169.59
Connecting to adtrepo.yoctoproject.org|140.211.169.59|:80... failed: Connection refused.
</pre>
    You fail to connect repo. Please check.<br>
    <br>
    BR<br>
    Chong<br>
    <br>
    <div class="moz-cite-prefix">On 07/17/2014 09:18 AM, Joseph Andrew
      de la Pe&ntilde;a wrote:<br>
    </div>
    <blockquote
cite="mid:CAJrRHk6gt9GTaj1+uf77x9bt2zjmfJFzCnA3A-eS1U2WqgfPHg@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <div dir="ltr">
        <div dir="ltr">Good day,
          <div><br>
          </div>
          <div>I have an error in libtool when running adt_installer
            script.</div>
          <div><br>
          </div>
          <div>
            <div>make[1]: Entering directory
              `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'</div>
            <div>../-libtool &nbsp;--tag=CC &nbsp; --mode=compile
              i586-poky-linux-gcc &nbsp;-m32 -march=i586
              &nbsp;--sysroot=/bonus/scratch/jdelapena/sdk/sysroots/i586-poky-linux
              -DHAVE_CONFIG_H -I. -I../libopkg &nbsp; &nbsp;-g -O -Wall
              -DHOST_CPU_STR=\"x86_64\" -DBUILD_CPU=x86_64 -O
              -fno-omit-frame-pointer -g -feliminate-unused-debug-types
              -pipe -MT libbb_la-gz_open.lo -MD -MP -MF
              .deps/libbb_la-gz_open.Tpo -c -o libbb_la-gz_open.lo `test
              -f 'gz_open.c' || echo './'`gz_open.c</div>
            <div><br>
            </div>
            <div><b>/bin/sh: ../-libtool: No such file or directory</b></div>
            <div>make[1]: *** [libbb_la-gz_open.lo] Error 127</div>
            <div>make[1]: Leaving directory
              `/users/jdelapena/adt-installer/opkg/build/opkg-svn/libbb'</div>
            <div>make: *** [all-recursive] Error 1</div>
          </div>
          <div><br>
          </div>
          <div>Seems to be $LIBTOOL was not having the correct value.
            I've searched all occurrence of $LIBTOOL but all of them had
            -libtool value.</div>
          <div><br>
          </div>
          <div>Where does $LIBTOOL originate when creating my own
            adt_installer script via bitbake adt-installer?</div>
          <div>What variables in any conf file do I need to change to
            run adt_installer successfully?&nbsp;</div>
          <div><br>
          </div>
          <div>Attached is the full log during running of adt_installer.</div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div>Joseph</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------060400010301060200030403--
