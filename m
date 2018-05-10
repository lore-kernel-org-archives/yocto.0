Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE88EE00E23; Thu, 10 May 2018 01:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F25F3E00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:45:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4A8ioVp018481
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:45:05 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 10 May 2018 01:44:39 -0700
To: <yocto@yoctoproject.org>
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
Date: Thu, 10 May 2018 16:46:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 08:45:18 -0000
Content-Type: multipart/alternative;
	boundary="------------D444CEF0AF170ED54B9276FD"

--------------D444CEF0AF170ED54B9276FD
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Piotr,

VAR set in recipe A cannot be accessed by recipe B.

For 'read-only-rootfs' image feature, tweaks are done in functions 
executed after generating rootfs.
meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND += 
'${@bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs", 
"read_only_rootfs_hook; ", "",d)}'

Can you use a similar approach to solve your problem?

Best Regards,
Chen Qi

On 05/10/2018 03:37 PM, Piotr Piwko wrote:
> Hi,
>
> I would like to check in my recipe if created image is read-only or 
> not. In order to do so, I use the following condition which I would 
> inside poky sources:
>
> if ${@bb.utils.contains('IMAGE_FEATURES', 'read-only-rootfs', 'true', 
> 'false', d)}; then
>
> However it seems that IMAGE_FEATURES variable is not exported to the 
> higher recipes. I also confirmed it's content by executing:
>
> bitbake my-image -e | grep IMAGE_FEATURES
>
> Is there any possibility to export this variable to my recipe or 
> somehow check the particular image feature?
>
> Thank you in advance for help.
>
> -- 
> Piotr Piwko
> http://www.embedded-engineering.pl/
>
>


--------------D444CEF0AF170ED54B9276FD
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Piotr,<br>
      <br>
      VAR set in recipe A cannot be accessed by recipe B.<br>
      <br>
      For 'read-only-rootfs' image feature, tweaks are done in functions
      executed after generating rootfs.<br>
meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND +=
      '${@bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs",
      "read_only_rootfs_hook; ", "",d)}'<br>
      <br>
      Can you use a similar approach to solve your problem?<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 05/10/2018 03:37 PM, Piotr Piwko wrote:<br>
    </div>
    <blockquote
cite="mid:CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">Hi, 
        <div><br>
        </div>
        <div>I would like to check in my recipe if created image is
          read-only or not. In order to do so, I use the following
          condition which I would inside poky sources:</div>
        <div><br>
        </div>
        <div>
          <div>if ${@bb.utils.contains('IMAGE_FEATURES',
            'read-only-rootfs', 'true', 'false', d)}; then</div>
        </div>
        <div><br>
        </div>
        <div>However it seems that IMAGE_FEATURES variable is not
          exported to the higher recipes. I also confirmed it's content
          by executing:</div>
        <div><br>
        </div>
        <div>bitbake my-image -e | grep IMAGE_FEATURES</div>
        <div><br>
        </div>
        <div>Is there any possibility to export this variable to my
          recipe or somehow check the particular image feature?</div>
        <div><br>
        </div>
        <div>Thank you in advance for help.</div>
        <div>
          <div><br>
          </div>
          -- <br>
          <div dir="ltr" class="gmail_signature">Piotr Piwko<br>
            <a moz-do-not-send="true"
              href="http://www.embedded-engineering.pl/" target="_blank">http://www.embedded-engineering.pl/</a></div>
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

--------------D444CEF0AF170ED54B9276FD--
