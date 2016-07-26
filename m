Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B23D3E00D2E; Mon, 25 Jul 2016 23:17:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 387 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Jul 2016 23:17:10 PDT
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34877E00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:17:10 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u6Q6H9TL011573
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 09:17:09 +0300
To: yocto@yoctoproject.org
References: <CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <eaef999c-db52-05e7-49c5-e8ea2ae67790@vitheia.com>
Date: Tue, 26 Jul 2016 09:17:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com>
Subject: Re: config file
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
X-List-Received-Date: Tue, 26 Jul 2016 06:17:14 -0000
Content-Type: multipart/alternative;
	boundary="------------1332743F1E07841A335B999A"

--------------1332743F1E07841A335B999A
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi

This part of the documentation is of interest: 
http://www.yoctoproject.org/docs/2.0.2/dev-manual/dev-manual.html#configuring-the-kernel
The idea is that the .config file is located in your Build Directory, in 
the area where the specific kernel is built. Could be something like this:

poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.14.11+git1+84f...
         ...656ed30-r1/linux-qemux86-standard-build

BR


On 07/26/2016 08:55 AM, nousi wrote:
> Hi,
>
> I have downloaded the poky repo and it is clean.
> I do not find any .config file in poky directory.
> Please, point me to the location under poky tree to copy the .config 
> file from the external source so that bitbake can use .config file 
> configuration.
>
> -- 
> /Thanks & Regards,
> B.Nousilal,
> /
>
>


--------------1332743F1E07841A335B999A
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    This part of the documentation is of interest:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.0.2/dev-manual/dev-manual.html#configuring-the-kernel">http://www.yoctoproject.org/docs/2.0.2/dev-manual/dev-manual.html#configuring-the-kernel</a><br>
    The idea is that the .config file is located in your Build
    Directory, in the area where the specific kernel is built.
    Could be something like this:<br>
    <pre class="literallayout">poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.14.11+git1+84f...
        ...656ed30-r1/linux-qemux86-standard-build</pre>
    BR<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 07/26/2016 08:55 AM, nousi wrote:<br>
    </div>
    <blockquote
cite="mid:CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I have downloaded the poky repo and it is clean.</div>
        <div>I do not find any .config file in poky directory.</div>
        <div>Please, point me to the location under poky tree to copy
          the .config file from the external source so that bitbake can
          use .config file configuration.</div>
        <div>
          <div><br>
          </div>
          -- <br>
          <div class="gmail_signature" data-smartmail="gmail_signature"><i
              style="color:rgb(51,51,255)"><font
                style="font-family:arial,helvetica,sans-serif" size="2">Thanks
                &amp; Regards,<br>
                B.Nousilal,<br>
              </font></i><br>
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

--------------1332743F1E07841A335B999A--
