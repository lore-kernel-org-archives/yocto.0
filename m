Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62618E00862; Wed, 22 Oct 2014 01:03:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 454A8E007C1
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 01:03:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s9M83f2C010728
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 01:03:41 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 22 Oct 2014 01:03:40 -0700
Message-ID: <54476531.3070900@windriver.com>
Date: Wed, 22 Oct 2014 16:05:05 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAP3LV0OBfM_S7cwr7tt9qae=m-iF6mvk-E65oromXk9EFnELQA@mail.gmail.com>
In-Reply-To: <CAP3LV0OBfM_S7cwr7tt9qae=m-iF6mvk-E65oromXk9EFnELQA@mail.gmail.com>
X-Originating-IP: [128.224.162.187]
Subject: Re: Issues creating /dev/ nodes in an initramfs
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
X-List-Received-Date: Wed, 22 Oct 2014 08:03:54 -0000
Content-Type: multipart/alternative;
	boundary="------------040701040005070307080600"

--------------040701040005070307080600
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/2014 02:09 AM, Mitchell Skiba wrote:
> I've been building a kernel with an initramfs, by using 
> INITRAMFS_IMAGE to specify a recipe that generates an image as a 
> .cpio.gz archive. I've been having issues creating /dev/console (or 
> any other device file) in the image. (The 3.14 kernel panics if 
> /dev/console is not a character device.)
>
> It seems there is already a way to create dev nodes via the 
> IMAGE_DEVICE_TABLE and IMAGE_DEVICE_TABLES variables. However this 
> mechanism, through the makedevs utility, appears to require the 
> building user to have permission to call mknod. (Makedevs ignores the 
> return code from the mknod call, so it doesn't outright fail on the 
> permissions error, but device files will not be created.)
>
> I've hacked around it in my image recipe by appending a step onto 
> do_rootfs, but I'm not too happy with the way I did it. It seems like 
> the proper way to fix this is to change the image commands in 
> image_types.bbclass. However, each image type would need a different 
> way of adding in the special files. (At this point I only care about 
> cpio archives for the initramfs.)
>
>
> Does anyone have the current IMAGE_DEVICE_TABLE implementation 
> working? (As in, is there something that I have missed?)
>
> I'm considering fixing this by changing the IMAGE_COMMAND_cpio 
> function in image_typyes.bbclass to generate a cpio archive with only 
> the contents described in IMAGE_DEIVCE_TABLE(S), then use the cpio 
> utility's append mode to add in the rootfs contents. (It is simpler to 
> create a new archive with a script than it is to append to an existing 
> one, so I thought I'd let the cpio utility handle the archive appending.)
> Does this sound like a reasonable approach, and the correct place to 
> fix it?
>
>

How about setting USE_DEVFS to "0" in your image recipe?

Regards,
Chen Qi

--------------040701040005070307080600
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/20/2014 02:09 AM, Mitchell Skiba
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAP3LV0OBfM_S7cwr7tt9qae=m-iF6mvk-E65oromXk9EFnELQA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div><span style="font-family:arial,sans-serif;font-size:13px">I've
            been building a kernel with an initramfs, by using
            INITRAMFS_IMAGE to specify a recipe that generates an image
            as a .cpio.gz archive. I've been having issues creating
            /dev/console (or any other device file) in the image. (The
            3.14 kernel panics if /dev/console is not a character
            device.)</span></div>
        <span style="font-family:arial,sans-serif;font-size:13px">
          <div><span style="font-family:arial,sans-serif;font-size:13px"><br>
            </span></div>
          It seems there is already a way to create dev nodes via the
          IMAGE_DEVICE_TABLE and IMAGE_DEVICE_TABLES variables. However
          this mechanism, through the makedevs utility, appears to
          require the building user to have permission to call mknod.
          (Makedevs ignores the return code from the mknod call, so it
          doesn't outright fail on the permissions error, but device
          files will not be created.)</span>
        <div style="font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style="font-family:arial,sans-serif;font-size:13px">I've
          hacked around it in my image recipe by appending a step onto
          do_rootfs, but I'm not too happy with the way I did it. It
          seems like the proper way to fix this is to change the image
          commands in image_types.bbclass. However, each image type
          would need a different way of adding in the special files. (At
          this point I only care about cpio archives for the initramfs.)</div>
        <div style="font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style="font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style="font-family:arial,sans-serif;font-size:13px">Does
          anyone have the current IMAGE_DEVICE_TABLE implementation
          working? (As in, is there something that I have missed?)</div>
        <div style="font-family:arial,sans-serif;font-size:13px"><br>
        </div>
        <div style="font-family:arial,sans-serif;font-size:13px">I'm
          considering fixing this by changing the IMAGE_COMMAND_cpio
          function in image_typyes.bbclass to generate a cpio archive
          with only the contents described in IMAGE_DEIVCE_TABLE(S),
          then use the cpio utility's append mode to add in the rootfs
          contents. (It is simpler to create a new archive with a script
          than it is to append to an existing one, so I thought I'd let
          the cpio utility handle the archive appending.)</div>
        <div style="font-family:arial,sans-serif;font-size:13px">Does
          this sound like a reasonable approach, and the correct place
          to fix it?</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    How about setting USE_DEVFS to "0" in your image recipe?<br>
    <br>
    Regards,<br>
    Chen Qi<br>
  </body>
</html>

--------------040701040005070307080600--
