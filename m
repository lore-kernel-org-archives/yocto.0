Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 440FCE00CA0; Fri,  1 Apr 2016 10:38:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10FACE00911
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 10:38:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u31HckK7006550
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Apr 2016 10:38:47 -0700 (PDT)
Received: from server.local (147.11.117.176) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 1 Apr 2016 10:38:46 -0700
To: Haleigh Novak <haleigh@edt.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1459526845123.21634@edt.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56FEB225.9070308@windriver.com>
Date: Fri, 1 Apr 2016 13:38:45 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.0
MIME-Version: 1.0
In-Reply-To: <1459526845123.21634@edt.com>
Subject: Re: Adding Utilities to /proc
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
X-List-Received-Date: Fri, 01 Apr 2016 17:38:55 -0000
Content-Type: multipart/alternative;
	boundary="------------090807030401000809040001"

--------------090807030401000809040001
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-01 12:07 PM, Haleigh Novak wrote:
>
> Hello All,
>
>
> Firstly I would like to say that I am new here and fairly new to 
> Yocto, so I do apologize if this is the wrong board for this question. 
> (And if it is could someone direct me to the correct board?) 
> Background on me: graduated OSU before Fall 2015 started with a BA 
> Computer Science Computer Systems - minimal yocto ~2 months baby level 
> stuff.
>
>
> Some background on the issue: I am following these directions 
> http://www.crashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-files-your-modules-part-1 to 
> create a jiffies utility  folder in /proc as a precursor to a larger 
> project. I have made the appropriate changes within the 
> /usr/src/kernel/fs/proc folder and now I am trying to compile and load 
> the module, to place a jiffies entry in /proc. Well when I run 'make' 
> from /usr/src/kernel/ I get most of the way through, way past building 
> my jiffies.o file in user/src/kernel/fs/proc, without errors but 
> toward the end I get the following error.
>
>
> LZO     arch/arm/boot/compressed/piggy.lzo
> /bin/sh: lzop: command not found
> /usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe for 
> target 'arch/arm/boot/compressed/piggy.lzo' failed
> make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1
> /usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target 
> 'arch/arm/boot/compressed/vmlinux' failed
> make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2
> /usr/src/kernel/arch/arm/Makefile:305: recipe for target 'zImage' failed
> make: *** [zImage] Error 2
>
> I had not though to try to 'make' in this manner before I attempted 
> this project so I don't know if this worked originally. My yocto build 
> is located on one host machine and the actual implementation / working 
> area is on another with an arm processor. I ssh into my device that 
> the yocto build is for and from there I work with the code. If I try 
> to 'make' on the host machine I get an error that it can not 
> find/access some generated files so  hat option I think is out and 
> googling only resulted in that type of solution one to be done on my 
> host machine.
>
> Has anyone ever had this problem before or could point me in a better 
> direction?

If you are generating a module that needs lzo compression .. does your host
distro have lzo installed ? If the kernel recipe you are using doesn't 
specify
lzo-native as a DEPENDS, then there won't be the right tool available to 
do that
compression.

Bruce

>
> Thank you.
>
>
>
>
>


--------------090807030401000809040001
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2016-04-01 12:07 PM, Haleigh Novak
      wrote:<br>
    </div>
    <blockquote cite="mid:1459526845123.21634@edt.com" type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!-- p { margin-top: 0px; margin-bottom: 0px; }--></style>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">Hello All, <br>
      </p>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;"><br>
      </p>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">Firstly I would like to say that I am new here
        and fairly new to Yocto, so I do apologize if this is the wrong
        board for this question. (And if it is could someone direct me
        to the correct board?) Background on me: graduated OSU
        before Fall 2015 started with a BA Computer Science Computer
        Systems - minimal yocto ~2 months baby level stuff.<br>
      </p>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;"><br>
      </p>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">Some background on the issue: I am following
        these directions <a moz-do-not-send="true"
href="http://www.crashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-files-your-modules-part-1"
          target="_blank">http://www.crashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-files-your-modules-part-1</a> to

        create a jiffies utility  folder in /proc as a precursor to a
        larger project. I have made the appropriate changes within the
        /usr/src/kernel/fs/proc folder and now I am trying to compile
        and load the module, to place a jiffies entry in /proc. Well
        when I run 'make' from /usr/src/kernel/ I get most of the way
        through, way past building my jiffies.o file in
        user/src/kernel/fs/proc, without errors but toward the end I get
        the following error.<br>
      </p>
      <p style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;"><br>
      </p>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        LZO     arch/arm/boot/compressed/piggy.lzo</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        /bin/sh: lzop: command not found</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        /usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe
        for target 'arch/arm/boot/compressed/piggy.lzo' failed</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        /usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target
        'arch/arm/boot/compressed/vmlinux' failed</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        /usr/src/kernel/arch/arm/Makefile:305: recipe for target
        'zImage' failed</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        make: *** [zImage] Error 2</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
         <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        I had not though to try to 'make' in this manner before I
        attempted this project so I don't know if this worked
        originally. My yocto build is located on one host machine and
        the actual implementation / working area is on another with an
        arm processor. I ssh into my device that the yocto build is for
        and from there I work with the code. If I try to 'make' on the
        host machine I get an error that it can not find/access some
        generated files so  hat option I think is out and googling only
        resulted in that type of solution one to be done on my host
        machine.  <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        Has anyone ever had this problem before or could point me in a
        better direction?<br>
      </div>
    </blockquote>
    <br>
    If you are generating a module that needs lzo compression .. does
    your host<br>
    distro have lzo installed ? If the kernel recipe you are using
    doesn't specify<br>
    lzo-native as a DEPENDS, then there won't be the right tool
    available to do that<br>
    compression.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote cite="mid:1459526845123.21634@edt.com" type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        Thank you.<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 16px;">
        <br>
        <br>
      </div>
      <p><br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------090807030401000809040001--
