Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41F85E00C8B; Wed, 28 Nov 2018 19:14:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14CECE00C87
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 19:14:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAT3DSTY027446
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Nov 2018 19:13:38 -0800
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 28 Nov 2018 19:13:17 -0800
To: Chuck Wolber <chuckwolber@gmail.com>, <yocto@yoctoproject.org>
References: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <98a055a0-3e77-168a-338d-a6988a144cc0@windriver.com>
Date: Thu, 29 Nov 2018 11:20:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: Yocto Thud - /lib64 link - Build Failure
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
X-List-Received-Date: Thu, 29 Nov 2018 03:14:09 -0000
Content-Type: multipart/alternative;
	boundary="------------BBFAE08D7F52C89C13A8813B"

--------------BBFAE08D7F52C89C13A8813B
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

This is because prelink_image is also in IMAGE_PREPROCESS_COMMAND.

meta/classes/image-prelink.bbclass:IMAGE_PREPROCESS_COMMAND_append_libc-glibc 
= " prelink_setup; prelink_image; "

And as it's using _append, it will be after your 'symlink_lib64'.
Maybe using IMAGE_PREPROCESS_COMMAND_append = " symlink_lib64; " would 
work for you?

Best Regards,
Chen Qi

On 11/29/2018 08:09 AM, Chuck Wolber wrote:
> Background: I have an image that works in pyro. I am migrating the 
> image to thud.
>
> Some of the add-on code to our image requires the /lib64 directory (in 
> particular the VirtualBox Additions). I have proven that a simple 
> symlink (/lib -> /lib64) fixes the problem. This symlink was being 
> applied with the following code at the very bottom of the image:
>
>     IMAGE_PREPROCESS_COMMAND += "symlink_lib64; "
>
>     symlink_lib64() {
>
>     ln -s /lib ${IMAGE_ROOTFS}/lib64
>
>     }
>
>
> When I use that same code with Yocto thud, I get the following build 
> error:
>
>     DEBUG: Executing shell function prelink_image
>
>     Size before prelinking 818112.
>
>     /build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysroot-native/usr/sbin/prelink:
>     Could not record directory /lib/modules-load.d: No such file or
>     directory
>
>     WARNING: exit code 1 from a shell command.
>
>
> Looking at the image generation diagram here 
> (https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-environment), 
> it would seem to indicate that IMAGE_PREPROCESS_COMMAND runs after the 
> linker steps in do_rootfs. So it is unclear why prelink is failing 
> during the do_image phase.
>
> Where is the correct place to create a /lib -> /lib64 symlink in our 
> image recipe?
>
> Thank you,
>
> ..Ch:W..
>
>


--------------BBFAE08D7F52C89C13A8813B
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">This is because prelink_image is also
      in IMAGE_PREPROCESS_COMMAND.<br>
      <br>
meta/classes/image-prelink.bbclass:IMAGE_PREPROCESS_COMMAND_append_libc-glibc
      = " prelink_setup; prelink_image; "<br>
      <br>
      And as it's using _append, it will be after your 'symlink_lib64'.<br>
      Maybe using IMAGE_PREPROCESS_COMMAND_append = " symlink_lib64; "
      would work for you?<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/29/2018 08:09 AM, Chuck Wolber wrote:<br>
    </div>
    <blockquote
cite="mid:CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div dir="ltr">
          <div>Background: I have an image that works in pyro. I am
            migrating the image to thud.  </div>
          <div><br>
          </div>
          Some of the add-on code to our image requires the /lib64
          directory (in particular the VirtualBox Additions). I have
          proven that a simple symlink (/lib -&gt; /lib64) fixes the
          problem. This symlink was being applied with the following
          code at the very bottom of the image:
          <div><br>
          </div>
          <div>
            <blockquote style="margin:0px 0px 0px
              40px;border:none;padding:0px">
              <div>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">IMAGE_PREPROCESS_COMMAND
                    += "symlink_lib64; "</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">symlink_lib64()
                    {</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures"><span
                      class="gmail-Apple-converted-space">    </span>ln
                    -s /lib ${IMAGE_ROOTFS}/lib64</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">}</span></p>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>When I use that same code with Yocto thud, I get the
              following build error:</div>
            <div><br>
            </div>
          </div>
          <blockquote style="margin:0px 0px 0px
            40px;border:none;padding:0px">
            <div>
              <div>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">DEBUG:
                    Executing shell function prelink_image</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">Size
                    before prelinking 818112.</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">/build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysroot-native/usr/sbin/prelink:
                    Could not record directory /lib/modules-load.d: No
                    such file or directory</span></p>
                <p class="gmail-p1"
style="margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:&quot;Courier
New&quot;;color:rgb(40,254,20);background-color:rgba(0,0,0,0.9)"><span
                    class="gmail-s1"
                    style="font-variant-ligatures:no-common-ligatures">WARNING:
                    exit code 1 from a shell command.</span></p>
              </div>
            </div>
          </blockquote>
          <div>
            <div><br>
            </div>
            <div>Looking at the image generation diagram here (<a
                moz-do-not-send="true"
href="https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-environment">https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-environment</a>),
              it would seem to indicate that IMAGE_PREPROCESS_COMMAND
              runs after the linker steps in do_rootfs. So it is unclear
              why prelink is failing during the do_image phase. </div>
            <div><br>
            </div>
            <div>Where is the correct place to create a /lib -&gt;
              /lib64 symlink in our image recipe?</div>
            <div><br>
            </div>
            <div>Thank you,</div>
            <div><br>
            </div>
            <div>..Ch:W..</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------BBFAE08D7F52C89C13A8813B--
